// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'swaggerApiOrder.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$SwaggerApiOrder extends SwaggerApiOrder {
  _$SwaggerApiOrder([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = SwaggerApiOrder;

  @override
  Future<Response<OrderServiceOrderAppCancelPost$Response>>
  _orderServiceOrderAppCancelPost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '取消订单',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["app端"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/order/app/cancel');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      OrderServiceOrderAppCancelPost$Response,
      OrderServiceOrderAppCancelPost$Response
    >($request);
  }

  @override
  Future<Response<OrderServiceOrderAppBatchInfosGet$Response>>
  _orderServiceOrderAppBatchInfosGet({
    required String? orderId,
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '合并订单信息',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["app端"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/order/app/batchInfos');
    final Map<String, dynamic> $params = <String, dynamic>{'orderId': orderId};
    final $body = root;
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      OrderServiceOrderAppBatchInfosGet$Response,
      OrderServiceOrderAppBatchInfosGet$Response
    >($request);
  }

  @override
  Future<Response<OrderServiceOrderAppSubmitPost$Response>>
  _orderServiceOrderAppSubmitPost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '提交订单',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["app端"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/order/app/submit');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      OrderServiceOrderAppSubmitPost$Response,
      OrderServiceOrderAppSubmitPost$Response
    >($request);
  }

  @override
  Future<Response<OrderServiceOrderAppUpdatePost$Response>>
  _orderServiceOrderAppUpdatePost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '更新订单',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["app端"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/order/app/update');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      OrderServiceOrderAppUpdatePost$Response,
      OrderServiceOrderAppUpdatePost$Response
    >($request);
  }

  @override
  Future<Response<OrderServiceOrderAppListGet$Response>>
  _orderServiceOrderAppListGet({
    String? status,
    String? startTime,
    String? endTime,
    required String? current,
    required String? pageSize,
    String? frontStatus,
    String? keyword,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '订单列表',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["app端"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/order/app/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'status': status,
      'startTime': startTime,
      'endTime': endTime,
      'current': current,
      'pageSize': pageSize,
      'frontStatus': frontStatus,
      'keyword': keyword,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      OrderServiceOrderAppListGet$Response,
      OrderServiceOrderAppListGet$Response
    >($request);
  }

  @override
  Future<Response<OrderServiceOrderAppDetailGet$Response>>
  _orderServiceOrderAppDetailGet({
    required String? orderId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '订单详情',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["app端"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/order/app/detail');
    final Map<String, dynamic> $params = <String, dynamic>{'orderId': orderId};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      OrderServiceOrderAppDetailGet$Response,
      OrderServiceOrderAppDetailGet$Response
    >($request);
  }

  @override
  Future<Response<OrderServiceOrderPrePricingGet$Response>>
  _orderServiceOrderPrePricingGet({
    required String? currency,
    required String? price,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '下单金额转换',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["订单下单"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/order/prePricing');
    final Map<String, dynamic> $params = <String, dynamic>{
      'currency': currency,
      'price': price,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      OrderServiceOrderPrePricingGet$Response,
      OrderServiceOrderPrePricingGet$Response
    >($request);
  }

  @override
  Future<Response<OrderServiceOrderCancelPost$Response>>
  _orderServiceOrderCancelPost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '取消订单',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["订单下单"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/order/cancel');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      OrderServiceOrderCancelPost$Response,
      OrderServiceOrderCancelPost$Response
    >($request);
  }

  @override
  Future<Response<OrderServiceOrderSubmitPost$Response>>
  _orderServiceOrderSubmitPost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '提交订单',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["订单下单"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/order/submit');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      OrderServiceOrderSubmitPost$Response,
      OrderServiceOrderSubmitPost$Response
    >($request);
  }

  @override
  Future<Response<OrderServiceOrderUpdatePost$Response>>
  _orderServiceOrderUpdatePost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '更新订单',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["订单下单"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/order/update');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      OrderServiceOrderUpdatePost$Response,
      OrderServiceOrderUpdatePost$Response
    >($request);
  }

  @override
  Future<Response<OrderServiceOrderConfirmPost$Response>>
  _orderServiceOrderConfirmPost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '订单确认(暂时没有)',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["订单下单"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/order/confirm');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      OrderServiceOrderConfirmPost$Response,
      OrderServiceOrderConfirmPost$Response
    >($request);
  }

  @override
  Future<Response<OrderServiceOrderSettlementPost$Response>>
  _orderServiceOrderSettlementPost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '订单结算支付',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["订单下单"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/order/settlement');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      OrderServiceOrderSettlementPost$Response,
      OrderServiceOrderSettlementPost$Response
    >($request);
  }

  @override
  Future<Response<OrderServiceOrderPricingPost$Response>>
  _orderServiceOrderPricingPost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '订单金额校验',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["订单下单"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/order/pricing');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      OrderServiceOrderPricingPost$Response,
      OrderServiceOrderPricingPost$Response
    >($request);
  }

  @override
  Future<Response<Object>> _orderServiceAftersaleOrderSubmitPost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '生成逆向单',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["逆向"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/aftersale/order/submit');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<List<dynamic>>> _orderServiceFeebillListGet({
    String? status,
    String? bizId,
    String? orderId,
    String? billType,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '列表',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["补款单"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/feebill/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'status': status,
      'bizId': bizId,
      'orderId': orderId,
      'billType': billType,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<List<dynamic>, List<dynamic>>($request);
  }

  @override
  Future<Response<String>> _userServiceFeebillDetailGet({
    required String? billId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '详情',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["补款单"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/feebill/detail');
    final Map<String, dynamic> $params = <String, dynamic>{'billId': billId};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<OrderServiceOrderNoAuthDetailGet$Response>>
  _orderServiceOrderNoAuthDetailGet({
    String? orderId,
    String? dv,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'noauth-订单详情',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["订单查询"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/order/no-auth/detail');
    final Map<String, dynamic> $params = <String, dynamic>{
      'orderId': orderId,
      'dv': dv,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      OrderServiceOrderNoAuthDetailGet$Response,
      OrderServiceOrderNoAuthDetailGet$Response
    >($request);
  }

  @override
  Future<Response<String>> _orderServiceOrderCountGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '个人订单统计',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["订单查询"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/order/count');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<OrderServiceOrderCouponListPost$Response>>
  _orderServiceOrderCouponListPost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '优惠券列表',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["订单查询"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/order/couponList');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      OrderServiceOrderCouponListPost$Response,
      OrderServiceOrderCouponListPost$Response
    >($request);
  }

  @override
  Future<Response<OrderServiceOrderDiscountListPost$Response>>
  _orderServiceOrderDiscountListPost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '兑换折扣码',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["订单查询"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/order/discountList');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      OrderServiceOrderDiscountListPost$Response,
      OrderServiceOrderDiscountListPost$Response
    >($request);
  }

  @override
  Future<Response<OrderServiceOrderAvailableCouponPost$Response>>
  _orderServiceOrderAvailableCouponPost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '可用优惠券',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["订单查询"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/order/available/coupon');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      OrderServiceOrderAvailableCouponPost$Response,
      OrderServiceOrderAvailableCouponPost$Response
    >($request);
  }

  @override
  Future<Response<OrderServiceOrderCouponTitlePost$Response>>
  _orderServiceOrderCouponTitlePost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '可用优惠券提示',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["订单查询"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/order/couponTitle');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      OrderServiceOrderCouponTitlePost$Response,
      OrderServiceOrderCouponTitlePost$Response
    >($request);
  }

  @override
  Future<Response<OrderServiceOrderGetReviewGet$Response>>
  _orderServiceOrderGetReviewGet({
    required String? orderId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '查看订单评论',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["订单查询"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/order/getReview');
    final Map<String, dynamic> $params = <String, dynamic>{'orderId': orderId};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      OrderServiceOrderGetReviewGet$Response,
      OrderServiceOrderGetReviewGet$Response
    >($request);
  }

  @override
  Future<Response<OrderServiceOrderListGet$Response>>
  _orderServiceOrderListGet({
    String? status,
    String? startTime,
    String? endTime,
    required String? current,
    required String? pageSize,
    String? frontStatus,
    String? keyword,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '订单列表',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["订单查询"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/order/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'status': status,
      'startTime': startTime,
      'endTime': endTime,
      'current': current,
      'pageSize': pageSize,
      'frontStatus': frontStatus,
      'keyword': keyword,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      OrderServiceOrderListGet$Response,
      OrderServiceOrderListGet$Response
    >($request);
  }

  @override
  Future<Response<OrderServiceOrderCombineListGet$Response>>
  _orderServiceOrderCombineListGet({
    String? status,
    String? startTime,
    String? endTime,
    required String? current,
    required String? pageSize,
    String? frontStatus,
    String? keyword,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '订单列表合并',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["订单查询"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/order/combineList');
    final Map<String, dynamic> $params = <String, dynamic>{
      'status': status,
      'startTime': startTime,
      'endTime': endTime,
      'current': current,
      'pageSize': pageSize,
      'frontStatus': frontStatus,
      'keyword': keyword,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      OrderServiceOrderCombineListGet$Response,
      OrderServiceOrderCombineListGet$Response
    >($request);
  }

  @override
  Future<Response<OrderServiceOrderGetBatchNoGet$Response>>
  _orderServiceOrderGetBatchNoGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '订单批次号',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["订单查询"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/order/getBatchNo');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      OrderServiceOrderGetBatchNoGet$Response,
      OrderServiceOrderGetBatchNoGet$Response
    >($request);
  }

  @override
  Future<Response<OrderServiceOrderGetButtonGet$Response>>
  _orderServiceOrderGetButtonGet({
    required String? orderId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '订单按钮控制',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["订单查询"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/order/getButton');
    final Map<String, dynamic> $params = <String, dynamic>{'orderId': orderId};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      OrderServiceOrderGetButtonGet$Response,
      OrderServiceOrderGetButtonGet$Response
    >($request);
  }

  @override
  Future<Response<OrderServiceOrderReviewPost$Response>>
  _orderServiceOrderReviewPost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '订单评论提交',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["订单查询"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/order/review');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      OrderServiceOrderReviewPost$Response,
      OrderServiceOrderReviewPost$Response
    >($request);
  }

  @override
  Future<Response<OrderServiceOrderDetailGet$Response>>
  _orderServiceOrderDetailGet({
    required String? orderId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '订单详情',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["订单查询"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/order/detail');
    final Map<String, dynamic> $params = <String, dynamic>{'orderId': orderId};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      OrderServiceOrderDetailGet$Response,
      OrderServiceOrderDetailGet$Response
    >($request);
  }

  @override
  Future<Response<OrderServiceOpenapiOrderDetailGet$Response>>
  _orderServiceOpenapiOrderDetailGet({
    required String? orderId,
    required String? threadId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '订单详情openapi',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["订单查询"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/openapi/order/detail');
    final Map<String, dynamic> $params = <String, dynamic>{
      'orderId': orderId,
      'threadId': threadId,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      OrderServiceOpenapiOrderDetailGet$Response,
      OrderServiceOpenapiOrderDetailGet$Response
    >($request);
  }

  @override
  Future<Response<OrderServiceOrderCombineDetailGet$Response>>
  _orderServiceOrderCombineDetailGet({
    required String? orderId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '订单详情合并展示',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["订单查询"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/order/combineDetail');
    final Map<String, dynamic> $params = <String, dynamic>{'orderId': orderId};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      OrderServiceOrderCombineDetailGet$Response,
      OrderServiceOrderCombineDetailGet$Response
    >($request);
  }

  @override
  Future<Response<OrderServiceOrderGetOrderTraceGet$Response>>
  _orderServiceOrderGetOrderTraceGet({
    required String? orderId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '订单轨迹展示',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["订单查询"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/order/getOrderTrace');
    final Map<String, dynamic> $params = <String, dynamic>{'orderId': orderId};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      OrderServiceOrderGetOrderTraceGet$Response,
      OrderServiceOrderGetOrderTraceGet$Response
    >($request);
  }

  @override
  Future<Response<Object>> _orderServiceCartAddPost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '加入购物车',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["购物车"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/cart/add');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<OrderServiceCartListGet$Response>> _orderServiceCartListGet({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '购物车列表',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["购物车"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/cart/list');
    final $body = root;
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      OrderServiceCartListGet$Response,
      OrderServiceCartListGet$Response
    >($request);
  }

  @override
  Future<Response<Object>> _orderServiceCartUpdatePost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '购物车更新',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["购物车"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/cart/update');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<OrderServiceCartSettlementPost$Response>>
  _orderServiceCartSettlementPost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '购物车结算',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["购物车"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/cart/settlement');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      OrderServiceCartSettlementPost$Response,
      OrderServiceCartSettlementPost$Response
    >($request);
  }

  @override
  Future<Response<OrderServiceCartPricingPost$Response>>
  _orderServiceCartPricingPost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '购物车金额',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["购物车"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/cart/pricing');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      OrderServiceCartPricingPost$Response,
      OrderServiceCartPricingPost$Response
    >($request);
  }

  @override
  Future<Response<OrderServiceCartNoAuthPricingPost$Response>>
  _orderServiceCartNoAuthPricingPost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '购物车金额_非验权',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["购物车"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/order-service/cart/no-auth/pricing');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      OrderServiceCartNoAuthPricingPost$Response,
      OrderServiceCartNoAuthPricingPost$Response
    >($request);
  }
}
