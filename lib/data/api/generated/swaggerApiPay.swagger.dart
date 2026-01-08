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
      baseUrl: baseUrl ?? Uri.parse('http:///pay-service'),
    );
    return _$SwaggerApiPay(newClient);
  }

  ///提现记录
  ///@param current
  ///@param pageSize
  Future<chopper.Response<WithdrawOrdersGet$Response>> withdrawOrdersGet({
    required String? current,
    required String? pageSize,
  }) {
    generatedMapping.putIfAbsent(
      WithdrawOrdersGet$Response,
      () => WithdrawOrdersGet$Response.fromJsonFactory,
    );

    return _withdrawOrdersGet(current: current, pageSize: pageSize);
  }

  ///提现记录
  ///@param current
  ///@param pageSize
  @GET(path: '/withdraw/orders')
  Future<chopper.Response<WithdrawOrdersGet$Response>> _withdrawOrdersGet({
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
  Future<chopper.Response<WithdrawApplyPost$Response>> withdrawApplyPost({
    Object? root,
  }) {
    generatedMapping.putIfAbsent(
      WithdrawApplyPost$Response,
      () => WithdrawApplyPost$Response.fromJsonFactory,
    );

    return _withdrawApplyPost(root: root);
  }

  ///申请提现
  ///@param root
  @POST(path: '/withdraw/apply')
  Future<chopper.Response<WithdrawApplyPost$Response>> _withdrawApplyPost({
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
  Future<chopper.Response<CommissionSummaryGet$Response>>
  commissionSummaryGet() {
    generatedMapping.putIfAbsent(
      CommissionSummaryGet$Response,
      () => CommissionSummaryGet$Response.fromJsonFactory,
    );

    return _commissionSummaryGet();
  }

  ///获取佣金总体信息接口
  @GET(path: '/commission/summary')
  Future<chopper.Response<CommissionSummaryGet$Response>>
  _commissionSummaryGet({
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
  Future<chopper.Response<CommissionTransactionGet$Response>>
  commissionTransactionGet({
    required String? current,
    required String? pageSize,
    required String? type,
  }) {
    generatedMapping.putIfAbsent(
      CommissionTransactionGet$Response,
      () => CommissionTransactionGet$Response.fromJsonFactory,
    );

    return _commissionTransactionGet(
      current: current,
      pageSize: pageSize,
      type: type,
    );
  }

  ///获取交易记录接口
  ///@param current
  ///@param pageSize
  ///@param type 0或者不传全部 1佣金明细 2 提现明细
  @GET(path: '/commission/transaction')
  Future<chopper.Response<CommissionTransactionGet$Response>>
  _commissionTransactionGet({
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
  Future<chopper.Response<RechargeBalanceGet$Response>> rechargeBalanceGet() {
    generatedMapping.putIfAbsent(
      RechargeBalanceGet$Response,
      () => RechargeBalanceGet$Response.fromJsonFactory,
    );

    return _rechargeBalanceGet();
  }

  ///充值卡余额接口
  @GET(path: '/recharge/balance')
  Future<chopper.Response<RechargeBalanceGet$Response>> _rechargeBalanceGet({
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
  Future<chopper.Response<RechargeOrdersGet$Response>> rechargeOrdersGet({
    required String? current,
    required String? pageSize,
  }) {
    generatedMapping.putIfAbsent(
      RechargeOrdersGet$Response,
      () => RechargeOrdersGet$Response.fromJsonFactory,
    );

    return _rechargeOrdersGet(current: current, pageSize: pageSize);
  }

  ///充值卡订单接口
  ///@param current
  ///@param pageSize
  @GET(path: '/recharge/orders')
  Future<chopper.Response<RechargeOrdersGet$Response>> _rechargeOrdersGet({
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
  Future<chopper.Response<Object>> rechargeLogGet({
    required String? current,
    required String? pageSize,
  }) {
    return _rechargeLogGet(current: current, pageSize: pageSize);
  }

  ///充值记录接口
  ///@param current
  ///@param pageSize
  @GET(path: '/recharge/log')
  Future<chopper.Response<Object>> _rechargeLogGet({
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
  Future<chopper.Response<RechargeCreateOrderPost$Response>>
  rechargeCreateOrderPost({Object? root}) {
    generatedMapping.putIfAbsent(
      RechargeCreateOrderPost$Response,
      () => RechargeCreateOrderPost$Response.fromJsonFactory,
    );

    return _rechargeCreateOrderPost(root: root);
  }

  ///发起充值接口
  ///@param root
  @POST(path: '/recharge/createOrder')
  Future<chopper.Response<RechargeCreateOrderPost$Response>>
  _rechargeCreateOrderPost({
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
  Future<chopper.Response<PayPayPost$Response>> payPayPost({Object? root}) {
    generatedMapping.putIfAbsent(
      PayPayPost$Response,
      () => PayPayPost$Response.fromJsonFactory,
    );

    return _payPayPost(root: root);
  }

  ///发起支付
  ///@param root
  @POST(path: '/pay/pay')
  Future<chopper.Response<PayPayPost$Response>> _payPayPost({
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
  Future<chopper.Response<PayPayResultGet$Response>> payPayResultGet({
    required String? orderId,
  }) {
    generatedMapping.putIfAbsent(
      PayPayResultGet$Response,
      () => PayPayResultGet$Response.fromJsonFactory,
    );

    return _payPayResultGet(orderId: orderId);
  }

  ///支付结果
  ///@param orderId
  @GET(path: '/pay/payResult')
  Future<chopper.Response<PayPayResultGet$Response>> _payPayResultGet({
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
  Future<chopper.Response<PayPayTypeGet$Response>> payPayTypeGet({
    required String? orderId,
    String? orderType,
    String? orderAmount,
    String? currency,
  }) {
    generatedMapping.putIfAbsent(
      PayPayTypeGet$Response,
      () => PayPayTypeGet$Response.fromJsonFactory,
    );

    return _payPayTypeGet(
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
  @GET(path: '/pay/payType')
  Future<chopper.Response<PayPayTypeGet$Response>> _payPayTypeGet({
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
  Future<chopper.Response<Object>> echoooCoinAddBalanceGet() {
    return _echoooCoinAddBalanceGet();
  }

  ///RPC-回想币增加
  @GET(path: '/echoooCoin/addBalance')
  Future<chopper.Response<Object>> _echoooCoinAddBalanceGet({
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
  Future<chopper.Response> echoooCoinSubBalanceGet() {
    return _echoooCoinSubBalanceGet();
  }

  ///RPC-回想币扣减
  @GET(path: '/echoooCoin/subBalance')
  Future<chopper.Response> _echoooCoinSubBalanceGet({
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
  Future<chopper.Response<EchoooCoinTypeGet$Response>> echoooCoinTypeGet() {
    generatedMapping.putIfAbsent(
      EchoooCoinTypeGet$Response,
      () => EchoooCoinTypeGet$Response.fromJsonFactory,
    );

    return _echoooCoinTypeGet();
  }

  ///回响币所有类型查询
  @GET(path: '/echoooCoin/type')
  Future<chopper.Response<EchoooCoinTypeGet$Response>> _echoooCoinTypeGet({
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
  Future<chopper.Response<EchoooCoinInfoGet$Response>> echoooCoinInfoGet() {
    generatedMapping.putIfAbsent(
      EchoooCoinInfoGet$Response,
      () => EchoooCoinInfoGet$Response.fromJsonFactory,
    );

    return _echoooCoinInfoGet();
  }

  ///回想币余额
  @GET(path: '/echoooCoin/info')
  Future<chopper.Response<EchoooCoinInfoGet$Response>> _echoooCoinInfoGet({
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
  Future<chopper.Response<EchoooCoinLogGet$Response>> echoooCoinLogGet({
    required String? current,
    required String? pageSize,
    String? type,
  }) {
    generatedMapping.putIfAbsent(
      EchoooCoinLogGet$Response,
      () => EchoooCoinLogGet$Response.fromJsonFactory,
    );

    return _echoooCoinLogGet(current: current, pageSize: pageSize, type: type);
  }

  ///回想币明细接口
  ///@param current
  ///@param pageSize
  ///@param type 不填为查询全部, 充值卡收益填 14
  @GET(path: '/echoooCoin/log')
  Future<chopper.Response<EchoooCoinLogGet$Response>> _echoooCoinLogGet({
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
class WithdrawOrdersGet$Response {
  const WithdrawOrdersGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.success,
  });

  factory WithdrawOrdersGet$Response.fromJson(Map<String, dynamic> json) =>
      _$WithdrawOrdersGet$ResponseFromJson(json);

  static const toJsonFactory = _$WithdrawOrdersGet$ResponseToJson;
  Map<String, dynamic> toJson() => _$WithdrawOrdersGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final WithdrawOrdersGet$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$WithdrawOrdersGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is WithdrawOrdersGet$Response &&
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

extension $WithdrawOrdersGet$ResponseExtension on WithdrawOrdersGet$Response {
  WithdrawOrdersGet$Response copyWith({
    double? code,
    String? message,
    WithdrawOrdersGet$Response$Data? data,
    String? traceId,
    bool? success,
  }) {
    return WithdrawOrdersGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      success: success ?? this.success,
    );
  }

  WithdrawOrdersGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<WithdrawOrdersGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<bool?>? success,
  }) {
    return WithdrawOrdersGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class WithdrawApplyPost$Response {
  const WithdrawApplyPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.success,
  });

  factory WithdrawApplyPost$Response.fromJson(Map<String, dynamic> json) =>
      _$WithdrawApplyPost$ResponseFromJson(json);

  static const toJsonFactory = _$WithdrawApplyPost$ResponseToJson;
  Map<String, dynamic> toJson() => _$WithdrawApplyPost$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final WithdrawApplyPost$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$WithdrawApplyPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is WithdrawApplyPost$Response &&
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

extension $WithdrawApplyPost$ResponseExtension on WithdrawApplyPost$Response {
  WithdrawApplyPost$Response copyWith({
    double? code,
    String? message,
    WithdrawApplyPost$Response$Data? data,
    String? traceId,
    bool? success,
  }) {
    return WithdrawApplyPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      success: success ?? this.success,
    );
  }

  WithdrawApplyPost$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<WithdrawApplyPost$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<bool?>? success,
  }) {
    return WithdrawApplyPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CommissionSummaryGet$Response {
  const CommissionSummaryGet$Response({
    required this.code,
    required this.message,
    required this.data,
  });

  factory CommissionSummaryGet$Response.fromJson(Map<String, dynamic> json) =>
      _$CommissionSummaryGet$ResponseFromJson(json);

  static const toJsonFactory = _$CommissionSummaryGet$ResponseToJson;
  Map<String, dynamic> toJson() => _$CommissionSummaryGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double code;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final CommissionSummaryGet$Response$Data data;
  static const fromJsonFactory = _$CommissionSummaryGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CommissionSummaryGet$Response &&
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

extension $CommissionSummaryGet$ResponseExtension
    on CommissionSummaryGet$Response {
  CommissionSummaryGet$Response copyWith({
    double? code,
    String? message,
    CommissionSummaryGet$Response$Data? data,
  }) {
    return CommissionSummaryGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

  CommissionSummaryGet$Response copyWithWrapped({
    Wrapped<double>? code,
    Wrapped<String>? message,
    Wrapped<CommissionSummaryGet$Response$Data>? data,
  }) {
    return CommissionSummaryGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CommissionTransactionGet$Response {
  const CommissionTransactionGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory CommissionTransactionGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$CommissionTransactionGet$ResponseFromJson(json);

  static const toJsonFactory = _$CommissionTransactionGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$CommissionTransactionGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final CommissionTransactionGet$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$CommissionTransactionGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CommissionTransactionGet$Response &&
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

extension $CommissionTransactionGet$ResponseExtension
    on CommissionTransactionGet$Response {
  CommissionTransactionGet$Response copyWith({
    double? code,
    String? message,
    CommissionTransactionGet$Response$Data? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return CommissionTransactionGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  CommissionTransactionGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<CommissionTransactionGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return CommissionTransactionGet$Response(
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
class RechargeBalanceGet$Response {
  const RechargeBalanceGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory RechargeBalanceGet$Response.fromJson(Map<String, dynamic> json) =>
      _$RechargeBalanceGet$ResponseFromJson(json);

  static const toJsonFactory = _$RechargeBalanceGet$ResponseToJson;
  Map<String, dynamic> toJson() => _$RechargeBalanceGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final RechargeBalanceGet$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$RechargeBalanceGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RechargeBalanceGet$Response &&
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

extension $RechargeBalanceGet$ResponseExtension on RechargeBalanceGet$Response {
  RechargeBalanceGet$Response copyWith({
    double? code,
    String? message,
    RechargeBalanceGet$Response$Data? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return RechargeBalanceGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  RechargeBalanceGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<RechargeBalanceGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return RechargeBalanceGet$Response(
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
class RechargeOrdersGet$Response {
  const RechargeOrdersGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.success,
  });

  factory RechargeOrdersGet$Response.fromJson(Map<String, dynamic> json) =>
      _$RechargeOrdersGet$ResponseFromJson(json);

  static const toJsonFactory = _$RechargeOrdersGet$ResponseToJson;
  Map<String, dynamic> toJson() => _$RechargeOrdersGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final RechargeOrdersGet$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$RechargeOrdersGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RechargeOrdersGet$Response &&
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

extension $RechargeOrdersGet$ResponseExtension on RechargeOrdersGet$Response {
  RechargeOrdersGet$Response copyWith({
    double? code,
    String? message,
    RechargeOrdersGet$Response$Data? data,
    String? traceId,
    bool? success,
  }) {
    return RechargeOrdersGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      success: success ?? this.success,
    );
  }

  RechargeOrdersGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<RechargeOrdersGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<bool?>? success,
  }) {
    return RechargeOrdersGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RechargeCreateOrderPost$Response {
  const RechargeCreateOrderPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory RechargeCreateOrderPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$RechargeCreateOrderPost$ResponseFromJson(json);

  static const toJsonFactory = _$RechargeCreateOrderPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$RechargeCreateOrderPost$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final RechargeCreateOrderPost$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$RechargeCreateOrderPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RechargeCreateOrderPost$Response &&
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

extension $RechargeCreateOrderPost$ResponseExtension
    on RechargeCreateOrderPost$Response {
  RechargeCreateOrderPost$Response copyWith({
    double? code,
    String? message,
    RechargeCreateOrderPost$Response$Data? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return RechargeCreateOrderPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  RechargeCreateOrderPost$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<RechargeCreateOrderPost$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return RechargeCreateOrderPost$Response(
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
class PayPayPost$Response {
  const PayPayPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory PayPayPost$Response.fromJson(Map<String, dynamic> json) =>
      _$PayPayPost$ResponseFromJson(json);

  static const toJsonFactory = _$PayPayPost$ResponseToJson;
  Map<String, dynamic> toJson() => _$PayPayPost$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final PayPayPost$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$PayPayPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayPayPost$Response &&
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

extension $PayPayPost$ResponseExtension on PayPayPost$Response {
  PayPayPost$Response copyWith({
    double? code,
    String? message,
    PayPayPost$Response$Data? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return PayPayPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  PayPayPost$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<PayPayPost$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return PayPayPost$Response(
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
class PayPayResultGet$Response {
  const PayPayResultGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory PayPayResultGet$Response.fromJson(Map<String, dynamic> json) =>
      _$PayPayResultGet$ResponseFromJson(json);

  static const toJsonFactory = _$PayPayResultGet$ResponseToJson;
  Map<String, dynamic> toJson() => _$PayPayResultGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final PayPayResultGet$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$PayPayResultGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayPayResultGet$Response &&
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

extension $PayPayResultGet$ResponseExtension on PayPayResultGet$Response {
  PayPayResultGet$Response copyWith({
    double? code,
    String? message,
    PayPayResultGet$Response$Data? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return PayPayResultGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  PayPayResultGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<PayPayResultGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return PayPayResultGet$Response(
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
class PayPayTypeGet$Response {
  const PayPayTypeGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory PayPayTypeGet$Response.fromJson(Map<String, dynamic> json) =>
      _$PayPayTypeGet$ResponseFromJson(json);

  static const toJsonFactory = _$PayPayTypeGet$ResponseToJson;
  Map<String, dynamic> toJson() => _$PayPayTypeGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final PayPayTypeGet$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$PayPayTypeGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayPayTypeGet$Response &&
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

extension $PayPayTypeGet$ResponseExtension on PayPayTypeGet$Response {
  PayPayTypeGet$Response copyWith({
    double? code,
    String? message,
    PayPayTypeGet$Response$Data? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return PayPayTypeGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  PayPayTypeGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<PayPayTypeGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return PayPayTypeGet$Response(
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
class EchoooCoinTypeGet$Response {
  const EchoooCoinTypeGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory EchoooCoinTypeGet$Response.fromJson(Map<String, dynamic> json) =>
      _$EchoooCoinTypeGet$ResponseFromJson(json);

  static const toJsonFactory = _$EchoooCoinTypeGet$ResponseToJson;
  Map<String, dynamic> toJson() => _$EchoooCoinTypeGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final List<EchoooCoinTypeGet$Response$Data$Item>? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$EchoooCoinTypeGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EchoooCoinTypeGet$Response &&
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

extension $EchoooCoinTypeGet$ResponseExtension on EchoooCoinTypeGet$Response {
  EchoooCoinTypeGet$Response copyWith({
    double? code,
    String? message,
    List<EchoooCoinTypeGet$Response$Data$Item>? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return EchoooCoinTypeGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  EchoooCoinTypeGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<List<EchoooCoinTypeGet$Response$Data$Item>?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return EchoooCoinTypeGet$Response(
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
class EchoooCoinInfoGet$Response {
  const EchoooCoinInfoGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory EchoooCoinInfoGet$Response.fromJson(Map<String, dynamic> json) =>
      _$EchoooCoinInfoGet$ResponseFromJson(json);

  static const toJsonFactory = _$EchoooCoinInfoGet$ResponseToJson;
  Map<String, dynamic> toJson() => _$EchoooCoinInfoGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final EchoooCoinInfoGet$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$EchoooCoinInfoGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EchoooCoinInfoGet$Response &&
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

extension $EchoooCoinInfoGet$ResponseExtension on EchoooCoinInfoGet$Response {
  EchoooCoinInfoGet$Response copyWith({
    double? code,
    String? message,
    EchoooCoinInfoGet$Response$Data? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return EchoooCoinInfoGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  EchoooCoinInfoGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<EchoooCoinInfoGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return EchoooCoinInfoGet$Response(
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
class EchoooCoinLogGet$Response {
  const EchoooCoinLogGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory EchoooCoinLogGet$Response.fromJson(Map<String, dynamic> json) =>
      _$EchoooCoinLogGet$ResponseFromJson(json);

  static const toJsonFactory = _$EchoooCoinLogGet$ResponseToJson;
  Map<String, dynamic> toJson() => _$EchoooCoinLogGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final EchoooCoinLogGet$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$EchoooCoinLogGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EchoooCoinLogGet$Response &&
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

extension $EchoooCoinLogGet$ResponseExtension on EchoooCoinLogGet$Response {
  EchoooCoinLogGet$Response copyWith({
    double? code,
    String? message,
    EchoooCoinLogGet$Response$Data? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return EchoooCoinLogGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  EchoooCoinLogGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<EchoooCoinLogGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return EchoooCoinLogGet$Response(
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
class WithdrawOrdersGet$Response$Data {
  const WithdrawOrdersGet$Response$Data({
    this.records,
    this.total,
    this.size,
    this.current,
    this.pages,
  });

  factory WithdrawOrdersGet$Response$Data.fromJson(Map<String, dynamic> json) =>
      _$WithdrawOrdersGet$Response$DataFromJson(json);

  static const toJsonFactory = _$WithdrawOrdersGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$WithdrawOrdersGet$Response$DataToJson(this);

  @JsonKey(name: 'records')
  final List<WithdrawOrdersGet$Response$Data$Records$Item>? records;
  @JsonKey(name: 'total')
  final double? total;
  @JsonKey(name: 'size')
  final double? size;
  @JsonKey(name: 'current')
  final double? current;
  @JsonKey(name: 'pages')
  final double? pages;
  static const fromJsonFactory = _$WithdrawOrdersGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is WithdrawOrdersGet$Response$Data &&
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

extension $WithdrawOrdersGet$Response$DataExtension
    on WithdrawOrdersGet$Response$Data {
  WithdrawOrdersGet$Response$Data copyWith({
    List<WithdrawOrdersGet$Response$Data$Records$Item>? records,
    double? total,
    double? size,
    double? current,
    double? pages,
  }) {
    return WithdrawOrdersGet$Response$Data(
      records: records ?? this.records,
      total: total ?? this.total,
      size: size ?? this.size,
      current: current ?? this.current,
      pages: pages ?? this.pages,
    );
  }

  WithdrawOrdersGet$Response$Data copyWithWrapped({
    Wrapped<List<WithdrawOrdersGet$Response$Data$Records$Item>?>? records,
    Wrapped<double?>? total,
    Wrapped<double?>? size,
    Wrapped<double?>? current,
    Wrapped<double?>? pages,
  }) {
    return WithdrawOrdersGet$Response$Data(
      records: (records != null ? records.value : this.records),
      total: (total != null ? total.value : this.total),
      size: (size != null ? size.value : this.size),
      current: (current != null ? current.value : this.current),
      pages: (pages != null ? pages.value : this.pages),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class WithdrawApplyPost$Response$Data {
  const WithdrawApplyPost$Response$Data({
    this.orderNo,
    this.amount,
    this.currency,
    this.status,
    this.rejectReason,
    this.createTime,
    this.completedTime,
  });

  factory WithdrawApplyPost$Response$Data.fromJson(Map<String, dynamic> json) =>
      _$WithdrawApplyPost$Response$DataFromJson(json);

  static const toJsonFactory = _$WithdrawApplyPost$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$WithdrawApplyPost$Response$DataToJson(this);

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
  static const fromJsonFactory = _$WithdrawApplyPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is WithdrawApplyPost$Response$Data &&
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

extension $WithdrawApplyPost$Response$DataExtension
    on WithdrawApplyPost$Response$Data {
  WithdrawApplyPost$Response$Data copyWith({
    String? orderNo,
    String? amount,
    String? currency,
    double? status,
    String? rejectReason,
    String? createTime,
    String? completedTime,
  }) {
    return WithdrawApplyPost$Response$Data(
      orderNo: orderNo ?? this.orderNo,
      amount: amount ?? this.amount,
      currency: currency ?? this.currency,
      status: status ?? this.status,
      rejectReason: rejectReason ?? this.rejectReason,
      createTime: createTime ?? this.createTime,
      completedTime: completedTime ?? this.completedTime,
    );
  }

  WithdrawApplyPost$Response$Data copyWithWrapped({
    Wrapped<String?>? orderNo,
    Wrapped<String?>? amount,
    Wrapped<String?>? currency,
    Wrapped<double?>? status,
    Wrapped<String?>? rejectReason,
    Wrapped<String?>? createTime,
    Wrapped<String?>? completedTime,
  }) {
    return WithdrawApplyPost$Response$Data(
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
class CommissionSummaryGet$Response$Data {
  const CommissionSummaryGet$Response$Data({
    required this.commissionTotal,
    required this.targetCurrencyTotal,
    required this.withdrawAmount,
    required this.withdrawableBalance,
    required this.pendingCommission,
    required this.totalPoints,
    required this.pendingWithdrawAmount,
  });

  factory CommissionSummaryGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$CommissionSummaryGet$Response$DataFromJson(json);

  static const toJsonFactory = _$CommissionSummaryGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$CommissionSummaryGet$Response$DataToJson(this);

  @JsonKey(name: 'commissionTotal')
  final String commissionTotal;
  @JsonKey(name: 'targetCurrencyTotal')
  final String targetCurrencyTotal;
  @JsonKey(name: 'withdrawAmount')
  final String withdrawAmount;
  @JsonKey(name: 'withdrawableBalance')
  final String withdrawableBalance;
  @JsonKey(name: 'pendingCommission')
  final String pendingCommission;
  @JsonKey(name: 'totalPoints')
  final double totalPoints;
  @JsonKey(name: 'pendingWithdrawAmount')
  final String pendingWithdrawAmount;
  static const fromJsonFactory = _$CommissionSummaryGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CommissionSummaryGet$Response$Data &&
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

extension $CommissionSummaryGet$Response$DataExtension
    on CommissionSummaryGet$Response$Data {
  CommissionSummaryGet$Response$Data copyWith({
    String? commissionTotal,
    String? targetCurrencyTotal,
    String? withdrawAmount,
    String? withdrawableBalance,
    String? pendingCommission,
    double? totalPoints,
    String? pendingWithdrawAmount,
  }) {
    return CommissionSummaryGet$Response$Data(
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

  CommissionSummaryGet$Response$Data copyWithWrapped({
    Wrapped<String>? commissionTotal,
    Wrapped<String>? targetCurrencyTotal,
    Wrapped<String>? withdrawAmount,
    Wrapped<String>? withdrawableBalance,
    Wrapped<String>? pendingCommission,
    Wrapped<double>? totalPoints,
    Wrapped<String>? pendingWithdrawAmount,
  }) {
    return CommissionSummaryGet$Response$Data(
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
class CommissionTransactionGet$Response$Data {
  const CommissionTransactionGet$Response$Data({
    this.total,
    this.pageSize,
    this.totalPages,
    this.current,
    this.records,
  });

  factory CommissionTransactionGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$CommissionTransactionGet$Response$DataFromJson(json);

  static const toJsonFactory = _$CommissionTransactionGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$CommissionTransactionGet$Response$DataToJson(this);

  @JsonKey(name: 'total')
  final double? total;
  @JsonKey(name: 'pageSize')
  final double? pageSize;
  @JsonKey(name: 'totalPages')
  final double? totalPages;
  @JsonKey(name: 'current')
  final double? current;
  @JsonKey(name: 'records')
  final List<CommissionTransactionGet$Response$Data$Records$Item>? records;
  static const fromJsonFactory =
      _$CommissionTransactionGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CommissionTransactionGet$Response$Data &&
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

extension $CommissionTransactionGet$Response$DataExtension
    on CommissionTransactionGet$Response$Data {
  CommissionTransactionGet$Response$Data copyWith({
    double? total,
    double? pageSize,
    double? totalPages,
    double? current,
    List<CommissionTransactionGet$Response$Data$Records$Item>? records,
  }) {
    return CommissionTransactionGet$Response$Data(
      total: total ?? this.total,
      pageSize: pageSize ?? this.pageSize,
      totalPages: totalPages ?? this.totalPages,
      current: current ?? this.current,
      records: records ?? this.records,
    );
  }

  CommissionTransactionGet$Response$Data copyWithWrapped({
    Wrapped<double?>? total,
    Wrapped<double?>? pageSize,
    Wrapped<double?>? totalPages,
    Wrapped<double?>? current,
    Wrapped<List<CommissionTransactionGet$Response$Data$Records$Item>?>?
    records,
  }) {
    return CommissionTransactionGet$Response$Data(
      total: (total != null ? total.value : this.total),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      totalPages: (totalPages != null ? totalPages.value : this.totalPages),
      current: (current != null ? current.value : this.current),
      records: (records != null ? records.value : this.records),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RechargeBalanceGet$Response$Data {
  const RechargeBalanceGet$Response$Data({
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

  factory RechargeBalanceGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$RechargeBalanceGet$Response$DataFromJson(json);

  static const toJsonFactory = _$RechargeBalanceGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$RechargeBalanceGet$Response$DataToJson(this);

  @JsonKey(name: 'balance')
  final String? balance;
  @JsonKey(name: 'currency')
  final RechargeBalanceGet$Response$Data$Currency? currency;
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
  final RechargeBalanceGet$Response$Data$RechargeReward? rechargeReward;
  @JsonKey(name: 'targetCurrency')
  final RechargeBalanceGet$Response$Data$TargetCurrency? targetCurrency;
  static const fromJsonFactory = _$RechargeBalanceGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RechargeBalanceGet$Response$Data &&
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

extension $RechargeBalanceGet$Response$DataExtension
    on RechargeBalanceGet$Response$Data {
  RechargeBalanceGet$Response$Data copyWith({
    String? balance,
    RechargeBalanceGet$Response$Data$Currency? currency,
    String? yesterdayProfit,
    String? totalProfit,
    String? rechargeAmounts,
    String? rechargeAmountsText,
    String? rechargeRuleText,
    String? rechargeRuleTitle,
    String? targetBalance,
    RechargeBalanceGet$Response$Data$RechargeReward? rechargeReward,
    RechargeBalanceGet$Response$Data$TargetCurrency? targetCurrency,
  }) {
    return RechargeBalanceGet$Response$Data(
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

  RechargeBalanceGet$Response$Data copyWithWrapped({
    Wrapped<String?>? balance,
    Wrapped<RechargeBalanceGet$Response$Data$Currency?>? currency,
    Wrapped<String?>? yesterdayProfit,
    Wrapped<String?>? totalProfit,
    Wrapped<String?>? rechargeAmounts,
    Wrapped<String?>? rechargeAmountsText,
    Wrapped<String?>? rechargeRuleText,
    Wrapped<String?>? rechargeRuleTitle,
    Wrapped<String?>? targetBalance,
    Wrapped<RechargeBalanceGet$Response$Data$RechargeReward?>? rechargeReward,
    Wrapped<RechargeBalanceGet$Response$Data$TargetCurrency?>? targetCurrency,
  }) {
    return RechargeBalanceGet$Response$Data(
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
class RechargeOrdersGet$Response$Data {
  const RechargeOrdersGet$Response$Data({
    this.records,
    this.total,
    this.size,
    this.current,
    this.pages,
  });

  factory RechargeOrdersGet$Response$Data.fromJson(Map<String, dynamic> json) =>
      _$RechargeOrdersGet$Response$DataFromJson(json);

  static const toJsonFactory = _$RechargeOrdersGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$RechargeOrdersGet$Response$DataToJson(this);

  @JsonKey(name: 'records')
  final List<RechargeOrdersGet$Response$Data$Records$Item>? records;
  @JsonKey(name: 'total')
  final double? total;
  @JsonKey(name: 'size')
  final double? size;
  @JsonKey(name: 'current')
  final double? current;
  @JsonKey(name: 'pages')
  final double? pages;
  static const fromJsonFactory = _$RechargeOrdersGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RechargeOrdersGet$Response$Data &&
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

extension $RechargeOrdersGet$Response$DataExtension
    on RechargeOrdersGet$Response$Data {
  RechargeOrdersGet$Response$Data copyWith({
    List<RechargeOrdersGet$Response$Data$Records$Item>? records,
    double? total,
    double? size,
    double? current,
    double? pages,
  }) {
    return RechargeOrdersGet$Response$Data(
      records: records ?? this.records,
      total: total ?? this.total,
      size: size ?? this.size,
      current: current ?? this.current,
      pages: pages ?? this.pages,
    );
  }

  RechargeOrdersGet$Response$Data copyWithWrapped({
    Wrapped<List<RechargeOrdersGet$Response$Data$Records$Item>?>? records,
    Wrapped<double?>? total,
    Wrapped<double?>? size,
    Wrapped<double?>? current,
    Wrapped<double?>? pages,
  }) {
    return RechargeOrdersGet$Response$Data(
      records: (records != null ? records.value : this.records),
      total: (total != null ? total.value : this.total),
      size: (size != null ? size.value : this.size),
      current: (current != null ? current.value : this.current),
      pages: (pages != null ? pages.value : this.pages),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RechargeCreateOrderPost$Response$Data {
  const RechargeCreateOrderPost$Response$Data({this.orderId});

  factory RechargeCreateOrderPost$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$RechargeCreateOrderPost$Response$DataFromJson(json);

  static const toJsonFactory = _$RechargeCreateOrderPost$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$RechargeCreateOrderPost$Response$DataToJson(this);

  @JsonKey(name: 'orderId')
  final String? orderId;
  static const fromJsonFactory =
      _$RechargeCreateOrderPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RechargeCreateOrderPost$Response$Data &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality().equals(other.orderId, orderId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orderId) ^ runtimeType.hashCode;
}

extension $RechargeCreateOrderPost$Response$DataExtension
    on RechargeCreateOrderPost$Response$Data {
  RechargeCreateOrderPost$Response$Data copyWith({String? orderId}) {
    return RechargeCreateOrderPost$Response$Data(
      orderId: orderId ?? this.orderId,
    );
  }

  RechargeCreateOrderPost$Response$Data copyWithWrapped({
    Wrapped<String?>? orderId,
  }) {
    return RechargeCreateOrderPost$Response$Data(
      orderId: (orderId != null ? orderId.value : this.orderId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayPayPost$Response$Data {
  const PayPayPost$Response$Data({
    this.thirdPayParam,
    required this.receiptAddress,
  });

  factory PayPayPost$Response$Data.fromJson(Map<String, dynamic> json) =>
      _$PayPayPost$Response$DataFromJson(json);

  static const toJsonFactory = _$PayPayPost$Response$DataToJson;
  Map<String, dynamic> toJson() => _$PayPayPost$Response$DataToJson(this);

  @JsonKey(name: 'thirdPayParam')
  final String? thirdPayParam;
  @JsonKey(name: 'receiptAddress')
  final String receiptAddress;
  static const fromJsonFactory = _$PayPayPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayPayPost$Response$Data &&
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

extension $PayPayPost$Response$DataExtension on PayPayPost$Response$Data {
  PayPayPost$Response$Data copyWith({
    String? thirdPayParam,
    String? receiptAddress,
  }) {
    return PayPayPost$Response$Data(
      thirdPayParam: thirdPayParam ?? this.thirdPayParam,
      receiptAddress: receiptAddress ?? this.receiptAddress,
    );
  }

  PayPayPost$Response$Data copyWithWrapped({
    Wrapped<String?>? thirdPayParam,
    Wrapped<String>? receiptAddress,
  }) {
    return PayPayPost$Response$Data(
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
class PayPayResultGet$Response$Data {
  const PayPayResultGet$Response$Data({
    this.payStatus,
    this.orderType,
    this.currency,
    this.payAmount,
  });

  factory PayPayResultGet$Response$Data.fromJson(Map<String, dynamic> json) =>
      _$PayPayResultGet$Response$DataFromJson(json);

  static const toJsonFactory = _$PayPayResultGet$Response$DataToJson;
  Map<String, dynamic> toJson() => _$PayPayResultGet$Response$DataToJson(this);

  @JsonKey(name: 'payStatus')
  final double? payStatus;
  @JsonKey(name: 'orderType')
  final double? orderType;
  @JsonKey(name: 'currency')
  final PayPayResultGet$Response$Data$Currency? currency;
  @JsonKey(name: 'payAmount')
  final String? payAmount;
  static const fromJsonFactory = _$PayPayResultGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayPayResultGet$Response$Data &&
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

extension $PayPayResultGet$Response$DataExtension
    on PayPayResultGet$Response$Data {
  PayPayResultGet$Response$Data copyWith({
    double? payStatus,
    double? orderType,
    PayPayResultGet$Response$Data$Currency? currency,
    String? payAmount,
  }) {
    return PayPayResultGet$Response$Data(
      payStatus: payStatus ?? this.payStatus,
      orderType: orderType ?? this.orderType,
      currency: currency ?? this.currency,
      payAmount: payAmount ?? this.payAmount,
    );
  }

  PayPayResultGet$Response$Data copyWithWrapped({
    Wrapped<double?>? payStatus,
    Wrapped<double?>? orderType,
    Wrapped<PayPayResultGet$Response$Data$Currency?>? currency,
    Wrapped<String?>? payAmount,
  }) {
    return PayPayResultGet$Response$Data(
      payStatus: (payStatus != null ? payStatus.value : this.payStatus),
      orderType: (orderType != null ? orderType.value : this.orderType),
      currency: (currency != null ? currency.value : this.currency),
      payAmount: (payAmount != null ? payAmount.value : this.payAmount),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayPayTypeGet$Response$Data {
  const PayPayTypeGet$Response$Data({this.list});

  factory PayPayTypeGet$Response$Data.fromJson(Map<String, dynamic> json) =>
      _$PayPayTypeGet$Response$DataFromJson(json);

  static const toJsonFactory = _$PayPayTypeGet$Response$DataToJson;
  Map<String, dynamic> toJson() => _$PayPayTypeGet$Response$DataToJson(this);

  @JsonKey(name: 'list')
  final List<PayPayTypeGet$Response$Data$List$Item>? list;
  static const fromJsonFactory = _$PayPayTypeGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayPayTypeGet$Response$Data &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(list) ^ runtimeType.hashCode;
}

extension $PayPayTypeGet$Response$DataExtension on PayPayTypeGet$Response$Data {
  PayPayTypeGet$Response$Data copyWith({
    List<PayPayTypeGet$Response$Data$List$Item>? list,
  }) {
    return PayPayTypeGet$Response$Data(list: list ?? this.list);
  }

  PayPayTypeGet$Response$Data copyWithWrapped({
    Wrapped<List<PayPayTypeGet$Response$Data$List$Item>?>? list,
  }) {
    return PayPayTypeGet$Response$Data(
      list: (list != null ? list.value : this.list),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class EchoooCoinTypeGet$Response$Data$Item {
  const EchoooCoinTypeGet$Response$Data$Item({
    required this.type,
    required this.name,
  });

  factory EchoooCoinTypeGet$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$EchoooCoinTypeGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory = _$EchoooCoinTypeGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$EchoooCoinTypeGet$Response$Data$ItemToJson(this);

  @JsonKey(name: 'type')
  final double type;
  @JsonKey(name: 'name')
  final String name;
  static const fromJsonFactory = _$EchoooCoinTypeGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EchoooCoinTypeGet$Response$Data$Item &&
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

extension $EchoooCoinTypeGet$Response$Data$ItemExtension
    on EchoooCoinTypeGet$Response$Data$Item {
  EchoooCoinTypeGet$Response$Data$Item copyWith({double? type, String? name}) {
    return EchoooCoinTypeGet$Response$Data$Item(
      type: type ?? this.type,
      name: name ?? this.name,
    );
  }

  EchoooCoinTypeGet$Response$Data$Item copyWithWrapped({
    Wrapped<double>? type,
    Wrapped<String>? name,
  }) {
    return EchoooCoinTypeGet$Response$Data$Item(
      type: (type != null ? type.value : this.type),
      name: (name != null ? name.value : this.name),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class EchoooCoinInfoGet$Response$Data {
  const EchoooCoinInfoGet$Response$Data({
    required this.balance,
    required this.percentage,
    required this.deductibleAmount,
    required this.accumulateAmount,
    required this.currency,
  });

  factory EchoooCoinInfoGet$Response$Data.fromJson(Map<String, dynamic> json) =>
      _$EchoooCoinInfoGet$Response$DataFromJson(json);

  static const toJsonFactory = _$EchoooCoinInfoGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$EchoooCoinInfoGet$Response$DataToJson(this);

  @JsonKey(name: 'balance')
  final double balance;
  @JsonKey(name: 'percentage')
  final String percentage;
  @JsonKey(name: 'deductibleAmount')
  final String deductibleAmount;
  @JsonKey(name: 'accumulateAmount')
  final String accumulateAmount;
  @JsonKey(name: 'currency')
  final EchoooCoinInfoGet$Response$Data$Currency currency;
  static const fromJsonFactory = _$EchoooCoinInfoGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EchoooCoinInfoGet$Response$Data &&
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

extension $EchoooCoinInfoGet$Response$DataExtension
    on EchoooCoinInfoGet$Response$Data {
  EchoooCoinInfoGet$Response$Data copyWith({
    double? balance,
    String? percentage,
    String? deductibleAmount,
    String? accumulateAmount,
    EchoooCoinInfoGet$Response$Data$Currency? currency,
  }) {
    return EchoooCoinInfoGet$Response$Data(
      balance: balance ?? this.balance,
      percentage: percentage ?? this.percentage,
      deductibleAmount: deductibleAmount ?? this.deductibleAmount,
      accumulateAmount: accumulateAmount ?? this.accumulateAmount,
      currency: currency ?? this.currency,
    );
  }

  EchoooCoinInfoGet$Response$Data copyWithWrapped({
    Wrapped<double>? balance,
    Wrapped<String>? percentage,
    Wrapped<String>? deductibleAmount,
    Wrapped<String>? accumulateAmount,
    Wrapped<EchoooCoinInfoGet$Response$Data$Currency>? currency,
  }) {
    return EchoooCoinInfoGet$Response$Data(
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
class EchoooCoinLogGet$Response$Data {
  const EchoooCoinLogGet$Response$Data({
    this.total,
    this.pageSize,
    this.totalPages,
    this.current,
    this.records,
  });

  factory EchoooCoinLogGet$Response$Data.fromJson(Map<String, dynamic> json) =>
      _$EchoooCoinLogGet$Response$DataFromJson(json);

  static const toJsonFactory = _$EchoooCoinLogGet$Response$DataToJson;
  Map<String, dynamic> toJson() => _$EchoooCoinLogGet$Response$DataToJson(this);

  @JsonKey(name: 'total')
  final double? total;
  @JsonKey(name: 'pageSize')
  final double? pageSize;
  @JsonKey(name: 'totalPages')
  final double? totalPages;
  @JsonKey(name: 'current')
  final double? current;
  @JsonKey(name: 'records')
  final List<EchoooCoinLogGet$Response$Data$Records$Item>? records;
  static const fromJsonFactory = _$EchoooCoinLogGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EchoooCoinLogGet$Response$Data &&
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

extension $EchoooCoinLogGet$Response$DataExtension
    on EchoooCoinLogGet$Response$Data {
  EchoooCoinLogGet$Response$Data copyWith({
    double? total,
    double? pageSize,
    double? totalPages,
    double? current,
    List<EchoooCoinLogGet$Response$Data$Records$Item>? records,
  }) {
    return EchoooCoinLogGet$Response$Data(
      total: total ?? this.total,
      pageSize: pageSize ?? this.pageSize,
      totalPages: totalPages ?? this.totalPages,
      current: current ?? this.current,
      records: records ?? this.records,
    );
  }

  EchoooCoinLogGet$Response$Data copyWithWrapped({
    Wrapped<double?>? total,
    Wrapped<double?>? pageSize,
    Wrapped<double?>? totalPages,
    Wrapped<double?>? current,
    Wrapped<List<EchoooCoinLogGet$Response$Data$Records$Item>?>? records,
  }) {
    return EchoooCoinLogGet$Response$Data(
      total: (total != null ? total.value : this.total),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      totalPages: (totalPages != null ? totalPages.value : this.totalPages),
      current: (current != null ? current.value : this.current),
      records: (records != null ? records.value : this.records),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class WithdrawOrdersGet$Response$Data$Records$Item {
  const WithdrawOrdersGet$Response$Data$Records$Item({
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

  factory WithdrawOrdersGet$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$WithdrawOrdersGet$Response$Data$Records$ItemFromJson(json);

  static const toJsonFactory =
      _$WithdrawOrdersGet$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$WithdrawOrdersGet$Response$Data$Records$ItemToJson(this);

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
      _$WithdrawOrdersGet$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is WithdrawOrdersGet$Response$Data$Records$Item &&
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

extension $WithdrawOrdersGet$Response$Data$Records$ItemExtension
    on WithdrawOrdersGet$Response$Data$Records$Item {
  WithdrawOrdersGet$Response$Data$Records$Item copyWith({
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
    return WithdrawOrdersGet$Response$Data$Records$Item(
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

  WithdrawOrdersGet$Response$Data$Records$Item copyWithWrapped({
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
    return WithdrawOrdersGet$Response$Data$Records$Item(
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
class CommissionTransactionGet$Response$Data$Records$Item {
  const CommissionTransactionGet$Response$Data$Records$Item({
    required this.amount,
    required this.time,
    required this.typeName,
    required this.currency,
  });

  factory CommissionTransactionGet$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$CommissionTransactionGet$Response$Data$Records$ItemFromJson(json);

  static const toJsonFactory =
      _$CommissionTransactionGet$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$CommissionTransactionGet$Response$Data$Records$ItemToJson(this);

  @JsonKey(name: 'amount')
  final String amount;
  @JsonKey(name: 'time')
  final String time;
  @JsonKey(name: 'typeName')
  final String typeName;
  @JsonKey(name: 'currency')
  final String currency;
  static const fromJsonFactory =
      _$CommissionTransactionGet$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CommissionTransactionGet$Response$Data$Records$Item &&
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

extension $CommissionTransactionGet$Response$Data$Records$ItemExtension
    on CommissionTransactionGet$Response$Data$Records$Item {
  CommissionTransactionGet$Response$Data$Records$Item copyWith({
    String? amount,
    String? time,
    String? typeName,
    String? currency,
  }) {
    return CommissionTransactionGet$Response$Data$Records$Item(
      amount: amount ?? this.amount,
      time: time ?? this.time,
      typeName: typeName ?? this.typeName,
      currency: currency ?? this.currency,
    );
  }

  CommissionTransactionGet$Response$Data$Records$Item copyWithWrapped({
    Wrapped<String>? amount,
    Wrapped<String>? time,
    Wrapped<String>? typeName,
    Wrapped<String>? currency,
  }) {
    return CommissionTransactionGet$Response$Data$Records$Item(
      amount: (amount != null ? amount.value : this.amount),
      time: (time != null ? time.value : this.time),
      typeName: (typeName != null ? typeName.value : this.typeName),
      currency: (currency != null ? currency.value : this.currency),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RechargeBalanceGet$Response$Data$Currency {
  const RechargeBalanceGet$Response$Data$Currency({this.name, this.symbol});

  factory RechargeBalanceGet$Response$Data$Currency.fromJson(
    Map<String, dynamic> json,
  ) => _$RechargeBalanceGet$Response$Data$CurrencyFromJson(json);

  static const toJsonFactory =
      _$RechargeBalanceGet$Response$Data$CurrencyToJson;
  Map<String, dynamic> toJson() =>
      _$RechargeBalanceGet$Response$Data$CurrencyToJson(this);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'symbol')
  final String? symbol;
  static const fromJsonFactory =
      _$RechargeBalanceGet$Response$Data$CurrencyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RechargeBalanceGet$Response$Data$Currency &&
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

extension $RechargeBalanceGet$Response$Data$CurrencyExtension
    on RechargeBalanceGet$Response$Data$Currency {
  RechargeBalanceGet$Response$Data$Currency copyWith({
    String? name,
    String? symbol,
  }) {
    return RechargeBalanceGet$Response$Data$Currency(
      name: name ?? this.name,
      symbol: symbol ?? this.symbol,
    );
  }

  RechargeBalanceGet$Response$Data$Currency copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<String?>? symbol,
  }) {
    return RechargeBalanceGet$Response$Data$Currency(
      name: (name != null ? name.value : this.name),
      symbol: (symbol != null ? symbol.value : this.symbol),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RechargeBalanceGet$Response$Data$RechargeReward {
  const RechargeBalanceGet$Response$Data$RechargeReward({
    this.amount,
    this.expireAt,
  });

  factory RechargeBalanceGet$Response$Data$RechargeReward.fromJson(
    Map<String, dynamic> json,
  ) => _$RechargeBalanceGet$Response$Data$RechargeRewardFromJson(json);

  static const toJsonFactory =
      _$RechargeBalanceGet$Response$Data$RechargeRewardToJson;
  Map<String, dynamic> toJson() =>
      _$RechargeBalanceGet$Response$Data$RechargeRewardToJson(this);

  @JsonKey(name: 'amount')
  final String? amount;
  @JsonKey(name: 'expireAt')
  final double? expireAt;
  static const fromJsonFactory =
      _$RechargeBalanceGet$Response$Data$RechargeRewardFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RechargeBalanceGet$Response$Data$RechargeReward &&
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

extension $RechargeBalanceGet$Response$Data$RechargeRewardExtension
    on RechargeBalanceGet$Response$Data$RechargeReward {
  RechargeBalanceGet$Response$Data$RechargeReward copyWith({
    String? amount,
    double? expireAt,
  }) {
    return RechargeBalanceGet$Response$Data$RechargeReward(
      amount: amount ?? this.amount,
      expireAt: expireAt ?? this.expireAt,
    );
  }

  RechargeBalanceGet$Response$Data$RechargeReward copyWithWrapped({
    Wrapped<String?>? amount,
    Wrapped<double?>? expireAt,
  }) {
    return RechargeBalanceGet$Response$Data$RechargeReward(
      amount: (amount != null ? amount.value : this.amount),
      expireAt: (expireAt != null ? expireAt.value : this.expireAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RechargeBalanceGet$Response$Data$TargetCurrency {
  const RechargeBalanceGet$Response$Data$TargetCurrency({
    this.name,
    this.symbol,
  });

  factory RechargeBalanceGet$Response$Data$TargetCurrency.fromJson(
    Map<String, dynamic> json,
  ) => _$RechargeBalanceGet$Response$Data$TargetCurrencyFromJson(json);

  static const toJsonFactory =
      _$RechargeBalanceGet$Response$Data$TargetCurrencyToJson;
  Map<String, dynamic> toJson() =>
      _$RechargeBalanceGet$Response$Data$TargetCurrencyToJson(this);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'symbol')
  final String? symbol;
  static const fromJsonFactory =
      _$RechargeBalanceGet$Response$Data$TargetCurrencyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RechargeBalanceGet$Response$Data$TargetCurrency &&
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

extension $RechargeBalanceGet$Response$Data$TargetCurrencyExtension
    on RechargeBalanceGet$Response$Data$TargetCurrency {
  RechargeBalanceGet$Response$Data$TargetCurrency copyWith({
    String? name,
    String? symbol,
  }) {
    return RechargeBalanceGet$Response$Data$TargetCurrency(
      name: name ?? this.name,
      symbol: symbol ?? this.symbol,
    );
  }

  RechargeBalanceGet$Response$Data$TargetCurrency copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<String?>? symbol,
  }) {
    return RechargeBalanceGet$Response$Data$TargetCurrency(
      name: (name != null ? name.value : this.name),
      symbol: (symbol != null ? symbol.value : this.symbol),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RechargeOrdersGet$Response$Data$Records$Item {
  const RechargeOrdersGet$Response$Data$Records$Item({
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

  factory RechargeOrdersGet$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$RechargeOrdersGet$Response$Data$Records$ItemFromJson(json);

  static const toJsonFactory =
      _$RechargeOrdersGet$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$RechargeOrdersGet$Response$Data$Records$ItemToJson(this);

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
      _$RechargeOrdersGet$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RechargeOrdersGet$Response$Data$Records$Item &&
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

extension $RechargeOrdersGet$Response$Data$Records$ItemExtension
    on RechargeOrdersGet$Response$Data$Records$Item {
  RechargeOrdersGet$Response$Data$Records$Item copyWith({
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
    return RechargeOrdersGet$Response$Data$Records$Item(
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

  RechargeOrdersGet$Response$Data$Records$Item copyWithWrapped({
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
    return RechargeOrdersGet$Response$Data$Records$Item(
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
class PayPayResultGet$Response$Data$Currency {
  const PayPayResultGet$Response$Data$Currency({this.name, this.symbol});

  factory PayPayResultGet$Response$Data$Currency.fromJson(
    Map<String, dynamic> json,
  ) => _$PayPayResultGet$Response$Data$CurrencyFromJson(json);

  static const toJsonFactory = _$PayPayResultGet$Response$Data$CurrencyToJson;
  Map<String, dynamic> toJson() =>
      _$PayPayResultGet$Response$Data$CurrencyToJson(this);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'symbol')
  final String? symbol;
  static const fromJsonFactory =
      _$PayPayResultGet$Response$Data$CurrencyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayPayResultGet$Response$Data$Currency &&
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

extension $PayPayResultGet$Response$Data$CurrencyExtension
    on PayPayResultGet$Response$Data$Currency {
  PayPayResultGet$Response$Data$Currency copyWith({
    String? name,
    String? symbol,
  }) {
    return PayPayResultGet$Response$Data$Currency(
      name: name ?? this.name,
      symbol: symbol ?? this.symbol,
    );
  }

  PayPayResultGet$Response$Data$Currency copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<String?>? symbol,
  }) {
    return PayPayResultGet$Response$Data$Currency(
      name: (name != null ? name.value : this.name),
      symbol: (symbol != null ? symbol.value : this.symbol),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayPayTypeGet$Response$Data$List$Item {
  const PayPayTypeGet$Response$Data$List$Item({
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

  factory PayPayTypeGet$Response$Data$List$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$PayPayTypeGet$Response$Data$List$ItemFromJson(json);

  static const toJsonFactory = _$PayPayTypeGet$Response$Data$List$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$PayPayTypeGet$Response$Data$List$ItemToJson(this);

  @JsonKey(name: 'payType')
  final String? payType;
  @JsonKey(name: 'payAmount')
  final String? payAmount;
  @JsonKey(name: 'currency')
  final PayPayTypeGet$Response$Data$List$Item$Currency? currency;
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
      _$PayPayTypeGet$Response$Data$List$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayPayTypeGet$Response$Data$List$Item &&
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

extension $PayPayTypeGet$Response$Data$List$ItemExtension
    on PayPayTypeGet$Response$Data$List$Item {
  PayPayTypeGet$Response$Data$List$Item copyWith({
    String? payType,
    String? payAmount,
    PayPayTypeGet$Response$Data$List$Item$Currency? currency,
    String? payTypeName,
    String? payTypeIcon,
    String? payTypeDesc,
    String? payFee,
    String? rechargeOnly,
    String? rechargeDifference,
    bool? isDefault,
  }) {
    return PayPayTypeGet$Response$Data$List$Item(
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

  PayPayTypeGet$Response$Data$List$Item copyWithWrapped({
    Wrapped<String?>? payType,
    Wrapped<String?>? payAmount,
    Wrapped<PayPayTypeGet$Response$Data$List$Item$Currency?>? currency,
    Wrapped<String?>? payTypeName,
    Wrapped<String?>? payTypeIcon,
    Wrapped<String?>? payTypeDesc,
    Wrapped<String?>? payFee,
    Wrapped<String?>? rechargeOnly,
    Wrapped<String?>? rechargeDifference,
    Wrapped<bool?>? isDefault,
  }) {
    return PayPayTypeGet$Response$Data$List$Item(
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
class EchoooCoinInfoGet$Response$Data$Currency {
  const EchoooCoinInfoGet$Response$Data$Currency({
    required this.name,
    required this.symbol,
  });

  factory EchoooCoinInfoGet$Response$Data$Currency.fromJson(
    Map<String, dynamic> json,
  ) => _$EchoooCoinInfoGet$Response$Data$CurrencyFromJson(json);

  static const toJsonFactory = _$EchoooCoinInfoGet$Response$Data$CurrencyToJson;
  Map<String, dynamic> toJson() =>
      _$EchoooCoinInfoGet$Response$Data$CurrencyToJson(this);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'symbol')
  final String symbol;
  static const fromJsonFactory =
      _$EchoooCoinInfoGet$Response$Data$CurrencyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EchoooCoinInfoGet$Response$Data$Currency &&
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

extension $EchoooCoinInfoGet$Response$Data$CurrencyExtension
    on EchoooCoinInfoGet$Response$Data$Currency {
  EchoooCoinInfoGet$Response$Data$Currency copyWith({
    String? name,
    String? symbol,
  }) {
    return EchoooCoinInfoGet$Response$Data$Currency(
      name: name ?? this.name,
      symbol: symbol ?? this.symbol,
    );
  }

  EchoooCoinInfoGet$Response$Data$Currency copyWithWrapped({
    Wrapped<String>? name,
    Wrapped<String>? symbol,
  }) {
    return EchoooCoinInfoGet$Response$Data$Currency(
      name: (name != null ? name.value : this.name),
      symbol: (symbol != null ? symbol.value : this.symbol),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class EchoooCoinLogGet$Response$Data$Records$Item {
  const EchoooCoinLogGet$Response$Data$Records$Item({
    required this.actualAmount,
    required this.gmtCreate,
    required this.type,
    required this.name,
  });

  factory EchoooCoinLogGet$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$EchoooCoinLogGet$Response$Data$Records$ItemFromJson(json);

  static const toJsonFactory =
      _$EchoooCoinLogGet$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$EchoooCoinLogGet$Response$Data$Records$ItemToJson(this);

  @JsonKey(name: 'actualAmount')
  final double actualAmount;
  @JsonKey(name: 'gmtCreate')
  final double gmtCreate;
  @JsonKey(name: 'type')
  final double type;
  @JsonKey(name: 'name')
  final String name;
  static const fromJsonFactory =
      _$EchoooCoinLogGet$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EchoooCoinLogGet$Response$Data$Records$Item &&
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

extension $EchoooCoinLogGet$Response$Data$Records$ItemExtension
    on EchoooCoinLogGet$Response$Data$Records$Item {
  EchoooCoinLogGet$Response$Data$Records$Item copyWith({
    double? actualAmount,
    double? gmtCreate,
    double? type,
    String? name,
  }) {
    return EchoooCoinLogGet$Response$Data$Records$Item(
      actualAmount: actualAmount ?? this.actualAmount,
      gmtCreate: gmtCreate ?? this.gmtCreate,
      type: type ?? this.type,
      name: name ?? this.name,
    );
  }

  EchoooCoinLogGet$Response$Data$Records$Item copyWithWrapped({
    Wrapped<double>? actualAmount,
    Wrapped<double>? gmtCreate,
    Wrapped<double>? type,
    Wrapped<String>? name,
  }) {
    return EchoooCoinLogGet$Response$Data$Records$Item(
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
class PayPayTypeGet$Response$Data$List$Item$Currency {
  const PayPayTypeGet$Response$Data$List$Item$Currency({
    this.name,
    this.symbol,
  });

  factory PayPayTypeGet$Response$Data$List$Item$Currency.fromJson(
    Map<String, dynamic> json,
  ) => _$PayPayTypeGet$Response$Data$List$Item$CurrencyFromJson(json);

  static const toJsonFactory =
      _$PayPayTypeGet$Response$Data$List$Item$CurrencyToJson;
  Map<String, dynamic> toJson() =>
      _$PayPayTypeGet$Response$Data$List$Item$CurrencyToJson(this);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'symbol')
  final String? symbol;
  static const fromJsonFactory =
      _$PayPayTypeGet$Response$Data$List$Item$CurrencyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayPayTypeGet$Response$Data$List$Item$Currency &&
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

extension $PayPayTypeGet$Response$Data$List$Item$CurrencyExtension
    on PayPayTypeGet$Response$Data$List$Item$Currency {
  PayPayTypeGet$Response$Data$List$Item$Currency copyWith({
    String? name,
    String? symbol,
  }) {
    return PayPayTypeGet$Response$Data$List$Item$Currency(
      name: name ?? this.name,
      symbol: symbol ?? this.symbol,
    );
  }

  PayPayTypeGet$Response$Data$List$Item$Currency copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<String?>? symbol,
  }) {
    return PayPayTypeGet$Response$Data$List$Item$Currency(
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
