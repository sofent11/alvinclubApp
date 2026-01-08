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
  Future<Response<PayServiceWithdrawOrdersGet$Response>>
  _payServiceWithdrawOrdersGet({
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
    final Uri $url = Uri.parse('/pay-service/withdraw/orders');
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
    return client.send<
      PayServiceWithdrawOrdersGet$Response,
      PayServiceWithdrawOrdersGet$Response
    >($request);
  }

  @override
  Future<Response<PayServiceWithdrawApplyPost$Response>>
  _payServiceWithdrawApplyPost({
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
    final Uri $url = Uri.parse('/pay-service/withdraw/apply');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      PayServiceWithdrawApplyPost$Response,
      PayServiceWithdrawApplyPost$Response
    >($request);
  }

  @override
  Future<Response<PayServiceCommissionSummaryGet$Response>>
  _payServiceCommissionSummaryGet({
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
    final Uri $url = Uri.parse('/pay-service/commission/summary');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      PayServiceCommissionSummaryGet$Response,
      PayServiceCommissionSummaryGet$Response
    >($request);
  }

  @override
  Future<Response<PayServiceCommissionTransactionGet$Response>>
  _payServiceCommissionTransactionGet({
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
    final Uri $url = Uri.parse('/pay-service/commission/transaction');
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
      PayServiceCommissionTransactionGet$Response,
      PayServiceCommissionTransactionGet$Response
    >($request);
  }

  @override
  Future<Response<PayServiceRechargeBalanceGet$Response>>
  _payServiceRechargeBalanceGet({
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
    final Uri $url = Uri.parse('/pay-service/recharge/balance');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      PayServiceRechargeBalanceGet$Response,
      PayServiceRechargeBalanceGet$Response
    >($request);
  }

  @override
  Future<Response<PayServiceRechargeOrdersGet$Response>>
  _payServiceRechargeOrdersGet({
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
    final Uri $url = Uri.parse('/pay-service/recharge/orders');
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
    return client.send<
      PayServiceRechargeOrdersGet$Response,
      PayServiceRechargeOrdersGet$Response
    >($request);
  }

  @override
  Future<Response<Object>> _payServiceRechargeLogGet({
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
    final Uri $url = Uri.parse('/pay-service/recharge/log');
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
  Future<Response<PayServiceRechargeCreateOrderPost$Response>>
  _payServiceRechargeCreateOrderPost({
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
    final Uri $url = Uri.parse('/pay-service/recharge/createOrder');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      PayServiceRechargeCreateOrderPost$Response,
      PayServiceRechargeCreateOrderPost$Response
    >($request);
  }

  @override
  Future<Response<PayServicePayPayPost$Response>> _payServicePayPayPost({
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
    final Uri $url = Uri.parse('/pay-service/pay/pay');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client
        .send<PayServicePayPayPost$Response, PayServicePayPayPost$Response>(
          $request,
        );
  }

  @override
  Future<Response<PayServicePayPayResultGet$Response>>
  _payServicePayPayResultGet({
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
    final Uri $url = Uri.parse('/pay-service/pay/payResult');
    final Map<String, dynamic> $params = <String, dynamic>{'orderId': orderId};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      PayServicePayPayResultGet$Response,
      PayServicePayPayResultGet$Response
    >($request);
  }

  @override
  Future<Response<PayServicePayPayTypeGet$Response>> _payServicePayPayTypeGet({
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
    final Uri $url = Uri.parse('/pay-service/pay/payType');
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
    return client.send<
      PayServicePayPayTypeGet$Response,
      PayServicePayPayTypeGet$Response
    >($request);
  }

  @override
  Future<Response<Object>> _payServiceEchoooCoinAddBalanceGet({
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
    final Uri $url = Uri.parse('/pay-service/echoooCoin/addBalance');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<dynamic>> _payServiceEchoooCoinSubBalanceGet({
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
    final Uri $url = Uri.parse('/pay-service/echoooCoin/subBalance');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<PayServiceEchoooCoinTypeGet$Response>>
  _payServiceEchoooCoinTypeGet({
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
    final Uri $url = Uri.parse('/pay-service/echoooCoin/type');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      PayServiceEchoooCoinTypeGet$Response,
      PayServiceEchoooCoinTypeGet$Response
    >($request);
  }

  @override
  Future<Response<PayServiceEchoooCoinInfoGet$Response>>
  _payServiceEchoooCoinInfoGet({
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
    final Uri $url = Uri.parse('/pay-service/echoooCoin/info');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      PayServiceEchoooCoinInfoGet$Response,
      PayServiceEchoooCoinInfoGet$Response
    >($request);
  }

  @override
  Future<Response<PayServiceEchoooCoinLogGet$Response>>
  _payServiceEchoooCoinLogGet({
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
    final Uri $url = Uri.parse('/pay-service/echoooCoin/log');
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
      PayServiceEchoooCoinLogGet$Response,
      PayServiceEchoooCoinLogGet$Response
    >($request);
  }
}
