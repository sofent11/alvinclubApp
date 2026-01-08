import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/error/api_error.dart';
import '../api/swagger_client.dart';

class CartSkuOption {
  const CartSkuOption({required this.name, required this.value});

  final String name;
  final String value;
}

class CartLineItem {
  const CartLineItem({
    required this.skuCode,
    required this.productName,
    required this.quantity,
    required this.options,
    required this.status,
    this.productCode,
    this.imageUrl,
    this.price,
    this.currency,
    this.totalPrice,
    this.shopName,
    this.discountRemark,
  });

  final String skuCode;
  final String? productCode;
  final String productName;
  final String? imageUrl;
  final int quantity;
  final double? price;
  final String? currency;
  final double? totalPrice;
  final String? shopName;
  final String? discountRemark;
  final List<CartSkuOption> options;
  final String status;
}

class CartSummary {
  const CartSummary({
    this.discountAmount,
    this.totalAmount,
    this.targetTotalAmount,
    this.currency,
    this.targetCurrency,
  });

  final double? discountAmount;
  final double? totalAmount;
  final double? targetTotalAmount;
  final String? currency;
  final String? targetCurrency;
}

class CartGroup {
  const CartGroup({
    required this.id,
    required this.items,
    this.totalWeight,
    this.weightUnit,
  });

  final String id;
  final List<CartLineItem> items;
  final String? totalWeight;
  final String? weightUnit;
}

class CartPayload {
  const CartPayload({
    required this.items,
    required this.groups,
    required this.summary,
  });

  final List<CartLineItem> items;
  final List<CartGroup> groups;
  final CartSummary summary;
}

class CartPricingRequestItem {
  const CartPricingRequestItem({required this.skuCode, required this.quantity});

  final String skuCode;
  final int quantity;
}

class AddToCartInput {
  const AddToCartInput({
    required this.skuCode,
    this.quantity,
    this.inviteCode,
    this.remark,
    this.sourceDetail,
  });

  final String skuCode;
  final int? quantity;
  final String? inviteCode;
  final String? remark;
  final String? sourceDetail;
}

class CartPricing {
  const CartPricing({
    required this.settlementAmount,
    this.totalAmount,
    this.itemsTotalAmount,
    this.discountAmount,
    this.freightAmount,
    this.currency,
    this.targetCurrency,
  });

  final double settlementAmount;
  final double? totalAmount;
  final double? itemsTotalAmount;
  final double? discountAmount;
  final double? freightAmount;
  final String? currency;
  final String? targetCurrency;
}

class UpdateCartItem {
  const UpdateCartItem({
    required this.skuCode,
    this.quantity,
    this.remark,
  });

  final String skuCode;
  final int? quantity;
  final String? remark;
}

class UpdateCartInput {
  const UpdateCartInput({
    required this.type,
    required this.items,
    this.orderUpdate,
  });

  final String type;
  final List<UpdateCartItem> items;
  final String? orderUpdate;
}

class CartRepository {
  CartRepository(this._ref);

  final Ref _ref;

  ApiError _createApiError(String message, Object? raw) {
    return ApiError(status: 400, message: message, raw: raw);
  }

  Future<CartPayload> getCart() async {
    final api = _ref.read(swaggerOrderApiProvider);
    final response = await api.orderServiceCartListGet(
      root: {
        'skuList': [],
      },
    );

    final body = _toMap(response.body);
    final code = _parseInt(body?['code']);
    if (code != 0 || body?['data'] == null) {
      throw _createApiError(body?['message']?.toString() ?? '获取购物车失败', body);
    }

    final data = _toMap(body?['data']);
    final groups = _toList(data?['list']).asMap().entries.map((entry) {
      final index = entry.key;
      final group = _toMap(entry.value) ?? const {};
      final records = _toList(group['records']);
      final items = records.map((recordRaw) {
        final record = _toMap(recordRaw) ?? const {};
        return CartLineItem(
          skuCode: record['skuCode']?.toString() ?? '',
          productCode: record['productCode']?.toString(),
          productName: record['productName']?.toString() ?? '未知商品',
          imageUrl: record['skuImage']?.toString() ?? _firstImageUrl(record['qualityImages']),
          quantity: _parseInt(record['quantity']),
          price: _parseOptionalDouble(record['targetSellPrice'] ?? record['offerPrice']),
          currency: record['targetSellCur']?.toString(),
          totalPrice: _parseOptionalDouble(record['targetTotalPrice']),
          shopName: record['shopName']?.toString(),
          discountRemark: record['discountRemark']?.toString(),
          options: _parseSkuOptions(record['skuOptions']),
          status: _parseInt(record['status'], fallback: 0) == 1 ? 'available' : 'unavailable',
        );
      }).toList();

      return CartGroup(
        id: group['productCode']?.toString() ?? 'group-$index',
        items: items,
        totalWeight: group['totalWeight']?.toString(),
        weightUnit: group['weightUnit']?.toString(),
      );
    }).toList();

    final items = groups.expand((group) => group.items).toList();
    final currencyFallback = items.isNotEmpty ? items.first.currency : null;

    return CartPayload(
      items: items,
      groups: groups,
      summary: CartSummary(
        discountAmount: _parseOptionalDouble(data?['totalDiscountAmount']),
        totalAmount: _parseOptionalDouble(data?['targetTotalAmount']),
        targetTotalAmount: _parseOptionalDouble(data?['targetTotalAmount']),
        currency: data?['targetTotalAmountCur']?.toString() ?? currencyFallback,
        targetCurrency: data?['targetTotalAmountCur']?.toString() ?? currencyFallback,
      ),
    );
  }

  Future<void> updateCart(UpdateCartInput input) async {
    if (input.items.isEmpty) {
      return;
    }

    final api = _ref.read(swaggerOrderApiProvider);
    final payload = {
      'type': input.type,
      'cart': input.items
          .map((item) => {
                'skuCode': item.skuCode,
                'quantity': item.quantity,
                'orderUpdate': input.orderUpdate ?? '1',
                'remark': item.remark,
              })
          .toList(),
    };

    final response = await api.orderServiceCartUpdatePost(root: payload);
    final body = _toMap(response.body);
    if (body != null && body.containsKey('code') && _parseInt(body['code']) != 0) {
      throw _createApiError(body['message']?.toString() ?? '更新购物车失败', body);
    }
  }

  Future<CartPricing> calculateCartPricing(
    List<CartPricingRequestItem> items, {
    String? couponCode,
  }) async {
    if (items.isEmpty) {
      return const CartPricing(settlementAmount: 0);
    }

    final api = _ref.read(swaggerOrderApiProvider);
    final response = await api.orderServiceCartPricingPost(
      root: {
        'skuList': items
            .map((item) => {
                  'skuCode': item.skuCode,
                  'quantity': item.quantity,
                })
            .toList(),
        'userCouponCode': couponCode,
      },
    );

    final body = _toMap(response.body);
    final code = _parseInt(body?['code']);
    if (code != 0 || body?['data'] == null) {
      throw _createApiError(body?['message']?.toString() ?? '计算金额失败', body);
    }

    final data = _toMap(body?['data']);
    return CartPricing(
      settlementAmount: _parseDouble(data?['targetSettlementAmount'] ?? data?['targetTotalAmount']),
      totalAmount: _parseOptionalDouble(data?['targetTotalAmount']),
      itemsTotalAmount: _parseOptionalDouble(data?['targetItemsTotalAmount']),
      discountAmount: _parseOptionalDouble(data?['targetDiscountAmount']),
      freightAmount: _parseOptionalDouble(data?['freightAmount']),
      currency: data?['targetSellCur']?.toString(),
      targetCurrency: data?['targetSellCur']?.toString() ?? data?['sellCur']?.toString(),
    );
  }

  Future<void> addToCart(AddToCartInput input) async {
    final api = _ref.read(swaggerOrderApiProvider);
    final payload = {
      'skuCode': input.skuCode,
      'quantity': (input.quantity ?? 1).toString(),
      'inviteCode': input.inviteCode,
      'remark': input.remark,
      'sourceDetail': input.sourceDetail,
    };

    final response = await api.orderServiceCartAddPost(root: payload);
    final body = _toMap(response.body);
    if (body != null && body.containsKey('code') && _parseInt(body['code']) != 0) {
      throw _createApiError(body['message']?.toString() ?? '加入购物车失败', body);
    }
  }
}

final cartRepositoryProvider = Provider<CartRepository>((ref) {
  return CartRepository(ref);
});

List<CartSkuOption> _parseSkuOptions(Object? value) {
  return _toList(value)
      .map((optionRaw) {
        final option = _toMap(optionRaw);
        final name = option?['name']?.toString();
        final optionValue = option?['value']?.toString();
        if (name == null || optionValue == null) {
          return null;
        }
        return CartSkuOption(name: name, value: optionValue);
      })
      .whereType<CartSkuOption>()
      .toList();
}

String? _firstImageUrl(Object? value) {
  final list = _toList(value);
  if (list.isEmpty) {
    return null;
  }
  final first = list.first;
  if (first is String) {
    return first;
  }
  final map = _toMap(first);
  return map?['url']?.toString();
}

double _parseDouble(Object? value, {double fallback = 0}) {
  if (value == null || value == '') {
    return fallback;
  }
  if (value is num) {
    return value.isFinite ? value.toDouble() : fallback;
  }
  final parsed = double.tryParse(value.toString());
  return parsed ?? fallback;
}

double? _parseOptionalDouble(Object? value) {
  if (value == null || value == '') {
    return null;
  }
  if (value is num) {
    return value.isFinite ? value.toDouble() : null;
  }
  return double.tryParse(value.toString());
}

int _parseInt(Object? value, {int fallback = 0}) {
  if (value == null || value == '') {
    return fallback;
  }
  if (value is int) {
    return value;
  }
  if (value is num) {
    return value.toInt();
  }
  return int.tryParse(value.toString()) ?? fallback;
}

Map<String, dynamic>? _toMap(Object? value) {
  if (value == null) return null;
  if (value is Map<String, dynamic>) return value;
  try {
    final encoded = jsonEncode(value);
    final decoded = jsonDecode(encoded);
    if (decoded is Map<String, dynamic>) {
      return decoded;
    }
  } catch (_) {
    return null;
  }
  return null;
}

List<dynamic> _toList(Object? value) {
  if (value == null) return [];
  if (value is List) return value;
  try {
    final encoded = jsonEncode(value);
    final decoded = jsonDecode(encoded);
    if (decoded is List) {
      return decoded;
    }
  } catch (_) {
    return [];
  }
  return [];
}
