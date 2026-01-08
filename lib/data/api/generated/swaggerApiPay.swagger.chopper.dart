// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'swaggerApiPay.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$SwaggerApiPay extends SwaggerApiPay {
  _$SwaggerApiPay([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = SwaggerApiPay;

  @override
  Future<Response<WithdrawOrdersGet$Response>> _withdrawOrdersGet({
    required String? current,
    required String? pageSize,
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
  }) {
    final Uri $url = Uri.parse('/withdraw/orders');
    final Map<String, dynamic> $params = <String, dynamic>{
      'current': current,
      'pageSize': pageSize,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<WithdrawOrdersGet$Response, WithdrawOrdersGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<WithdrawApplyPost$Response>> _withdrawApplyPost({
    Object? root,
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
  }) {
    final Uri $url = Uri.parse('/withdraw/apply');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<WithdrawApplyPost$Response, WithdrawApplyPost$Response>(
      $request,
    );
  }

  @override
  Future<Response<CommissionSummaryGet$Response>> _commissionSummaryGet({
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
  }) {
    final Uri $url = Uri.parse('/commission/summary');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client
        .send<CommissionSummaryGet$Response, CommissionSummaryGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<CommissionTransactionGet$Response>>
  _commissionTransactionGet({
    required String? current,
    required String? pageSize,
    required String? type,
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
  }) {
    final Uri $url = Uri.parse('/commission/transaction');
    final Map<String, dynamic> $params = <String, dynamic>{
      'current': current,
      'pageSize': pageSize,
      'type': type,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      CommissionTransactionGet$Response,
      CommissionTransactionGet$Response
    >($request);
  }

  @override
  Future<Response<RechargeBalanceGet$Response>> _rechargeBalanceGet({
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
  }) {
    final Uri $url = Uri.parse('/recharge/balance');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client
        .send<RechargeBalanceGet$Response, RechargeBalanceGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<RechargeOrdersGet$Response>> _rechargeOrdersGet({
    required String? current,
    required String? pageSize,
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
  }) {
    final Uri $url = Uri.parse('/recharge/orders');
    final Map<String, dynamic> $params = <String, dynamic>{
      'current': current,
      'pageSize': pageSize,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<RechargeOrdersGet$Response, RechargeOrdersGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<Object>> _rechargeLogGet({
    required String? current,
    required String? pageSize,
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
  }) {
    final Uri $url = Uri.parse('/recharge/log');
    final Map<String, dynamic> $params = <String, dynamic>{
      'current': current,
      'pageSize': pageSize,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<RechargeCreateOrderPost$Response>> _rechargeCreateOrderPost({
    Object? root,
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
  }) {
    final Uri $url = Uri.parse('/recharge/createOrder');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      RechargeCreateOrderPost$Response,
      RechargeCreateOrderPost$Response
    >($request);
  }

  @override
  Future<Response<PayPayPost$Response>> _payPayPost({
    Object? root,
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
  }) {
    final Uri $url = Uri.parse('/pay/pay');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<PayPayPost$Response, PayPayPost$Response>($request);
  }

  @override
  Future<Response<PayPayResultGet$Response>> _payPayResultGet({
    required String? orderId,
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
  }) {
    final Uri $url = Uri.parse('/pay/payResult');
    final Map<String, dynamic> $params = <String, dynamic>{'orderId': orderId};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<PayPayResultGet$Response, PayPayResultGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<PayPayTypeGet$Response>> _payPayTypeGet({
    required String? orderId,
    String? orderType,
    String? orderAmount,
    String? currency,
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
  }) {
    final Uri $url = Uri.parse('/pay/payType');
    final Map<String, dynamic> $params = <String, dynamic>{
      'orderId': orderId,
      'orderType': orderType,
      'orderAmount': orderAmount,
      'currency': currency,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<PayPayTypeGet$Response, PayPayTypeGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<Object>> _echoooCoinAddBalanceGet({
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
  }) {
    final Uri $url = Uri.parse('/echoooCoin/addBalance');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<dynamic>> _echoooCoinSubBalanceGet({
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
  }) {
    final Uri $url = Uri.parse('/echoooCoin/subBalance');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<EchoooCoinTypeGet$Response>> _echoooCoinTypeGet({
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
  }) {
    final Uri $url = Uri.parse('/echoooCoin/type');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<EchoooCoinTypeGet$Response, EchoooCoinTypeGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<EchoooCoinInfoGet$Response>> _echoooCoinInfoGet({
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
  }) {
    final Uri $url = Uri.parse('/echoooCoin/info');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<EchoooCoinInfoGet$Response, EchoooCoinInfoGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<EchoooCoinLogGet$Response>> _echoooCoinLogGet({
    required String? current,
    required String? pageSize,
    String? type,
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
  }) {
    final Uri $url = Uri.parse('/echoooCoin/log');
    final Map<String, dynamic> $params = <String, dynamic>{
      'current': current,
      'pageSize': pageSize,
      'type': type,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<EchoooCoinLogGet$Response, EchoooCoinLogGet$Response>(
      $request,
    );
  }
}
