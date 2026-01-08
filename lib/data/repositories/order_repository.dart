import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/error/api_error.dart';
import '../api/swagger_client.dart';
import 'cart_repository.dart';

class AvailableCoupon {
  const AvailableCoupon({
    required this.code,
    required this.available,
    this.description,
    this.discountAmount,
    this.currency,
    this.unavailableReason,
  });

  final String code;
  final String? description;
  final double? discountAmount;
  final String? currency;
  final bool available;
  final String? unavailableReason;
}

class SubmitOrderInput {
  const SubmitOrderInput({
    required this.items,
    required this.country,
    this.userAddressId,
    this.couponCode,
    this.remark,
    this.submitAsDraft,
  });

  final List<CartPricingRequestItem> items;
  final String country;
  final int? userAddressId;
  final String? couponCode;
  final String? remark;
  final bool? submitAsDraft;
}

class OrderSubmitResult {
  const OrderSubmitResult({
    required this.orderId,
    required this.orderStatus,
    required this.isSingleWarehouse,
    required this.timeoutPeriod,
  });

  final String orderId;
  final int orderStatus;
  final bool isSingleWarehouse;
  final int timeoutPeriod;
}

class UpdateOrderItem {
  const UpdateOrderItem({
    required this.skuCode,
    this.quantity,
    this.remark,
  });

  final String skuCode;
  final int? quantity;
  final String? remark;
}

class UpdateOrderInput {
  const UpdateOrderInput({
    required this.orderId,
    this.userAddressId,
    this.couponCode,
    this.remark,
    this.items,
    this.submitAnyway,
  });

  final String orderId;
  final int? userAddressId;
  final String? couponCode;
  final String? remark;
  final List<UpdateOrderItem>? items;
  final bool? submitAnyway;
}

class OrderPricingSummary {
  const OrderPricingSummary({
    required this.totalAmount,
    required this.targetTotalAmount,
    this.currency,
    this.targetCurrency,
    this.orderLimitAmount,
    this.shipLimitAmount,
  });

  final double totalAmount;
  final double targetTotalAmount;
  final String? currency;
  final String? targetCurrency;
  final double? orderLimitAmount;
  final double? shipLimitAmount;
}

class OrderSkuOption {
  const OrderSkuOption({
    this.name,
    this.value,
  });

  final String? name;
  final String? value;
}

class OrderSkuItem {
  const OrderSkuItem({
    required this.productName,
    required this.productCode,
    required this.skuCode,
    required this.quantity,
    required this.options,
    this.image,
    this.price,
    this.totalPrice,
    this.currency,
  });

  final String productName;
  final String productCode;
  final String skuCode;
  final String? image;
  final int quantity;
  final double? price;
  final double? totalPrice;
  final String? currency;
  final List<OrderSkuOption> options;
}

class OrderListItem {
  const OrderListItem({
    required this.orderId,
    required this.status,
    required this.orderStatus,
    required this.frontStatus,
    required this.statusText,
    required this.quantity,
    required this.items,
    this.parentOrderId,
    this.description,
    this.remark,
    this.totalAmount,
    this.payableAmount,
    this.currency,
    this.targetCurrency,
  });

  final String orderId;
  final String? parentOrderId;
  final int status;
  final int orderStatus;
  final int frontStatus;
  final String statusText;
  final String? description;
  final String? remark;
  final int quantity;
  final double? totalAmount;
  final double? payableAmount;
  final String? currency;
  final String? targetCurrency;
  final List<OrderSkuItem> items;
}

class OrderListResponse {
  const OrderListResponse({
    required this.current,
    required this.pageSize,
    required this.total,
    required this.totalPages,
    required this.records,
  });

  final int current;
  final int pageSize;
  final int total;
  final int totalPages;
  final List<OrderListItem> records;
}

class OrderStatusCount {
  const OrderStatusCount({
    required this.all,
    required this.pendingPayment,
    required this.pendingShipment,
    required this.pendingReceipt,
    required this.completed,
    required this.cancelled,
  });

  final int all;
  final int pendingPayment;
  final int pendingShipment;
  final int pendingReceipt;
  final int completed;
  final int cancelled;
}

class OrderListParams {
  const OrderListParams({
    this.page,
    this.pageSize,
    this.frontStatus,
    this.keyword,
  });

  final int? page;
  final int? pageSize;
  final String? frontStatus;
  final String? keyword;
}

class OrderRepository {
  OrderRepository(this._ref);

  final Ref _ref;

  ApiError _createApiError(String message, Object? raw) {
    return ApiError(status: 400, message: message, raw: raw);
  }

  Future<AvailableCoupon?> getAvailableCoupon(List<CartPricingRequestItem> items) async {
    if (items.isEmpty) {
      return null;
    }

    final api = _ref.read(swaggerOrderApiProvider);
    final response = await api.orderServiceOrderAvailableCouponPost(
      root: {
        'skuList': items
            .map((item) => {
                  'skuCode': item.skuCode,
                  'quantity': item.quantity,
                })
            .toList(),
      },
    );

    final body = _toMap(response.body);
    if (body == null || _parseInt(body['code']) != 0) {
      throw _createApiError(body?['message']?.toString() ?? '获取可用优惠券失败', body);
    }

    final coupon = _toMap(body?['data']);
    final code = coupon?['couponCode']?.toString();
    if (code == null || code.isEmpty) {
      return null;
    }

    final rawAvailable = coupon?['available'];
    return AvailableCoupon(
      code: code,
      description: coupon?['discountInfo']?.toString(),
      discountAmount: _parseOptionalDouble(
        coupon?['targetDiscountAmount'] ?? coupon?['discountAmount'],
      ),
      currency: coupon?['targetCurrency']?.toString() ?? coupon?['currency']?.toString(),
      available: rawAvailable == null ? true : _jsBoolean(rawAvailable),
      unavailableReason: coupon?['unavailableReason']?.toString(),
    );
  }

  Future<OrderSubmitResult> submitOrder(SubmitOrderInput input) async {
    if (input.items.isEmpty) {
      throw _createApiError('提交订单需要至少一个商品', null);
    }
    if (input.country.isEmpty) {
      throw _createApiError('提交订单需要提供国家信息', null);
    }

    final api = _ref.read(swaggerOrderApiProvider);
    final response = await api.orderServiceOrderAppSubmitPost(
      root: {
        'country': input.country,
        'buyType': 1,
        'userAddressId': input.userAddressId,
        'userCouponCode': input.couponCode,
        'remark': input.remark,
        'isDraft': input.submitAsDraft ?? false,
        'sourceItems': [
          {
            'skuList': input.items
                .map((item) => {
                      'skuCode': item.skuCode,
                      'quantity': item.quantity,
                    })
                .toList(),
          },
        ],
      },
    );

    final body = _toMap(response.body);
    final data = _toMap(body?['data']);
    if (_parseInt(body?['code']) != 0 || data?['orderId'] == null) {
      throw _createApiError(body?['message']?.toString() ?? '提交订单失败', body);
    }

    return OrderSubmitResult(
      orderId: data?['orderId']?.toString() ?? '',
      orderStatus: _parseInt(data?['orderStatus']),
      isSingleWarehouse: _parseOptionalBool(data?['single']) ?? false,
      timeoutPeriod: _parseInt(data?['timeoutPeriod']),
    );
  }

  Future<void> updateOrder(UpdateOrderInput input) async {
    if (input.orderId.isEmpty) {
      throw _createApiError('更新订单需要提供订单号', null);
    }

    final payload = <String, dynamic>{
      'orderId': input.orderId,
      'userAddressId': input.userAddressId,
      'userCouponCode': input.couponCode,
      'remark': input.remark,
      'submitAnyWay': input.submitAnyway ?? false,
    };

    if (input.items != null && input.items!.isNotEmpty) {
      payload['itemList'] = input.items!
          .map((item) => {
                'skuCode': item.skuCode,
                'remark': item.remark,
              })
          .toList();
    }

    final api = _ref.read(swaggerOrderApiProvider);
    final response = await api.orderServiceOrderAppUpdatePost(root: payload);
    final body = _toMap(response.body);
    if (body == null || _parseInt(body['code']) != 0) {
      throw _createApiError(body?['message']?.toString() ?? '更新订单失败', body);
    }
  }

  Future<OrderPricingSummary> priceOrder(
    List<CartPricingRequestItem> items, {
    String? couponCode,
  }) async {
    if (items.isEmpty) {
      throw _createApiError('订单定价需要至少一个商品', null);
    }

    final api = _ref.read(swaggerOrderApiProvider);
    final response = await api.orderServiceOrderPricingPost(
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
    final data = _toMap(body?['data']);
    if (_parseInt(body?['code']) != 0 || data == null) {
      throw _createApiError(body?['message']?.toString() ?? '订单定价失败', body);
    }

    return OrderPricingSummary(
      totalAmount: _parseDouble(data['totalAmount']),
      targetTotalAmount: _parseDouble(data['targetTotalAmount']),
      currency: data['sellCur']?.toString(),
      targetCurrency: data['targetSellCur']?.toString() ?? data['sellCur']?.toString(),
      orderLimitAmount: _parseOptionalDouble(data['targetOrderLimitAmount']),
      shipLimitAmount: _parseOptionalDouble(data['targetShipLimitAmount']),
    );
  }

  Future<OrderListResponse> getOrderList(OrderListParams params) async {
    final api = _ref.read(swaggerOrderApiProvider);
    final response = await api.orderServiceOrderAppListGet(
      current: (params.page ?? 1).toString(),
      pageSize: (params.pageSize ?? 10).toString(),
      frontStatus: params.frontStatus,
      keyword: params.keyword,
    );

    final body = _toMap(response.body);
    final data = _toMap(body?['data']);
    if (_parseInt(body?['code']) != 0 || data == null) {
      throw _createApiError(body?['message']?.toString() ?? '获取订单列表失败', body);
    }

    return _parseOrderListPayload(data);
  }

  Future<OrderStatusCount> getOrderStatusCount() async {
    final api = _ref.read(swaggerOrderApiProvider);
    final response = await api.orderServiceOrderCountGet();
    final body = response.body;

    Map<String, dynamic>? parsed;
    if (body is String) {
      try {
        final decoded = jsonDecode(body);
        if (decoded is Map<String, dynamic>) {
          parsed = decoded;
        }
      } catch (error) {
        throw _createApiError('解析订单统计数据失败', {'body': body, 'error': error});
      }
    } else {
      parsed = _toMap(body);
    }

    if (parsed == null) {
      throw _createApiError('获取订单统计失败', response.body);
    }
    if (_parseInt(parsed['code']) != 0) {
      throw _createApiError(parsed?['message']?.toString() ?? '获取订单统计失败', parsed);
    }

    final data = _toMap(parsed?['data']);
    final rawCount = _toStringKeyMap(data?['frontStatusCount']);

    final pendingPayment = _readCount(rawCount, '1');
    final pendingShipment = _readCount(rawCount, '2');
    final pendingReceipt = _readCount(rawCount, '3');
    final completed = _readCount(rawCount, '4');
    final cancelled = _readCount(rawCount, '5');

    return OrderStatusCount(
      all: pendingPayment + pendingShipment + pendingReceipt + completed + cancelled,
      pendingPayment: pendingPayment,
      pendingShipment: pendingShipment,
      pendingReceipt: pendingReceipt,
      completed: completed,
      cancelled: cancelled,
    );
  }

  List<OrderSkuItem> _parseOrderSkuList(Object? value) {
    return _toList(value)
        .map((itemRaw) {
          final item = _toMap(itemRaw) ?? const {};
          final productCode = item['productCode']?.toString() ?? '';
          final skuCode = item['skuCode']?.toString() ?? '';
          if (productCode.isEmpty || skuCode.isEmpty) {
            return null;
          }
          return OrderSkuItem(
            productName: item['productName']?.toString() ?? '',
            productCode: productCode,
            skuCode: skuCode,
            image: item['image']?.toString(),
            quantity: _parseInt(item['quantity']),
            price: _parseOptionalDouble(item['targetSellPrice'] ?? item['sellPrice']),
            totalPrice: _parseOptionalDouble(
              item['targetTotalPrice'] ?? item['totalPrice'] ?? item['targetTotalFinalPrice'],
            ),
            currency: item['targetSellCur']?.toString() ?? item['sellCur']?.toString(),
            options: _toList(item['skuSpecValues'])
                .map((optionRaw) {
                  final option = _toMap(optionRaw);
                  if (option == null) return null;
                  return OrderSkuOption(
                    name: option['name']?.toString(),
                    value: option['value']?.toString(),
                  );
                })
                .whereType<OrderSkuOption>()
                .toList(),
          );
        })
        .whereType<OrderSkuItem>()
        .toList();
  }

  OrderListResponse _parseOrderListPayload(Map<String, dynamic> payload) {
    final records = _toList(payload['records']).map((recordRaw) {
      final record = _toMap(recordRaw) ?? const {};
      final items = _parseOrderSkuList(record['orderSkuList']);
      final payableAmount = _parseOptionalDouble(
        record['targetActualAmount'] ?? record['targetTotalAmount'] ?? record['totalAmount'],
      );
      final recordQuantity = _parseInt(record['quantity']);
      final itemsQuantity = items.fold<int>(
        0,
        (sum, item) => sum + item.quantity,
      );
      final quantity = recordQuantity > 0 ? recordQuantity : itemsQuantity;

      return OrderListItem(
        orderId: record['orderId']?.toString() ?? '',
        parentOrderId: record['parentOrderId']?.toString(),
        status: _parseInt(record['status']),
        orderStatus: _parseInt(record['orderStatus']),
        frontStatus: _parseInt(record['frontStatus']),
        statusText: record['statusContent']?.toString() ?? '未知状态',
        description: record['description']?.toString(),
        remark: record['remark']?.toString(),
        quantity: quantity,
        totalAmount: _parseOptionalDouble(record['targetTotalAmount'] ?? record['totalAmount']),
        payableAmount: payableAmount,
        currency: record['currency']?.toString(),
        targetCurrency: record['targetCurrency']?.toString() ?? record['currency']?.toString(),
        items: items,
      );
    }).toList();

    final totalPages = _parseInt(
      payload['totalPages'],
      fallback: records.isNotEmpty ? 1 : 0,
    );

    return OrderListResponse(
      current: _parseInt(payload['current'], fallback: 1),
      pageSize: _parseInt(payload['pageSize'], fallback: 10),
      total: _parseInt(payload['total']),
      totalPages: totalPages,
      records: records,
    );
  }
}

final orderRepositoryProvider = Provider<OrderRepository>((ref) {
  return OrderRepository(ref);
});

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

bool? _parseOptionalBool(Object? value) {
  if (value == null) {
    return null;
  }
  if (value is bool) {
    return value;
  }
  if (value is num) {
    return value != 0;
  }
  if (value is String) {
    if (value == '1' || value.toLowerCase() == 'true') {
      return true;
    }
    if (value == '0' || value.toLowerCase() == 'false') {
      return false;
    }
  }
  return null;
}

int _readCount(Map<String, dynamic> rawCount, String key) {
  final value = rawCount[key];
  if (value is num) {
    return value.toInt();
  }
  if (value is String) {
    final parsed = int.tryParse(value);
    if (parsed != null) {
      return parsed;
    }
    final doubleParsed = double.tryParse(value);
    return doubleParsed?.toInt() ?? 0;
  }
  return 0;
}

bool _jsBoolean(Object? value) {
  if (value == null) {
    return false;
  }
  if (value is bool) {
    return value;
  }
  if (value is num) {
    return value != 0;
  }
  if (value is String) {
    return value.isNotEmpty;
  }
  return true;
}

Map<String, dynamic> _toStringKeyMap(Object? value) {
  if (value is Map) {
    return value.map((key, value) => MapEntry(key.toString(), value));
  }
  return {};
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
