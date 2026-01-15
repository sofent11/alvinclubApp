import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/error/api_error.dart';
import '../../core/env/env_config.dart';
import '../api/swagger_client.dart';
import '../api/generated/swaggerApiPay.swagger.dart' as pay;

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
    this.stripeCustomerId,
    this.stripeEphemeralKey,
  });

  final String? receiptAddress;
  final String? thirdPartyParams;
  final String? stripePublicKey;
  final String? stripeClientSecret;
  final String? stripeIntentId;
  final String? stripeCustomerId;
  final String? stripeEphemeralKey;
}

/// Payment status enum with localized display text.
/// Matches RN payment status codes from the API.
enum PayStatus {
  unknown,
  pending,
  processing,
  success,
  failed,
  canceled,
  timeout;

  /// Convert API status code to enum.
  /// RN Source: 2=SUCCESS, 3=FAILED, 1=PROCESSING, 0=PENDING
  static PayStatus fromCode(int code) {
    switch (code) {
      case 2:
        return PayStatus.success;
      case 3:
        return PayStatus.failed;
      case 1:
        return PayStatus.processing;
      case 4:
        return PayStatus.canceled;
      case 5:
        return PayStatus.timeout;
      case 0:
        return PayStatus.pending;
      default:
        return PayStatus.unknown;
    }
  }

  /// Localized display text for the status (Based on RN).
  String get displayText {
    switch (this) {
      case PayStatus.pending:
        return '等待支付';
      case PayStatus.processing:
        return '支付处理中';
      case PayStatus.success:
        return '支付成功';
      case PayStatus.failed:
        return '支付失败';
      case PayStatus.canceled:
        return '支付已取消';
      case PayStatus.timeout:
        return '支付超时';
      case PayStatus.unknown:
        return '查询状态中...';
    }
  }

  /// Whether this status is a terminal state (Based on RN isFinalStatus).
  bool get isTerminal =>
      this == success || this == failed || this == canceled || this == timeout;

  /// Whether this status represents a successful payment.
  bool get isSuccess => this == success;
}

class PayResult {
  const PayResult({
    required this.statusCode,
    this.orderType,
    this.amount,
    this.currency,
  });

  final int statusCode;
  final int? orderType;
  final double? amount;
  final String? currency;

  /// Get the parsed status enum.
  PayStatus get status => PayStatus.fromCode(statusCode);

  /// Convenience getter for display text.
  String get statusText => status.displayText;

  /// Whether payment is complete (terminal state).
  bool get isTerminal => status.isTerminal;

  /// Whether payment was successful.
  bool get isSuccess => status.isSuccess;
}

class PayRepository {
  PayRepository(this._ref);

  final Ref _ref;

  ApiError _createApiError(String message, Object? raw) {
    return ApiError(status: 400, message: message, raw: raw);
  }

  Future<List<PaymentMethod>> getPaymentMethods(
    GetPaymentMethodsInput input,
  ) async {
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

    final body = response.body;
    if (body == null) {
      throw _createApiError('获取支付方式失败', response.error);
    }
    if (_parseInt(body.code) != 0) {
      throw _createApiError(body.message ?? '获取支付方式失败', body);
    }

    final list = body.data?.list ?? const [];
    return list.asMap().entries.map((entry) {
      final index = entry.key;
      final method = entry.value;
      final currency = method.currency;
      return PaymentMethod(
        type: method.payType ?? 'method-$index',
        name: method.payTypeName ?? '未知支付方式',
        icon: method.payTypeIcon,
        description: method.payTypeDesc,
        fee: _parseOptionalDouble(method.payFee),
        rechargeOnly: method.rechargeOnly == '1',
        rechargeDifference: _parseOptionalDouble(method.rechargeDifference),
        isDefault: method.isDefault,
        amount: _parseOptionalDouble(method.payAmount),
        currency: currency?.symbol ?? currency?.name,
      );
    }).toList();
  }

  Future<InitiatePaymentResult> initiatePayment(
    InitiatePaymentInput input,
  ) async {
    if (input.orderId.isEmpty || input.payType.isEmpty) {
      throw _createApiError('发起支付需要提供订单号和支付方式', null);
    }

    final api = _ref.read(swaggerPayApiProvider);
    final response = await api.payServicePayPayPost(
      root: pay.PayServicePayPayPostRequest(
        orderId: input.orderId,
        payType: input.payType,
        orderType: input.orderType ?? '0',
        chainId: input.chainId,
        payTokenSymbol: input.payTokenSymbol,
        callbackUrl: input.callbackUrl,
        uiType: input.uiType,
      ),
    );

    final body = response.body;
    if (body == null) {
      throw _createApiError('发起支付失败', response.error);
    }
    if (_parseInt(body.code) != 0) {
      throw _createApiError(body.message ?? '发起支付失败', body);
    }

    final data = body.data;
    final thirdPayParam = data?.thirdPayParam;
    var receiptAddress = data?.receiptAddress;

    // If receiptAddress is missing, try to construct it from payInfoKey (RN parity)
    if (receiptAddress == null || receiptAddress.isEmpty) {
      final payInfoKey = _extractPayInfoKey(thirdPayParam);
      if (payInfoKey != null) {
        // Assume cashier URL follows pattern /pay/cashier?payInfoKey=...
        // Domain uses referer which defaults to www.alvinclub.com
        final host = EnvConfig.current.referer.replaceAll(RegExp(r'/$'), '');
        receiptAddress = '$host/pay/cashier?payInfoKey=$payInfoKey';
      }
    }

    final stripeParams = _extractStripeParams(thirdPayParam);

    return InitiatePaymentResult(
      receiptAddress: receiptAddress,
      thirdPartyParams: thirdPayParam,
      stripePublicKey: stripeParams.publicKey,
      stripeClientSecret: stripeParams.clientSecret,
      stripeIntentId: stripeParams.intentId,
      stripeCustomerId: stripeParams.customerId,
      stripeEphemeralKey: stripeParams.ephemeralKey,
    );
  }

  Future<PayResult> getPayResult(String orderId) async {
    if (orderId.isEmpty) {
      throw _createApiError('查询支付结果需要提供订单号', null);
    }

    final api = _ref.read(swaggerPayApiProvider);
    final response = await api.payServicePayPayResultGet(orderId: orderId);
    final body = response.body;
    if (body == null || _parseInt(body.code) != 0 || body.data == null) {
      throw _createApiError(body?.message ?? '查询支付结果失败', body);
    }

    final data = body.data;
    final currency = data?.currency;
    return PayResult(
      statusCode: data?.payStatus?.toInt() ?? 0,
      orderType: data?.orderType?.toInt(),
      amount: _parseOptionalDouble(data?.payAmount),
      currency: currency?.symbol ?? currency?.name,
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
    this.customerId,
    this.ephemeralKey,
  });

  final String? publicKey;
  final String? clientSecret;
  final String? intentId;
  final String? customerId;
  final String? ephemeralKey;
}

String? _extractPayInfoKey(String? thirdPayParam) {
  if (thirdPayParam == null || thirdPayParam.isEmpty) return null;

  // Try URL parsing
  try {
    final uri = Uri.tryParse(
      thirdPayParam.startsWith('http')
          ? thirdPayParam
          : 'https://dummy.com/$thirdPayParam',
    );
    if (uri != null && uri.queryParameters.containsKey('payInfoKey')) {
      return uri.queryParameters['payInfoKey'];
    }
  } catch (_) {}

  // Try JSON parsing
  try {
    final decoded = jsonDecode(thirdPayParam);
    if (decoded is Map && decoded.containsKey('payInfoKey')) {
      return decoded['payInfoKey']?.toString();
    }
  } catch (_) {}

  return null;
}

StripeParamResult _extractStripeParams(String? thirdPayParam) {
  if (thirdPayParam == null || thirdPayParam.isEmpty) {
    return const StripeParamResult();
  }

  // If it looks like JSON, try JSON first
  if (thirdPayParam.trim().startsWith('{')) {
    final fromJson = _parseStripeFromJson(thirdPayParam);
    if (fromJson != null) return fromJson;
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

    final publicKey =
        uri.queryParameters['publicKey'] ??
        uri.queryParameters['publishableKey'] ??
        uri.queryParameters['publickkey'];
    final clientSecret =
        uri.queryParameters['clientSecret'] ?? uri.queryParameters['secret'];
    final intentId =
        uri.queryParameters['intentId'] ??
        uri.queryParameters['paymentIntentId'] ??
        uri.queryParameters['intent'];

    if (publicKey == null && clientSecret == null) {
      return null;
    }

    return StripeParamResult(
      publicKey: publicKey,
      clientSecret: clientSecret,
      intentId: intentId,
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
      return value?.toString();
    }

    final publicKey =
        read('publishableKey') ?? read('publicKey') ?? read('publickkey');
    final clientSecret =
        read('paymentIntent') ?? read('clientSecret') ?? read('secret');

    if (publicKey == null && clientSecret == null) {
      return null;
    }

    return StripeParamResult(
      publicKey: publicKey,
      clientSecret: clientSecret,
      intentId:
          read('id') ??
          read('intentId') ??
          read('paymentIntentId') ??
          read('intent'),
      customerId: read('customer'),
      ephemeralKey: read('ephemeralKey'),
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
