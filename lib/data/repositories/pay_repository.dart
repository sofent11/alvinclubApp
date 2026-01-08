import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/error/api_error.dart';
import '../api/swagger_client.dart';

class PaymentMethod {
  const PaymentMethod({
    required this.type,
    required this.name,
    this.icon,
    this.description,
    this.fee,
    this.rechargeOnly,
    this.rechargeDifference,
    this.isDefault,
    this.amount,
    this.currency,
  });

  final String type;
  final String name;
  final String? icon;
  final String? description;
  final double? fee;
  final bool? rechargeOnly;
  final double? rechargeDifference;
  final bool? isDefault;
  final double? amount;
  final String? currency;
}

class GetPaymentMethodsInput {
  const GetPaymentMethodsInput({
    required this.orderId,
    this.orderType,
    this.orderAmount,
    this.currency,
  });

  final String orderId;
  final String? orderType;
  final String? orderAmount;
  final String? currency;
}

class InitiatePaymentInput {
  const InitiatePaymentInput({
    required this.orderId,
    required this.payType,
    this.orderType,
    this.chainId,
    this.payTokenSymbol,
    this.callbackUrl,
    this.uiType,
  });

  final String orderId;
  final String payType;
  final String? orderType;
  final String? chainId;
  final String? payTokenSymbol;
  final String? callbackUrl;
  final int? uiType;
}

class InitiatePaymentResult {
  const InitiatePaymentResult({
    this.receiptAddress,
    this.thirdPartyParams,
    this.stripePublicKey,
    this.stripeClientSecret,
    this.stripeIntentId,
  });

  final String? receiptAddress;
  final String? thirdPartyParams;
  final String? stripePublicKey;
  final String? stripeClientSecret;
  final String? stripeIntentId;
}

class PayResult {
  const PayResult({
    required this.status,
    this.orderType,
    this.amount,
    this.currency,
  });

  final int status;
  final int? orderType;
  final double? amount;
  final String? currency;
}

class PayRepository {
  PayRepository(this._ref);

  final Ref _ref;

  ApiError _createApiError(String message, Object? raw) {
    return ApiError(status: 400, message: message, raw: raw);
  }

  Future<List<PaymentMethod>> getPaymentMethods(GetPaymentMethodsInput input) async {
    if (input.orderId.isEmpty) {
      throw _createApiError('获取支付方式需要提供订单号', null);
    }

    final api = _ref.read(swaggerPayApiProvider);
    final response = await api.payServicePayPayTypeGet(
      orderId: input.orderId,
      orderType: input.orderType,
      orderAmount: input.orderAmount,
      currency: input.currency,
    );

    final body = _toMap(response.body);
    if (body == null) {
      throw _createApiError('获取支付方式失败', body);
    }
    if (_parseInt(body['code']) != 0) {
      throw _createApiError(body['message']?.toString() ?? '获取支付方式失败', body);
    }

    final list = _toList(_toMap(body['data'])?['list']);
    return list.asMap().entries.map((entry) {
      final index = entry.key;
      final method = _toMap(entry.value) ?? const {};
      final currency = _toMap(method['currency']);
      return PaymentMethod(
        type: method['payType']?.toString() ?? 'method-$index',
        name: method['payTypeName']?.toString() ?? '未知支付方式',
        icon: method['payTypeIcon']?.toString(),
        description: method['payTypeDesc']?.toString(),
        fee: _parseOptionalDouble(method['payFee']),
        rechargeOnly: method['rechargeOnly']?.toString() == '1',
        rechargeDifference: _parseOptionalDouble(method['rechargeDifference']),
        isDefault: _jsBoolean(method['isDefault']),
        amount: _parseOptionalDouble(method['payAmount']),
        currency: currency?['symbol']?.toString() ?? currency?['name']?.toString(),
      );
    }).toList();
  }

  Future<InitiatePaymentResult> initiatePayment(InitiatePaymentInput input) async {
    if (input.orderId.isEmpty || input.payType.isEmpty) {
      throw _createApiError('发起支付需要提供订单号和支付方式', null);
    }

    final api = _ref.read(swaggerPayApiProvider);
    final response = await api.payServicePayPayPost(
      root: {
        'orderId': input.orderId,
        'payType': input.payType,
        'orderType': input.orderType ?? '0',
        'chainId': input.chainId,
        'payTokenSymbol': input.payTokenSymbol,
        'callbackUrl': input.callbackUrl,
        'uiType': input.uiType,
      },
    );

    final body = _toMap(response.body);
    if (body == null) {
      throw _createApiError('发起支付失败', body);
    }
    if (_parseInt(body['code']) != 0) {
      throw _createApiError(body['message']?.toString() ?? '发起支付失败', body);
    }

    final data = _toMap(body['data']);
    final thirdPayParam = data?['thirdPayParam']?.toString();
    final stripeParams = _extractStripeParams(thirdPayParam);

    return InitiatePaymentResult(
      receiptAddress: data?['receiptAddress']?.toString(),
      thirdPartyParams: thirdPayParam,
      stripePublicKey: stripeParams.publicKey,
      stripeClientSecret: stripeParams.clientSecret,
      stripeIntentId: stripeParams.intentId,
    );
  }

  Future<PayResult> getPayResult(String orderId) async {
    if (orderId.isEmpty) {
      throw _createApiError('查询支付结果需要提供订单号', null);
    }

    final api = _ref.read(swaggerPayApiProvider);
    final response = await api.payServicePayPayResultGet(orderId: orderId);
    final body = _toMap(response.body);
    final data = _toMap(body?['data']);
    if (_parseInt(body?['code']) != 0 || data == null) {
      throw _createApiError(body?['message']?.toString() ?? '查询支付结果失败', body);
    }

    final currency = _toMap(data['currency']);
    return PayResult(
      status: _parseInt(data['payStatus']),
      orderType: _parseOptionalInt(data['orderType']),
      amount: _parseOptionalDouble(data['payAmount']),
      currency: currency?['symbol']?.toString() ?? currency?['name']?.toString(),
    );
  }
}

final payRepositoryProvider = Provider<PayRepository>((ref) {
  return PayRepository(ref);
});

class StripeParamResult {
  const StripeParamResult({
    this.publicKey,
    this.clientSecret,
    this.intentId,
  });

  final String? publicKey;
  final String? clientSecret;
  final String? intentId;
}

StripeParamResult _extractStripeParams(String? thirdPayParam) {
  if (thirdPayParam == null || thirdPayParam.isEmpty) {
    return const StripeParamResult();
  }
  return _parseStripeFromUrl(thirdPayParam) ??
      _parseStripeFromJson(thirdPayParam) ??
      const StripeParamResult();
}

StripeParamResult? _parseStripeFromUrl(String raw) {
  try {
    final Uri uri;
    if (raw.startsWith(RegExp(r'https?://', caseSensitive: false))) {
      uri = Uri.parse(raw);
    } else if (raw.startsWith('/') || raw.startsWith('?')) {
      uri = Uri.parse('https://placeholder.local$raw');
    } else {
      uri = Uri.parse('https://placeholder.local/$raw');
    }

    return StripeParamResult(
      publicKey: uri.queryParameters['publicKey'] ??
          uri.queryParameters['publishableKey'] ??
          uri.queryParameters['publickkey'],
      clientSecret: uri.queryParameters['clientSecret'] ?? uri.queryParameters['secret'],
      intentId: uri.queryParameters['intentId'] ??
          uri.queryParameters['paymentIntentId'] ??
          uri.queryParameters['intent'],
    );
  } catch (_) {
    return null;
  }
}

StripeParamResult? _parseStripeFromJson(String raw) {
  try {
    final decoded = jsonDecode(raw);
    if (decoded is! Map<String, dynamic>) {
      return null;
    }
    String? read(String key) {
      final value = decoded[key];
      return value is String ? value : null;
    }

    return StripeParamResult(
      publicKey: read('publicKey') ?? read('publishableKey') ?? read('publickkey'),
      clientSecret: read('clientSecret') ?? read('secret'),
      intentId: read('intentId') ?? read('paymentIntentId') ?? read('intent'),
    );
  } catch (_) {
    return null;
  }
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

int? _parseOptionalInt(Object? value) {
  if (value == null || value == '') {
    return null;
  }
  if (value is int) {
    return value;
  }
  if (value is num) {
    return value.toInt();
  }
  return int.tryParse(value.toString());
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
