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
  const UpdateCartItem({required this.skuCode, this.quantity, this.remark});

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
    final response = await api.orderServiceCartListGet(root: null);

    final body = response.body;
    if (body == null || _parseInt(body.code) != 0 || body.data == null) {
      throw _createApiError(body?.message ?? '获取购物车失败', body);
    }

    final data = body.data;
    final groups = (data?.list ?? const []).asMap().entries.map((entry) {
      final index = entry.key;
      final group = entry.value;
      final records = group.records ?? const [];
      final items = records.map((record) {
        return CartLineItem(
          skuCode: record.skuCode ?? '',
          productCode: record.productCode,
          productName: record.productName ?? '未知商品',
          imageUrl: record.skuImage ?? _firstImageUrl(record.qualityImages),
          quantity: record.quantity?.toInt() ?? 0,
          price: _parseOptionalDouble(
            record.targetSellPrice ?? record.offerPrice,
          ),
          currency: record.targetSellCur,
          totalPrice: _parseOptionalDouble(record.targetTotalPrice),
          shopName: record.shopName,
          discountRemark: record.discountRemark,
          options: (record.skuOptions ?? const [])
              .map((o) {
                final name = o.name;
                final value = o.value;
                if (name == null || value == null) {
                  return null;
                }
                return CartSkuOption(name: name, value: value);
              })
              .whereType<CartSkuOption>()
              .toList(),
          status: (record.status?.toInt() ?? 0) == 1
              ? 'available'
              : 'unavailable',
        );
      }).toList();

      return CartGroup(
        id: group.productCode ?? 'group-$index',
        items: items,
        totalWeight: group.totalWeight,
        weightUnit: group.weightUnit,
      );
    }).toList();

    final items = groups.expand((group) => group.items).toList();
    final currencyFallback = items.isNotEmpty ? items.first.currency : null;

    return CartPayload(
      items: items,
      groups: groups,
      summary: CartSummary(
        discountAmount: _parseOptionalDouble(data?.totalDiscountAmount),
        totalAmount: _parseOptionalDouble(data?.targetTotalAmount),
        targetTotalAmount: _parseOptionalDouble(data?.targetTotalAmount),
        currency: data?.targetTotalAmountCur ?? currencyFallback,
        targetCurrency: data?.targetTotalAmountCur ?? currencyFallback,
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
          .map(
            (item) => {
              'skuCode': item.skuCode,
              'quantity': item.quantity,
              'orderUpdate': input.orderUpdate ?? '1',
              'remark': item.remark,
            },
          )
          .toList(),
    };

    final response = await api.orderServiceCartUpdatePost(root: payload);
    if (!response.isSuccessful) {
      throw _createApiError('更新购物车失败', response.error);
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
            .map((item) => {'skuCode': item.skuCode, 'quantity': item.quantity})
            .toList(),
        'userCouponCode': couponCode,
      },
    );

    final body = response.body;
    if (body == null || _parseInt(body.code) != 0 || body.data == null) {
      throw _createApiError(body?.message ?? '计算金额失败', body);
    }

    final data = body.data;
    return CartPricing(
      settlementAmount: _parseDouble(
        data?.targetSettlementAmount ?? data?.targetTotalAmount,
      ),
      totalAmount: _parseOptionalDouble(data?.targetTotalAmount),
      itemsTotalAmount: _parseOptionalDouble(data?.targetItemsTotalAmount),
      discountAmount: _parseOptionalDouble(data?.targetDiscountAmount),
      freightAmount: _parseOptionalDouble(data?.freightAmount),
      currency: data?.targetSellCur,
      targetCurrency: data?.targetSellCur ?? data?.sellCur,
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
    if (!response.isSuccessful) {
      throw _createApiError('加入购物车失败', response.error);
    }
  }
}

final cartRepositoryProvider = Provider<CartRepository>((ref) {
  return CartRepository(ref);
});

String? _firstImageUrl(List<Object>? value) {
  final list = value ?? const [];
  for (final item in list) {
    if (item is String && item.isNotEmpty) {
      return item;
    }
  }
  return null;
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
