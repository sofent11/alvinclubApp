// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element_parameter

import 'package:json_annotation/json_annotation.dart';
import 'package:json_annotation/json_annotation.dart' as json;
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;
import 'swaggerApiPay.metadata.swagger.dart';

part 'swaggerApiPay.swagger.chopper.dart';
part 'swaggerApiPay.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class SwaggerApiPay extends ChopperService {
  static SwaggerApiPay create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    ErrorConverter? errorConverter,
    Converter? converter,
    Uri? baseUrl,
    List<Interceptor>? interceptors,
  }) {
    if (client != null) {
      return _$SwaggerApiPay(client);
    }

    final newClient = ChopperClient(
      services: [_$SwaggerApiPay()],
      converter: converter ?? $JsonSerializableConverter(),
      interceptors: interceptors ?? [],
      client: httpClient,
      authenticator: authenticator,
      errorConverter: errorConverter,
      baseUrl: baseUrl ?? Uri.parse('http://'),
    );
    return _$SwaggerApiPay(newClient);
  }

  ///提现记录
  ///@param current
  ///@param pageSize
  Future<chopper.Response<PayServiceWithdrawOrdersGet$Response>>
  payServiceWithdrawOrdersGet({
    required String? current,
    required String? pageSize,
  }) {
    generatedMapping.putIfAbsent(
      PayServiceWithdrawOrdersGet$Response,
      () => PayServiceWithdrawOrdersGet$Response.fromJsonFactory,
    );

    return _payServiceWithdrawOrdersGet(current: current, pageSize: pageSize);
  }

  ///提现记录
  ///@param current
  ///@param pageSize
  @GET(path: '/pay-service/withdraw/orders')
  Future<chopper.Response<PayServiceWithdrawOrdersGet$Response>>
  _payServiceWithdrawOrdersGet({
    @Query('current') required String? current,
    @Query('pageSize') required String? pageSize,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '提现记录',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["返佣"],
      deprecated: false,
    ),
  });

  ///申请提现
  ///@param root
  Future<chopper.Response<PayServiceWithdrawApplyPost$Response>>
  payServiceWithdrawApplyPost({Object? root}) {
    generatedMapping.putIfAbsent(
      PayServiceWithdrawApplyPost$Response,
      () => PayServiceWithdrawApplyPost$Response.fromJsonFactory,
    );

    return _payServiceWithdrawApplyPost(root: root);
  }

  ///申请提现
  ///@param root
  @POST(path: '/pay-service/withdraw/apply')
  Future<chopper.Response<PayServiceWithdrawApplyPost$Response>>
  _payServiceWithdrawApplyPost({
    @Body() Object? root,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '申请提现',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["返佣"],
      deprecated: false,
    ),
  });

  ///获取佣金总体信息接口
  Future<chopper.Response<PayServiceCommissionSummaryGet$Response>>
  payServiceCommissionSummaryGet() {
    generatedMapping.putIfAbsent(
      PayServiceCommissionSummaryGet$Response,
      () => PayServiceCommissionSummaryGet$Response.fromJsonFactory,
    );

    return _payServiceCommissionSummaryGet();
  }

  ///获取佣金总体信息接口
  @GET(path: '/pay-service/commission/summary')
  Future<chopper.Response<PayServiceCommissionSummaryGet$Response>>
  _payServiceCommissionSummaryGet({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '获取佣金总体信息接口',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["返佣"],
      deprecated: false,
    ),
  });

  ///获取交易记录接口
  ///@param current
  ///@param pageSize
  ///@param type 0或者不传全部 1佣金明细 2 提现明细
  Future<chopper.Response<PayServiceCommissionTransactionGet$Response>>
  payServiceCommissionTransactionGet({
    required String? current,
    required String? pageSize,
    required String? type,
  }) {
    generatedMapping.putIfAbsent(
      PayServiceCommissionTransactionGet$Response,
      () => PayServiceCommissionTransactionGet$Response.fromJsonFactory,
    );

    return _payServiceCommissionTransactionGet(
      current: current,
      pageSize: pageSize,
      type: type,
    );
  }

  ///获取交易记录接口
  ///@param current
  ///@param pageSize
  ///@param type 0或者不传全部 1佣金明细 2 提现明细
  @GET(path: '/pay-service/commission/transaction')
  Future<chopper.Response<PayServiceCommissionTransactionGet$Response>>
  _payServiceCommissionTransactionGet({
    @Query('current') required String? current,
    @Query('pageSize') required String? pageSize,
    @Query('type') required String? type,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '获取交易记录接口',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["返佣"],
      deprecated: false,
    ),
  });

  ///充值卡余额接口
  Future<chopper.Response<PayServiceRechargeBalanceGet$Response>>
  payServiceRechargeBalanceGet() {
    generatedMapping.putIfAbsent(
      PayServiceRechargeBalanceGet$Response,
      () => PayServiceRechargeBalanceGet$Response.fromJsonFactory,
    );

    return _payServiceRechargeBalanceGet();
  }

  ///充值卡余额接口
  @GET(path: '/pay-service/recharge/balance')
  Future<chopper.Response<PayServiceRechargeBalanceGet$Response>>
  _payServiceRechargeBalanceGet({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '充值卡余额接口',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["公共分类"],
      deprecated: false,
    ),
  });

  ///充值卡订单接口
  ///@param current
  ///@param pageSize
  Future<chopper.Response<PayServiceRechargeOrdersGet$Response>>
  payServiceRechargeOrdersGet({
    required String? current,
    required String? pageSize,
  }) {
    generatedMapping.putIfAbsent(
      PayServiceRechargeOrdersGet$Response,
      () => PayServiceRechargeOrdersGet$Response.fromJsonFactory,
    );

    return _payServiceRechargeOrdersGet(current: current, pageSize: pageSize);
  }

  ///充值卡订单接口
  ///@param current
  ///@param pageSize
  @GET(path: '/pay-service/recharge/orders')
  Future<chopper.Response<PayServiceRechargeOrdersGet$Response>>
  _payServiceRechargeOrdersGet({
    @Query('current') required String? current,
    @Query('pageSize') required String? pageSize,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '充值卡订单接口',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["公共分类"],
      deprecated: false,
    ),
  });

  ///充值记录接口
  ///@param current
  ///@param pageSize
  Future<chopper.Response<Object>> payServiceRechargeLogGet({
    required String? current,
    required String? pageSize,
  }) {
    return _payServiceRechargeLogGet(current: current, pageSize: pageSize);
  }

  ///充值记录接口
  ///@param current
  ///@param pageSize
  @GET(path: '/pay-service/recharge/log')
  Future<chopper.Response<Object>> _payServiceRechargeLogGet({
    @Query('current') required String? current,
    @Query('pageSize') required String? pageSize,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '充值记录接口',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["公共分类"],
      deprecated: false,
    ),
  });

  ///发起充值接口
  ///@param root
  Future<chopper.Response<PayServiceRechargeCreateOrderPost$Response>>
  payServiceRechargeCreateOrderPost({Object? root}) {
    generatedMapping.putIfAbsent(
      PayServiceRechargeCreateOrderPost$Response,
      () => PayServiceRechargeCreateOrderPost$Response.fromJsonFactory,
    );

    return _payServiceRechargeCreateOrderPost(root: root);
  }

  ///发起充值接口
  ///@param root
  @POST(path: '/pay-service/recharge/createOrder')
  Future<chopper.Response<PayServiceRechargeCreateOrderPost$Response>>
  _payServiceRechargeCreateOrderPost({
    @Body() Object? root,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '发起充值接口',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["公共分类"],
      deprecated: false,
    ),
  });

  ///发起支付
  ///@param root
  Future<chopper.Response<PayServicePayPayPost$Response>> payServicePayPayPost({
    Object? root,
  }) {
    generatedMapping.putIfAbsent(
      PayServicePayPayPost$Response,
      () => PayServicePayPayPost$Response.fromJsonFactory,
    );

    return _payServicePayPayPost(root: root);
  }

  ///发起支付
  ///@param root
  @POST(path: '/pay-service/pay/pay')
  Future<chopper.Response<PayServicePayPayPost$Response>>
  _payServicePayPayPost({
    @Body() Object? root,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '发起支付',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["公共分类"],
      deprecated: false,
    ),
  });

  ///支付结果
  ///@param orderId
  Future<chopper.Response<PayServicePayPayResultGet$Response>>
  payServicePayPayResultGet({required String? orderId}) {
    generatedMapping.putIfAbsent(
      PayServicePayPayResultGet$Response,
      () => PayServicePayPayResultGet$Response.fromJsonFactory,
    );

    return _payServicePayPayResultGet(orderId: orderId);
  }

  ///支付结果
  ///@param orderId
  @GET(path: '/pay-service/pay/payResult')
  Future<chopper.Response<PayServicePayPayResultGet$Response>>
  _payServicePayPayResultGet({
    @Query('orderId') required String? orderId,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '支付结果',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["公共分类"],
      deprecated: false,
    ),
  });

  ///收银台
  ///@param orderId
  ///@param orderType 0为商品订单，1为充值订单，2为包裹订单
  ///@param orderAmount
  ///@param currency
  Future<chopper.Response<PayServicePayPayTypeGet$Response>>
  payServicePayPayTypeGet({
    required String? orderId,
    String? orderType,
    String? orderAmount,
    String? currency,
  }) {
    generatedMapping.putIfAbsent(
      PayServicePayPayTypeGet$Response,
      () => PayServicePayPayTypeGet$Response.fromJsonFactory,
    );

    return _payServicePayPayTypeGet(
      orderId: orderId,
      orderType: orderType,
      orderAmount: orderAmount,
      currency: currency,
    );
  }

  ///收银台
  ///@param orderId
  ///@param orderType 0为商品订单，1为充值订单，2为包裹订单
  ///@param orderAmount
  ///@param currency
  @GET(path: '/pay-service/pay/payType')
  Future<chopper.Response<PayServicePayPayTypeGet$Response>>
  _payServicePayPayTypeGet({
    @Query('orderId') required String? orderId,
    @Query('orderType') String? orderType,
    @Query('orderAmount') String? orderAmount,
    @Query('currency') String? currency,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '收银台',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["公共分类"],
      deprecated: false,
    ),
  });

  ///RPC-回想币增加
  Future<chopper.Response<Object>> payServiceEchoooCoinAddBalanceGet() {
    return _payServiceEchoooCoinAddBalanceGet();
  }

  ///RPC-回想币增加
  @GET(path: '/pay-service/echoooCoin/addBalance')
  Future<chopper.Response<Object>> _payServiceEchoooCoinAddBalanceGet({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'RPC-回想币增加',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["回想币"],
      deprecated: false,
    ),
  });

  ///RPC-回想币扣减
  Future<chopper.Response> payServiceEchoooCoinSubBalanceGet() {
    return _payServiceEchoooCoinSubBalanceGet();
  }

  ///RPC-回想币扣减
  @GET(path: '/pay-service/echoooCoin/subBalance')
  Future<chopper.Response> _payServiceEchoooCoinSubBalanceGet({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'RPC-回想币扣减',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["回想币"],
      deprecated: false,
    ),
  });

  ///回响币所有类型查询
  Future<chopper.Response<PayServiceEchoooCoinTypeGet$Response>>
  payServiceEchoooCoinTypeGet() {
    generatedMapping.putIfAbsent(
      PayServiceEchoooCoinTypeGet$Response,
      () => PayServiceEchoooCoinTypeGet$Response.fromJsonFactory,
    );

    return _payServiceEchoooCoinTypeGet();
  }

  ///回响币所有类型查询
  @GET(path: '/pay-service/echoooCoin/type')
  Future<chopper.Response<PayServiceEchoooCoinTypeGet$Response>>
  _payServiceEchoooCoinTypeGet({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '回响币所有类型查询',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["回想币"],
      deprecated: false,
    ),
  });

  ///回想币余额
  Future<chopper.Response<PayServiceEchoooCoinInfoGet$Response>>
  payServiceEchoooCoinInfoGet() {
    generatedMapping.putIfAbsent(
      PayServiceEchoooCoinInfoGet$Response,
      () => PayServiceEchoooCoinInfoGet$Response.fromJsonFactory,
    );

    return _payServiceEchoooCoinInfoGet();
  }

  ///回想币余额
  @GET(path: '/pay-service/echoooCoin/info')
  Future<chopper.Response<PayServiceEchoooCoinInfoGet$Response>>
  _payServiceEchoooCoinInfoGet({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '回想币余额',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["回想币"],
      deprecated: false,
    ),
  });

  ///回想币明细接口
  ///@param current
  ///@param pageSize
  ///@param type 不填为查询全部, 充值卡收益填 14
  Future<chopper.Response<PayServiceEchoooCoinLogGet$Response>>
  payServiceEchoooCoinLogGet({
    required String? current,
    required String? pageSize,
    String? type,
  }) {
    generatedMapping.putIfAbsent(
      PayServiceEchoooCoinLogGet$Response,
      () => PayServiceEchoooCoinLogGet$Response.fromJsonFactory,
    );

    return _payServiceEchoooCoinLogGet(
      current: current,
      pageSize: pageSize,
      type: type,
    );
  }

  ///回想币明细接口
  ///@param current
  ///@param pageSize
  ///@param type 不填为查询全部, 充值卡收益填 14
  @GET(path: '/pay-service/echoooCoin/log')
  Future<chopper.Response<PayServiceEchoooCoinLogGet$Response>>
  _payServiceEchoooCoinLogGet({
    @Query('current') required String? current,
    @Query('pageSize') required String? pageSize,
    @Query('type') String? type,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '回想币明细接口',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["回想币"],
      deprecated: false,
    ),
  });
}

@JsonSerializable(explicitToJson: true)
class PayServiceWithdrawOrdersGet$Response {
  const PayServiceWithdrawOrdersGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.success,
  });

  factory PayServiceWithdrawOrdersGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServiceWithdrawOrdersGet$ResponseFromJson(json);

  static const toJsonFactory = _$PayServiceWithdrawOrdersGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$PayServiceWithdrawOrdersGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final PayServiceWithdrawOrdersGet$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$PayServiceWithdrawOrdersGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServiceWithdrawOrdersGet$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(
                  other.traceId,
                  traceId,
                )) &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(other.success, success)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(traceId) ^
      const DeepCollectionEquality().hash(success) ^
      runtimeType.hashCode;
}

extension $PayServiceWithdrawOrdersGet$ResponseExtension
    on PayServiceWithdrawOrdersGet$Response {
  PayServiceWithdrawOrdersGet$Response copyWith({
    double? code,
    String? message,
    PayServiceWithdrawOrdersGet$Response$Data? data,
    String? traceId,
    bool? success,
  }) {
    return PayServiceWithdrawOrdersGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      success: success ?? this.success,
    );
  }

  PayServiceWithdrawOrdersGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<PayServiceWithdrawOrdersGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<bool?>? success,
  }) {
    return PayServiceWithdrawOrdersGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServiceWithdrawApplyPost$Response {
  const PayServiceWithdrawApplyPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.success,
  });

  factory PayServiceWithdrawApplyPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServiceWithdrawApplyPost$ResponseFromJson(json);

  static const toJsonFactory = _$PayServiceWithdrawApplyPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$PayServiceWithdrawApplyPost$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final PayServiceWithdrawApplyPost$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$PayServiceWithdrawApplyPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServiceWithdrawApplyPost$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(
                  other.traceId,
                  traceId,
                )) &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(other.success, success)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(traceId) ^
      const DeepCollectionEquality().hash(success) ^
      runtimeType.hashCode;
}

extension $PayServiceWithdrawApplyPost$ResponseExtension
    on PayServiceWithdrawApplyPost$Response {
  PayServiceWithdrawApplyPost$Response copyWith({
    double? code,
    String? message,
    PayServiceWithdrawApplyPost$Response$Data? data,
    String? traceId,
    bool? success,
  }) {
    return PayServiceWithdrawApplyPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      success: success ?? this.success,
    );
  }

  PayServiceWithdrawApplyPost$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<PayServiceWithdrawApplyPost$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<bool?>? success,
  }) {
    return PayServiceWithdrawApplyPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServiceCommissionSummaryGet$Response {
  const PayServiceCommissionSummaryGet$Response({
    this.code,
    this.message,
    this.data,
  });

  factory PayServiceCommissionSummaryGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServiceCommissionSummaryGet$ResponseFromJson(json);

  static const toJsonFactory = _$PayServiceCommissionSummaryGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$PayServiceCommissionSummaryGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final PayServiceCommissionSummaryGet$Response$Data? data;
  static const fromJsonFactory =
      _$PayServiceCommissionSummaryGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServiceCommissionSummaryGet$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $PayServiceCommissionSummaryGet$ResponseExtension
    on PayServiceCommissionSummaryGet$Response {
  PayServiceCommissionSummaryGet$Response copyWith({
    double? code,
    String? message,
    PayServiceCommissionSummaryGet$Response$Data? data,
  }) {
    return PayServiceCommissionSummaryGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

  PayServiceCommissionSummaryGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<PayServiceCommissionSummaryGet$Response$Data?>? data,
  }) {
    return PayServiceCommissionSummaryGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServiceCommissionTransactionGet$Response {
  const PayServiceCommissionTransactionGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory PayServiceCommissionTransactionGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServiceCommissionTransactionGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$PayServiceCommissionTransactionGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$PayServiceCommissionTransactionGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final PayServiceCommissionTransactionGet$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory =
      _$PayServiceCommissionTransactionGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServiceCommissionTransactionGet$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(
                  other.traceId,
                  traceId,
                )) &&
            (identical(other.placeholder, placeholder) ||
                const DeepCollectionEquality().equals(
                  other.placeholder,
                  placeholder,
                )) &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(other.success, success)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(traceId) ^
      const DeepCollectionEquality().hash(placeholder) ^
      const DeepCollectionEquality().hash(success) ^
      runtimeType.hashCode;
}

extension $PayServiceCommissionTransactionGet$ResponseExtension
    on PayServiceCommissionTransactionGet$Response {
  PayServiceCommissionTransactionGet$Response copyWith({
    double? code,
    String? message,
    PayServiceCommissionTransactionGet$Response$Data? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return PayServiceCommissionTransactionGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  PayServiceCommissionTransactionGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<PayServiceCommissionTransactionGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return PayServiceCommissionTransactionGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServiceRechargeBalanceGet$Response {
  const PayServiceRechargeBalanceGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory PayServiceRechargeBalanceGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServiceRechargeBalanceGet$ResponseFromJson(json);

  static const toJsonFactory = _$PayServiceRechargeBalanceGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$PayServiceRechargeBalanceGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final PayServiceRechargeBalanceGet$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory =
      _$PayServiceRechargeBalanceGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServiceRechargeBalanceGet$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(
                  other.traceId,
                  traceId,
                )) &&
            (identical(other.placeholder, placeholder) ||
                const DeepCollectionEquality().equals(
                  other.placeholder,
                  placeholder,
                )) &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(other.success, success)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(traceId) ^
      const DeepCollectionEquality().hash(placeholder) ^
      const DeepCollectionEquality().hash(success) ^
      runtimeType.hashCode;
}

extension $PayServiceRechargeBalanceGet$ResponseExtension
    on PayServiceRechargeBalanceGet$Response {
  PayServiceRechargeBalanceGet$Response copyWith({
    double? code,
    String? message,
    PayServiceRechargeBalanceGet$Response$Data? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return PayServiceRechargeBalanceGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  PayServiceRechargeBalanceGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<PayServiceRechargeBalanceGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return PayServiceRechargeBalanceGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServiceRechargeOrdersGet$Response {
  const PayServiceRechargeOrdersGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.success,
  });

  factory PayServiceRechargeOrdersGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServiceRechargeOrdersGet$ResponseFromJson(json);

  static const toJsonFactory = _$PayServiceRechargeOrdersGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$PayServiceRechargeOrdersGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final PayServiceRechargeOrdersGet$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$PayServiceRechargeOrdersGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServiceRechargeOrdersGet$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(
                  other.traceId,
                  traceId,
                )) &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(other.success, success)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(traceId) ^
      const DeepCollectionEquality().hash(success) ^
      runtimeType.hashCode;
}

extension $PayServiceRechargeOrdersGet$ResponseExtension
    on PayServiceRechargeOrdersGet$Response {
  PayServiceRechargeOrdersGet$Response copyWith({
    double? code,
    String? message,
    PayServiceRechargeOrdersGet$Response$Data? data,
    String? traceId,
    bool? success,
  }) {
    return PayServiceRechargeOrdersGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      success: success ?? this.success,
    );
  }

  PayServiceRechargeOrdersGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<PayServiceRechargeOrdersGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<bool?>? success,
  }) {
    return PayServiceRechargeOrdersGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServiceRechargeCreateOrderPost$Response {
  const PayServiceRechargeCreateOrderPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory PayServiceRechargeCreateOrderPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServiceRechargeCreateOrderPost$ResponseFromJson(json);

  static const toJsonFactory =
      _$PayServiceRechargeCreateOrderPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$PayServiceRechargeCreateOrderPost$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final PayServiceRechargeCreateOrderPost$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory =
      _$PayServiceRechargeCreateOrderPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServiceRechargeCreateOrderPost$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(
                  other.traceId,
                  traceId,
                )) &&
            (identical(other.placeholder, placeholder) ||
                const DeepCollectionEquality().equals(
                  other.placeholder,
                  placeholder,
                )) &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(other.success, success)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(traceId) ^
      const DeepCollectionEquality().hash(placeholder) ^
      const DeepCollectionEquality().hash(success) ^
      runtimeType.hashCode;
}

extension $PayServiceRechargeCreateOrderPost$ResponseExtension
    on PayServiceRechargeCreateOrderPost$Response {
  PayServiceRechargeCreateOrderPost$Response copyWith({
    double? code,
    String? message,
    PayServiceRechargeCreateOrderPost$Response$Data? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return PayServiceRechargeCreateOrderPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  PayServiceRechargeCreateOrderPost$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<PayServiceRechargeCreateOrderPost$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return PayServiceRechargeCreateOrderPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServicePayPayPost$Response {
  const PayServicePayPayPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory PayServicePayPayPost$Response.fromJson(Map<String, dynamic> json) =>
      _$PayServicePayPayPost$ResponseFromJson(json);

  static const toJsonFactory = _$PayServicePayPayPost$ResponseToJson;
  Map<String, dynamic> toJson() => _$PayServicePayPayPost$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final PayServicePayPayPost$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$PayServicePayPayPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServicePayPayPost$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(
                  other.traceId,
                  traceId,
                )) &&
            (identical(other.placeholder, placeholder) ||
                const DeepCollectionEquality().equals(
                  other.placeholder,
                  placeholder,
                )) &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(other.success, success)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(traceId) ^
      const DeepCollectionEquality().hash(placeholder) ^
      const DeepCollectionEquality().hash(success) ^
      runtimeType.hashCode;
}

extension $PayServicePayPayPost$ResponseExtension
    on PayServicePayPayPost$Response {
  PayServicePayPayPost$Response copyWith({
    double? code,
    String? message,
    PayServicePayPayPost$Response$Data? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return PayServicePayPayPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  PayServicePayPayPost$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<PayServicePayPayPost$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return PayServicePayPayPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServicePayPayResultGet$Response {
  const PayServicePayPayResultGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory PayServicePayPayResultGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServicePayPayResultGet$ResponseFromJson(json);

  static const toJsonFactory = _$PayServicePayPayResultGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$PayServicePayPayResultGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final PayServicePayPayResultGet$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$PayServicePayPayResultGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServicePayPayResultGet$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(
                  other.traceId,
                  traceId,
                )) &&
            (identical(other.placeholder, placeholder) ||
                const DeepCollectionEquality().equals(
                  other.placeholder,
                  placeholder,
                )) &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(other.success, success)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(traceId) ^
      const DeepCollectionEquality().hash(placeholder) ^
      const DeepCollectionEquality().hash(success) ^
      runtimeType.hashCode;
}

extension $PayServicePayPayResultGet$ResponseExtension
    on PayServicePayPayResultGet$Response {
  PayServicePayPayResultGet$Response copyWith({
    double? code,
    String? message,
    PayServicePayPayResultGet$Response$Data? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return PayServicePayPayResultGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  PayServicePayPayResultGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<PayServicePayPayResultGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return PayServicePayPayResultGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServicePayPayTypeGet$Response {
  const PayServicePayPayTypeGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory PayServicePayPayTypeGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServicePayPayTypeGet$ResponseFromJson(json);

  static const toJsonFactory = _$PayServicePayPayTypeGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$PayServicePayPayTypeGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final PayServicePayPayTypeGet$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$PayServicePayPayTypeGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServicePayPayTypeGet$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(
                  other.traceId,
                  traceId,
                )) &&
            (identical(other.placeholder, placeholder) ||
                const DeepCollectionEquality().equals(
                  other.placeholder,
                  placeholder,
                )) &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(other.success, success)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(traceId) ^
      const DeepCollectionEquality().hash(placeholder) ^
      const DeepCollectionEquality().hash(success) ^
      runtimeType.hashCode;
}

extension $PayServicePayPayTypeGet$ResponseExtension
    on PayServicePayPayTypeGet$Response {
  PayServicePayPayTypeGet$Response copyWith({
    double? code,
    String? message,
    PayServicePayPayTypeGet$Response$Data? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return PayServicePayPayTypeGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  PayServicePayPayTypeGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<PayServicePayPayTypeGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return PayServicePayPayTypeGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServiceEchoooCoinTypeGet$Response {
  const PayServiceEchoooCoinTypeGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory PayServiceEchoooCoinTypeGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServiceEchoooCoinTypeGet$ResponseFromJson(json);

  static const toJsonFactory = _$PayServiceEchoooCoinTypeGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$PayServiceEchoooCoinTypeGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final List<PayServiceEchoooCoinTypeGet$Response$Data$Item>? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$PayServiceEchoooCoinTypeGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServiceEchoooCoinTypeGet$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(
                  other.traceId,
                  traceId,
                )) &&
            (identical(other.placeholder, placeholder) ||
                const DeepCollectionEquality().equals(
                  other.placeholder,
                  placeholder,
                )) &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(other.success, success)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(traceId) ^
      const DeepCollectionEquality().hash(placeholder) ^
      const DeepCollectionEquality().hash(success) ^
      runtimeType.hashCode;
}

extension $PayServiceEchoooCoinTypeGet$ResponseExtension
    on PayServiceEchoooCoinTypeGet$Response {
  PayServiceEchoooCoinTypeGet$Response copyWith({
    double? code,
    String? message,
    List<PayServiceEchoooCoinTypeGet$Response$Data$Item>? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return PayServiceEchoooCoinTypeGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  PayServiceEchoooCoinTypeGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<List<PayServiceEchoooCoinTypeGet$Response$Data$Item>?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return PayServiceEchoooCoinTypeGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServiceEchoooCoinInfoGet$Response {
  const PayServiceEchoooCoinInfoGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory PayServiceEchoooCoinInfoGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServiceEchoooCoinInfoGet$ResponseFromJson(json);

  static const toJsonFactory = _$PayServiceEchoooCoinInfoGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$PayServiceEchoooCoinInfoGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final PayServiceEchoooCoinInfoGet$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$PayServiceEchoooCoinInfoGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServiceEchoooCoinInfoGet$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(
                  other.traceId,
                  traceId,
                )) &&
            (identical(other.placeholder, placeholder) ||
                const DeepCollectionEquality().equals(
                  other.placeholder,
                  placeholder,
                )) &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(other.success, success)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(traceId) ^
      const DeepCollectionEquality().hash(placeholder) ^
      const DeepCollectionEquality().hash(success) ^
      runtimeType.hashCode;
}

extension $PayServiceEchoooCoinInfoGet$ResponseExtension
    on PayServiceEchoooCoinInfoGet$Response {
  PayServiceEchoooCoinInfoGet$Response copyWith({
    double? code,
    String? message,
    PayServiceEchoooCoinInfoGet$Response$Data? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return PayServiceEchoooCoinInfoGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  PayServiceEchoooCoinInfoGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<PayServiceEchoooCoinInfoGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return PayServiceEchoooCoinInfoGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServiceEchoooCoinLogGet$Response {
  const PayServiceEchoooCoinLogGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory PayServiceEchoooCoinLogGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServiceEchoooCoinLogGet$ResponseFromJson(json);

  static const toJsonFactory = _$PayServiceEchoooCoinLogGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$PayServiceEchoooCoinLogGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final PayServiceEchoooCoinLogGet$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$PayServiceEchoooCoinLogGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServiceEchoooCoinLogGet$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(
                  other.traceId,
                  traceId,
                )) &&
            (identical(other.placeholder, placeholder) ||
                const DeepCollectionEquality().equals(
                  other.placeholder,
                  placeholder,
                )) &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(other.success, success)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(traceId) ^
      const DeepCollectionEquality().hash(placeholder) ^
      const DeepCollectionEquality().hash(success) ^
      runtimeType.hashCode;
}

extension $PayServiceEchoooCoinLogGet$ResponseExtension
    on PayServiceEchoooCoinLogGet$Response {
  PayServiceEchoooCoinLogGet$Response copyWith({
    double? code,
    String? message,
    PayServiceEchoooCoinLogGet$Response$Data? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return PayServiceEchoooCoinLogGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  PayServiceEchoooCoinLogGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<PayServiceEchoooCoinLogGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return PayServiceEchoooCoinLogGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServiceWithdrawOrdersGet$Response$Data {
  const PayServiceWithdrawOrdersGet$Response$Data({
    this.records,
    this.total,
    this.size,
    this.current,
    this.pages,
  });

  factory PayServiceWithdrawOrdersGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServiceWithdrawOrdersGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$PayServiceWithdrawOrdersGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$PayServiceWithdrawOrdersGet$Response$DataToJson(this);

  @JsonKey(name: 'records')
  final List<PayServiceWithdrawOrdersGet$Response$Data$Records$Item>? records;
  @JsonKey(name: 'total')
  final double? total;
  @JsonKey(name: 'size')
  final double? size;
  @JsonKey(name: 'current')
  final double? current;
  @JsonKey(name: 'pages')
  final double? pages;
  static const fromJsonFactory =
      _$PayServiceWithdrawOrdersGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServiceWithdrawOrdersGet$Response$Data &&
            (identical(other.records, records) ||
                const DeepCollectionEquality().equals(
                  other.records,
                  records,
                )) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.current, current) ||
                const DeepCollectionEquality().equals(
                  other.current,
                  current,
                )) &&
            (identical(other.pages, pages) ||
                const DeepCollectionEquality().equals(other.pages, pages)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(records) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(current) ^
      const DeepCollectionEquality().hash(pages) ^
      runtimeType.hashCode;
}

extension $PayServiceWithdrawOrdersGet$Response$DataExtension
    on PayServiceWithdrawOrdersGet$Response$Data {
  PayServiceWithdrawOrdersGet$Response$Data copyWith({
    List<PayServiceWithdrawOrdersGet$Response$Data$Records$Item>? records,
    double? total,
    double? size,
    double? current,
    double? pages,
  }) {
    return PayServiceWithdrawOrdersGet$Response$Data(
      records: records ?? this.records,
      total: total ?? this.total,
      size: size ?? this.size,
      current: current ?? this.current,
      pages: pages ?? this.pages,
    );
  }

  PayServiceWithdrawOrdersGet$Response$Data copyWithWrapped({
    Wrapped<List<PayServiceWithdrawOrdersGet$Response$Data$Records$Item>?>?
    records,
    Wrapped<double?>? total,
    Wrapped<double?>? size,
    Wrapped<double?>? current,
    Wrapped<double?>? pages,
  }) {
    return PayServiceWithdrawOrdersGet$Response$Data(
      records: (records != null ? records.value : this.records),
      total: (total != null ? total.value : this.total),
      size: (size != null ? size.value : this.size),
      current: (current != null ? current.value : this.current),
      pages: (pages != null ? pages.value : this.pages),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServiceWithdrawApplyPost$Response$Data {
  const PayServiceWithdrawApplyPost$Response$Data({
    this.orderNo,
    this.amount,
    this.currency,
    this.status,
    this.rejectReason,
    this.createTime,
    this.completedTime,
  });

  factory PayServiceWithdrawApplyPost$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServiceWithdrawApplyPost$Response$DataFromJson(json);

  static const toJsonFactory =
      _$PayServiceWithdrawApplyPost$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$PayServiceWithdrawApplyPost$Response$DataToJson(this);

  @JsonKey(name: 'orderNo')
  final String? orderNo;
  @JsonKey(name: 'amount')
  final String? amount;
  @JsonKey(name: 'currency')
  final String? currency;
  @JsonKey(name: 'status')
  final double? status;
  @JsonKey(name: 'rejectReason')
  final String? rejectReason;
  @JsonKey(name: 'createTime')
  final String? createTime;
  @JsonKey(name: 'completedTime')
  final String? completedTime;
  static const fromJsonFactory =
      _$PayServiceWithdrawApplyPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServiceWithdrawApplyPost$Response$Data &&
            (identical(other.orderNo, orderNo) ||
                const DeepCollectionEquality().equals(
                  other.orderNo,
                  orderNo,
                )) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality().equals(
                  other.currency,
                  currency,
                )) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.rejectReason, rejectReason) ||
                const DeepCollectionEquality().equals(
                  other.rejectReason,
                  rejectReason,
                )) &&
            (identical(other.createTime, createTime) ||
                const DeepCollectionEquality().equals(
                  other.createTime,
                  createTime,
                )) &&
            (identical(other.completedTime, completedTime) ||
                const DeepCollectionEquality().equals(
                  other.completedTime,
                  completedTime,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orderNo) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(rejectReason) ^
      const DeepCollectionEquality().hash(createTime) ^
      const DeepCollectionEquality().hash(completedTime) ^
      runtimeType.hashCode;
}

extension $PayServiceWithdrawApplyPost$Response$DataExtension
    on PayServiceWithdrawApplyPost$Response$Data {
  PayServiceWithdrawApplyPost$Response$Data copyWith({
    String? orderNo,
    String? amount,
    String? currency,
    double? status,
    String? rejectReason,
    String? createTime,
    String? completedTime,
  }) {
    return PayServiceWithdrawApplyPost$Response$Data(
      orderNo: orderNo ?? this.orderNo,
      amount: amount ?? this.amount,
      currency: currency ?? this.currency,
      status: status ?? this.status,
      rejectReason: rejectReason ?? this.rejectReason,
      createTime: createTime ?? this.createTime,
      completedTime: completedTime ?? this.completedTime,
    );
  }

  PayServiceWithdrawApplyPost$Response$Data copyWithWrapped({
    Wrapped<String?>? orderNo,
    Wrapped<String?>? amount,
    Wrapped<String?>? currency,
    Wrapped<double?>? status,
    Wrapped<String?>? rejectReason,
    Wrapped<String?>? createTime,
    Wrapped<String?>? completedTime,
  }) {
    return PayServiceWithdrawApplyPost$Response$Data(
      orderNo: (orderNo != null ? orderNo.value : this.orderNo),
      amount: (amount != null ? amount.value : this.amount),
      currency: (currency != null ? currency.value : this.currency),
      status: (status != null ? status.value : this.status),
      rejectReason: (rejectReason != null
          ? rejectReason.value
          : this.rejectReason),
      createTime: (createTime != null ? createTime.value : this.createTime),
      completedTime: (completedTime != null
          ? completedTime.value
          : this.completedTime),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServiceCommissionSummaryGet$Response$Data {
  const PayServiceCommissionSummaryGet$Response$Data({
    this.commissionTotal,
    this.targetCurrencyTotal,
    this.withdrawAmount,
    this.withdrawableBalance,
    this.pendingCommission,
    this.totalPoints,
    this.pendingWithdrawAmount,
  });

  factory PayServiceCommissionSummaryGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServiceCommissionSummaryGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$PayServiceCommissionSummaryGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$PayServiceCommissionSummaryGet$Response$DataToJson(this);

  @JsonKey(name: 'commissionTotal')
  final String? commissionTotal;
  @JsonKey(name: 'targetCurrencyTotal')
  final String? targetCurrencyTotal;
  @JsonKey(name: 'withdrawAmount')
  final String? withdrawAmount;
  @JsonKey(name: 'withdrawableBalance')
  final String? withdrawableBalance;
  @JsonKey(name: 'pendingCommission')
  final String? pendingCommission;
  @JsonKey(name: 'totalPoints')
  final double? totalPoints;
  @JsonKey(name: 'pendingWithdrawAmount')
  final String? pendingWithdrawAmount;
  static const fromJsonFactory =
      _$PayServiceCommissionSummaryGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServiceCommissionSummaryGet$Response$Data &&
            (identical(other.commissionTotal, commissionTotal) ||
                const DeepCollectionEquality().equals(
                  other.commissionTotal,
                  commissionTotal,
                )) &&
            (identical(other.targetCurrencyTotal, targetCurrencyTotal) ||
                const DeepCollectionEquality().equals(
                  other.targetCurrencyTotal,
                  targetCurrencyTotal,
                )) &&
            (identical(other.withdrawAmount, withdrawAmount) ||
                const DeepCollectionEquality().equals(
                  other.withdrawAmount,
                  withdrawAmount,
                )) &&
            (identical(other.withdrawableBalance, withdrawableBalance) ||
                const DeepCollectionEquality().equals(
                  other.withdrawableBalance,
                  withdrawableBalance,
                )) &&
            (identical(other.pendingCommission, pendingCommission) ||
                const DeepCollectionEquality().equals(
                  other.pendingCommission,
                  pendingCommission,
                )) &&
            (identical(other.totalPoints, totalPoints) ||
                const DeepCollectionEquality().equals(
                  other.totalPoints,
                  totalPoints,
                )) &&
            (identical(other.pendingWithdrawAmount, pendingWithdrawAmount) ||
                const DeepCollectionEquality().equals(
                  other.pendingWithdrawAmount,
                  pendingWithdrawAmount,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(commissionTotal) ^
      const DeepCollectionEquality().hash(targetCurrencyTotal) ^
      const DeepCollectionEquality().hash(withdrawAmount) ^
      const DeepCollectionEquality().hash(withdrawableBalance) ^
      const DeepCollectionEquality().hash(pendingCommission) ^
      const DeepCollectionEquality().hash(totalPoints) ^
      const DeepCollectionEquality().hash(pendingWithdrawAmount) ^
      runtimeType.hashCode;
}

extension $PayServiceCommissionSummaryGet$Response$DataExtension
    on PayServiceCommissionSummaryGet$Response$Data {
  PayServiceCommissionSummaryGet$Response$Data copyWith({
    String? commissionTotal,
    String? targetCurrencyTotal,
    String? withdrawAmount,
    String? withdrawableBalance,
    String? pendingCommission,
    double? totalPoints,
    String? pendingWithdrawAmount,
  }) {
    return PayServiceCommissionSummaryGet$Response$Data(
      commissionTotal: commissionTotal ?? this.commissionTotal,
      targetCurrencyTotal: targetCurrencyTotal ?? this.targetCurrencyTotal,
      withdrawAmount: withdrawAmount ?? this.withdrawAmount,
      withdrawableBalance: withdrawableBalance ?? this.withdrawableBalance,
      pendingCommission: pendingCommission ?? this.pendingCommission,
      totalPoints: totalPoints ?? this.totalPoints,
      pendingWithdrawAmount:
          pendingWithdrawAmount ?? this.pendingWithdrawAmount,
    );
  }

  PayServiceCommissionSummaryGet$Response$Data copyWithWrapped({
    Wrapped<String?>? commissionTotal,
    Wrapped<String?>? targetCurrencyTotal,
    Wrapped<String?>? withdrawAmount,
    Wrapped<String?>? withdrawableBalance,
    Wrapped<String?>? pendingCommission,
    Wrapped<double?>? totalPoints,
    Wrapped<String?>? pendingWithdrawAmount,
  }) {
    return PayServiceCommissionSummaryGet$Response$Data(
      commissionTotal: (commissionTotal != null
          ? commissionTotal.value
          : this.commissionTotal),
      targetCurrencyTotal: (targetCurrencyTotal != null
          ? targetCurrencyTotal.value
          : this.targetCurrencyTotal),
      withdrawAmount: (withdrawAmount != null
          ? withdrawAmount.value
          : this.withdrawAmount),
      withdrawableBalance: (withdrawableBalance != null
          ? withdrawableBalance.value
          : this.withdrawableBalance),
      pendingCommission: (pendingCommission != null
          ? pendingCommission.value
          : this.pendingCommission),
      totalPoints: (totalPoints != null ? totalPoints.value : this.totalPoints),
      pendingWithdrawAmount: (pendingWithdrawAmount != null
          ? pendingWithdrawAmount.value
          : this.pendingWithdrawAmount),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServiceCommissionTransactionGet$Response$Data {
  const PayServiceCommissionTransactionGet$Response$Data({
    this.total,
    this.pageSize,
    this.totalPages,
    this.current,
    this.records,
  });

  factory PayServiceCommissionTransactionGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServiceCommissionTransactionGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$PayServiceCommissionTransactionGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$PayServiceCommissionTransactionGet$Response$DataToJson(this);

  @JsonKey(name: 'total')
  final double? total;
  @JsonKey(name: 'pageSize')
  final double? pageSize;
  @JsonKey(name: 'totalPages')
  final double? totalPages;
  @JsonKey(name: 'current')
  final double? current;
  @JsonKey(name: 'records')
  final List<PayServiceCommissionTransactionGet$Response$Data$Records$Item>?
  records;
  static const fromJsonFactory =
      _$PayServiceCommissionTransactionGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServiceCommissionTransactionGet$Response$Data &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality().equals(
                  other.pageSize,
                  pageSize,
                )) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality().equals(
                  other.totalPages,
                  totalPages,
                )) &&
            (identical(other.current, current) ||
                const DeepCollectionEquality().equals(
                  other.current,
                  current,
                )) &&
            (identical(other.records, records) ||
                const DeepCollectionEquality().equals(other.records, records)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(current) ^
      const DeepCollectionEquality().hash(records) ^
      runtimeType.hashCode;
}

extension $PayServiceCommissionTransactionGet$Response$DataExtension
    on PayServiceCommissionTransactionGet$Response$Data {
  PayServiceCommissionTransactionGet$Response$Data copyWith({
    double? total,
    double? pageSize,
    double? totalPages,
    double? current,
    List<PayServiceCommissionTransactionGet$Response$Data$Records$Item>?
    records,
  }) {
    return PayServiceCommissionTransactionGet$Response$Data(
      total: total ?? this.total,
      pageSize: pageSize ?? this.pageSize,
      totalPages: totalPages ?? this.totalPages,
      current: current ?? this.current,
      records: records ?? this.records,
    );
  }

  PayServiceCommissionTransactionGet$Response$Data copyWithWrapped({
    Wrapped<double?>? total,
    Wrapped<double?>? pageSize,
    Wrapped<double?>? totalPages,
    Wrapped<double?>? current,
    Wrapped<
      List<PayServiceCommissionTransactionGet$Response$Data$Records$Item>?
    >?
    records,
  }) {
    return PayServiceCommissionTransactionGet$Response$Data(
      total: (total != null ? total.value : this.total),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      totalPages: (totalPages != null ? totalPages.value : this.totalPages),
      current: (current != null ? current.value : this.current),
      records: (records != null ? records.value : this.records),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServiceRechargeBalanceGet$Response$Data {
  const PayServiceRechargeBalanceGet$Response$Data({
    this.balance,
    this.currency,
    this.yesterdayProfit,
    this.totalProfit,
    this.rechargeAmounts,
    this.rechargeAmountsText,
    this.rechargeRuleText,
    this.rechargeRuleTitle,
    this.targetBalance,
    this.rechargeReward,
    this.targetCurrency,
  });

  factory PayServiceRechargeBalanceGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServiceRechargeBalanceGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$PayServiceRechargeBalanceGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$PayServiceRechargeBalanceGet$Response$DataToJson(this);

  @JsonKey(name: 'balance')
  final String? balance;
  @JsonKey(name: 'currency')
  final PayServiceRechargeBalanceGet$Response$Data$Currency? currency;
  @JsonKey(name: 'yesterdayProfit')
  final String? yesterdayProfit;
  @JsonKey(name: 'totalProfit')
  final String? totalProfit;
  @JsonKey(name: 'rechargeAmounts')
  final String? rechargeAmounts;
  @JsonKey(name: 'rechargeAmountsText')
  final String? rechargeAmountsText;
  @JsonKey(name: 'rechargeRuleText')
  final String? rechargeRuleText;
  @JsonKey(name: 'rechargeRuleTitle')
  final String? rechargeRuleTitle;
  @JsonKey(name: 'targetBalance')
  final String? targetBalance;
  @JsonKey(name: 'rechargeReward')
  final PayServiceRechargeBalanceGet$Response$Data$RechargeReward?
  rechargeReward;
  @JsonKey(name: 'targetCurrency')
  final PayServiceRechargeBalanceGet$Response$Data$TargetCurrency?
  targetCurrency;
  static const fromJsonFactory =
      _$PayServiceRechargeBalanceGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServiceRechargeBalanceGet$Response$Data &&
            (identical(other.balance, balance) ||
                const DeepCollectionEquality().equals(
                  other.balance,
                  balance,
                )) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality().equals(
                  other.currency,
                  currency,
                )) &&
            (identical(other.yesterdayProfit, yesterdayProfit) ||
                const DeepCollectionEquality().equals(
                  other.yesterdayProfit,
                  yesterdayProfit,
                )) &&
            (identical(other.totalProfit, totalProfit) ||
                const DeepCollectionEquality().equals(
                  other.totalProfit,
                  totalProfit,
                )) &&
            (identical(other.rechargeAmounts, rechargeAmounts) ||
                const DeepCollectionEquality().equals(
                  other.rechargeAmounts,
                  rechargeAmounts,
                )) &&
            (identical(other.rechargeAmountsText, rechargeAmountsText) ||
                const DeepCollectionEquality().equals(
                  other.rechargeAmountsText,
                  rechargeAmountsText,
                )) &&
            (identical(other.rechargeRuleText, rechargeRuleText) ||
                const DeepCollectionEquality().equals(
                  other.rechargeRuleText,
                  rechargeRuleText,
                )) &&
            (identical(other.rechargeRuleTitle, rechargeRuleTitle) ||
                const DeepCollectionEquality().equals(
                  other.rechargeRuleTitle,
                  rechargeRuleTitle,
                )) &&
            (identical(other.targetBalance, targetBalance) ||
                const DeepCollectionEquality().equals(
                  other.targetBalance,
                  targetBalance,
                )) &&
            (identical(other.rechargeReward, rechargeReward) ||
                const DeepCollectionEquality().equals(
                  other.rechargeReward,
                  rechargeReward,
                )) &&
            (identical(other.targetCurrency, targetCurrency) ||
                const DeepCollectionEquality().equals(
                  other.targetCurrency,
                  targetCurrency,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(balance) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(yesterdayProfit) ^
      const DeepCollectionEquality().hash(totalProfit) ^
      const DeepCollectionEquality().hash(rechargeAmounts) ^
      const DeepCollectionEquality().hash(rechargeAmountsText) ^
      const DeepCollectionEquality().hash(rechargeRuleText) ^
      const DeepCollectionEquality().hash(rechargeRuleTitle) ^
      const DeepCollectionEquality().hash(targetBalance) ^
      const DeepCollectionEquality().hash(rechargeReward) ^
      const DeepCollectionEquality().hash(targetCurrency) ^
      runtimeType.hashCode;
}

extension $PayServiceRechargeBalanceGet$Response$DataExtension
    on PayServiceRechargeBalanceGet$Response$Data {
  PayServiceRechargeBalanceGet$Response$Data copyWith({
    String? balance,
    PayServiceRechargeBalanceGet$Response$Data$Currency? currency,
    String? yesterdayProfit,
    String? totalProfit,
    String? rechargeAmounts,
    String? rechargeAmountsText,
    String? rechargeRuleText,
    String? rechargeRuleTitle,
    String? targetBalance,
    PayServiceRechargeBalanceGet$Response$Data$RechargeReward? rechargeReward,
    PayServiceRechargeBalanceGet$Response$Data$TargetCurrency? targetCurrency,
  }) {
    return PayServiceRechargeBalanceGet$Response$Data(
      balance: balance ?? this.balance,
      currency: currency ?? this.currency,
      yesterdayProfit: yesterdayProfit ?? this.yesterdayProfit,
      totalProfit: totalProfit ?? this.totalProfit,
      rechargeAmounts: rechargeAmounts ?? this.rechargeAmounts,
      rechargeAmountsText: rechargeAmountsText ?? this.rechargeAmountsText,
      rechargeRuleText: rechargeRuleText ?? this.rechargeRuleText,
      rechargeRuleTitle: rechargeRuleTitle ?? this.rechargeRuleTitle,
      targetBalance: targetBalance ?? this.targetBalance,
      rechargeReward: rechargeReward ?? this.rechargeReward,
      targetCurrency: targetCurrency ?? this.targetCurrency,
    );
  }

  PayServiceRechargeBalanceGet$Response$Data copyWithWrapped({
    Wrapped<String?>? balance,
    Wrapped<PayServiceRechargeBalanceGet$Response$Data$Currency?>? currency,
    Wrapped<String?>? yesterdayProfit,
    Wrapped<String?>? totalProfit,
    Wrapped<String?>? rechargeAmounts,
    Wrapped<String?>? rechargeAmountsText,
    Wrapped<String?>? rechargeRuleText,
    Wrapped<String?>? rechargeRuleTitle,
    Wrapped<String?>? targetBalance,
    Wrapped<PayServiceRechargeBalanceGet$Response$Data$RechargeReward?>?
    rechargeReward,
    Wrapped<PayServiceRechargeBalanceGet$Response$Data$TargetCurrency?>?
    targetCurrency,
  }) {
    return PayServiceRechargeBalanceGet$Response$Data(
      balance: (balance != null ? balance.value : this.balance),
      currency: (currency != null ? currency.value : this.currency),
      yesterdayProfit: (yesterdayProfit != null
          ? yesterdayProfit.value
          : this.yesterdayProfit),
      totalProfit: (totalProfit != null ? totalProfit.value : this.totalProfit),
      rechargeAmounts: (rechargeAmounts != null
          ? rechargeAmounts.value
          : this.rechargeAmounts),
      rechargeAmountsText: (rechargeAmountsText != null
          ? rechargeAmountsText.value
          : this.rechargeAmountsText),
      rechargeRuleText: (rechargeRuleText != null
          ? rechargeRuleText.value
          : this.rechargeRuleText),
      rechargeRuleTitle: (rechargeRuleTitle != null
          ? rechargeRuleTitle.value
          : this.rechargeRuleTitle),
      targetBalance: (targetBalance != null
          ? targetBalance.value
          : this.targetBalance),
      rechargeReward: (rechargeReward != null
          ? rechargeReward.value
          : this.rechargeReward),
      targetCurrency: (targetCurrency != null
          ? targetCurrency.value
          : this.targetCurrency),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServiceRechargeOrdersGet$Response$Data {
  const PayServiceRechargeOrdersGet$Response$Data({
    this.records,
    this.total,
    this.size,
    this.current,
    this.pages,
  });

  factory PayServiceRechargeOrdersGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServiceRechargeOrdersGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$PayServiceRechargeOrdersGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$PayServiceRechargeOrdersGet$Response$DataToJson(this);

  @JsonKey(name: 'records')
  final List<PayServiceRechargeOrdersGet$Response$Data$Records$Item>? records;
  @JsonKey(name: 'total')
  final double? total;
  @JsonKey(name: 'size')
  final double? size;
  @JsonKey(name: 'current')
  final double? current;
  @JsonKey(name: 'pages')
  final double? pages;
  static const fromJsonFactory =
      _$PayServiceRechargeOrdersGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServiceRechargeOrdersGet$Response$Data &&
            (identical(other.records, records) ||
                const DeepCollectionEquality().equals(
                  other.records,
                  records,
                )) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.current, current) ||
                const DeepCollectionEquality().equals(
                  other.current,
                  current,
                )) &&
            (identical(other.pages, pages) ||
                const DeepCollectionEquality().equals(other.pages, pages)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(records) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(current) ^
      const DeepCollectionEquality().hash(pages) ^
      runtimeType.hashCode;
}

extension $PayServiceRechargeOrdersGet$Response$DataExtension
    on PayServiceRechargeOrdersGet$Response$Data {
  PayServiceRechargeOrdersGet$Response$Data copyWith({
    List<PayServiceRechargeOrdersGet$Response$Data$Records$Item>? records,
    double? total,
    double? size,
    double? current,
    double? pages,
  }) {
    return PayServiceRechargeOrdersGet$Response$Data(
      records: records ?? this.records,
      total: total ?? this.total,
      size: size ?? this.size,
      current: current ?? this.current,
      pages: pages ?? this.pages,
    );
  }

  PayServiceRechargeOrdersGet$Response$Data copyWithWrapped({
    Wrapped<List<PayServiceRechargeOrdersGet$Response$Data$Records$Item>?>?
    records,
    Wrapped<double?>? total,
    Wrapped<double?>? size,
    Wrapped<double?>? current,
    Wrapped<double?>? pages,
  }) {
    return PayServiceRechargeOrdersGet$Response$Data(
      records: (records != null ? records.value : this.records),
      total: (total != null ? total.value : this.total),
      size: (size != null ? size.value : this.size),
      current: (current != null ? current.value : this.current),
      pages: (pages != null ? pages.value : this.pages),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServiceRechargeCreateOrderPost$Response$Data {
  const PayServiceRechargeCreateOrderPost$Response$Data({this.orderId});

  factory PayServiceRechargeCreateOrderPost$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServiceRechargeCreateOrderPost$Response$DataFromJson(json);

  static const toJsonFactory =
      _$PayServiceRechargeCreateOrderPost$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$PayServiceRechargeCreateOrderPost$Response$DataToJson(this);

  @JsonKey(name: 'orderId')
  final String? orderId;
  static const fromJsonFactory =
      _$PayServiceRechargeCreateOrderPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServiceRechargeCreateOrderPost$Response$Data &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality().equals(other.orderId, orderId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orderId) ^ runtimeType.hashCode;
}

extension $PayServiceRechargeCreateOrderPost$Response$DataExtension
    on PayServiceRechargeCreateOrderPost$Response$Data {
  PayServiceRechargeCreateOrderPost$Response$Data copyWith({String? orderId}) {
    return PayServiceRechargeCreateOrderPost$Response$Data(
      orderId: orderId ?? this.orderId,
    );
  }

  PayServiceRechargeCreateOrderPost$Response$Data copyWithWrapped({
    Wrapped<String?>? orderId,
  }) {
    return PayServiceRechargeCreateOrderPost$Response$Data(
      orderId: (orderId != null ? orderId.value : this.orderId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServicePayPayPost$Response$Data {
  const PayServicePayPayPost$Response$Data({
    this.thirdPayParam,
    this.receiptAddress,
  });

  factory PayServicePayPayPost$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServicePayPayPost$Response$DataFromJson(json);

  static const toJsonFactory = _$PayServicePayPayPost$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$PayServicePayPayPost$Response$DataToJson(this);

  @JsonKey(name: 'thirdPayParam')
  final String? thirdPayParam;
  @JsonKey(name: 'receiptAddress')
  final String? receiptAddress;
  static const fromJsonFactory = _$PayServicePayPayPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServicePayPayPost$Response$Data &&
            (identical(other.thirdPayParam, thirdPayParam) ||
                const DeepCollectionEquality().equals(
                  other.thirdPayParam,
                  thirdPayParam,
                )) &&
            (identical(other.receiptAddress, receiptAddress) ||
                const DeepCollectionEquality().equals(
                  other.receiptAddress,
                  receiptAddress,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(thirdPayParam) ^
      const DeepCollectionEquality().hash(receiptAddress) ^
      runtimeType.hashCode;
}

extension $PayServicePayPayPost$Response$DataExtension
    on PayServicePayPayPost$Response$Data {
  PayServicePayPayPost$Response$Data copyWith({
    String? thirdPayParam,
    String? receiptAddress,
  }) {
    return PayServicePayPayPost$Response$Data(
      thirdPayParam: thirdPayParam ?? this.thirdPayParam,
      receiptAddress: receiptAddress ?? this.receiptAddress,
    );
  }

  PayServicePayPayPost$Response$Data copyWithWrapped({
    Wrapped<String?>? thirdPayParam,
    Wrapped<String?>? receiptAddress,
  }) {
    return PayServicePayPayPost$Response$Data(
      thirdPayParam: (thirdPayParam != null
          ? thirdPayParam.value
          : this.thirdPayParam),
      receiptAddress: (receiptAddress != null
          ? receiptAddress.value
          : this.receiptAddress),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServicePayPayResultGet$Response$Data {
  const PayServicePayPayResultGet$Response$Data({
    this.payStatus,
    this.orderType,
    this.currency,
    this.payAmount,
  });

  factory PayServicePayPayResultGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServicePayPayResultGet$Response$DataFromJson(json);

  static const toJsonFactory = _$PayServicePayPayResultGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$PayServicePayPayResultGet$Response$DataToJson(this);

  @JsonKey(name: 'payStatus')
  final double? payStatus;
  @JsonKey(name: 'orderType')
  final double? orderType;
  @JsonKey(name: 'currency')
  final PayServicePayPayResultGet$Response$Data$Currency? currency;
  @JsonKey(name: 'payAmount')
  final String? payAmount;
  static const fromJsonFactory =
      _$PayServicePayPayResultGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServicePayPayResultGet$Response$Data &&
            (identical(other.payStatus, payStatus) ||
                const DeepCollectionEquality().equals(
                  other.payStatus,
                  payStatus,
                )) &&
            (identical(other.orderType, orderType) ||
                const DeepCollectionEquality().equals(
                  other.orderType,
                  orderType,
                )) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality().equals(
                  other.currency,
                  currency,
                )) &&
            (identical(other.payAmount, payAmount) ||
                const DeepCollectionEquality().equals(
                  other.payAmount,
                  payAmount,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(payStatus) ^
      const DeepCollectionEquality().hash(orderType) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(payAmount) ^
      runtimeType.hashCode;
}

extension $PayServicePayPayResultGet$Response$DataExtension
    on PayServicePayPayResultGet$Response$Data {
  PayServicePayPayResultGet$Response$Data copyWith({
    double? payStatus,
    double? orderType,
    PayServicePayPayResultGet$Response$Data$Currency? currency,
    String? payAmount,
  }) {
    return PayServicePayPayResultGet$Response$Data(
      payStatus: payStatus ?? this.payStatus,
      orderType: orderType ?? this.orderType,
      currency: currency ?? this.currency,
      payAmount: payAmount ?? this.payAmount,
    );
  }

  PayServicePayPayResultGet$Response$Data copyWithWrapped({
    Wrapped<double?>? payStatus,
    Wrapped<double?>? orderType,
    Wrapped<PayServicePayPayResultGet$Response$Data$Currency?>? currency,
    Wrapped<String?>? payAmount,
  }) {
    return PayServicePayPayResultGet$Response$Data(
      payStatus: (payStatus != null ? payStatus.value : this.payStatus),
      orderType: (orderType != null ? orderType.value : this.orderType),
      currency: (currency != null ? currency.value : this.currency),
      payAmount: (payAmount != null ? payAmount.value : this.payAmount),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServicePayPayTypeGet$Response$Data {
  const PayServicePayPayTypeGet$Response$Data({this.list});

  factory PayServicePayPayTypeGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServicePayPayTypeGet$Response$DataFromJson(json);

  static const toJsonFactory = _$PayServicePayPayTypeGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$PayServicePayPayTypeGet$Response$DataToJson(this);

  @JsonKey(name: 'list')
  final List<PayServicePayPayTypeGet$Response$Data$List$Item>? list;
  static const fromJsonFactory =
      _$PayServicePayPayTypeGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServicePayPayTypeGet$Response$Data &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(list) ^ runtimeType.hashCode;
}

extension $PayServicePayPayTypeGet$Response$DataExtension
    on PayServicePayPayTypeGet$Response$Data {
  PayServicePayPayTypeGet$Response$Data copyWith({
    List<PayServicePayPayTypeGet$Response$Data$List$Item>? list,
  }) {
    return PayServicePayPayTypeGet$Response$Data(list: list ?? this.list);
  }

  PayServicePayPayTypeGet$Response$Data copyWithWrapped({
    Wrapped<List<PayServicePayPayTypeGet$Response$Data$List$Item>?>? list,
  }) {
    return PayServicePayPayTypeGet$Response$Data(
      list: (list != null ? list.value : this.list),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServiceEchoooCoinTypeGet$Response$Data$Item {
  const PayServiceEchoooCoinTypeGet$Response$Data$Item({this.type, this.name});

  factory PayServiceEchoooCoinTypeGet$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServiceEchoooCoinTypeGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$PayServiceEchoooCoinTypeGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$PayServiceEchoooCoinTypeGet$Response$Data$ItemToJson(this);

  @JsonKey(name: 'type')
  final double? type;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory =
      _$PayServiceEchoooCoinTypeGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServiceEchoooCoinTypeGet$Response$Data$Item &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $PayServiceEchoooCoinTypeGet$Response$Data$ItemExtension
    on PayServiceEchoooCoinTypeGet$Response$Data$Item {
  PayServiceEchoooCoinTypeGet$Response$Data$Item copyWith({
    double? type,
    String? name,
  }) {
    return PayServiceEchoooCoinTypeGet$Response$Data$Item(
      type: type ?? this.type,
      name: name ?? this.name,
    );
  }

  PayServiceEchoooCoinTypeGet$Response$Data$Item copyWithWrapped({
    Wrapped<double?>? type,
    Wrapped<String?>? name,
  }) {
    return PayServiceEchoooCoinTypeGet$Response$Data$Item(
      type: (type != null ? type.value : this.type),
      name: (name != null ? name.value : this.name),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServiceEchoooCoinInfoGet$Response$Data {
  const PayServiceEchoooCoinInfoGet$Response$Data({
    this.balance,
    this.percentage,
    this.deductibleAmount,
    this.accumulateAmount,
    this.currency,
  });

  factory PayServiceEchoooCoinInfoGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServiceEchoooCoinInfoGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$PayServiceEchoooCoinInfoGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$PayServiceEchoooCoinInfoGet$Response$DataToJson(this);

  @JsonKey(name: 'balance')
  final double? balance;
  @JsonKey(name: 'percentage')
  final String? percentage;
  @JsonKey(name: 'deductibleAmount')
  final String? deductibleAmount;
  @JsonKey(name: 'accumulateAmount')
  final String? accumulateAmount;
  @JsonKey(name: 'currency')
  final PayServiceEchoooCoinInfoGet$Response$Data$Currency? currency;
  static const fromJsonFactory =
      _$PayServiceEchoooCoinInfoGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServiceEchoooCoinInfoGet$Response$Data &&
            (identical(other.balance, balance) ||
                const DeepCollectionEquality().equals(
                  other.balance,
                  balance,
                )) &&
            (identical(other.percentage, percentage) ||
                const DeepCollectionEquality().equals(
                  other.percentage,
                  percentage,
                )) &&
            (identical(other.deductibleAmount, deductibleAmount) ||
                const DeepCollectionEquality().equals(
                  other.deductibleAmount,
                  deductibleAmount,
                )) &&
            (identical(other.accumulateAmount, accumulateAmount) ||
                const DeepCollectionEquality().equals(
                  other.accumulateAmount,
                  accumulateAmount,
                )) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality().equals(
                  other.currency,
                  currency,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(balance) ^
      const DeepCollectionEquality().hash(percentage) ^
      const DeepCollectionEquality().hash(deductibleAmount) ^
      const DeepCollectionEquality().hash(accumulateAmount) ^
      const DeepCollectionEquality().hash(currency) ^
      runtimeType.hashCode;
}

extension $PayServiceEchoooCoinInfoGet$Response$DataExtension
    on PayServiceEchoooCoinInfoGet$Response$Data {
  PayServiceEchoooCoinInfoGet$Response$Data copyWith({
    double? balance,
    String? percentage,
    String? deductibleAmount,
    String? accumulateAmount,
    PayServiceEchoooCoinInfoGet$Response$Data$Currency? currency,
  }) {
    return PayServiceEchoooCoinInfoGet$Response$Data(
      balance: balance ?? this.balance,
      percentage: percentage ?? this.percentage,
      deductibleAmount: deductibleAmount ?? this.deductibleAmount,
      accumulateAmount: accumulateAmount ?? this.accumulateAmount,
      currency: currency ?? this.currency,
    );
  }

  PayServiceEchoooCoinInfoGet$Response$Data copyWithWrapped({
    Wrapped<double?>? balance,
    Wrapped<String?>? percentage,
    Wrapped<String?>? deductibleAmount,
    Wrapped<String?>? accumulateAmount,
    Wrapped<PayServiceEchoooCoinInfoGet$Response$Data$Currency?>? currency,
  }) {
    return PayServiceEchoooCoinInfoGet$Response$Data(
      balance: (balance != null ? balance.value : this.balance),
      percentage: (percentage != null ? percentage.value : this.percentage),
      deductibleAmount: (deductibleAmount != null
          ? deductibleAmount.value
          : this.deductibleAmount),
      accumulateAmount: (accumulateAmount != null
          ? accumulateAmount.value
          : this.accumulateAmount),
      currency: (currency != null ? currency.value : this.currency),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServiceEchoooCoinLogGet$Response$Data {
  const PayServiceEchoooCoinLogGet$Response$Data({
    this.total,
    this.pageSize,
    this.totalPages,
    this.current,
    this.records,
  });

  factory PayServiceEchoooCoinLogGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServiceEchoooCoinLogGet$Response$DataFromJson(json);

  static const toJsonFactory = _$PayServiceEchoooCoinLogGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$PayServiceEchoooCoinLogGet$Response$DataToJson(this);

  @JsonKey(name: 'total')
  final double? total;
  @JsonKey(name: 'pageSize')
  final double? pageSize;
  @JsonKey(name: 'totalPages')
  final double? totalPages;
  @JsonKey(name: 'current')
  final double? current;
  @JsonKey(name: 'records')
  final List<PayServiceEchoooCoinLogGet$Response$Data$Records$Item>? records;
  static const fromJsonFactory =
      _$PayServiceEchoooCoinLogGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServiceEchoooCoinLogGet$Response$Data &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality().equals(
                  other.pageSize,
                  pageSize,
                )) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality().equals(
                  other.totalPages,
                  totalPages,
                )) &&
            (identical(other.current, current) ||
                const DeepCollectionEquality().equals(
                  other.current,
                  current,
                )) &&
            (identical(other.records, records) ||
                const DeepCollectionEquality().equals(other.records, records)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(current) ^
      const DeepCollectionEquality().hash(records) ^
      runtimeType.hashCode;
}

extension $PayServiceEchoooCoinLogGet$Response$DataExtension
    on PayServiceEchoooCoinLogGet$Response$Data {
  PayServiceEchoooCoinLogGet$Response$Data copyWith({
    double? total,
    double? pageSize,
    double? totalPages,
    double? current,
    List<PayServiceEchoooCoinLogGet$Response$Data$Records$Item>? records,
  }) {
    return PayServiceEchoooCoinLogGet$Response$Data(
      total: total ?? this.total,
      pageSize: pageSize ?? this.pageSize,
      totalPages: totalPages ?? this.totalPages,
      current: current ?? this.current,
      records: records ?? this.records,
    );
  }

  PayServiceEchoooCoinLogGet$Response$Data copyWithWrapped({
    Wrapped<double?>? total,
    Wrapped<double?>? pageSize,
    Wrapped<double?>? totalPages,
    Wrapped<double?>? current,
    Wrapped<List<PayServiceEchoooCoinLogGet$Response$Data$Records$Item>?>?
    records,
  }) {
    return PayServiceEchoooCoinLogGet$Response$Data(
      total: (total != null ? total.value : this.total),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      totalPages: (totalPages != null ? totalPages.value : this.totalPages),
      current: (current != null ? current.value : this.current),
      records: (records != null ? records.value : this.records),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServiceWithdrawOrdersGet$Response$Data$Records$Item {
  const PayServiceWithdrawOrdersGet$Response$Data$Records$Item({
    this.orderNo,
    this.amount,
    this.currency,
    this.status,
    this.remark,
    this.createTime,
    this.completedTime,
    this.attach,
    this.accountType,
    this.accountNo,
  });

  factory PayServiceWithdrawOrdersGet$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServiceWithdrawOrdersGet$Response$Data$Records$ItemFromJson(json);

  static const toJsonFactory =
      _$PayServiceWithdrawOrdersGet$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$PayServiceWithdrawOrdersGet$Response$Data$Records$ItemToJson(this);

  @JsonKey(name: 'orderNo')
  final String? orderNo;
  @JsonKey(name: 'amount')
  final String? amount;
  @JsonKey(name: 'currency')
  final String? currency;
  @JsonKey(name: 'status')
  final double? status;
  @JsonKey(name: 'remark')
  final String? remark;
  @JsonKey(name: 'createTime')
  final String? createTime;
  @JsonKey(name: 'completedTime')
  final String? completedTime;
  @JsonKey(name: 'attach')
  final String? attach;
  @JsonKey(name: 'accountType')
  final String? accountType;
  @JsonKey(name: 'accountNo')
  final String? accountNo;
  static const fromJsonFactory =
      _$PayServiceWithdrawOrdersGet$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServiceWithdrawOrdersGet$Response$Data$Records$Item &&
            (identical(other.orderNo, orderNo) ||
                const DeepCollectionEquality().equals(
                  other.orderNo,
                  orderNo,
                )) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality().equals(
                  other.currency,
                  currency,
                )) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.remark, remark) ||
                const DeepCollectionEquality().equals(other.remark, remark)) &&
            (identical(other.createTime, createTime) ||
                const DeepCollectionEquality().equals(
                  other.createTime,
                  createTime,
                )) &&
            (identical(other.completedTime, completedTime) ||
                const DeepCollectionEquality().equals(
                  other.completedTime,
                  completedTime,
                )) &&
            (identical(other.attach, attach) ||
                const DeepCollectionEquality().equals(other.attach, attach)) &&
            (identical(other.accountType, accountType) ||
                const DeepCollectionEquality().equals(
                  other.accountType,
                  accountType,
                )) &&
            (identical(other.accountNo, accountNo) ||
                const DeepCollectionEquality().equals(
                  other.accountNo,
                  accountNo,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orderNo) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(remark) ^
      const DeepCollectionEquality().hash(createTime) ^
      const DeepCollectionEquality().hash(completedTime) ^
      const DeepCollectionEquality().hash(attach) ^
      const DeepCollectionEquality().hash(accountType) ^
      const DeepCollectionEquality().hash(accountNo) ^
      runtimeType.hashCode;
}

extension $PayServiceWithdrawOrdersGet$Response$Data$Records$ItemExtension
    on PayServiceWithdrawOrdersGet$Response$Data$Records$Item {
  PayServiceWithdrawOrdersGet$Response$Data$Records$Item copyWith({
    String? orderNo,
    String? amount,
    String? currency,
    double? status,
    String? remark,
    String? createTime,
    String? completedTime,
    String? attach,
    String? accountType,
    String? accountNo,
  }) {
    return PayServiceWithdrawOrdersGet$Response$Data$Records$Item(
      orderNo: orderNo ?? this.orderNo,
      amount: amount ?? this.amount,
      currency: currency ?? this.currency,
      status: status ?? this.status,
      remark: remark ?? this.remark,
      createTime: createTime ?? this.createTime,
      completedTime: completedTime ?? this.completedTime,
      attach: attach ?? this.attach,
      accountType: accountType ?? this.accountType,
      accountNo: accountNo ?? this.accountNo,
    );
  }

  PayServiceWithdrawOrdersGet$Response$Data$Records$Item copyWithWrapped({
    Wrapped<String?>? orderNo,
    Wrapped<String?>? amount,
    Wrapped<String?>? currency,
    Wrapped<double?>? status,
    Wrapped<String?>? remark,
    Wrapped<String?>? createTime,
    Wrapped<String?>? completedTime,
    Wrapped<String?>? attach,
    Wrapped<String?>? accountType,
    Wrapped<String?>? accountNo,
  }) {
    return PayServiceWithdrawOrdersGet$Response$Data$Records$Item(
      orderNo: (orderNo != null ? orderNo.value : this.orderNo),
      amount: (amount != null ? amount.value : this.amount),
      currency: (currency != null ? currency.value : this.currency),
      status: (status != null ? status.value : this.status),
      remark: (remark != null ? remark.value : this.remark),
      createTime: (createTime != null ? createTime.value : this.createTime),
      completedTime: (completedTime != null
          ? completedTime.value
          : this.completedTime),
      attach: (attach != null ? attach.value : this.attach),
      accountType: (accountType != null ? accountType.value : this.accountType),
      accountNo: (accountNo != null ? accountNo.value : this.accountNo),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServiceCommissionTransactionGet$Response$Data$Records$Item {
  const PayServiceCommissionTransactionGet$Response$Data$Records$Item({
    this.amount,
    this.time,
    this.typeName,
    this.currency,
  });

  factory PayServiceCommissionTransactionGet$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServiceCommissionTransactionGet$Response$Data$Records$ItemFromJson(
    json,
  );

  static const toJsonFactory =
      _$PayServiceCommissionTransactionGet$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$PayServiceCommissionTransactionGet$Response$Data$Records$ItemToJson(
        this,
      );

  @JsonKey(name: 'amount')
  final String? amount;
  @JsonKey(name: 'time')
  final String? time;
  @JsonKey(name: 'typeName')
  final String? typeName;
  @JsonKey(name: 'currency')
  final String? currency;
  static const fromJsonFactory =
      _$PayServiceCommissionTransactionGet$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is PayServiceCommissionTransactionGet$Response$Data$Records$Item &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.typeName, typeName) ||
                const DeepCollectionEquality().equals(
                  other.typeName,
                  typeName,
                )) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality().equals(
                  other.currency,
                  currency,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(typeName) ^
      const DeepCollectionEquality().hash(currency) ^
      runtimeType.hashCode;
}

extension $PayServiceCommissionTransactionGet$Response$Data$Records$ItemExtension
    on PayServiceCommissionTransactionGet$Response$Data$Records$Item {
  PayServiceCommissionTransactionGet$Response$Data$Records$Item copyWith({
    String? amount,
    String? time,
    String? typeName,
    String? currency,
  }) {
    return PayServiceCommissionTransactionGet$Response$Data$Records$Item(
      amount: amount ?? this.amount,
      time: time ?? this.time,
      typeName: typeName ?? this.typeName,
      currency: currency ?? this.currency,
    );
  }

  PayServiceCommissionTransactionGet$Response$Data$Records$Item
  copyWithWrapped({
    Wrapped<String?>? amount,
    Wrapped<String?>? time,
    Wrapped<String?>? typeName,
    Wrapped<String?>? currency,
  }) {
    return PayServiceCommissionTransactionGet$Response$Data$Records$Item(
      amount: (amount != null ? amount.value : this.amount),
      time: (time != null ? time.value : this.time),
      typeName: (typeName != null ? typeName.value : this.typeName),
      currency: (currency != null ? currency.value : this.currency),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServiceRechargeBalanceGet$Response$Data$Currency {
  const PayServiceRechargeBalanceGet$Response$Data$Currency({
    this.name,
    this.symbol,
  });

  factory PayServiceRechargeBalanceGet$Response$Data$Currency.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServiceRechargeBalanceGet$Response$Data$CurrencyFromJson(json);

  static const toJsonFactory =
      _$PayServiceRechargeBalanceGet$Response$Data$CurrencyToJson;
  Map<String, dynamic> toJson() =>
      _$PayServiceRechargeBalanceGet$Response$Data$CurrencyToJson(this);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'symbol')
  final String? symbol;
  static const fromJsonFactory =
      _$PayServiceRechargeBalanceGet$Response$Data$CurrencyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServiceRechargeBalanceGet$Response$Data$Currency &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.symbol, symbol) ||
                const DeepCollectionEquality().equals(other.symbol, symbol)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(symbol) ^
      runtimeType.hashCode;
}

extension $PayServiceRechargeBalanceGet$Response$Data$CurrencyExtension
    on PayServiceRechargeBalanceGet$Response$Data$Currency {
  PayServiceRechargeBalanceGet$Response$Data$Currency copyWith({
    String? name,
    String? symbol,
  }) {
    return PayServiceRechargeBalanceGet$Response$Data$Currency(
      name: name ?? this.name,
      symbol: symbol ?? this.symbol,
    );
  }

  PayServiceRechargeBalanceGet$Response$Data$Currency copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<String?>? symbol,
  }) {
    return PayServiceRechargeBalanceGet$Response$Data$Currency(
      name: (name != null ? name.value : this.name),
      symbol: (symbol != null ? symbol.value : this.symbol),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServiceRechargeBalanceGet$Response$Data$RechargeReward {
  const PayServiceRechargeBalanceGet$Response$Data$RechargeReward({
    this.amount,
    this.expireAt,
  });

  factory PayServiceRechargeBalanceGet$Response$Data$RechargeReward.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PayServiceRechargeBalanceGet$Response$Data$RechargeRewardFromJson(json);

  static const toJsonFactory =
      _$PayServiceRechargeBalanceGet$Response$Data$RechargeRewardToJson;
  Map<String, dynamic> toJson() =>
      _$PayServiceRechargeBalanceGet$Response$Data$RechargeRewardToJson(this);

  @JsonKey(name: 'amount')
  final String? amount;
  @JsonKey(name: 'expireAt')
  final double? expireAt;
  static const fromJsonFactory =
      _$PayServiceRechargeBalanceGet$Response$Data$RechargeRewardFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServiceRechargeBalanceGet$Response$Data$RechargeReward &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.expireAt, expireAt) ||
                const DeepCollectionEquality().equals(
                  other.expireAt,
                  expireAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(expireAt) ^
      runtimeType.hashCode;
}

extension $PayServiceRechargeBalanceGet$Response$Data$RechargeRewardExtension
    on PayServiceRechargeBalanceGet$Response$Data$RechargeReward {
  PayServiceRechargeBalanceGet$Response$Data$RechargeReward copyWith({
    String? amount,
    double? expireAt,
  }) {
    return PayServiceRechargeBalanceGet$Response$Data$RechargeReward(
      amount: amount ?? this.amount,
      expireAt: expireAt ?? this.expireAt,
    );
  }

  PayServiceRechargeBalanceGet$Response$Data$RechargeReward copyWithWrapped({
    Wrapped<String?>? amount,
    Wrapped<double?>? expireAt,
  }) {
    return PayServiceRechargeBalanceGet$Response$Data$RechargeReward(
      amount: (amount != null ? amount.value : this.amount),
      expireAt: (expireAt != null ? expireAt.value : this.expireAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServiceRechargeBalanceGet$Response$Data$TargetCurrency {
  const PayServiceRechargeBalanceGet$Response$Data$TargetCurrency({
    this.name,
    this.symbol,
  });

  factory PayServiceRechargeBalanceGet$Response$Data$TargetCurrency.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PayServiceRechargeBalanceGet$Response$Data$TargetCurrencyFromJson(json);

  static const toJsonFactory =
      _$PayServiceRechargeBalanceGet$Response$Data$TargetCurrencyToJson;
  Map<String, dynamic> toJson() =>
      _$PayServiceRechargeBalanceGet$Response$Data$TargetCurrencyToJson(this);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'symbol')
  final String? symbol;
  static const fromJsonFactory =
      _$PayServiceRechargeBalanceGet$Response$Data$TargetCurrencyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServiceRechargeBalanceGet$Response$Data$TargetCurrency &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.symbol, symbol) ||
                const DeepCollectionEquality().equals(other.symbol, symbol)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(symbol) ^
      runtimeType.hashCode;
}

extension $PayServiceRechargeBalanceGet$Response$Data$TargetCurrencyExtension
    on PayServiceRechargeBalanceGet$Response$Data$TargetCurrency {
  PayServiceRechargeBalanceGet$Response$Data$TargetCurrency copyWith({
    String? name,
    String? symbol,
  }) {
    return PayServiceRechargeBalanceGet$Response$Data$TargetCurrency(
      name: name ?? this.name,
      symbol: symbol ?? this.symbol,
    );
  }

  PayServiceRechargeBalanceGet$Response$Data$TargetCurrency copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<String?>? symbol,
  }) {
    return PayServiceRechargeBalanceGet$Response$Data$TargetCurrency(
      name: (name != null ? name.value : this.name),
      symbol: (symbol != null ? symbol.value : this.symbol),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServiceRechargeOrdersGet$Response$Data$Records$Item {
  const PayServiceRechargeOrdersGet$Response$Data$Records$Item({
    this.id,
    this.userId,
    this.tenantCode,
    this.amount,
    this.currency,
    this.targetAmount,
    this.targetCurrency,
    this.gmtCreate,
    this.gmtUpdate,
    this.status,
    this.payType,
    this.payAmount,
    this.payFee,
    this.payOrderId,
  });

  factory PayServiceRechargeOrdersGet$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServiceRechargeOrdersGet$Response$Data$Records$ItemFromJson(json);

  static const toJsonFactory =
      _$PayServiceRechargeOrdersGet$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$PayServiceRechargeOrdersGet$Response$Data$Records$ItemToJson(this);

  @JsonKey(name: 'id')
  final double? id;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'tenantCode')
  final String? tenantCode;
  @JsonKey(name: 'amount')
  final String? amount;
  @JsonKey(name: 'currency')
  final String? currency;
  @JsonKey(name: 'targetAmount')
  final String? targetAmount;
  @JsonKey(name: 'targetCurrency')
  final String? targetCurrency;
  @JsonKey(name: 'gmtCreate')
  final String? gmtCreate;
  @JsonKey(name: 'gmtUpdate')
  final String? gmtUpdate;
  @JsonKey(name: 'status')
  final double? status;
  @JsonKey(name: 'payType')
  final double? payType;
  @JsonKey(name: 'payAmount')
  final String? payAmount;
  @JsonKey(name: 'payFee')
  final String? payFee;
  @JsonKey(name: 'payOrderId')
  final String? payOrderId;
  static const fromJsonFactory =
      _$PayServiceRechargeOrdersGet$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServiceRechargeOrdersGet$Response$Data$Records$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.tenantCode, tenantCode) ||
                const DeepCollectionEquality().equals(
                  other.tenantCode,
                  tenantCode,
                )) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality().equals(
                  other.currency,
                  currency,
                )) &&
            (identical(other.targetAmount, targetAmount) ||
                const DeepCollectionEquality().equals(
                  other.targetAmount,
                  targetAmount,
                )) &&
            (identical(other.targetCurrency, targetCurrency) ||
                const DeepCollectionEquality().equals(
                  other.targetCurrency,
                  targetCurrency,
                )) &&
            (identical(other.gmtCreate, gmtCreate) ||
                const DeepCollectionEquality().equals(
                  other.gmtCreate,
                  gmtCreate,
                )) &&
            (identical(other.gmtUpdate, gmtUpdate) ||
                const DeepCollectionEquality().equals(
                  other.gmtUpdate,
                  gmtUpdate,
                )) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.payType, payType) ||
                const DeepCollectionEquality().equals(
                  other.payType,
                  payType,
                )) &&
            (identical(other.payAmount, payAmount) ||
                const DeepCollectionEquality().equals(
                  other.payAmount,
                  payAmount,
                )) &&
            (identical(other.payFee, payFee) ||
                const DeepCollectionEquality().equals(other.payFee, payFee)) &&
            (identical(other.payOrderId, payOrderId) ||
                const DeepCollectionEquality().equals(
                  other.payOrderId,
                  payOrderId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(tenantCode) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(targetAmount) ^
      const DeepCollectionEquality().hash(targetCurrency) ^
      const DeepCollectionEquality().hash(gmtCreate) ^
      const DeepCollectionEquality().hash(gmtUpdate) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(payType) ^
      const DeepCollectionEquality().hash(payAmount) ^
      const DeepCollectionEquality().hash(payFee) ^
      const DeepCollectionEquality().hash(payOrderId) ^
      runtimeType.hashCode;
}

extension $PayServiceRechargeOrdersGet$Response$Data$Records$ItemExtension
    on PayServiceRechargeOrdersGet$Response$Data$Records$Item {
  PayServiceRechargeOrdersGet$Response$Data$Records$Item copyWith({
    double? id,
    String? userId,
    String? tenantCode,
    String? amount,
    String? currency,
    String? targetAmount,
    String? targetCurrency,
    String? gmtCreate,
    String? gmtUpdate,
    double? status,
    double? payType,
    String? payAmount,
    String? payFee,
    String? payOrderId,
  }) {
    return PayServiceRechargeOrdersGet$Response$Data$Records$Item(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      tenantCode: tenantCode ?? this.tenantCode,
      amount: amount ?? this.amount,
      currency: currency ?? this.currency,
      targetAmount: targetAmount ?? this.targetAmount,
      targetCurrency: targetCurrency ?? this.targetCurrency,
      gmtCreate: gmtCreate ?? this.gmtCreate,
      gmtUpdate: gmtUpdate ?? this.gmtUpdate,
      status: status ?? this.status,
      payType: payType ?? this.payType,
      payAmount: payAmount ?? this.payAmount,
      payFee: payFee ?? this.payFee,
      payOrderId: payOrderId ?? this.payOrderId,
    );
  }

  PayServiceRechargeOrdersGet$Response$Data$Records$Item copyWithWrapped({
    Wrapped<double?>? id,
    Wrapped<String?>? userId,
    Wrapped<String?>? tenantCode,
    Wrapped<String?>? amount,
    Wrapped<String?>? currency,
    Wrapped<String?>? targetAmount,
    Wrapped<String?>? targetCurrency,
    Wrapped<String?>? gmtCreate,
    Wrapped<String?>? gmtUpdate,
    Wrapped<double?>? status,
    Wrapped<double?>? payType,
    Wrapped<String?>? payAmount,
    Wrapped<String?>? payFee,
    Wrapped<String?>? payOrderId,
  }) {
    return PayServiceRechargeOrdersGet$Response$Data$Records$Item(
      id: (id != null ? id.value : this.id),
      userId: (userId != null ? userId.value : this.userId),
      tenantCode: (tenantCode != null ? tenantCode.value : this.tenantCode),
      amount: (amount != null ? amount.value : this.amount),
      currency: (currency != null ? currency.value : this.currency),
      targetAmount: (targetAmount != null
          ? targetAmount.value
          : this.targetAmount),
      targetCurrency: (targetCurrency != null
          ? targetCurrency.value
          : this.targetCurrency),
      gmtCreate: (gmtCreate != null ? gmtCreate.value : this.gmtCreate),
      gmtUpdate: (gmtUpdate != null ? gmtUpdate.value : this.gmtUpdate),
      status: (status != null ? status.value : this.status),
      payType: (payType != null ? payType.value : this.payType),
      payAmount: (payAmount != null ? payAmount.value : this.payAmount),
      payFee: (payFee != null ? payFee.value : this.payFee),
      payOrderId: (payOrderId != null ? payOrderId.value : this.payOrderId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServicePayPayResultGet$Response$Data$Currency {
  const PayServicePayPayResultGet$Response$Data$Currency({
    this.name,
    this.symbol,
  });

  factory PayServicePayPayResultGet$Response$Data$Currency.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServicePayPayResultGet$Response$Data$CurrencyFromJson(json);

  static const toJsonFactory =
      _$PayServicePayPayResultGet$Response$Data$CurrencyToJson;
  Map<String, dynamic> toJson() =>
      _$PayServicePayPayResultGet$Response$Data$CurrencyToJson(this);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'symbol')
  final String? symbol;
  static const fromJsonFactory =
      _$PayServicePayPayResultGet$Response$Data$CurrencyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServicePayPayResultGet$Response$Data$Currency &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.symbol, symbol) ||
                const DeepCollectionEquality().equals(other.symbol, symbol)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(symbol) ^
      runtimeType.hashCode;
}

extension $PayServicePayPayResultGet$Response$Data$CurrencyExtension
    on PayServicePayPayResultGet$Response$Data$Currency {
  PayServicePayPayResultGet$Response$Data$Currency copyWith({
    String? name,
    String? symbol,
  }) {
    return PayServicePayPayResultGet$Response$Data$Currency(
      name: name ?? this.name,
      symbol: symbol ?? this.symbol,
    );
  }

  PayServicePayPayResultGet$Response$Data$Currency copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<String?>? symbol,
  }) {
    return PayServicePayPayResultGet$Response$Data$Currency(
      name: (name != null ? name.value : this.name),
      symbol: (symbol != null ? symbol.value : this.symbol),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServicePayPayTypeGet$Response$Data$List$Item {
  const PayServicePayPayTypeGet$Response$Data$List$Item({
    this.payType,
    this.payAmount,
    this.currency,
    this.payTypeName,
    this.payTypeIcon,
    this.payTypeDesc,
    this.payFee,
    this.rechargeOnly,
    this.rechargeDifference,
    this.isDefault,
  });

  factory PayServicePayPayTypeGet$Response$Data$List$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServicePayPayTypeGet$Response$Data$List$ItemFromJson(json);

  static const toJsonFactory =
      _$PayServicePayPayTypeGet$Response$Data$List$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$PayServicePayPayTypeGet$Response$Data$List$ItemToJson(this);

  @JsonKey(name: 'payType')
  final String? payType;
  @JsonKey(name: 'payAmount')
  final String? payAmount;
  @JsonKey(name: 'currency')
  final PayServicePayPayTypeGet$Response$Data$List$Item$Currency? currency;
  @JsonKey(name: 'payTypeName')
  final String? payTypeName;
  @JsonKey(name: 'payTypeIcon')
  final String? payTypeIcon;
  @JsonKey(name: 'payTypeDesc')
  final String? payTypeDesc;
  @JsonKey(name: 'payFee')
  final String? payFee;
  @JsonKey(name: 'rechargeOnly')
  final String? rechargeOnly;
  @JsonKey(name: 'rechargeDifference')
  final String? rechargeDifference;
  @JsonKey(name: 'isDefault')
  final bool? isDefault;
  static const fromJsonFactory =
      _$PayServicePayPayTypeGet$Response$Data$List$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServicePayPayTypeGet$Response$Data$List$Item &&
            (identical(other.payType, payType) ||
                const DeepCollectionEquality().equals(
                  other.payType,
                  payType,
                )) &&
            (identical(other.payAmount, payAmount) ||
                const DeepCollectionEquality().equals(
                  other.payAmount,
                  payAmount,
                )) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality().equals(
                  other.currency,
                  currency,
                )) &&
            (identical(other.payTypeName, payTypeName) ||
                const DeepCollectionEquality().equals(
                  other.payTypeName,
                  payTypeName,
                )) &&
            (identical(other.payTypeIcon, payTypeIcon) ||
                const DeepCollectionEquality().equals(
                  other.payTypeIcon,
                  payTypeIcon,
                )) &&
            (identical(other.payTypeDesc, payTypeDesc) ||
                const DeepCollectionEquality().equals(
                  other.payTypeDesc,
                  payTypeDesc,
                )) &&
            (identical(other.payFee, payFee) ||
                const DeepCollectionEquality().equals(other.payFee, payFee)) &&
            (identical(other.rechargeOnly, rechargeOnly) ||
                const DeepCollectionEquality().equals(
                  other.rechargeOnly,
                  rechargeOnly,
                )) &&
            (identical(other.rechargeDifference, rechargeDifference) ||
                const DeepCollectionEquality().equals(
                  other.rechargeDifference,
                  rechargeDifference,
                )) &&
            (identical(other.isDefault, isDefault) ||
                const DeepCollectionEquality().equals(
                  other.isDefault,
                  isDefault,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(payType) ^
      const DeepCollectionEquality().hash(payAmount) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(payTypeName) ^
      const DeepCollectionEquality().hash(payTypeIcon) ^
      const DeepCollectionEquality().hash(payTypeDesc) ^
      const DeepCollectionEquality().hash(payFee) ^
      const DeepCollectionEquality().hash(rechargeOnly) ^
      const DeepCollectionEquality().hash(rechargeDifference) ^
      const DeepCollectionEquality().hash(isDefault) ^
      runtimeType.hashCode;
}

extension $PayServicePayPayTypeGet$Response$Data$List$ItemExtension
    on PayServicePayPayTypeGet$Response$Data$List$Item {
  PayServicePayPayTypeGet$Response$Data$List$Item copyWith({
    String? payType,
    String? payAmount,
    PayServicePayPayTypeGet$Response$Data$List$Item$Currency? currency,
    String? payTypeName,
    String? payTypeIcon,
    String? payTypeDesc,
    String? payFee,
    String? rechargeOnly,
    String? rechargeDifference,
    bool? isDefault,
  }) {
    return PayServicePayPayTypeGet$Response$Data$List$Item(
      payType: payType ?? this.payType,
      payAmount: payAmount ?? this.payAmount,
      currency: currency ?? this.currency,
      payTypeName: payTypeName ?? this.payTypeName,
      payTypeIcon: payTypeIcon ?? this.payTypeIcon,
      payTypeDesc: payTypeDesc ?? this.payTypeDesc,
      payFee: payFee ?? this.payFee,
      rechargeOnly: rechargeOnly ?? this.rechargeOnly,
      rechargeDifference: rechargeDifference ?? this.rechargeDifference,
      isDefault: isDefault ?? this.isDefault,
    );
  }

  PayServicePayPayTypeGet$Response$Data$List$Item copyWithWrapped({
    Wrapped<String?>? payType,
    Wrapped<String?>? payAmount,
    Wrapped<PayServicePayPayTypeGet$Response$Data$List$Item$Currency?>?
    currency,
    Wrapped<String?>? payTypeName,
    Wrapped<String?>? payTypeIcon,
    Wrapped<String?>? payTypeDesc,
    Wrapped<String?>? payFee,
    Wrapped<String?>? rechargeOnly,
    Wrapped<String?>? rechargeDifference,
    Wrapped<bool?>? isDefault,
  }) {
    return PayServicePayPayTypeGet$Response$Data$List$Item(
      payType: (payType != null ? payType.value : this.payType),
      payAmount: (payAmount != null ? payAmount.value : this.payAmount),
      currency: (currency != null ? currency.value : this.currency),
      payTypeName: (payTypeName != null ? payTypeName.value : this.payTypeName),
      payTypeIcon: (payTypeIcon != null ? payTypeIcon.value : this.payTypeIcon),
      payTypeDesc: (payTypeDesc != null ? payTypeDesc.value : this.payTypeDesc),
      payFee: (payFee != null ? payFee.value : this.payFee),
      rechargeOnly: (rechargeOnly != null
          ? rechargeOnly.value
          : this.rechargeOnly),
      rechargeDifference: (rechargeDifference != null
          ? rechargeDifference.value
          : this.rechargeDifference),
      isDefault: (isDefault != null ? isDefault.value : this.isDefault),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServiceEchoooCoinInfoGet$Response$Data$Currency {
  const PayServiceEchoooCoinInfoGet$Response$Data$Currency({
    this.name,
    this.symbol,
  });

  factory PayServiceEchoooCoinInfoGet$Response$Data$Currency.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServiceEchoooCoinInfoGet$Response$Data$CurrencyFromJson(json);

  static const toJsonFactory =
      _$PayServiceEchoooCoinInfoGet$Response$Data$CurrencyToJson;
  Map<String, dynamic> toJson() =>
      _$PayServiceEchoooCoinInfoGet$Response$Data$CurrencyToJson(this);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'symbol')
  final String? symbol;
  static const fromJsonFactory =
      _$PayServiceEchoooCoinInfoGet$Response$Data$CurrencyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServiceEchoooCoinInfoGet$Response$Data$Currency &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.symbol, symbol) ||
                const DeepCollectionEquality().equals(other.symbol, symbol)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(symbol) ^
      runtimeType.hashCode;
}

extension $PayServiceEchoooCoinInfoGet$Response$Data$CurrencyExtension
    on PayServiceEchoooCoinInfoGet$Response$Data$Currency {
  PayServiceEchoooCoinInfoGet$Response$Data$Currency copyWith({
    String? name,
    String? symbol,
  }) {
    return PayServiceEchoooCoinInfoGet$Response$Data$Currency(
      name: name ?? this.name,
      symbol: symbol ?? this.symbol,
    );
  }

  PayServiceEchoooCoinInfoGet$Response$Data$Currency copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<String?>? symbol,
  }) {
    return PayServiceEchoooCoinInfoGet$Response$Data$Currency(
      name: (name != null ? name.value : this.name),
      symbol: (symbol != null ? symbol.value : this.symbol),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServiceEchoooCoinLogGet$Response$Data$Records$Item {
  const PayServiceEchoooCoinLogGet$Response$Data$Records$Item({
    this.actualAmount,
    this.gmtCreate,
    this.type,
    this.name,
  });

  factory PayServiceEchoooCoinLogGet$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServiceEchoooCoinLogGet$Response$Data$Records$ItemFromJson(json);

  static const toJsonFactory =
      _$PayServiceEchoooCoinLogGet$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$PayServiceEchoooCoinLogGet$Response$Data$Records$ItemToJson(this);

  @JsonKey(name: 'actualAmount')
  final double? actualAmount;
  @JsonKey(name: 'gmtCreate')
  final double? gmtCreate;
  @JsonKey(name: 'type')
  final double? type;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory =
      _$PayServiceEchoooCoinLogGet$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServiceEchoooCoinLogGet$Response$Data$Records$Item &&
            (identical(other.actualAmount, actualAmount) ||
                const DeepCollectionEquality().equals(
                  other.actualAmount,
                  actualAmount,
                )) &&
            (identical(other.gmtCreate, gmtCreate) ||
                const DeepCollectionEquality().equals(
                  other.gmtCreate,
                  gmtCreate,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(actualAmount) ^
      const DeepCollectionEquality().hash(gmtCreate) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $PayServiceEchoooCoinLogGet$Response$Data$Records$ItemExtension
    on PayServiceEchoooCoinLogGet$Response$Data$Records$Item {
  PayServiceEchoooCoinLogGet$Response$Data$Records$Item copyWith({
    double? actualAmount,
    double? gmtCreate,
    double? type,
    String? name,
  }) {
    return PayServiceEchoooCoinLogGet$Response$Data$Records$Item(
      actualAmount: actualAmount ?? this.actualAmount,
      gmtCreate: gmtCreate ?? this.gmtCreate,
      type: type ?? this.type,
      name: name ?? this.name,
    );
  }

  PayServiceEchoooCoinLogGet$Response$Data$Records$Item copyWithWrapped({
    Wrapped<double?>? actualAmount,
    Wrapped<double?>? gmtCreate,
    Wrapped<double?>? type,
    Wrapped<String?>? name,
  }) {
    return PayServiceEchoooCoinLogGet$Response$Data$Records$Item(
      actualAmount: (actualAmount != null
          ? actualAmount.value
          : this.actualAmount),
      gmtCreate: (gmtCreate != null ? gmtCreate.value : this.gmtCreate),
      type: (type != null ? type.value : this.type),
      name: (name != null ? name.value : this.name),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayServicePayPayTypeGet$Response$Data$List$Item$Currency {
  const PayServicePayPayTypeGet$Response$Data$List$Item$Currency({
    this.name,
    this.symbol,
  });

  factory PayServicePayPayTypeGet$Response$Data$List$Item$Currency.fromJson(
    Map<String, dynamic> json,
  ) => _$PayServicePayPayTypeGet$Response$Data$List$Item$CurrencyFromJson(json);

  static const toJsonFactory =
      _$PayServicePayPayTypeGet$Response$Data$List$Item$CurrencyToJson;
  Map<String, dynamic> toJson() =>
      _$PayServicePayPayTypeGet$Response$Data$List$Item$CurrencyToJson(this);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'symbol')
  final String? symbol;
  static const fromJsonFactory =
      _$PayServicePayPayTypeGet$Response$Data$List$Item$CurrencyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayServicePayPayTypeGet$Response$Data$List$Item$Currency &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.symbol, symbol) ||
                const DeepCollectionEquality().equals(other.symbol, symbol)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(symbol) ^
      runtimeType.hashCode;
}

extension $PayServicePayPayTypeGet$Response$Data$List$Item$CurrencyExtension
    on PayServicePayPayTypeGet$Response$Data$List$Item$Currency {
  PayServicePayPayTypeGet$Response$Data$List$Item$Currency copyWith({
    String? name,
    String? symbol,
  }) {
    return PayServicePayPayTypeGet$Response$Data$List$Item$Currency(
      name: name ?? this.name,
      symbol: symbol ?? this.symbol,
    );
  }

  PayServicePayPayTypeGet$Response$Data$List$Item$Currency copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<String?>? symbol,
  }) {
    return PayServicePayPayTypeGet$Response$Data$List$Item$Currency(
      name: (name != null ? name.value : this.name),
      symbol: (symbol != null ? symbol.value : this.symbol),
    );
  }
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
    chopper.Response response,
  ) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    if (ResultType == String) {
      return response.copyWith();
    }

    if (ResultType == DateTime) {
      return response.copyWith(
        body:
            DateTime.parse((response.body as String).replaceAll('"', ''))
                as ResultType,
      );
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
      body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType,
    );
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
