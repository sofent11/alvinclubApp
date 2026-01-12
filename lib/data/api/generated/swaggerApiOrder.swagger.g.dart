// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swaggerApiOrder.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderServiceOrderAppCancelPost$Response
_$OrderServiceOrderAppCancelPost$ResponseFromJson(Map<String, dynamic> json) =>
    OrderServiceOrderAppCancelPost$Response(
      message: json['message'] as String?,
      code: (json['code'] as num?)?.toDouble(),
      data: json['data'],
    );

Map<String, dynamic> _$OrderServiceOrderAppCancelPost$ResponseToJson(
  OrderServiceOrderAppCancelPost$Response instance,
) => <String, dynamic>{
  'message': instance.message,
  'code': instance.code,
  'data': instance.data,
};

OrderServiceOrderAppBatchInfosGet$Response
_$OrderServiceOrderAppBatchInfosGet$ResponseFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppBatchInfosGet$Response(
  data: json['data'] == null
      ? null
      : OrderServiceOrderAppBatchInfosGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$OrderServiceOrderAppBatchInfosGet$ResponseToJson(
  OrderServiceOrderAppBatchInfosGet$Response instance,
) => <String, dynamic>{
  'data': instance.data?.toJson(),
  'code': instance.code,
  'message': instance.message,
};

OrderServiceOrderAppSubmitPost$Response
_$OrderServiceOrderAppSubmitPost$ResponseFromJson(Map<String, dynamic> json) =>
    OrderServiceOrderAppSubmitPost$Response(
      data: json['data'] == null
          ? null
          : OrderServiceOrderAppSubmitPost$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$OrderServiceOrderAppSubmitPost$ResponseToJson(
  OrderServiceOrderAppSubmitPost$Response instance,
) => <String, dynamic>{
  'data': instance.data?.toJson(),
  'code': instance.code,
  'message': instance.message,
};

OrderServiceOrderAppUpdatePost$Response
_$OrderServiceOrderAppUpdatePost$ResponseFromJson(Map<String, dynamic> json) =>
    OrderServiceOrderAppUpdatePost$Response(
      data: json['data'],
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$OrderServiceOrderAppUpdatePost$ResponseToJson(
  OrderServiceOrderAppUpdatePost$Response instance,
) => <String, dynamic>{
  'data': instance.data,
  'code': instance.code,
  'message': instance.message,
};

OrderServiceOrderAppListGet$Response
_$OrderServiceOrderAppListGet$ResponseFromJson(Map<String, dynamic> json) =>
    OrderServiceOrderAppListGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : OrderServiceOrderAppListGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: json['traceId'] as String?,
      placeholder: json['placeholder'],
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$OrderServiceOrderAppListGet$ResponseToJson(
  OrderServiceOrderAppListGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

OrderServiceOrderAppDetailGet$Response
_$OrderServiceOrderAppDetailGet$ResponseFromJson(Map<String, dynamic> json) =>
    OrderServiceOrderAppDetailGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : OrderServiceOrderAppDetailGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: json['traceId'] as String?,
      placeholder: json['placeholder'],
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$OrderServiceOrderAppDetailGet$ResponseToJson(
  OrderServiceOrderAppDetailGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

OrderServiceOrderPrePricingGet$Response
_$OrderServiceOrderPrePricingGet$ResponseFromJson(Map<String, dynamic> json) =>
    OrderServiceOrderPrePricingGet$Response(
      data: json['data'] == null
          ? null
          : OrderServiceOrderPrePricingGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$OrderServiceOrderPrePricingGet$ResponseToJson(
  OrderServiceOrderPrePricingGet$Response instance,
) => <String, dynamic>{
  'data': instance.data?.toJson(),
  'code': instance.code,
  'message': instance.message,
};

OrderServiceOrderCancelPost$Response
_$OrderServiceOrderCancelPost$ResponseFromJson(Map<String, dynamic> json) =>
    OrderServiceOrderCancelPost$Response(
      message: json['message'] as String?,
      code: (json['code'] as num?)?.toDouble(),
      data: json['data'],
    );

Map<String, dynamic> _$OrderServiceOrderCancelPost$ResponseToJson(
  OrderServiceOrderCancelPost$Response instance,
) => <String, dynamic>{
  'message': instance.message,
  'code': instance.code,
  'data': instance.data,
};

OrderServiceOrderSubmitPost$Response
_$OrderServiceOrderSubmitPost$ResponseFromJson(Map<String, dynamic> json) =>
    OrderServiceOrderSubmitPost$Response(
      data: json['data'] == null
          ? null
          : OrderServiceOrderSubmitPost$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$OrderServiceOrderSubmitPost$ResponseToJson(
  OrderServiceOrderSubmitPost$Response instance,
) => <String, dynamic>{
  'data': instance.data?.toJson(),
  'code': instance.code,
  'message': instance.message,
};

OrderServiceOrderUpdatePost$Response
_$OrderServiceOrderUpdatePost$ResponseFromJson(Map<String, dynamic> json) =>
    OrderServiceOrderUpdatePost$Response(
      data: json['data'],
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$OrderServiceOrderUpdatePost$ResponseToJson(
  OrderServiceOrderUpdatePost$Response instance,
) => <String, dynamic>{
  'data': instance.data,
  'code': instance.code,
  'message': instance.message,
};

OrderServiceOrderConfirmPost$Response
_$OrderServiceOrderConfirmPost$ResponseFromJson(Map<String, dynamic> json) =>
    OrderServiceOrderConfirmPost$Response(
      code: json['code'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : OrderServiceOrderConfirmPost$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$OrderServiceOrderConfirmPost$ResponseToJson(
  OrderServiceOrderConfirmPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
};

OrderServiceOrderSettlementPost$Response
_$OrderServiceOrderSettlementPost$ResponseFromJson(Map<String, dynamic> json) =>
    OrderServiceOrderSettlementPost$Response(
      totalPrice: json['totalPrice'] as String?,
      targetTotalPrice: json['targetTotalPrice'] as String?,
      currency: json['currency'] as String?,
      targetCurrency: json['targetCurrency'] as String?,
      rechargeBalance: json['rechargeBalance'] as String?,
      rechargeStatus: json['rechargeStatus'] as String?,
    );

Map<String, dynamic> _$OrderServiceOrderSettlementPost$ResponseToJson(
  OrderServiceOrderSettlementPost$Response instance,
) => <String, dynamic>{
  'totalPrice': instance.totalPrice,
  'targetTotalPrice': instance.targetTotalPrice,
  'currency': instance.currency,
  'targetCurrency': instance.targetCurrency,
  'rechargeBalance': instance.rechargeBalance,
  'rechargeStatus': instance.rechargeStatus,
};

OrderServiceOrderPricingPost$Response
_$OrderServiceOrderPricingPost$ResponseFromJson(Map<String, dynamic> json) =>
    OrderServiceOrderPricingPost$Response(
      totalAmount: json['totalAmount'] as String?,
      targetTotalAmount: json['targetTotalAmount'] as String?,
      sellCur: json['sellCur'] as String?,
      targetSellCur: json['targetSellCur'] as String?,
      targetOrderLimitAmount: json['targetOrderLimitAmount'] as String?,
      targetShipLimitAmount: json['targetShipLimitAmount'] as String?,
    );

Map<String, dynamic> _$OrderServiceOrderPricingPost$ResponseToJson(
  OrderServiceOrderPricingPost$Response instance,
) => <String, dynamic>{
  'totalAmount': instance.totalAmount,
  'targetTotalAmount': instance.targetTotalAmount,
  'sellCur': instance.sellCur,
  'targetSellCur': instance.targetSellCur,
  'targetOrderLimitAmount': instance.targetOrderLimitAmount,
  'targetShipLimitAmount': instance.targetShipLimitAmount,
};

OrderServiceFeebillListGet$Response$Item
_$OrderServiceFeebillListGet$Response$ItemFromJson(Map<String, dynamic> json) =>
    OrderServiceFeebillListGet$Response$Item(
      billId: json['billId'] as String?,
      bizId: json['bizId'] as String?,
      billType: json['billType'] as String?,
      status: json['status'] as String?,
      gmtTimeout: json['gmtTimeout'] as String?,
      gmtPay: json['gmtPay'] as String?,
      settlementPrice: json['settlementPrice'] as String?,
      currency: json['currency'] as String?,
      targetCurrency: json['targetCurrency'] as String?,
      targetTotalPrice: json['targetTotalPrice'] as String?,
    );

Map<String, dynamic> _$OrderServiceFeebillListGet$Response$ItemToJson(
  OrderServiceFeebillListGet$Response$Item instance,
) => <String, dynamic>{
  'billId': instance.billId,
  'bizId': instance.bizId,
  'billType': instance.billType,
  'status': instance.status,
  'gmtTimeout': instance.gmtTimeout,
  'gmtPay': instance.gmtPay,
  'settlementPrice': instance.settlementPrice,
  'currency': instance.currency,
  'targetCurrency': instance.targetCurrency,
  'targetTotalPrice': instance.targetTotalPrice,
};

OrderServiceOrderNoAuthDetailGet$Response
_$OrderServiceOrderNoAuthDetailGet$ResponseFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderNoAuthDetailGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : OrderServiceOrderNoAuthDetailGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$OrderServiceOrderNoAuthDetailGet$ResponseToJson(
  OrderServiceOrderNoAuthDetailGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

OrderServiceOrderCouponListPost$Response
_$OrderServiceOrderCouponListPost$ResponseFromJson(Map<String, dynamic> json) =>
    OrderServiceOrderCouponListPost$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map(
            (e) => OrderServiceOrderCouponListPost$Response$Data$Item.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
      traceId: json['traceId'] as String?,
      placeholder: json['placeholder'],
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$OrderServiceOrderCouponListPost$ResponseToJson(
  OrderServiceOrderCouponListPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

OrderServiceOrderDiscountListPost$Response
_$OrderServiceOrderDiscountListPost$ResponseFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderDiscountListPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map(
        (e) => OrderServiceOrderDiscountListPost$Response$Data$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$OrderServiceOrderDiscountListPost$ResponseToJson(
  OrderServiceOrderDiscountListPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

OrderServiceOrderAvailableCouponPost$Response
_$OrderServiceOrderAvailableCouponPost$ResponseFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAvailableCouponPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : OrderServiceOrderAvailableCouponPost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$OrderServiceOrderAvailableCouponPost$ResponseToJson(
  OrderServiceOrderAvailableCouponPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

OrderServiceOrderCouponTitlePost$Response
_$OrderServiceOrderCouponTitlePost$ResponseFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderCouponTitlePost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] as String?,
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$OrderServiceOrderCouponTitlePost$ResponseToJson(
  OrderServiceOrderCouponTitlePost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

OrderServiceOrderGetReviewGet$Response
_$OrderServiceOrderGetReviewGet$ResponseFromJson(Map<String, dynamic> json) =>
    OrderServiceOrderGetReviewGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map(
            (e) => OrderServiceOrderGetReviewGet$Response$Data$Item.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
      traceId: json['traceId'] as String?,
      placeholder: json['placeholder'],
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$OrderServiceOrderGetReviewGet$ResponseToJson(
  OrderServiceOrderGetReviewGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

OrderServiceOrderListGet$Response _$OrderServiceOrderListGet$ResponseFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderListGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : OrderServiceOrderListGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$OrderServiceOrderListGet$ResponseToJson(
  OrderServiceOrderListGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

OrderServiceOrderCombineListGet$Response
_$OrderServiceOrderCombineListGet$ResponseFromJson(Map<String, dynamic> json) =>
    OrderServiceOrderCombineListGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : OrderServiceOrderCombineListGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: json['traceId'] as String?,
      placeholder: json['placeholder'],
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$OrderServiceOrderCombineListGet$ResponseToJson(
  OrderServiceOrderCombineListGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

OrderServiceOrderGetBatchNoGet$Response
_$OrderServiceOrderGetBatchNoGet$ResponseFromJson(Map<String, dynamic> json) =>
    OrderServiceOrderGetBatchNoGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : OrderServiceOrderGetBatchNoGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: json['traceId'] as String?,
      placeholder: json['placeholder'],
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$OrderServiceOrderGetBatchNoGet$ResponseToJson(
  OrderServiceOrderGetBatchNoGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

OrderServiceOrderGetButtonGet$Response
_$OrderServiceOrderGetButtonGet$ResponseFromJson(Map<String, dynamic> json) =>
    OrderServiceOrderGetButtonGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : OrderServiceOrderGetButtonGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: json['traceId'] as String?,
      placeholder: json['placeholder'],
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$OrderServiceOrderGetButtonGet$ResponseToJson(
  OrderServiceOrderGetButtonGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

OrderServiceOrderReviewPost$Response
_$OrderServiceOrderReviewPost$ResponseFromJson(Map<String, dynamic> json) =>
    OrderServiceOrderReviewPost$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] as String?,
      traceId: json['traceId'] as String?,
      placeholder: json['placeholder'],
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$OrderServiceOrderReviewPost$ResponseToJson(
  OrderServiceOrderReviewPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

OrderServiceOrderDetailGet$Response
_$OrderServiceOrderDetailGet$ResponseFromJson(Map<String, dynamic> json) =>
    OrderServiceOrderDetailGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : OrderServiceOrderDetailGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: json['traceId'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$OrderServiceOrderDetailGet$ResponseToJson(
  OrderServiceOrderDetailGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'success': instance.success,
};

OrderServiceOpenapiOrderDetailGet$Response
_$OrderServiceOpenapiOrderDetailGet$ResponseFromJson(
  Map<String, dynamic> json,
) => OrderServiceOpenapiOrderDetailGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : OrderServiceOpenapiOrderDetailGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$OrderServiceOpenapiOrderDetailGet$ResponseToJson(
  OrderServiceOpenapiOrderDetailGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

OrderServiceOrderCombineDetailGet$Response
_$OrderServiceOrderCombineDetailGet$ResponseFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderCombineDetailGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : OrderServiceOrderCombineDetailGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$OrderServiceOrderCombineDetailGet$ResponseToJson(
  OrderServiceOrderCombineDetailGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

OrderServiceOrderGetOrderTraceGet$Response
_$OrderServiceOrderGetOrderTraceGet$ResponseFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderGetOrderTraceGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : OrderServiceOrderGetOrderTraceGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$OrderServiceOrderGetOrderTraceGet$ResponseToJson(
  OrderServiceOrderGetOrderTraceGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

OrderServiceCartListGet$Response _$OrderServiceCartListGet$ResponseFromJson(
  Map<String, dynamic> json,
) => OrderServiceCartListGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : OrderServiceCartListGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$OrderServiceCartListGet$ResponseToJson(
  OrderServiceCartListGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

OrderServiceCartSettlementPost$Response
_$OrderServiceCartSettlementPost$ResponseFromJson(Map<String, dynamic> json) =>
    OrderServiceCartSettlementPost$Response(
      code: json['code'] as String?,
      message: json['message'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$OrderServiceCartSettlementPost$ResponseToJson(
  OrderServiceCartSettlementPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
};

OrderServiceCartPricingPost$Response
_$OrderServiceCartPricingPost$ResponseFromJson(Map<String, dynamic> json) =>
    OrderServiceCartPricingPost$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : OrderServiceCartPricingPost$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: json['traceId'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$OrderServiceCartPricingPost$ResponseToJson(
  OrderServiceCartPricingPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'success': instance.success,
};

OrderServiceCartNoAuthPricingPost$Response
_$OrderServiceCartNoAuthPricingPost$ResponseFromJson(
  Map<String, dynamic> json,
) => OrderServiceCartNoAuthPricingPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : OrderServiceCartNoAuthPricingPost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$OrderServiceCartNoAuthPricingPost$ResponseToJson(
  OrderServiceCartNoAuthPricingPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'success': instance.success,
};

OrderServiceOrderAppBatchInfosGet$Response$Data
_$OrderServiceOrderAppBatchInfosGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppBatchInfosGet$Response$Data(
  title: json['title'] as String?,
  description: json['description'] as String?,
  parcelOrderId: json['parcelOrderId'] as String?,
  logisticsJoinInfoList: (json['logisticsJoinInfoList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderAppBatchInfosGet$Response$Data$LogisticsJoinInfoList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic> _$OrderServiceOrderAppBatchInfosGet$Response$DataToJson(
  OrderServiceOrderAppBatchInfosGet$Response$Data instance,
) => <String, dynamic>{
  'title': instance.title,
  'description': instance.description,
  'parcelOrderId': instance.parcelOrderId,
  'logisticsJoinInfoList': instance.logisticsJoinInfoList
      ?.map((e) => e.toJson())
      .toList(),
};

OrderServiceOrderAppSubmitPost$Response$Data
_$OrderServiceOrderAppSubmitPost$Response$DataFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppSubmitPost$Response$Data(
  orderId: json['orderId'] as String?,
  single: json['single'] as bool?,
  orderStatus: (json['orderStatus'] as num?)?.toDouble(),
  timeoutPeriod: (json['timeoutPeriod'] as num?)?.toDouble(),
);

Map<String, dynamic> _$OrderServiceOrderAppSubmitPost$Response$DataToJson(
  OrderServiceOrderAppSubmitPost$Response$Data instance,
) => <String, dynamic>{
  'orderId': instance.orderId,
  'single': instance.single,
  'orderStatus': instance.orderStatus,
  'timeoutPeriod': instance.timeoutPeriod,
};

OrderServiceOrderAppListGet$Response$Data
_$OrderServiceOrderAppListGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppListGet$Response$Data(
  total: (json['total'] as num?)?.toDouble(),
  pageSize: (json['pageSize'] as num?)?.toDouble(),
  totalPages: (json['totalPages'] as num?)?.toDouble(),
  current: (json['current'] as num?)?.toDouble(),
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) => OrderServiceOrderAppListGet$Response$Data$Records$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
);

Map<String, dynamic> _$OrderServiceOrderAppListGet$Response$DataToJson(
  OrderServiceOrderAppListGet$Response$Data instance,
) => <String, dynamic>{
  'total': instance.total,
  'pageSize': instance.pageSize,
  'totalPages': instance.totalPages,
  'current': instance.current,
  'records': instance.records?.map((e) => e.toJson()).toList(),
};

OrderServiceOrderAppDetailGet$Response$Data
_$OrderServiceOrderAppDetailGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppDetailGet$Response$Data(
  baseInfo: json['baseInfo'] == null
      ? null
      : OrderServiceOrderAppDetailGet$Response$Data$BaseInfo.fromJson(
          json['baseInfo'] as Map<String, dynamic>,
        ),
  userAddress: json['userAddress'] == null
      ? null
      : OrderServiceOrderAppDetailGet$Response$Data$UserAddress.fromJson(
          json['userAddress'] as Map<String, dynamic>,
        ),
  payMethod: json['payMethod'] == null
      ? null
      : OrderServiceOrderAppDetailGet$Response$Data$PayMethod.fromJson(
          json['payMethod'] as Map<String, dynamic>,
        ),
  payments: json['payments'] == null
      ? null
      : OrderServiceOrderAppDetailGet$Response$Data$Payments.fromJson(
          json['payments'] as Map<String, dynamic>,
        ),
  orderBillList: (json['orderBillList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderAppDetailGet$Response$Data$OrderBillList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  parcelOrder: json['parcelOrder'] == null
      ? null
      : OrderServiceOrderAppDetailGet$Response$Data$ParcelOrder.fromJson(
          json['parcelOrder'] as Map<String, dynamic>,
        ),
  orderTrace: json['orderTrace'] == null
      ? null
      : OrderServiceOrderAppDetailGet$Response$Data$OrderTrace.fromJson(
          json['orderTrace'] as Map<String, dynamic>,
        ),
  discountInfos: (json['discountInfos'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderAppDetailGet$Response$Data$DiscountInfos$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  orderList: (json['orderList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic> _$OrderServiceOrderAppDetailGet$Response$DataToJson(
  OrderServiceOrderAppDetailGet$Response$Data instance,
) => <String, dynamic>{
  'baseInfo': instance.baseInfo?.toJson(),
  'userAddress': instance.userAddress?.toJson(),
  'payMethod': instance.payMethod?.toJson(),
  'payments': instance.payments?.toJson(),
  'orderBillList': instance.orderBillList?.map((e) => e.toJson()).toList(),
  'parcelOrder': instance.parcelOrder?.toJson(),
  'orderTrace': instance.orderTrace?.toJson(),
  'discountInfos': instance.discountInfos?.map((e) => e.toJson()).toList(),
  'orderList': instance.orderList?.map((e) => e.toJson()).toList(),
};

OrderServiceOrderPrePricingGet$Response$Data
_$OrderServiceOrderPrePricingGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderPrePricingGet$Response$Data(
  currency: json['currency'] as String?,
  totalPrice: json['totalPrice'] as String?,
  targetCurrency: (json['targetCurrency'] as num?)?.toDouble(),
  targetPrice: json['targetPrice'] as String?,
);

Map<String, dynamic> _$OrderServiceOrderPrePricingGet$Response$DataToJson(
  OrderServiceOrderPrePricingGet$Response$Data instance,
) => <String, dynamic>{
  'currency': instance.currency,
  'totalPrice': instance.totalPrice,
  'targetCurrency': instance.targetCurrency,
  'targetPrice': instance.targetPrice,
};

OrderServiceOrderSubmitPost$Response$Data
_$OrderServiceOrderSubmitPost$Response$DataFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderSubmitPost$Response$Data(
  orderId: json['orderId'] as String?,
  orderStatus: (json['orderStatus'] as num?)?.toDouble(),
  timeoutPeriod: (json['timeoutPeriod'] as num?)?.toDouble(),
);

Map<String, dynamic> _$OrderServiceOrderSubmitPost$Response$DataToJson(
  OrderServiceOrderSubmitPost$Response$Data instance,
) => <String, dynamic>{
  'orderId': instance.orderId,
  'orderStatus': instance.orderStatus,
  'timeoutPeriod': instance.timeoutPeriod,
};

OrderServiceOrderConfirmPost$Response$Data
_$OrderServiceOrderConfirmPost$Response$DataFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderConfirmPost$Response$Data(
  pricing: json['pricing'] == null
      ? null
      : OrderServiceOrderConfirmPost$Response$Data$Pricing.fromJson(
          json['pricing'] as Map<String, dynamic>,
        ),
  paymentMethodList: (json['paymentMethodList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderConfirmPost$Response$Data$PaymentMethodList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic> _$OrderServiceOrderConfirmPost$Response$DataToJson(
  OrderServiceOrderConfirmPost$Response$Data instance,
) => <String, dynamic>{
  'pricing': instance.pricing?.toJson(),
  'paymentMethodList': instance.paymentMethodList
      ?.map((e) => e.toJson())
      .toList(),
};

OrderServiceOrderNoAuthDetailGet$Response$Data
_$OrderServiceOrderNoAuthDetailGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderNoAuthDetailGet$Response$Data(
  baseInfo: json['baseInfo'] == null
      ? null
      : OrderServiceOrderNoAuthDetailGet$Response$Data$BaseInfo.fromJson(
          json['baseInfo'] as Map<String, dynamic>,
        ),
  userAddress: json['userAddress'] == null
      ? null
      : OrderServiceOrderNoAuthDetailGet$Response$Data$UserAddress.fromJson(
          json['userAddress'] as Map<String, dynamic>,
        ),
  payMethod: json['payMethod'] == null
      ? null
      : OrderServiceOrderNoAuthDetailGet$Response$Data$PayMethod.fromJson(
          json['payMethod'] as Map<String, dynamic>,
        ),
  payments: json['payments'] == null
      ? null
      : OrderServiceOrderNoAuthDetailGet$Response$Data$Payments.fromJson(
          json['payments'] as Map<String, dynamic>,
        ),
  orderBillList: (json['orderBillList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderNoAuthDetailGet$Response$Data$OrderBillList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  parcelOrder: json['parcelOrder'] == null
      ? null
      : OrderServiceOrderNoAuthDetailGet$Response$Data$ParcelOrder.fromJson(
          json['parcelOrder'] as Map<String, dynamic>,
        ),
  orderTrace: json['orderTrace'] == null
      ? null
      : OrderServiceOrderNoAuthDetailGet$Response$Data$OrderTrace.fromJson(
          json['orderTrace'] as Map<String, dynamic>,
        ),
  discountInfos: (json['discountInfos'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderNoAuthDetailGet$Response$Data$DiscountInfos$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  orderList: (json['orderList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic> _$OrderServiceOrderNoAuthDetailGet$Response$DataToJson(
  OrderServiceOrderNoAuthDetailGet$Response$Data instance,
) => <String, dynamic>{
  'baseInfo': instance.baseInfo?.toJson(),
  'userAddress': instance.userAddress?.toJson(),
  'payMethod': instance.payMethod?.toJson(),
  'payments': instance.payments?.toJson(),
  'orderBillList': instance.orderBillList?.map((e) => e.toJson()).toList(),
  'parcelOrder': instance.parcelOrder?.toJson(),
  'orderTrace': instance.orderTrace?.toJson(),
  'discountInfos': instance.discountInfos?.map((e) => e.toJson()).toList(),
  'orderList': instance.orderList?.map((e) => e.toJson()).toList(),
};

OrderServiceOrderCouponListPost$Response$Data$Item
_$OrderServiceOrderCouponListPost$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderCouponListPost$Response$Data$Item(
  couponCode: json['couponCode'] as String?,
  discountInfo: json['discountInfo'] as String?,
  discountType: (json['discountType'] as num?)?.toDouble(),
  discountAmount: json['discountAmount'] as String?,
  currency: json['currency'] as String?,
  targetDiscountAmount: json['targetDiscountAmount'] as String?,
  targetCurrency: json['targetCurrency'] as String?,
  available: json['available'] as bool?,
  unavailableReason: json['unavailableReason'] as String?,
  userCoupon: json['userCoupon'] == null
      ? null
      : OrderServiceOrderCouponListPost$Response$Data$Item$UserCoupon.fromJson(
          json['userCoupon'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$OrderServiceOrderCouponListPost$Response$Data$ItemToJson(
  OrderServiceOrderCouponListPost$Response$Data$Item instance,
) => <String, dynamic>{
  'couponCode': instance.couponCode,
  'discountInfo': instance.discountInfo,
  'discountType': instance.discountType,
  'discountAmount': instance.discountAmount,
  'currency': instance.currency,
  'targetDiscountAmount': instance.targetDiscountAmount,
  'targetCurrency': instance.targetCurrency,
  'available': instance.available,
  'unavailableReason': instance.unavailableReason,
  'userCoupon': instance.userCoupon?.toJson(),
};

OrderServiceOrderDiscountListPost$Response$Data$Item
_$OrderServiceOrderDiscountListPost$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderDiscountListPost$Response$Data$Item(
  couponCode: json['couponCode'] as String?,
  discountInfo: json['discountInfo'] as String?,
  discountType: (json['discountType'] as num?)?.toDouble(),
  discountAmount: json['discountAmount'] as String?,
  currency: json['currency'] as String?,
  targetDiscountAmount: json['targetDiscountAmount'] as String?,
  targetCurrency: json['targetCurrency'] as String?,
  available: json['available'] as bool?,
  unavailableReason: json['unavailableReason'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderDiscountListPost$Response$Data$ItemToJson(
  OrderServiceOrderDiscountListPost$Response$Data$Item instance,
) => <String, dynamic>{
  'couponCode': instance.couponCode,
  'discountInfo': instance.discountInfo,
  'discountType': instance.discountType,
  'discountAmount': instance.discountAmount,
  'currency': instance.currency,
  'targetDiscountAmount': instance.targetDiscountAmount,
  'targetCurrency': instance.targetCurrency,
  'available': instance.available,
  'unavailableReason': instance.unavailableReason,
};

OrderServiceOrderAvailableCouponPost$Response$Data
_$OrderServiceOrderAvailableCouponPost$Response$DataFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAvailableCouponPost$Response$Data(
  couponCode: json['couponCode'] as String?,
  discountInfo: json['discountInfo'] as String?,
  discountType: (json['discountType'] as num?)?.toDouble(),
  discountAmount: json['discountAmount'] as String?,
  currency: json['currency'] as String?,
  targetDiscountAmount: json['targetDiscountAmount'] as String?,
  targetCurrency: json['targetCurrency'] as String?,
  available: json['available'] as bool?,
  unavailableReason: json['unavailableReason'] as String?,
);

Map<String, dynamic> _$OrderServiceOrderAvailableCouponPost$Response$DataToJson(
  OrderServiceOrderAvailableCouponPost$Response$Data instance,
) => <String, dynamic>{
  'couponCode': instance.couponCode,
  'discountInfo': instance.discountInfo,
  'discountType': instance.discountType,
  'discountAmount': instance.discountAmount,
  'currency': instance.currency,
  'targetDiscountAmount': instance.targetDiscountAmount,
  'targetCurrency': instance.targetCurrency,
  'available': instance.available,
  'unavailableReason': instance.unavailableReason,
};

OrderServiceOrderGetReviewGet$Response$Data$Item
_$OrderServiceOrderGetReviewGet$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderGetReviewGet$Response$Data$Item(
  productName: json['productName'] as String?,
  skuCode: json['skuCode'] as String?,
  productCode: json['productCode'] as String?,
  image: json['image'] as String?,
  targetSellPrice: json['targetSellPrice'] as String?,
  targetSellCur: json['targetSellCur'] as String?,
  targetTotalPrice: json['targetTotalPrice'] as String?,
  quantity: json['quantity'] as String?,
  skuSpecValues: (json['skuSpecValues'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderGetReviewGet$Response$Data$Item$SkuSpecValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  review: json['review'] == null
      ? null
      : OrderServiceOrderGetReviewGet$Response$Data$Item$Review.fromJson(
          json['review'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$OrderServiceOrderGetReviewGet$Response$Data$ItemToJson(
  OrderServiceOrderGetReviewGet$Response$Data$Item instance,
) => <String, dynamic>{
  'productName': instance.productName,
  'skuCode': instance.skuCode,
  'productCode': instance.productCode,
  'image': instance.image,
  'targetSellPrice': instance.targetSellPrice,
  'targetSellCur': instance.targetSellCur,
  'targetTotalPrice': instance.targetTotalPrice,
  'quantity': instance.quantity,
  'skuSpecValues': instance.skuSpecValues?.map((e) => e.toJson()).toList(),
  'review': instance.review?.toJson(),
};

OrderServiceOrderListGet$Response$Data
_$OrderServiceOrderListGet$Response$DataFromJson(Map<String, dynamic> json) =>
    OrderServiceOrderListGet$Response$Data(
      total: (json['total'] as num?)?.toDouble(),
      pageSize: (json['pageSize'] as num?)?.toDouble(),
      totalPages: (json['totalPages'] as num?)?.toDouble(),
      current: (json['current'] as num?)?.toDouble(),
      records: (json['records'] as List<dynamic>?)
          ?.map(
            (e) => OrderServiceOrderListGet$Response$Data$Records$Item.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    );

Map<String, dynamic> _$OrderServiceOrderListGet$Response$DataToJson(
  OrderServiceOrderListGet$Response$Data instance,
) => <String, dynamic>{
  'total': instance.total,
  'pageSize': instance.pageSize,
  'totalPages': instance.totalPages,
  'current': instance.current,
  'records': instance.records?.map((e) => e.toJson()).toList(),
};

OrderServiceOrderCombineListGet$Response$Data
_$OrderServiceOrderCombineListGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderCombineListGet$Response$Data(
  total: (json['total'] as num?)?.toDouble(),
  pageSize: (json['pageSize'] as num?)?.toDouble(),
  totalPages: (json['totalPages'] as num?)?.toDouble(),
  current: (json['current'] as num?)?.toDouble(),
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderCombineListGet$Response$Data$Records$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic> _$OrderServiceOrderCombineListGet$Response$DataToJson(
  OrderServiceOrderCombineListGet$Response$Data instance,
) => <String, dynamic>{
  'total': instance.total,
  'pageSize': instance.pageSize,
  'totalPages': instance.totalPages,
  'current': instance.current,
  'records': instance.records?.map((e) => e.toJson()).toList(),
};

OrderServiceOrderGetBatchNoGet$Response$Data
_$OrderServiceOrderGetBatchNoGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderGetBatchNoGet$Response$Data(
  batchNo: json['batchNo'] as String?,
);

Map<String, dynamic> _$OrderServiceOrderGetBatchNoGet$Response$DataToJson(
  OrderServiceOrderGetBatchNoGet$Response$Data instance,
) => <String, dynamic>{'batchNo': instance.batchNo};

OrderServiceOrderGetButtonGet$Response$Data
_$OrderServiceOrderGetButtonGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderGetButtonGet$Response$Data(
  canBatch: json['canBatch'] as bool?,
  canFreightCalc: json['canFreightCalc'] as bool?,
);

Map<String, dynamic> _$OrderServiceOrderGetButtonGet$Response$DataToJson(
  OrderServiceOrderGetButtonGet$Response$Data instance,
) => <String, dynamic>{
  'canBatch': instance.canBatch,
  'canFreightCalc': instance.canFreightCalc,
};

OrderServiceOrderDetailGet$Response$Data
_$OrderServiceOrderDetailGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderDetailGet$Response$Data(
  orderList: (json['orderList'] as List<dynamic>?)
      ?.map(
        (e) => OrderServiceOrderDetailGet$Response$Data$OrderList$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  afterSalesList:
      (json['afterSalesList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
  orderBillList:
      (json['orderBillList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
  baseInfo: json['baseInfo'] == null
      ? null
      : OrderServiceOrderDetailGet$Response$Data$BaseInfo.fromJson(
          json['baseInfo'] as Map<String, dynamic>,
        ),
  payMethod: json['payMethod'] == null
      ? null
      : OrderServiceOrderDetailGet$Response$Data$PayMethod.fromJson(
          json['payMethod'] as Map<String, dynamic>,
        ),
  payments: json['payments'] == null
      ? null
      : OrderServiceOrderDetailGet$Response$Data$Payments.fromJson(
          json['payments'] as Map<String, dynamic>,
        ),
  userAddress: json['userAddress'] == null
      ? null
      : OrderServiceOrderDetailGet$Response$Data$UserAddress.fromJson(
          json['userAddress'] as Map<String, dynamic>,
        ),
  parcelOrder: json['parcelOrder'] == null
      ? null
      : OrderServiceOrderDetailGet$Response$Data$ParcelOrder.fromJson(
          json['parcelOrder'] as Map<String, dynamic>,
        ),
  orderTrace: json['orderTrace'] == null
      ? null
      : OrderServiceOrderDetailGet$Response$Data$OrderTrace.fromJson(
          json['orderTrace'] as Map<String, dynamic>,
        ),
  discountInfos: (json['discountInfos'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderDetailGet$Response$Data$DiscountInfos$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic> _$OrderServiceOrderDetailGet$Response$DataToJson(
  OrderServiceOrderDetailGet$Response$Data instance,
) => <String, dynamic>{
  'orderList': instance.orderList?.map((e) => e.toJson()).toList(),
  'afterSalesList': instance.afterSalesList,
  'orderBillList': instance.orderBillList,
  'baseInfo': instance.baseInfo?.toJson(),
  'payMethod': instance.payMethod?.toJson(),
  'payments': instance.payments?.toJson(),
  'userAddress': instance.userAddress?.toJson(),
  'parcelOrder': instance.parcelOrder?.toJson(),
  'orderTrace': instance.orderTrace?.toJson(),
  'discountInfos': instance.discountInfos?.map((e) => e.toJson()).toList(),
};

OrderServiceOpenapiOrderDetailGet$Response$Data
_$OrderServiceOpenapiOrderDetailGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => OrderServiceOpenapiOrderDetailGet$Response$Data(
  baseInfo: json['baseInfo'] == null
      ? null
      : OrderServiceOpenapiOrderDetailGet$Response$Data$BaseInfo.fromJson(
          json['baseInfo'] as Map<String, dynamic>,
        ),
  userAddress: json['userAddress'] == null
      ? null
      : OrderServiceOpenapiOrderDetailGet$Response$Data$UserAddress.fromJson(
          json['userAddress'] as Map<String, dynamic>,
        ),
  payMethod: json['payMethod'] == null
      ? null
      : OrderServiceOpenapiOrderDetailGet$Response$Data$PayMethod.fromJson(
          json['payMethod'] as Map<String, dynamic>,
        ),
  payments: json['payments'] == null
      ? null
      : OrderServiceOpenapiOrderDetailGet$Response$Data$Payments.fromJson(
          json['payments'] as Map<String, dynamic>,
        ),
  orderBillList: (json['orderBillList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOpenapiOrderDetailGet$Response$Data$OrderBillList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  parcelOrder: json['parcelOrder'] == null
      ? null
      : OrderServiceOpenapiOrderDetailGet$Response$Data$ParcelOrder.fromJson(
          json['parcelOrder'] as Map<String, dynamic>,
        ),
  orderTrace: json['orderTrace'] == null
      ? null
      : OrderServiceOpenapiOrderDetailGet$Response$Data$OrderTrace.fromJson(
          json['orderTrace'] as Map<String, dynamic>,
        ),
  orderList: (json['orderList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOpenapiOrderDetailGet$Response$Data$OrderList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic> _$OrderServiceOpenapiOrderDetailGet$Response$DataToJson(
  OrderServiceOpenapiOrderDetailGet$Response$Data instance,
) => <String, dynamic>{
  'baseInfo': instance.baseInfo?.toJson(),
  'userAddress': instance.userAddress?.toJson(),
  'payMethod': instance.payMethod?.toJson(),
  'payments': instance.payments?.toJson(),
  'orderBillList': instance.orderBillList?.map((e) => e.toJson()).toList(),
  'parcelOrder': instance.parcelOrder?.toJson(),
  'orderTrace': instance.orderTrace?.toJson(),
  'orderList': instance.orderList?.map((e) => e.toJson()).toList(),
};

OrderServiceOrderCombineDetailGet$Response$Data
_$OrderServiceOrderCombineDetailGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderCombineDetailGet$Response$Data(
  batchOrderDetails: (json['batchOrderDetails'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  baseInfo: json['baseInfo'] == null
      ? null
      : OrderServiceOrderCombineDetailGet$Response$Data$BaseInfo.fromJson(
          json['baseInfo'] as Map<String, dynamic>,
        ),
  parcelOrder: json['parcelOrder'] == null
      ? null
      : OrderServiceOrderCombineDetailGet$Response$Data$ParcelOrder.fromJson(
          json['parcelOrder'] as Map<String, dynamic>,
        ),
  orderTrace: json['orderTrace'] == null
      ? null
      : OrderServiceOrderCombineDetailGet$Response$Data$OrderTrace.fromJson(
          json['orderTrace'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$OrderServiceOrderCombineDetailGet$Response$DataToJson(
  OrderServiceOrderCombineDetailGet$Response$Data instance,
) => <String, dynamic>{
  'batchOrderDetails': instance.batchOrderDetails
      ?.map((e) => e.toJson())
      .toList(),
  'baseInfo': instance.baseInfo?.toJson(),
  'parcelOrder': instance.parcelOrder?.toJson(),
  'orderTrace': instance.orderTrace?.toJson(),
};

OrderServiceOrderGetOrderTraceGet$Response$Data
_$OrderServiceOrderGetOrderTraceGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderGetOrderTraceGet$Response$Data(
  parcelOrderId: json['parcelOrderId'] as String?,
  parcelOrderStatus: json['parcelOrderStatus'] as String?,
  lastMileMailNo: json['lastMileMailNo'] as String?,
  lastMileCompanyName: json['lastMileCompanyName'] as String?,
  lastMileMailNoLink: json['lastMileMailNoLink'] as String?,
  traceList: (json['traceList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderGetOrderTraceGet$Response$Data$TraceList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic> _$OrderServiceOrderGetOrderTraceGet$Response$DataToJson(
  OrderServiceOrderGetOrderTraceGet$Response$Data instance,
) => <String, dynamic>{
  'parcelOrderId': instance.parcelOrderId,
  'parcelOrderStatus': instance.parcelOrderStatus,
  'lastMileMailNo': instance.lastMileMailNo,
  'lastMileCompanyName': instance.lastMileCompanyName,
  'lastMileMailNoLink': instance.lastMileMailNoLink,
  'traceList': instance.traceList?.map((e) => e.toJson()).toList(),
};

OrderServiceCartListGet$Response$Data
_$OrderServiceCartListGet$Response$DataFromJson(Map<String, dynamic> json) =>
    OrderServiceCartListGet$Response$Data(
      discountAmount: json['discountAmount'] as String?,
      totalDiscountAmount: json['totalDiscountAmount'] as String?,
      totalAmount: json['totalAmount'] as String?,
      targetTotalAmount: json['targetTotalAmount'] as String?,
      totalAmountCur: json['totalAmountCur'] as String?,
      targetTotalAmountCur: json['targetTotalAmountCur'] as String?,
      orderLimitAmount: (json['orderLimitAmount'] as num?)?.toDouble(),
      shipLimitAmount: (json['shipLimitAmount'] as num?)?.toDouble(),
      country: json['country'] as String?,
      list: (json['list'] as List<dynamic>?)
          ?.map(
            (e) => OrderServiceCartListGet$Response$Data$List$Item.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    );

Map<String, dynamic> _$OrderServiceCartListGet$Response$DataToJson(
  OrderServiceCartListGet$Response$Data instance,
) => <String, dynamic>{
  'discountAmount': instance.discountAmount,
  'totalDiscountAmount': instance.totalDiscountAmount,
  'totalAmount': instance.totalAmount,
  'targetTotalAmount': instance.targetTotalAmount,
  'totalAmountCur': instance.totalAmountCur,
  'targetTotalAmountCur': instance.targetTotalAmountCur,
  'orderLimitAmount': instance.orderLimitAmount,
  'shipLimitAmount': instance.shipLimitAmount,
  'country': instance.country,
  'list': instance.list?.map((e) => e.toJson()).toList(),
};

OrderServiceCartPricingPost$Response$Data
_$OrderServiceCartPricingPost$Response$DataFromJson(
  Map<String, dynamic> json,
) => OrderServiceCartPricingPost$Response$Data(
  itemsTotalAmount: json['itemsTotalAmount'] as String?,
  targetOriginAmount: json['targetOriginAmount'] as String?,
  freightAmount: json['freightAmount'] as String?,
  totalAmount: json['totalAmount'] as String?,
  targetTotalAmount: json['targetTotalAmount'] as String?,
  discountAmount: json['discountAmount'] as String?,
  targetDiscountAmount: json['targetDiscountAmount'] as String?,
  settlementAmount: json['settlementAmount'] as String?,
  targetSettlementAmount: json['targetSettlementAmount'] as String?,
  targetOrderLimitAmount: json['targetOrderLimitAmount'] as String?,
  targetShipLimitAmount: json['targetShipLimitAmount'] as String?,
  targetSellCur: json['targetSellCur'] as String?,
  sellCur: json['sellCur'] as String?,
  userCouponCode: json['userCouponCode'] as String?,
  rechargeBalance: json['rechargeBalance'] as String?,
  targetItemDiscountAmount: json['targetItemDiscountAmount'] as String?,
  skuQuantityDTOList: (json['skuQuantityDTOList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceCartPricingPost$Response$Data$SkuQuantityDTOList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  remark: json['remark'] as String?,
  remarkImages: json['remarkImages'] as String?,
  country: json['country'] as String?,
  orderBatch: json['orderBatch'] as bool?,
  targetItemsTotalAmount: json['targetItemsTotalAmount'] as String?,
  amountValidContent: json['amountValidContent'] as String?,
  contentInfo: json['contentInfo'] == null
      ? null
      : OrderServiceCartPricingPost$Response$Data$ContentInfo.fromJson(
          json['contentInfo'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$OrderServiceCartPricingPost$Response$DataToJson(
  OrderServiceCartPricingPost$Response$Data instance,
) => <String, dynamic>{
  'itemsTotalAmount': instance.itemsTotalAmount,
  'targetOriginAmount': instance.targetOriginAmount,
  'freightAmount': instance.freightAmount,
  'totalAmount': instance.totalAmount,
  'targetTotalAmount': instance.targetTotalAmount,
  'discountAmount': instance.discountAmount,
  'targetDiscountAmount': instance.targetDiscountAmount,
  'settlementAmount': instance.settlementAmount,
  'targetSettlementAmount': instance.targetSettlementAmount,
  'targetOrderLimitAmount': instance.targetOrderLimitAmount,
  'targetShipLimitAmount': instance.targetShipLimitAmount,
  'targetSellCur': instance.targetSellCur,
  'sellCur': instance.sellCur,
  'userCouponCode': instance.userCouponCode,
  'rechargeBalance': instance.rechargeBalance,
  'targetItemDiscountAmount': instance.targetItemDiscountAmount,
  'skuQuantityDTOList': instance.skuQuantityDTOList
      ?.map((e) => e.toJson())
      .toList(),
  'remark': instance.remark,
  'remarkImages': instance.remarkImages,
  'country': instance.country,
  'orderBatch': instance.orderBatch,
  'targetItemsTotalAmount': instance.targetItemsTotalAmount,
  'amountValidContent': instance.amountValidContent,
  'contentInfo': instance.contentInfo?.toJson(),
};

OrderServiceCartNoAuthPricingPost$Response$Data
_$OrderServiceCartNoAuthPricingPost$Response$DataFromJson(
  Map<String, dynamic> json,
) => OrderServiceCartNoAuthPricingPost$Response$Data(
  itemsTotalAmount: json['itemsTotalAmount'] as String?,
  freightAmount: json['freightAmount'] as String?,
  totalAmount: json['totalAmount'] as String?,
  targetTotalAmount: json['targetTotalAmount'] as String?,
  discountAmount: json['discountAmount'] as String?,
  targetDiscountAmount: json['targetDiscountAmount'] as String?,
  settlementAmount: json['settlementAmount'] as String?,
  targetSettlementAmount: json['targetSettlementAmount'] as String?,
  targetOrderLimitAmount: json['targetOrderLimitAmount'] as String?,
  targetShipLimitAmount: json['targetShipLimitAmount'] as String?,
  targetSellCur: json['targetSellCur'] as String?,
  sellCur: json['sellCur'] as String?,
  userCouponCode: json['userCouponCode'] as String?,
  rechargeBalance: json['rechargeBalance'] as String?,
  skuQuantityDTOList: (json['skuQuantityDTOList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceCartNoAuthPricingPost$Response$Data$SkuQuantityDTOList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  remark: json['remark'] as String?,
  remarkImages: json['remarkImages'] as String?,
  country: json['country'] as String?,
  orderBatch: json['orderBatch'] as bool?,
  targetItemsTotalAmount: json['targetItemsTotalAmount'] as String?,
  amountValidContent: json['amountValidContent'] as String?,
  contentInfo: json['contentInfo'] == null
      ? null
      : OrderServiceCartNoAuthPricingPost$Response$Data$ContentInfo.fromJson(
          json['contentInfo'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$OrderServiceCartNoAuthPricingPost$Response$DataToJson(
  OrderServiceCartNoAuthPricingPost$Response$Data instance,
) => <String, dynamic>{
  'itemsTotalAmount': instance.itemsTotalAmount,
  'freightAmount': instance.freightAmount,
  'totalAmount': instance.totalAmount,
  'targetTotalAmount': instance.targetTotalAmount,
  'discountAmount': instance.discountAmount,
  'targetDiscountAmount': instance.targetDiscountAmount,
  'settlementAmount': instance.settlementAmount,
  'targetSettlementAmount': instance.targetSettlementAmount,
  'targetOrderLimitAmount': instance.targetOrderLimitAmount,
  'targetShipLimitAmount': instance.targetShipLimitAmount,
  'targetSellCur': instance.targetSellCur,
  'sellCur': instance.sellCur,
  'userCouponCode': instance.userCouponCode,
  'rechargeBalance': instance.rechargeBalance,
  'skuQuantityDTOList': instance.skuQuantityDTOList
      ?.map((e) => e.toJson())
      .toList(),
  'remark': instance.remark,
  'remarkImages': instance.remarkImages,
  'country': instance.country,
  'orderBatch': instance.orderBatch,
  'targetItemsTotalAmount': instance.targetItemsTotalAmount,
  'amountValidContent': instance.amountValidContent,
  'contentInfo': instance.contentInfo?.toJson(),
};

OrderServiceOrderAppBatchInfosGet$Response$Data$LogisticsJoinInfoList$Item
_$OrderServiceOrderAppBatchInfosGet$Response$Data$LogisticsJoinInfoList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppBatchInfosGet$Response$Data$LogisticsJoinInfoList$Item(
  title: json['title'] as String?,
  orderId: json['orderId'] as String?,
  itemCount: (json['itemCount'] as num?)?.toInt(),
  itemCountDescription: json['itemCountDescription'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderAppBatchInfosGet$Response$Data$LogisticsJoinInfoList$ItemToJson(
  OrderServiceOrderAppBatchInfosGet$Response$Data$LogisticsJoinInfoList$Item
  instance,
) => <String, dynamic>{
  'title': instance.title,
  'orderId': instance.orderId,
  'itemCount': instance.itemCount,
  'itemCountDescription': instance.itemCountDescription,
};

OrderServiceOrderAppListGet$Response$Data$Records$Item
_$OrderServiceOrderAppListGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppListGet$Response$Data$Records$Item(
  status: (json['status'] as num?)?.toDouble(),
  frontStatus: (json['frontStatus'] as num?)?.toDouble(),
  statusContent: json['statusContent'] as String?,
  orderStatus: (json['orderStatus'] as num?)?.toDouble(),
  orderId: json['orderId'] as String?,
  parentOrderId: json['parentOrderId'] as String?,
  quantity: (json['quantity'] as num?)?.toDouble(),
  totalAmount: json['totalAmount'] as String?,
  targetTotalAmount: json['targetTotalAmount'] as String?,
  discountAmount: json['discountAmount'] as String?,
  targetDiscountAmount: json['targetDiscountAmount'] as String?,
  targetPayFeeAmount: json['targetPayFeeAmount'] as String?,
  targetActualAmount: json['targetActualAmount'] as String?,
  targetTipAmount: json['targetTipAmount'] as String?,
  targetServiceAmount: json['targetServiceAmount'] as String?,
  currency: json['currency'] as String?,
  targetCurrency: json['targetCurrency'] as String?,
  description: json['description'] as String?,
  remark: json['remark'] as String?,
  statusIcon: json['statusIcon'] as String?,
  operates:
      (json['operates'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
      [],
  isLogisticsTrace: json['isLogisticsTrace'] as bool?,
  orderSkuList: (json['orderSkuList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderAppListGet$Response$Data$Records$Item$OrderSkuList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  supplyOrderList: (json['supplyOrderList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderAppListGet$Response$Data$Records$Item$SupplyOrderList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  parcelOrder: json['parcelOrder'] == null
      ? null
      : OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder.fromJson(
          json['parcelOrder'] as Map<String, dynamic>,
        ),
  afterSalesList: json['afterSalesList'] as String?,
  orderBillList: (json['orderBillList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderAppListGet$Response$Data$Records$Item$OrderBillList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  userAddress: json['userAddress'] == null
      ? null
      : OrderServiceOrderAppListGet$Response$Data$Records$Item$UserAddress.fromJson(
          json['userAddress'] as Map<String, dynamic>,
        ),
  createTime: (json['createTime'] as num?)?.toDouble(),
  wish: json['wish'] as bool?,
  targetItemTotalAmount: json['targetItemTotalAmount'] as String?,
  targetFreightAmount: json['targetFreightAmount'] as String?,
  giveawayGift: (json['giveawayGift'] as num?)?.toDouble(),
  orderFreight: json['orderFreight'] as bool?,
  skuSourceCode: json['skuSourceCode'] as String?,
  skuSourceCodeTitle: json['skuSourceCodeTitle'] as String?,
  tabStatusContent: json['tabStatusContent'] as String?,
  tabStatusDescription: json['tabStatusDescription'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderAppListGet$Response$Data$Records$ItemToJson(
  OrderServiceOrderAppListGet$Response$Data$Records$Item instance,
) => <String, dynamic>{
  'status': instance.status,
  'frontStatus': instance.frontStatus,
  'statusContent': instance.statusContent,
  'orderStatus': instance.orderStatus,
  'orderId': instance.orderId,
  'parentOrderId': instance.parentOrderId,
  'quantity': instance.quantity,
  'totalAmount': instance.totalAmount,
  'targetTotalAmount': instance.targetTotalAmount,
  'discountAmount': instance.discountAmount,
  'targetDiscountAmount': instance.targetDiscountAmount,
  'targetPayFeeAmount': instance.targetPayFeeAmount,
  'targetActualAmount': instance.targetActualAmount,
  'targetTipAmount': instance.targetTipAmount,
  'targetServiceAmount': instance.targetServiceAmount,
  'currency': instance.currency,
  'targetCurrency': instance.targetCurrency,
  'description': instance.description,
  'remark': instance.remark,
  'statusIcon': instance.statusIcon,
  'operates': instance.operates,
  'isLogisticsTrace': instance.isLogisticsTrace,
  'orderSkuList': instance.orderSkuList?.map((e) => e.toJson()).toList(),
  'supplyOrderList': instance.supplyOrderList?.map((e) => e.toJson()).toList(),
  'parcelOrder': instance.parcelOrder?.toJson(),
  'afterSalesList': instance.afterSalesList,
  'orderBillList': instance.orderBillList?.map((e) => e.toJson()).toList(),
  'userAddress': instance.userAddress?.toJson(),
  'createTime': instance.createTime,
  'wish': instance.wish,
  'targetItemTotalAmount': instance.targetItemTotalAmount,
  'targetFreightAmount': instance.targetFreightAmount,
  'giveawayGift': instance.giveawayGift,
  'orderFreight': instance.orderFreight,
  'skuSourceCode': instance.skuSourceCode,
  'skuSourceCodeTitle': instance.skuSourceCodeTitle,
  'tabStatusContent': instance.tabStatusContent,
  'tabStatusDescription': instance.tabStatusDescription,
};

OrderServiceOrderAppDetailGet$Response$Data$BaseInfo
_$OrderServiceOrderAppDetailGet$Response$Data$BaseInfoFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppDetailGet$Response$Data$BaseInfo(
  userId: json['userId'] as String?,
  orderId: json['orderId'] as String?,
  skuSourceCode: json['skuSourceCode'] as String?,
  parentOrderId: json['parentOrderId'] as String?,
  status: (json['status'] as num?)?.toDouble(),
  frontStatus: (json['frontStatus'] as num?)?.toDouble(),
  statusContent: json['statusContent'] as String?,
  orderStatus: (json['orderStatus'] as num?)?.toDouble(),
  evaluateStatus: (json['evaluateStatus'] as num?)?.toDouble(),
  timeoutPeriod: (json['timeoutPeriod'] as num?)?.toDouble(),
  createTime: (json['createTime'] as num?)?.toDouble(),
  leftTime: (json['leftTime'] as num?)?.toDouble(),
  title: json['title'] as String?,
  subTitle: json['subTitle'] as String?,
  operates:
      (json['operates'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      [],
  description: json['description'] as String?,
  paySuccessDescription: json['paySuccessDescription'] as String?,
  afterSalesExpressMethod: (json['afterSalesExpressMethod'] as num?)
      ?.toDouble(),
  afterSalesState: (json['afterSalesState'] as num?)?.toDouble(),
  remark: json['remark'] as String?,
  remarkImages: json['remarkImages'] as String?,
  supportOnlineAfterSales: (json['supportOnlineAfterSales'] as num?)
      ?.toDouble(),
  receiptPdfLink: json['receiptPdfLink'] as String?,
  afterSalesSupport: json['afterSalesSupport'] as String?,
  tenantCode: json['tenantCode'] as String?,
  shippingCountry: json['shippingCountry'] as String?,
  payTime: (json['payTime'] as num?)?.toDouble(),
  afterSales: json['afterSales'] as bool?,
  wish: json['wish'] as bool?,
  removePackage: json['removePackage'] as bool?,
  orderFreight: json['orderFreight'] as bool?,
);

Map<String, dynamic>
_$OrderServiceOrderAppDetailGet$Response$Data$BaseInfoToJson(
  OrderServiceOrderAppDetailGet$Response$Data$BaseInfo instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'orderId': instance.orderId,
  'skuSourceCode': instance.skuSourceCode,
  'parentOrderId': instance.parentOrderId,
  'status': instance.status,
  'frontStatus': instance.frontStatus,
  'statusContent': instance.statusContent,
  'orderStatus': instance.orderStatus,
  'evaluateStatus': instance.evaluateStatus,
  'timeoutPeriod': instance.timeoutPeriod,
  'createTime': instance.createTime,
  'leftTime': instance.leftTime,
  'title': instance.title,
  'subTitle': instance.subTitle,
  'operates': instance.operates,
  'description': instance.description,
  'paySuccessDescription': instance.paySuccessDescription,
  'afterSalesExpressMethod': instance.afterSalesExpressMethod,
  'afterSalesState': instance.afterSalesState,
  'remark': instance.remark,
  'remarkImages': instance.remarkImages,
  'supportOnlineAfterSales': instance.supportOnlineAfterSales,
  'receiptPdfLink': instance.receiptPdfLink,
  'afterSalesSupport': instance.afterSalesSupport,
  'tenantCode': instance.tenantCode,
  'shippingCountry': instance.shippingCountry,
  'payTime': instance.payTime,
  'afterSales': instance.afterSales,
  'wish': instance.wish,
  'removePackage': instance.removePackage,
  'orderFreight': instance.orderFreight,
};

OrderServiceOrderAppDetailGet$Response$Data$UserAddress
_$OrderServiceOrderAppDetailGet$Response$Data$UserAddressFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppDetailGet$Response$Data$UserAddress(
  country: json['country'] as String?,
  countryCode: json['countryCode'] as String?,
  state: json['state'] as String?,
  stateCode: json['stateCode'] as String?,
  city: json['city'] as String?,
  cityCode: json['cityCode'] as String?,
  street: json['street'] as String?,
  apartment: json['apartment'] as String?,
  address: json['address'] as String?,
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  phoneNumber: json['phoneNumber'] as String?,
  zipCode: json['zipCode'] as String?,
  id: (json['id'] as num?)?.toDouble(),
);

Map<String, dynamic>
_$OrderServiceOrderAppDetailGet$Response$Data$UserAddressToJson(
  OrderServiceOrderAppDetailGet$Response$Data$UserAddress instance,
) => <String, dynamic>{
  'country': instance.country,
  'countryCode': instance.countryCode,
  'state': instance.state,
  'stateCode': instance.stateCode,
  'city': instance.city,
  'cityCode': instance.cityCode,
  'street': instance.street,
  'apartment': instance.apartment,
  'address': instance.address,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'phoneNumber': instance.phoneNumber,
  'zipCode': instance.zipCode,
  'id': instance.id,
};

OrderServiceOrderAppDetailGet$Response$Data$PayMethod
_$OrderServiceOrderAppDetailGet$Response$Data$PayMethodFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppDetailGet$Response$Data$PayMethod(
  method: json['method'] as String?,
  methodName: json['methodName'] as String?,
  payOrderId: json['payOrderId'] as String?,
  cardMsg: json['cardMsg'] as String?,
  image: json['image'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderAppDetailGet$Response$Data$PayMethodToJson(
  OrderServiceOrderAppDetailGet$Response$Data$PayMethod instance,
) => <String, dynamic>{
  'method': instance.method,
  'methodName': instance.methodName,
  'payOrderId': instance.payOrderId,
  'cardMsg': instance.cardMsg,
  'image': instance.image,
};

OrderServiceOrderAppDetailGet$Response$Data$Payments
_$OrderServiceOrderAppDetailGet$Response$Data$PaymentsFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppDetailGet$Response$Data$Payments(
  receiptAmount: json['receiptAmount'] as String?,
  itemsTotalAmount: json['itemsTotalAmount'] as String?,
  freightAmount: json['freightAmount'] as String?,
  targetFreightAmount: json['targetFreightAmount'] as String?,
  skuQuantity: (json['skuQuantity'] as num?)?.toDouble(),
  currency: json['currency'] as String?,
  totalPrice: json['totalPrice'] as String?,
  targetPrice: json['targetPrice'] as String?,
  targetSettlementAmount: json['targetSettlementAmount'] as String?,
  settlementAmount: json['settlementAmount'] as String?,
  discountAmount: json['discountAmount'] as String?,
  targetDiscountAmount: json['targetDiscountAmount'] as String?,
  rechargeAmount: json['rechargeAmount'] as String?,
  targetRechargePrice: json['targetRechargePrice'] as String?,
  targetPayFeeAmount: json['targetPayFeeAmount'] as String?,
  targetCurrency: json['targetCurrency'] as String?,
  targetItemsTotalAmount: json['targetItemsTotalAmount'] as String?,
  targetOriginAmount: json['targetOriginAmount'] as String?,
  targetItemDiscountAmount: json['targetItemDiscountAmount'] as String?,
  targetActualAmount: json['targetActualAmount'] as String?,
  targetTipAmount: json['targetTipAmount'] as String?,
  targetServiceAmount: json['targetServiceAmount'] as String?,
  paymentSubjoins: (json['paymentSubjoins'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderAppDetailGet$Response$Data$Payments$PaymentSubjoins$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$OrderServiceOrderAppDetailGet$Response$Data$PaymentsToJson(
  OrderServiceOrderAppDetailGet$Response$Data$Payments instance,
) => <String, dynamic>{
  'receiptAmount': instance.receiptAmount,
  'itemsTotalAmount': instance.itemsTotalAmount,
  'freightAmount': instance.freightAmount,
  'targetFreightAmount': instance.targetFreightAmount,
  'skuQuantity': instance.skuQuantity,
  'currency': instance.currency,
  'totalPrice': instance.totalPrice,
  'targetPrice': instance.targetPrice,
  'targetSettlementAmount': instance.targetSettlementAmount,
  'settlementAmount': instance.settlementAmount,
  'discountAmount': instance.discountAmount,
  'targetDiscountAmount': instance.targetDiscountAmount,
  'rechargeAmount': instance.rechargeAmount,
  'targetRechargePrice': instance.targetRechargePrice,
  'targetPayFeeAmount': instance.targetPayFeeAmount,
  'targetCurrency': instance.targetCurrency,
  'targetItemsTotalAmount': instance.targetItemsTotalAmount,
  'targetOriginAmount': instance.targetOriginAmount,
  'targetItemDiscountAmount': instance.targetItemDiscountAmount,
  'targetActualAmount': instance.targetActualAmount,
  'targetTipAmount': instance.targetTipAmount,
  'targetServiceAmount': instance.targetServiceAmount,
  'paymentSubjoins': instance.paymentSubjoins?.map((e) => e.toJson()).toList(),
};

OrderServiceOrderAppDetailGet$Response$Data$OrderBillList$Item
_$OrderServiceOrderAppDetailGet$Response$Data$OrderBillList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppDetailGet$Response$Data$OrderBillList$Item(
  status: json['status'] as String?,
  targetCurrency: json['targetCurrency'] as String?,
  targetTotalPrice: json['targetTotalPrice'] as String?,
  billId: json['billId'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderAppDetailGet$Response$Data$OrderBillList$ItemToJson(
  OrderServiceOrderAppDetailGet$Response$Data$OrderBillList$Item instance,
) => <String, dynamic>{
  'status': instance.status,
  'targetCurrency': instance.targetCurrency,
  'targetTotalPrice': instance.targetTotalPrice,
  'billId': instance.billId,
};

OrderServiceOrderAppDetailGet$Response$Data$ParcelOrder
_$OrderServiceOrderAppDetailGet$Response$Data$ParcelOrderFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppDetailGet$Response$Data$ParcelOrder(
  parcelOrderId: json['parcelOrderId'] as String?,
  parcelStatus: json['parcelStatus'] as String?,
  parcelStatusDesc: json['parcelStatusDesc'] as String?,
  createTime: (json['createTime'] as num?)?.toDouble(),
  warehouseCode: json['warehouseCode'] as String?,
  warehouseName: json['warehouseName'] as String?,
  freight: json['freight'] as String?,
  freightCurrency: json['freightCurrency'] == null
      ? null
      : OrderServiceOrderAppDetailGet$Response$Data$ParcelOrder$FreightCurrency.fromJson(
          json['freightCurrency'] as Map<String, dynamic>,
        ),
  lastMileMailNo: json['lastMileMailNo'],
  lastMileCompanyCode: json['lastMileCompanyCode'],
  lastMileCompanyName: json['lastMileCompanyName'],
  parcelProductDTOList: (json['parcelProductDTOList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderAppDetailGet$Response$Data$ParcelOrder$ParcelProductDTOList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  buyerOperates:
      (json['buyerOperates'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
  freightCompensate: json['freightCompensate'] == null
      ? null
      : OrderServiceOrderAppDetailGet$Response$Data$ParcelOrder$FreightCompensate.fromJson(
          json['freightCompensate'] as Map<String, dynamic>,
        ),
  solutionCode: json['solutionCode'] as String?,
  actualFreight: json['actualFreight'] as String?,
  actualFreightCurrency: json['actualFreightCurrency'] as String?,
  targetFreightCouponDiscountAmount:
      json['targetFreightCouponDiscountAmount'] as String?,
  targetFreightCouponDiscountCurrency:
      json['targetFreightCouponDiscountCurrency'] as String?,
  targetFreight: json['targetFreight'] as String?,
  targetFreightCurrency: json['targetFreightCurrency'] == null
      ? null
      : OrderServiceOrderAppDetailGet$Response$Data$ParcelOrder$TargetFreightCurrency.fromJson(
          json['targetFreightCurrency'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$OrderServiceOrderAppDetailGet$Response$Data$ParcelOrderToJson(
  OrderServiceOrderAppDetailGet$Response$Data$ParcelOrder instance,
) => <String, dynamic>{
  'parcelOrderId': instance.parcelOrderId,
  'parcelStatus': instance.parcelStatus,
  'parcelStatusDesc': instance.parcelStatusDesc,
  'createTime': instance.createTime,
  'warehouseCode': instance.warehouseCode,
  'warehouseName': instance.warehouseName,
  'freight': instance.freight,
  'freightCurrency': instance.freightCurrency?.toJson(),
  'lastMileMailNo': instance.lastMileMailNo,
  'lastMileCompanyCode': instance.lastMileCompanyCode,
  'lastMileCompanyName': instance.lastMileCompanyName,
  'parcelProductDTOList': instance.parcelProductDTOList
      ?.map((e) => e.toJson())
      .toList(),
  'buyerOperates': instance.buyerOperates,
  'freightCompensate': instance.freightCompensate?.toJson(),
  'solutionCode': instance.solutionCode,
  'actualFreight': instance.actualFreight,
  'actualFreightCurrency': instance.actualFreightCurrency,
  'targetFreightCouponDiscountAmount':
      instance.targetFreightCouponDiscountAmount,
  'targetFreightCouponDiscountCurrency':
      instance.targetFreightCouponDiscountCurrency,
  'targetFreight': instance.targetFreight,
  'targetFreightCurrency': instance.targetFreightCurrency?.toJson(),
};

OrderServiceOrderAppDetailGet$Response$Data$OrderTrace
_$OrderServiceOrderAppDetailGet$Response$Data$OrderTraceFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppDetailGet$Response$Data$OrderTrace(
  tradeOrderId: json['tradeOrderId'] as String?,
  logisticsOrderId: json['logisticsOrderId'] as String?,
  logisticsStatus: json['logisticsStatus'] as String?,
  traceList: (json['traceList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderAppDetailGet$Response$Data$OrderTrace$TraceList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  parcelOrderId: json['parcelOrderId'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderAppDetailGet$Response$Data$OrderTraceToJson(
  OrderServiceOrderAppDetailGet$Response$Data$OrderTrace instance,
) => <String, dynamic>{
  'tradeOrderId': instance.tradeOrderId,
  'logisticsOrderId': instance.logisticsOrderId,
  'logisticsStatus': instance.logisticsStatus,
  'traceList': instance.traceList?.map((e) => e.toJson()).toList(),
  'parcelOrderId': instance.parcelOrderId,
};

OrderServiceOrderAppDetailGet$Response$Data$DiscountInfos$Item
_$OrderServiceOrderAppDetailGet$Response$Data$DiscountInfos$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppDetailGet$Response$Data$DiscountInfos$Item(
  discountType: (json['discountType'] as num?)?.toDouble(),
  userCouponCode: json['userCouponCode'] as String?,
  discountAmount: json['discountAmount'] as String?,
  targetDiscountAmount: json['targetDiscountAmount'] as String?,
  couponCode: json['couponCode'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderAppDetailGet$Response$Data$DiscountInfos$ItemToJson(
  OrderServiceOrderAppDetailGet$Response$Data$DiscountInfos$Item instance,
) => <String, dynamic>{
  'discountType': instance.discountType,
  'userCouponCode': instance.userCouponCode,
  'discountAmount': instance.discountAmount,
  'targetDiscountAmount': instance.targetDiscountAmount,
  'couponCode': instance.couponCode,
};

OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item
_$OrderServiceOrderAppDetailGet$Response$Data$OrderList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item(
  skuList: (json['skuList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item$SkuList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  sourceOption: json['sourceOption'] == null
      ? null
      : OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item$SourceOption.fromJson(
          json['sourceOption'] as Map<String, dynamic>,
        ),
  skuSourceCode: json['skuSourceCode'] as String?,
  skuSourceTitle: json['skuSourceTitle'] as String?,
  logisticsInfo: json['logisticsInfo'] == null
      ? null
      : OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item$LogisticsInfo.fromJson(
          json['logisticsInfo'] as Map<String, dynamic>,
        ),
  supplyOrderList: (json['supplyOrderList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item$SupplyOrderList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$OrderServiceOrderAppDetailGet$Response$Data$OrderList$ItemToJson(
  OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item instance,
) => <String, dynamic>{
  'skuList': instance.skuList?.map((e) => e.toJson()).toList(),
  'sourceOption': instance.sourceOption?.toJson(),
  'skuSourceCode': instance.skuSourceCode,
  'skuSourceTitle': instance.skuSourceTitle,
  'logisticsInfo': instance.logisticsInfo?.toJson(),
  'supplyOrderList': instance.supplyOrderList?.map((e) => e.toJson()).toList(),
};

OrderServiceOrderConfirmPost$Response$Data$Pricing
_$OrderServiceOrderConfirmPost$Response$Data$PricingFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderConfirmPost$Response$Data$Pricing(
  itemsOriginTotalAmount: json['itemsOriginTotalAmount'] as String?,
  freightAmount: json['freightAmount'] as String?,
  taxDetail: json['taxDetail'] as String?,
  rechargeBalance: json['rechargeBalance'] as String?,
  rechargeBalanceTips: json['rechargeBalanceTips'] as String?,
  isCouponCode: json['isCouponCode'] as String?,
  couponCodeReason: json['couponCodeReason'] as String?,
  isVoucherCode: json['isVoucherCode'] as String?,
  notSupportDeliveryDescription:
      json['notSupportDeliveryDescription'] as String?,
  taxLines: (json['taxLines'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderConfirmPost$Response$Data$Pricing$TaxLines$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  solutionList: (json['solutionList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  giveaway: (json['giveaway'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderConfirmPost$Response$Data$Pricing$Giveaway$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  voucherMsg: json['voucherMsg'] == null
      ? null
      : OrderServiceOrderConfirmPost$Response$Data$Pricing$VoucherMsg.fromJson(
          json['voucherMsg'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$OrderServiceOrderConfirmPost$Response$Data$PricingToJson(
  OrderServiceOrderConfirmPost$Response$Data$Pricing instance,
) => <String, dynamic>{
  'itemsOriginTotalAmount': instance.itemsOriginTotalAmount,
  'freightAmount': instance.freightAmount,
  'taxDetail': instance.taxDetail,
  'rechargeBalance': instance.rechargeBalance,
  'rechargeBalanceTips': instance.rechargeBalanceTips,
  'isCouponCode': instance.isCouponCode,
  'couponCodeReason': instance.couponCodeReason,
  'isVoucherCode': instance.isVoucherCode,
  'notSupportDeliveryDescription': instance.notSupportDeliveryDescription,
  'taxLines': instance.taxLines?.map((e) => e.toJson()).toList(),
  'solutionList': instance.solutionList?.map((e) => e.toJson()).toList(),
  'giveaway': instance.giveaway?.map((e) => e.toJson()).toList(),
  'voucherMsg': instance.voucherMsg?.toJson(),
};

OrderServiceOrderConfirmPost$Response$Data$PaymentMethodList$Item
_$OrderServiceOrderConfirmPost$Response$Data$PaymentMethodList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderConfirmPost$Response$Data$PaymentMethodList$Item(
  payType: json['payType'] as String?,
  payTypeName: json['payTypeName'] as String?,
  payTypeIcon: json['payTypeIcon'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderConfirmPost$Response$Data$PaymentMethodList$ItemToJson(
  OrderServiceOrderConfirmPost$Response$Data$PaymentMethodList$Item instance,
) => <String, dynamic>{
  'payType': instance.payType,
  'payTypeName': instance.payTypeName,
  'payTypeIcon': instance.payTypeIcon,
};

OrderServiceOrderNoAuthDetailGet$Response$Data$BaseInfo
_$OrderServiceOrderNoAuthDetailGet$Response$Data$BaseInfoFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderNoAuthDetailGet$Response$Data$BaseInfo(
  userId: json['userId'] as String?,
  orderId: json['orderId'] as String?,
  skuSourceCode: json['skuSourceCode'] as String?,
  parentOrderId: json['parentOrderId'] as String?,
  status: (json['status'] as num?)?.toDouble(),
  frontStatus: (json['frontStatus'] as num?)?.toDouble(),
  statusContent: json['statusContent'] as String?,
  orderStatus: (json['orderStatus'] as num?)?.toDouble(),
  evaluateStatus: (json['evaluateStatus'] as num?)?.toDouble(),
  timeoutPeriod: (json['timeoutPeriod'] as num?)?.toDouble(),
  createTime: (json['createTime'] as num?)?.toDouble(),
  leftTime: (json['leftTime'] as num?)?.toDouble(),
  title: json['title'] as String?,
  subTitle: json['subTitle'] as String?,
  operates:
      (json['operates'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      [],
  description: json['description'] as String?,
  paySuccessDescription: json['paySuccessDescription'] as String?,
  afterSalesExpressMethod: (json['afterSalesExpressMethod'] as num?)
      ?.toDouble(),
  afterSalesState: (json['afterSalesState'] as num?)?.toDouble(),
  remark: json['remark'] as String?,
  remarkImages: json['remarkImages'] as String?,
  supportOnlineAfterSales: (json['supportOnlineAfterSales'] as num?)
      ?.toDouble(),
  receiptPdfLink: json['receiptPdfLink'] as String?,
  afterSalesSupport: json['afterSalesSupport'] as String?,
  tenantCode: json['tenantCode'] as String?,
  shippingCountry: json['shippingCountry'] as String?,
  payTime: (json['payTime'] as num?)?.toDouble(),
  afterSales: json['afterSales'] as bool?,
  wish: json['wish'] as bool?,
  removePackage: json['removePackage'] as bool?,
  orderFreight: json['orderFreight'] as bool?,
);

Map<String, dynamic>
_$OrderServiceOrderNoAuthDetailGet$Response$Data$BaseInfoToJson(
  OrderServiceOrderNoAuthDetailGet$Response$Data$BaseInfo instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'orderId': instance.orderId,
  'skuSourceCode': instance.skuSourceCode,
  'parentOrderId': instance.parentOrderId,
  'status': instance.status,
  'frontStatus': instance.frontStatus,
  'statusContent': instance.statusContent,
  'orderStatus': instance.orderStatus,
  'evaluateStatus': instance.evaluateStatus,
  'timeoutPeriod': instance.timeoutPeriod,
  'createTime': instance.createTime,
  'leftTime': instance.leftTime,
  'title': instance.title,
  'subTitle': instance.subTitle,
  'operates': instance.operates,
  'description': instance.description,
  'paySuccessDescription': instance.paySuccessDescription,
  'afterSalesExpressMethod': instance.afterSalesExpressMethod,
  'afterSalesState': instance.afterSalesState,
  'remark': instance.remark,
  'remarkImages': instance.remarkImages,
  'supportOnlineAfterSales': instance.supportOnlineAfterSales,
  'receiptPdfLink': instance.receiptPdfLink,
  'afterSalesSupport': instance.afterSalesSupport,
  'tenantCode': instance.tenantCode,
  'shippingCountry': instance.shippingCountry,
  'payTime': instance.payTime,
  'afterSales': instance.afterSales,
  'wish': instance.wish,
  'removePackage': instance.removePackage,
  'orderFreight': instance.orderFreight,
};

OrderServiceOrderNoAuthDetailGet$Response$Data$UserAddress
_$OrderServiceOrderNoAuthDetailGet$Response$Data$UserAddressFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderNoAuthDetailGet$Response$Data$UserAddress(
  country: json['country'] as String?,
  countryCode: json['countryCode'] as String?,
  state: json['state'] as String?,
  stateCode: json['stateCode'] as String?,
  city: json['city'] as String?,
  cityCode: json['cityCode'] as String?,
  street: json['street'] as String?,
  apartment: json['apartment'] as String?,
  address: json['address'] as String?,
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  phoneNumber: json['phoneNumber'] as String?,
  zipCode: json['zipCode'] as String?,
  id: (json['id'] as num?)?.toDouble(),
);

Map<String, dynamic>
_$OrderServiceOrderNoAuthDetailGet$Response$Data$UserAddressToJson(
  OrderServiceOrderNoAuthDetailGet$Response$Data$UserAddress instance,
) => <String, dynamic>{
  'country': instance.country,
  'countryCode': instance.countryCode,
  'state': instance.state,
  'stateCode': instance.stateCode,
  'city': instance.city,
  'cityCode': instance.cityCode,
  'street': instance.street,
  'apartment': instance.apartment,
  'address': instance.address,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'phoneNumber': instance.phoneNumber,
  'zipCode': instance.zipCode,
  'id': instance.id,
};

OrderServiceOrderNoAuthDetailGet$Response$Data$PayMethod
_$OrderServiceOrderNoAuthDetailGet$Response$Data$PayMethodFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderNoAuthDetailGet$Response$Data$PayMethod(
  method: json['method'] as String?,
  methodName: json['methodName'] as String?,
  payOrderId: json['payOrderId'] as String?,
  cardMsg: json['cardMsg'] as String?,
  image: json['image'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderNoAuthDetailGet$Response$Data$PayMethodToJson(
  OrderServiceOrderNoAuthDetailGet$Response$Data$PayMethod instance,
) => <String, dynamic>{
  'method': instance.method,
  'methodName': instance.methodName,
  'payOrderId': instance.payOrderId,
  'cardMsg': instance.cardMsg,
  'image': instance.image,
};

OrderServiceOrderNoAuthDetailGet$Response$Data$Payments
_$OrderServiceOrderNoAuthDetailGet$Response$Data$PaymentsFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderNoAuthDetailGet$Response$Data$Payments(
  receiptAmount: json['receiptAmount'] as String?,
  itemsTotalAmount: json['itemsTotalAmount'] as String?,
  freightAmount: json['freightAmount'] as String?,
  targetFreightAmount: json['targetFreightAmount'] as String?,
  skuQuantity: (json['skuQuantity'] as num?)?.toDouble(),
  currency: json['currency'] as String?,
  totalPrice: json['totalPrice'] as String?,
  targetPrice: json['targetPrice'] as String?,
  targetSettlementAmount: json['targetSettlementAmount'] as String?,
  settlementAmount: json['settlementAmount'] as String?,
  discountAmount: json['discountAmount'] as String?,
  targetDiscountAmount: json['targetDiscountAmount'] as String?,
  rechargeAmount: json['rechargeAmount'] as String?,
  targetRechargePrice: json['targetRechargePrice'] as String?,
  targetPayFeeAmount: json['targetPayFeeAmount'] as String?,
  targetCurrency: json['targetCurrency'] as String?,
  targetItemsTotalAmount: json['targetItemsTotalAmount'] as String?,
  targetOriginAmount: json['targetOriginAmount'] as String?,
  targetActualAmount: json['targetActualAmount'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderNoAuthDetailGet$Response$Data$PaymentsToJson(
  OrderServiceOrderNoAuthDetailGet$Response$Data$Payments instance,
) => <String, dynamic>{
  'receiptAmount': instance.receiptAmount,
  'itemsTotalAmount': instance.itemsTotalAmount,
  'freightAmount': instance.freightAmount,
  'targetFreightAmount': instance.targetFreightAmount,
  'skuQuantity': instance.skuQuantity,
  'currency': instance.currency,
  'totalPrice': instance.totalPrice,
  'targetPrice': instance.targetPrice,
  'targetSettlementAmount': instance.targetSettlementAmount,
  'settlementAmount': instance.settlementAmount,
  'discountAmount': instance.discountAmount,
  'targetDiscountAmount': instance.targetDiscountAmount,
  'rechargeAmount': instance.rechargeAmount,
  'targetRechargePrice': instance.targetRechargePrice,
  'targetPayFeeAmount': instance.targetPayFeeAmount,
  'targetCurrency': instance.targetCurrency,
  'targetItemsTotalAmount': instance.targetItemsTotalAmount,
  'targetOriginAmount': instance.targetOriginAmount,
  'targetActualAmount': instance.targetActualAmount,
};

OrderServiceOrderNoAuthDetailGet$Response$Data$OrderBillList$Item
_$OrderServiceOrderNoAuthDetailGet$Response$Data$OrderBillList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderNoAuthDetailGet$Response$Data$OrderBillList$Item(
  status: json['status'] as String?,
  targetCurrency: json['targetCurrency'] as String?,
  targetTotalPrice: json['targetTotalPrice'] as String?,
  billId: json['billId'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderNoAuthDetailGet$Response$Data$OrderBillList$ItemToJson(
  OrderServiceOrderNoAuthDetailGet$Response$Data$OrderBillList$Item instance,
) => <String, dynamic>{
  'status': instance.status,
  'targetCurrency': instance.targetCurrency,
  'targetTotalPrice': instance.targetTotalPrice,
  'billId': instance.billId,
};

OrderServiceOrderNoAuthDetailGet$Response$Data$ParcelOrder
_$OrderServiceOrderNoAuthDetailGet$Response$Data$ParcelOrderFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderNoAuthDetailGet$Response$Data$ParcelOrder(
  parcelOrderId: json['parcelOrderId'] as String?,
  parcelStatus: json['parcelStatus'] as String?,
  parcelStatusDesc: json['parcelStatusDesc'] as String?,
  createTime: (json['createTime'] as num?)?.toDouble(),
  warehouseCode: json['warehouseCode'] as String?,
  warehouseName: json['warehouseName'] as String?,
  freight: json['freight'] as String?,
  freightCurrency: json['freightCurrency'] == null
      ? null
      : OrderServiceOrderNoAuthDetailGet$Response$Data$ParcelOrder$FreightCurrency.fromJson(
          json['freightCurrency'] as Map<String, dynamic>,
        ),
  lastMileMailNo: json['lastMileMailNo'],
  lastMileCompanyCode: json['lastMileCompanyCode'],
  lastMileCompanyName: json['lastMileCompanyName'],
  parcelProductDTOList: (json['parcelProductDTOList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderNoAuthDetailGet$Response$Data$ParcelOrder$ParcelProductDTOList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  buyerOperates:
      (json['buyerOperates'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
  freightCompensate: json['freightCompensate'] == null
      ? null
      : OrderServiceOrderNoAuthDetailGet$Response$Data$ParcelOrder$FreightCompensate.fromJson(
          json['freightCompensate'] as Map<String, dynamic>,
        ),
  solutionCode: json['solutionCode'] as String?,
  actualFreight: json['actualFreight'] as String?,
  actualFreightCurrency: json['actualFreightCurrency'] as String?,
  targetFreightCouponDiscountAmount:
      json['targetFreightCouponDiscountAmount'] as String?,
  targetFreightCouponDiscountCurrency:
      json['targetFreightCouponDiscountCurrency'] as String?,
  targetFreight: json['targetFreight'] as String?,
  targetFreightCurrency: json['targetFreightCurrency'] == null
      ? null
      : OrderServiceOrderNoAuthDetailGet$Response$Data$ParcelOrder$TargetFreightCurrency.fromJson(
          json['targetFreightCurrency'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$OrderServiceOrderNoAuthDetailGet$Response$Data$ParcelOrderToJson(
  OrderServiceOrderNoAuthDetailGet$Response$Data$ParcelOrder instance,
) => <String, dynamic>{
  'parcelOrderId': instance.parcelOrderId,
  'parcelStatus': instance.parcelStatus,
  'parcelStatusDesc': instance.parcelStatusDesc,
  'createTime': instance.createTime,
  'warehouseCode': instance.warehouseCode,
  'warehouseName': instance.warehouseName,
  'freight': instance.freight,
  'freightCurrency': instance.freightCurrency?.toJson(),
  'lastMileMailNo': instance.lastMileMailNo,
  'lastMileCompanyCode': instance.lastMileCompanyCode,
  'lastMileCompanyName': instance.lastMileCompanyName,
  'parcelProductDTOList': instance.parcelProductDTOList
      ?.map((e) => e.toJson())
      .toList(),
  'buyerOperates': instance.buyerOperates,
  'freightCompensate': instance.freightCompensate?.toJson(),
  'solutionCode': instance.solutionCode,
  'actualFreight': instance.actualFreight,
  'actualFreightCurrency': instance.actualFreightCurrency,
  'targetFreightCouponDiscountAmount':
      instance.targetFreightCouponDiscountAmount,
  'targetFreightCouponDiscountCurrency':
      instance.targetFreightCouponDiscountCurrency,
  'targetFreight': instance.targetFreight,
  'targetFreightCurrency': instance.targetFreightCurrency?.toJson(),
};

OrderServiceOrderNoAuthDetailGet$Response$Data$OrderTrace
_$OrderServiceOrderNoAuthDetailGet$Response$Data$OrderTraceFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderNoAuthDetailGet$Response$Data$OrderTrace(
  tradeOrderId: json['tradeOrderId'] as String?,
  logisticsOrderId: json['logisticsOrderId'] as String?,
  logisticsStatus: json['logisticsStatus'] as String?,
  traceList: (json['traceList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderNoAuthDetailGet$Response$Data$OrderTrace$TraceList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  parcelOrderId: json['parcelOrderId'] as String?,
  groupTraceList: (json['groupTraceList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderNoAuthDetailGet$Response$Data$OrderTrace$GroupTraceList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$OrderServiceOrderNoAuthDetailGet$Response$Data$OrderTraceToJson(
  OrderServiceOrderNoAuthDetailGet$Response$Data$OrderTrace instance,
) => <String, dynamic>{
  'tradeOrderId': instance.tradeOrderId,
  'logisticsOrderId': instance.logisticsOrderId,
  'logisticsStatus': instance.logisticsStatus,
  'traceList': instance.traceList?.map((e) => e.toJson()).toList(),
  'parcelOrderId': instance.parcelOrderId,
  'groupTraceList': instance.groupTraceList?.map((e) => e.toJson()).toList(),
};

OrderServiceOrderNoAuthDetailGet$Response$Data$DiscountInfos$Item
_$OrderServiceOrderNoAuthDetailGet$Response$Data$DiscountInfos$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderNoAuthDetailGet$Response$Data$DiscountInfos$Item(
  discountType: (json['discountType'] as num?)?.toDouble(),
  userCouponCode: json['userCouponCode'] as String?,
  discountAmount: json['discountAmount'] as String?,
  targetDiscountAmount: json['targetDiscountAmount'] as String?,
  couponCode: json['couponCode'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderNoAuthDetailGet$Response$Data$DiscountInfos$ItemToJson(
  OrderServiceOrderNoAuthDetailGet$Response$Data$DiscountInfos$Item instance,
) => <String, dynamic>{
  'discountType': instance.discountType,
  'userCouponCode': instance.userCouponCode,
  'discountAmount': instance.discountAmount,
  'targetDiscountAmount': instance.targetDiscountAmount,
  'couponCode': instance.couponCode,
};

OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item
_$OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item(
  skuList: (json['skuList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item$SkuList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  afterSalesList:
      (json['afterSalesList'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
  supplyOrderList: (json['supplyOrderList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item$SupplyOrderList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  sourceOption: json['sourceOption'] == null
      ? null
      : OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item$SourceOption.fromJson(
          json['sourceOption'] as Map<String, dynamic>,
        ),
  logisticsInfo: json['logisticsInfo'] == null
      ? null
      : OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item$LogisticsInfo.fromJson(
          json['logisticsInfo'] as Map<String, dynamic>,
        ),
  skuSourceCode: json['skuSourceCode'] as String?,
  remark: json['remark'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$ItemToJson(
  OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item instance,
) => <String, dynamic>{
  'skuList': instance.skuList?.map((e) => e.toJson()).toList(),
  'afterSalesList': instance.afterSalesList,
  'supplyOrderList': instance.supplyOrderList?.map((e) => e.toJson()).toList(),
  'sourceOption': instance.sourceOption?.toJson(),
  'logisticsInfo': instance.logisticsInfo?.toJson(),
  'skuSourceCode': instance.skuSourceCode,
  'remark': instance.remark,
};

OrderServiceOrderCouponListPost$Response$Data$Item$UserCoupon
_$OrderServiceOrderCouponListPost$Response$Data$Item$UserCouponFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderCouponListPost$Response$Data$Item$UserCoupon(
  msgInfo: json['msgInfo'] == null
      ? null
      : OrderServiceOrderCouponListPost$Response$Data$Item$UserCoupon$MsgInfo.fromJson(
          json['msgInfo'] as Map<String, dynamic>,
        ),
  userCouponCode: json['userCouponCode'] as String?,
  couponCode: json['couponCode'] as String?,
  couponTitle: (json['couponTitle'] as num?)?.toDouble(),
  isUsed: json['isUsed'] as String?,
  gmtInvalid: json['gmtInvalid'] as String?,
  type: (json['type'] as num?)?.toInt(),
  discount: (json['discount'] as num?)?.toDouble(),
  limitAmount: (json['limitAmount'] as num?)?.toDouble(),
  currency: json['currency'] as String?,
  discountTarget: json['discountTarget'] as String?,
  limitAmountTarget: json['limitAmountTarget'] as String?,
  currencyTarget: json['currencyTarget'] as String?,
  sourceCode: json['sourceCode'] as String?,
  scence: json['scence'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderCouponListPost$Response$Data$Item$UserCouponToJson(
  OrderServiceOrderCouponListPost$Response$Data$Item$UserCoupon instance,
) => <String, dynamic>{
  'msgInfo': instance.msgInfo?.toJson(),
  'userCouponCode': instance.userCouponCode,
  'couponCode': instance.couponCode,
  'couponTitle': instance.couponTitle,
  'isUsed': instance.isUsed,
  'gmtInvalid': instance.gmtInvalid,
  'type': instance.type,
  'discount': instance.discount,
  'limitAmount': instance.limitAmount,
  'currency': instance.currency,
  'discountTarget': instance.discountTarget,
  'limitAmountTarget': instance.limitAmountTarget,
  'currencyTarget': instance.currencyTarget,
  'sourceCode': instance.sourceCode,
  'scence': instance.scence,
};

OrderServiceOrderGetReviewGet$Response$Data$Item$SkuSpecValues$Item
_$OrderServiceOrderGetReviewGet$Response$Data$Item$SkuSpecValues$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderGetReviewGet$Response$Data$Item$SkuSpecValues$Item(
  name: json['name'] as String?,
  value: json['value'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderGetReviewGet$Response$Data$Item$SkuSpecValues$ItemToJson(
  OrderServiceOrderGetReviewGet$Response$Data$Item$SkuSpecValues$Item instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

OrderServiceOrderGetReviewGet$Response$Data$Item$Review
_$OrderServiceOrderGetReviewGet$Response$Data$Item$ReviewFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderGetReviewGet$Response$Data$Item$Review(
  comment: json['comment'] as String?,
  score: json['score'] as String?,
  images:
      (json['images'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      [],
  extraComment: json['extraComment'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderGetReviewGet$Response$Data$Item$ReviewToJson(
  OrderServiceOrderGetReviewGet$Response$Data$Item$Review instance,
) => <String, dynamic>{
  'comment': instance.comment,
  'score': instance.score,
  'images': instance.images,
  'extraComment': instance.extraComment,
};

OrderServiceOrderListGet$Response$Data$Records$Item
_$OrderServiceOrderListGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderListGet$Response$Data$Records$Item(
  status: (json['status'] as num?)?.toDouble(),
  frontStatus: (json['frontStatus'] as num?)?.toDouble(),
  statusContent: json['statusContent'] as String?,
  orderStatus: (json['orderStatus'] as num?)?.toDouble(),
  orderId: json['orderId'] as String?,
  parentOrderId: json['parentOrderId'] as String?,
  quantity: (json['quantity'] as num?)?.toDouble(),
  totalAmount: json['totalAmount'] as String?,
  targetTotalAmount: json['targetTotalAmount'] as String?,
  discountAmount: json['discountAmount'] as String?,
  targetDiscountAmount: json['targetDiscountAmount'] as String?,
  targetPayFeeAmount: json['targetPayFeeAmount'] as String?,
  targetActualAmount: json['targetActualAmount'] as String?,
  currency: json['currency'] as String?,
  targetCurrency: json['targetCurrency'] as String?,
  description: json['description'] as String?,
  remark: json['remark'] as String?,
  statusIcon: json['statusIcon'] as String?,
  operates:
      (json['operates'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
      [],
  isLogisticsTrace: json['isLogisticsTrace'] as bool?,
  orderSkuList: (json['orderSkuList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderListGet$Response$Data$Records$Item$OrderSkuList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  supplyOrderList: (json['supplyOrderList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderListGet$Response$Data$Records$Item$SupplyOrderList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  parcelOrder: json['parcelOrder'] == null
      ? null
      : OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder.fromJson(
          json['parcelOrder'] as Map<String, dynamic>,
        ),
  afterSalesList: json['afterSalesList'] as String?,
  orderBillList: (json['orderBillList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderListGet$Response$Data$Records$Item$OrderBillList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  userAddress: json['userAddress'] == null
      ? null
      : OrderServiceOrderListGet$Response$Data$Records$Item$UserAddress.fromJson(
          json['userAddress'] as Map<String, dynamic>,
        ),
  createTime: (json['createTime'] as num?)?.toDouble(),
  wish: json['wish'] as bool?,
  targetItemTotalAmount: json['targetItemTotalAmount'] as String?,
  targetFreightAmount: json['targetFreightAmount'] as String?,
  giveawayGift: (json['giveawayGift'] as num?)?.toDouble(),
  skuSourceCode: json['skuSourceCode'] as String?,
  skuSourceCodeTitle: json['skuSourceCodeTitle'] as String?,
  targetTipAmount: json['targetTipAmount'] as String?,
  targetServiceAmount: json['targetServiceAmount'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderListGet$Response$Data$Records$ItemToJson(
  OrderServiceOrderListGet$Response$Data$Records$Item instance,
) => <String, dynamic>{
  'status': instance.status,
  'frontStatus': instance.frontStatus,
  'statusContent': instance.statusContent,
  'orderStatus': instance.orderStatus,
  'orderId': instance.orderId,
  'parentOrderId': instance.parentOrderId,
  'quantity': instance.quantity,
  'totalAmount': instance.totalAmount,
  'targetTotalAmount': instance.targetTotalAmount,
  'discountAmount': instance.discountAmount,
  'targetDiscountAmount': instance.targetDiscountAmount,
  'targetPayFeeAmount': instance.targetPayFeeAmount,
  'targetActualAmount': instance.targetActualAmount,
  'currency': instance.currency,
  'targetCurrency': instance.targetCurrency,
  'description': instance.description,
  'remark': instance.remark,
  'statusIcon': instance.statusIcon,
  'operates': instance.operates,
  'isLogisticsTrace': instance.isLogisticsTrace,
  'orderSkuList': instance.orderSkuList?.map((e) => e.toJson()).toList(),
  'supplyOrderList': instance.supplyOrderList?.map((e) => e.toJson()).toList(),
  'parcelOrder': instance.parcelOrder?.toJson(),
  'afterSalesList': instance.afterSalesList,
  'orderBillList': instance.orderBillList?.map((e) => e.toJson()).toList(),
  'userAddress': instance.userAddress?.toJson(),
  'createTime': instance.createTime,
  'wish': instance.wish,
  'targetItemTotalAmount': instance.targetItemTotalAmount,
  'targetFreightAmount': instance.targetFreightAmount,
  'giveawayGift': instance.giveawayGift,
  'skuSourceCode': instance.skuSourceCode,
  'skuSourceCodeTitle': instance.skuSourceCodeTitle,
  'targetTipAmount': instance.targetTipAmount,
  'targetServiceAmount': instance.targetServiceAmount,
};

OrderServiceOrderCombineListGet$Response$Data$Records$Item
_$OrderServiceOrderCombineListGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderCombineListGet$Response$Data$Records$Item(
  status: (json['status'] as num?)?.toDouble(),
  frontStatus: (json['frontStatus'] as num?)?.toDouble(),
  statusContent: json['statusContent'] as String?,
  orderStatus: (json['orderStatus'] as num?)?.toDouble(),
  quantity: (json['quantity'] as num?)?.toDouble(),
  totalAmount: json['totalAmount'] as String?,
  targetTotalAmount: json['targetTotalAmount'] as String?,
  discountAmount: json['discountAmount'] as String?,
  targetDiscountAmount: json['targetDiscountAmount'] as String?,
  itemTotalAmount: json['itemTotalAmount'] as String?,
  freightAmount: json['freightAmount'] as String?,
  targetItemTotalAmount: json['targetItemTotalAmount'] as String?,
  targetFreightAmount: json['targetFreightAmount'] as String?,
  targetPayFeeAmount: json['targetPayFeeAmount'] as String?,
  currency: json['currency'] as String?,
  targetCurrency: json['targetCurrency'] as String?,
  description: json['description'] as String?,
  remark: json['remark'] as String?,
  operates:
      (json['operates'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
      [],
  isLogisticsTrace: json['isLogisticsTrace'] as bool?,
  parcelOrder: json['parcelOrder'] == null
      ? null
      : OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder.fromJson(
          json['parcelOrder'] as Map<String, dynamic>,
        ),
  userAddress: json['userAddress'] == null
      ? null
      : OrderServiceOrderCombineListGet$Response$Data$Records$Item$UserAddress.fromJson(
          json['userAddress'] as Map<String, dynamic>,
        ),
  createTime: (json['createTime'] as num?)?.toDouble(),
  wish: json['wish'] as bool?,
  orderList: (json['orderList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$OrderServiceOrderCombineListGet$Response$Data$Records$ItemToJson(
  OrderServiceOrderCombineListGet$Response$Data$Records$Item instance,
) => <String, dynamic>{
  'status': instance.status,
  'frontStatus': instance.frontStatus,
  'statusContent': instance.statusContent,
  'orderStatus': instance.orderStatus,
  'quantity': instance.quantity,
  'totalAmount': instance.totalAmount,
  'targetTotalAmount': instance.targetTotalAmount,
  'discountAmount': instance.discountAmount,
  'targetDiscountAmount': instance.targetDiscountAmount,
  'itemTotalAmount': instance.itemTotalAmount,
  'freightAmount': instance.freightAmount,
  'targetItemTotalAmount': instance.targetItemTotalAmount,
  'targetFreightAmount': instance.targetFreightAmount,
  'targetPayFeeAmount': instance.targetPayFeeAmount,
  'currency': instance.currency,
  'targetCurrency': instance.targetCurrency,
  'description': instance.description,
  'remark': instance.remark,
  'operates': instance.operates,
  'isLogisticsTrace': instance.isLogisticsTrace,
  'parcelOrder': instance.parcelOrder?.toJson(),
  'userAddress': instance.userAddress?.toJson(),
  'createTime': instance.createTime,
  'wish': instance.wish,
  'orderList': instance.orderList?.map((e) => e.toJson()).toList(),
};

OrderServiceOrderDetailGet$Response$Data$OrderList$Item
_$OrderServiceOrderDetailGet$Response$Data$OrderList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderDetailGet$Response$Data$OrderList$Item(
  skuList: (json['skuList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderDetailGet$Response$Data$OrderList$Item$SkuList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  supplyOrderList: (json['supplyOrderList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderDetailGet$Response$Data$OrderList$Item$SupplyOrderList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  skuSourceCode: json['skuSourceCode'] as String?,
  skuSourceTitle: json['skuSourceTitle'] as String?,
  remark: json['remark'] as String?,
  logisticsInfo: json['logisticsInfo'] == null
      ? null
      : OrderServiceOrderDetailGet$Response$Data$OrderList$Item$LogisticsInfo.fromJson(
          json['logisticsInfo'] as Map<String, dynamic>,
        ),
  sourceOption: json['sourceOption'] == null
      ? null
      : OrderServiceOrderDetailGet$Response$Data$OrderList$Item$SourceOption.fromJson(
          json['sourceOption'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$OrderServiceOrderDetailGet$Response$Data$OrderList$ItemToJson(
  OrderServiceOrderDetailGet$Response$Data$OrderList$Item instance,
) => <String, dynamic>{
  'skuList': instance.skuList?.map((e) => e.toJson()).toList(),
  'supplyOrderList': instance.supplyOrderList?.map((e) => e.toJson()).toList(),
  'skuSourceCode': instance.skuSourceCode,
  'skuSourceTitle': instance.skuSourceTitle,
  'remark': instance.remark,
  'logisticsInfo': instance.logisticsInfo?.toJson(),
  'sourceOption': instance.sourceOption?.toJson(),
};

OrderServiceOrderDetailGet$Response$Data$BaseInfo
_$OrderServiceOrderDetailGet$Response$Data$BaseInfoFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderDetailGet$Response$Data$BaseInfo(
  userId: json['userId'] as String?,
  orderId: json['orderId'] as String?,
  skuSourceCode: json['skuSourceCode'] as String?,
  skuSourceTitle: json['skuSourceTitle'] as String?,
  parentOrderId: json['parentOrderId'] as String?,
  status: (json['status'] as num?)?.toDouble(),
  frontStatus: (json['frontStatus'] as num?)?.toDouble(),
  statusContent: json['statusContent'] as String?,
  orderStatus: (json['orderStatus'] as num?)?.toDouble(),
  evaluateStatus: (json['evaluateStatus'] as num?)?.toDouble(),
  timeoutPeriod: (json['timeoutPeriod'] as num?)?.toDouble(),
  createTime: (json['createTime'] as num?)?.toDouble(),
  leftTime: (json['leftTime'] as num?)?.toDouble(),
  title: json['title'] as String?,
  subTitle: json['subTitle'] as String?,
  operates:
      (json['operates'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      [],
  description: json['description'] as String?,
  paySuccessDescription: json['paySuccessDescription'] as String?,
  afterSalesExpressMethod: (json['afterSalesExpressMethod'] as num?)
      ?.toDouble(),
  afterSalesState: (json['afterSalesState'] as num?)?.toDouble(),
  remark: json['remark'] as String?,
  remarkImages: json['remarkImages'] as String?,
  supportOnlineAfterSales: (json['supportOnlineAfterSales'] as num?)
      ?.toDouble(),
  receiptPdfLink: json['receiptPdfLink'] as String?,
  afterSalesSupport: json['afterSalesSupport'] as String?,
  tenantCode: json['tenantCode'] as String?,
  shippingCountry: json['shippingCountry'] as String?,
  payTime: (json['payTime'] as num?)?.toDouble(),
  batchNo: json['batchNo'] as String?,
  parcelBatch: json['parcelBatch'] as bool?,
  removePackage: json['removePackage'] as bool?,
  orderFreight: json['orderFreight'] as bool?,
  logisticsSolutionCode: json['logisticsSolutionCode'],
  returnType: (json['returnType'] as num?)?.toDouble(),
  language: json['language'],
  giveawayGift: (json['giveawayGift'] as num?)?.toDouble(),
  afterSales: json['afterSales'] as bool?,
  wish: json['wish'] as bool?,
);

Map<String, dynamic> _$OrderServiceOrderDetailGet$Response$Data$BaseInfoToJson(
  OrderServiceOrderDetailGet$Response$Data$BaseInfo instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'orderId': instance.orderId,
  'skuSourceCode': instance.skuSourceCode,
  'skuSourceTitle': instance.skuSourceTitle,
  'parentOrderId': instance.parentOrderId,
  'status': instance.status,
  'frontStatus': instance.frontStatus,
  'statusContent': instance.statusContent,
  'orderStatus': instance.orderStatus,
  'evaluateStatus': instance.evaluateStatus,
  'timeoutPeriod': instance.timeoutPeriod,
  'createTime': instance.createTime,
  'leftTime': instance.leftTime,
  'title': instance.title,
  'subTitle': instance.subTitle,
  'operates': instance.operates,
  'description': instance.description,
  'paySuccessDescription': instance.paySuccessDescription,
  'afterSalesExpressMethod': instance.afterSalesExpressMethod,
  'afterSalesState': instance.afterSalesState,
  'remark': instance.remark,
  'remarkImages': instance.remarkImages,
  'supportOnlineAfterSales': instance.supportOnlineAfterSales,
  'receiptPdfLink': instance.receiptPdfLink,
  'afterSalesSupport': instance.afterSalesSupport,
  'tenantCode': instance.tenantCode,
  'shippingCountry': instance.shippingCountry,
  'payTime': instance.payTime,
  'batchNo': instance.batchNo,
  'parcelBatch': instance.parcelBatch,
  'removePackage': instance.removePackage,
  'orderFreight': instance.orderFreight,
  'logisticsSolutionCode': instance.logisticsSolutionCode,
  'returnType': instance.returnType,
  'language': instance.language,
  'giveawayGift': instance.giveawayGift,
  'afterSales': instance.afterSales,
  'wish': instance.wish,
};

OrderServiceOrderDetailGet$Response$Data$PayMethod
_$OrderServiceOrderDetailGet$Response$Data$PayMethodFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderDetailGet$Response$Data$PayMethod(
  method: (json['method'] as num?)?.toDouble(),
  methodName: json['methodName'] as String?,
  payOrderId: json['payOrderId'],
  cardMsg: json['cardMsg'],
  image: json['image'] as String?,
);

Map<String, dynamic> _$OrderServiceOrderDetailGet$Response$Data$PayMethodToJson(
  OrderServiceOrderDetailGet$Response$Data$PayMethod instance,
) => <String, dynamic>{
  'method': instance.method,
  'methodName': instance.methodName,
  'payOrderId': instance.payOrderId,
  'cardMsg': instance.cardMsg,
  'image': instance.image,
};

OrderServiceOrderDetailGet$Response$Data$Payments
_$OrderServiceOrderDetailGet$Response$Data$PaymentsFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderDetailGet$Response$Data$Payments(
  targetOriginAmount: json['targetOriginAmount'] as String?,
  receiptAmount: json['receiptAmount'] as String?,
  itemsTotalAmount: json['itemsTotalAmount'] as String?,
  targetItemsTotalAmount: json['targetItemsTotalAmount'] as String?,
  targetItemDiscountAmount: json['targetItemDiscountAmount'] as String?,
  freightAmount: json['freightAmount'] as String?,
  targetFreightAmount: json['targetFreightAmount'] as String?,
  skuQuantity: (json['skuQuantity'] as num?)?.toDouble(),
  currency: json['currency'] as String?,
  totalPrice: json['totalPrice'] as String?,
  targetPrice: json['targetPrice'] as String?,
  discountAmount: json['discountAmount'] as String?,
  targetDiscountAmount: json['targetDiscountAmount'] as String?,
  targetActualAmount: json['targetActualAmount'] as String?,
  targetStockFeeAmount: json['targetStockFeeAmount'] as String?,
  rechargeAmount: json['rechargeAmount'] as String?,
  targetRechargePrice: json['targetRechargePrice'] as String?,
  targetCurrency: json['targetCurrency'] as String?,
  targetPurchaseDiffPrice: json['targetPurchaseDiffPrice'] as String?,
  targetPurchasePrice: json['targetPurchasePrice'] as String?,
  purchasePrice: json['purchasePrice'],
  targetPayFeeAmount: json['targetPayFeeAmount'] as String?,
  targetTipAmount: json['targetTipAmount'] as String?,
  targetServiceAmount: json['targetServiceAmount'] as String?,
  wdSourcePlatform: json['wdSourcePlatform'] as bool?,
);

Map<String, dynamic> _$OrderServiceOrderDetailGet$Response$Data$PaymentsToJson(
  OrderServiceOrderDetailGet$Response$Data$Payments instance,
) => <String, dynamic>{
  'targetOriginAmount': instance.targetOriginAmount,
  'receiptAmount': instance.receiptAmount,
  'itemsTotalAmount': instance.itemsTotalAmount,
  'targetItemsTotalAmount': instance.targetItemsTotalAmount,
  'targetItemDiscountAmount': instance.targetItemDiscountAmount,
  'freightAmount': instance.freightAmount,
  'targetFreightAmount': instance.targetFreightAmount,
  'skuQuantity': instance.skuQuantity,
  'currency': instance.currency,
  'totalPrice': instance.totalPrice,
  'targetPrice': instance.targetPrice,
  'discountAmount': instance.discountAmount,
  'targetDiscountAmount': instance.targetDiscountAmount,
  'targetActualAmount': instance.targetActualAmount,
  'targetStockFeeAmount': instance.targetStockFeeAmount,
  'rechargeAmount': instance.rechargeAmount,
  'targetRechargePrice': instance.targetRechargePrice,
  'targetCurrency': instance.targetCurrency,
  'targetPurchaseDiffPrice': instance.targetPurchaseDiffPrice,
  'targetPurchasePrice': instance.targetPurchasePrice,
  'purchasePrice': instance.purchasePrice,
  'targetPayFeeAmount': instance.targetPayFeeAmount,
  'targetTipAmount': instance.targetTipAmount,
  'targetServiceAmount': instance.targetServiceAmount,
  'wdSourcePlatform': instance.wdSourcePlatform,
};

OrderServiceOrderDetailGet$Response$Data$UserAddress
_$OrderServiceOrderDetailGet$Response$Data$UserAddressFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderDetailGet$Response$Data$UserAddress(
  country: json['country'] as String?,
  countryCode: json['countryCode'] as String?,
  state: json['state'] as String?,
  stateCode: json['stateCode'] as String?,
  city: json['city'] as String?,
  cityCode: json['cityCode'] as String?,
  street: json['street'] as String?,
  apartment: json['apartment'] as String?,
  address: json['address'] as String?,
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  phoneNumber: json['phoneNumber'] as String?,
  zipCode: json['zipCode'] as String?,
  id: (json['id'] as num?)?.toDouble(),
  remark: json['remark'],
  accessCode: json['accessCode'],
  email: json['email'],
  tin: json['tin'],
);

Map<String, dynamic>
_$OrderServiceOrderDetailGet$Response$Data$UserAddressToJson(
  OrderServiceOrderDetailGet$Response$Data$UserAddress instance,
) => <String, dynamic>{
  'country': instance.country,
  'countryCode': instance.countryCode,
  'state': instance.state,
  'stateCode': instance.stateCode,
  'city': instance.city,
  'cityCode': instance.cityCode,
  'street': instance.street,
  'apartment': instance.apartment,
  'address': instance.address,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'phoneNumber': instance.phoneNumber,
  'zipCode': instance.zipCode,
  'id': instance.id,
  'remark': instance.remark,
  'accessCode': instance.accessCode,
  'email': instance.email,
  'tin': instance.tin,
};

OrderServiceOrderDetailGet$Response$Data$ParcelOrder
_$OrderServiceOrderDetailGet$Response$Data$ParcelOrderFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderDetailGet$Response$Data$ParcelOrder(
  parcelOrderId: json['parcelOrderId'] as String?,
  parcelStatus: json['parcelStatus'] as String?,
  parcelStatusDesc: json['parcelStatusDesc'] as String?,
  batchNo: json['batchNo'] as String?,
  createTime: (json['createTime'] as num?)?.toDouble(),
  warehouseCode: json['warehouseCode'] as String?,
  warehouseName: json['warehouseName'] as String?,
  solutionCode: json['solutionCode'] as String?,
  freight: json['freight'] as String?,
  freightCurrency: json['freightCurrency'] == null
      ? null
      : OrderServiceOrderDetailGet$Response$Data$ParcelOrder$FreightCurrency.fromJson(
          json['freightCurrency'] as Map<String, dynamic>,
        ),
  targetFreight: json['targetFreight'] as String?,
  targetFreightCurrency: json['targetFreightCurrency'] == null
      ? null
      : OrderServiceOrderDetailGet$Response$Data$ParcelOrder$TargetFreightCurrency.fromJson(
          json['targetFreightCurrency'] as Map<String, dynamic>,
        ),
  actualFreight: json['actualFreight'] as String?,
  actualFreightCurrency: json['actualFreightCurrency'] as String?,
  targetActualFreight: json['targetActualFreight'] as String?,
  targetActualFreightCurrency: json['targetActualFreightCurrency'] as String?,
  freightCouponCode: json['freightCouponCode'] as String?,
  freightCouponDiscountAmount: json['freightCouponDiscountAmount'] as String?,
  freightCouponDiscountCurrency:
      json['freightCouponDiscountCurrency'] as String?,
  targetFreightCouponDiscountAmount:
      json['targetFreightCouponDiscountAmount'] as String?,
  targetFreightCouponDiscountCurrency:
      json['targetFreightCouponDiscountCurrency'] as String?,
  targetServiceAmount: json['targetServiceAmount'] as String?,
  targetServiceAmountCurrency: json['targetServiceAmountCurrency'] as String?,
  weight: json['weight'] as String?,
  length: json['length'] as String?,
  width: json['width'] as String?,
  height: json['height'] as String?,
  lastMileMailNo: json['lastMileMailNo'] as String?,
  lastMileCompanyCode: json['lastMileCompanyCode'] as String?,
  lastMileCompanyName: json['lastMileCompanyName'] as String?,
  receiverAddress: json['receiverAddress'] == null
      ? null
      : OrderServiceOrderDetailGet$Response$Data$ParcelOrder$ReceiverAddress.fromJson(
          json['receiverAddress'] as Map<String, dynamic>,
        ),
  parcelProductDTOList: (json['parcelProductDTOList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderDetailGet$Response$Data$ParcelOrder$ParcelProductDTOList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  buyerOperates:
      (json['buyerOperates'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
);

Map<String, dynamic>
_$OrderServiceOrderDetailGet$Response$Data$ParcelOrderToJson(
  OrderServiceOrderDetailGet$Response$Data$ParcelOrder instance,
) => <String, dynamic>{
  'parcelOrderId': instance.parcelOrderId,
  'parcelStatus': instance.parcelStatus,
  'parcelStatusDesc': instance.parcelStatusDesc,
  'batchNo': instance.batchNo,
  'createTime': instance.createTime,
  'warehouseCode': instance.warehouseCode,
  'warehouseName': instance.warehouseName,
  'solutionCode': instance.solutionCode,
  'freight': instance.freight,
  'freightCurrency': instance.freightCurrency?.toJson(),
  'targetFreight': instance.targetFreight,
  'targetFreightCurrency': instance.targetFreightCurrency?.toJson(),
  'actualFreight': instance.actualFreight,
  'actualFreightCurrency': instance.actualFreightCurrency,
  'targetActualFreight': instance.targetActualFreight,
  'targetActualFreightCurrency': instance.targetActualFreightCurrency,
  'freightCouponCode': instance.freightCouponCode,
  'freightCouponDiscountAmount': instance.freightCouponDiscountAmount,
  'freightCouponDiscountCurrency': instance.freightCouponDiscountCurrency,
  'targetFreightCouponDiscountAmount':
      instance.targetFreightCouponDiscountAmount,
  'targetFreightCouponDiscountCurrency':
      instance.targetFreightCouponDiscountCurrency,
  'targetServiceAmount': instance.targetServiceAmount,
  'targetServiceAmountCurrency': instance.targetServiceAmountCurrency,
  'weight': instance.weight,
  'length': instance.length,
  'width': instance.width,
  'height': instance.height,
  'lastMileMailNo': instance.lastMileMailNo,
  'lastMileCompanyCode': instance.lastMileCompanyCode,
  'lastMileCompanyName': instance.lastMileCompanyName,
  'receiverAddress': instance.receiverAddress?.toJson(),
  'parcelProductDTOList': instance.parcelProductDTOList
      ?.map((e) => e.toJson())
      .toList(),
  'buyerOperates': instance.buyerOperates,
};

OrderServiceOrderDetailGet$Response$Data$OrderTrace
_$OrderServiceOrderDetailGet$Response$Data$OrderTraceFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderDetailGet$Response$Data$OrderTrace(
  tradeOrderId: json['tradeOrderId'] as String?,
  logisticsOrderId: json['logisticsOrderId'] as String?,
  logisticsStatus: json['logisticsStatus'] as String?,
  parcelOrderId: json['parcelOrderId'] as String?,
  parcelOrderStatus: json['parcelOrderStatus'] as String?,
  groupTraceList: (json['groupTraceList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderDetailGet$Response$Data$OrderTrace$GroupTraceList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  receiverAddress: json['receiverAddress'] == null
      ? null
      : OrderServiceOrderDetailGet$Response$Data$OrderTrace$ReceiverAddress.fromJson(
          json['receiverAddress'] as Map<String, dynamic>,
        ),
  logisticsSkuDetailList: (json['logisticsSkuDetailList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderDetailGet$Response$Data$OrderTrace$LogisticsSkuDetailList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  lastMileMailNo: json['lastMileMailNo'] as String?,
  lastMileMailNoLink: json['lastMileMailNoLink'] as String?,
  lastMileCompanyName: json['lastMileCompanyName'] as String?,
  traceList: (json['traceList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderDetailGet$Response$Data$OrderTrace$TraceList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$OrderServiceOrderDetailGet$Response$Data$OrderTraceToJson(
  OrderServiceOrderDetailGet$Response$Data$OrderTrace instance,
) => <String, dynamic>{
  'tradeOrderId': instance.tradeOrderId,
  'logisticsOrderId': instance.logisticsOrderId,
  'logisticsStatus': instance.logisticsStatus,
  'parcelOrderId': instance.parcelOrderId,
  'parcelOrderStatus': instance.parcelOrderStatus,
  'groupTraceList': instance.groupTraceList?.map((e) => e.toJson()).toList(),
  'receiverAddress': instance.receiverAddress?.toJson(),
  'logisticsSkuDetailList': instance.logisticsSkuDetailList
      ?.map((e) => e.toJson())
      .toList(),
  'lastMileMailNo': instance.lastMileMailNo,
  'lastMileMailNoLink': instance.lastMileMailNoLink,
  'lastMileCompanyName': instance.lastMileCompanyName,
  'traceList': instance.traceList?.map((e) => e.toJson()).toList(),
};

OrderServiceOrderDetailGet$Response$Data$DiscountInfos$Item
_$OrderServiceOrderDetailGet$Response$Data$DiscountInfos$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderDetailGet$Response$Data$DiscountInfos$Item(
  discountType: (json['discountType'] as num?)?.toDouble(),
  userCouponCode: json['userCouponCode'] as String?,
  discountAmount: json['discountAmount'] as String?,
  targetDiscountAmount: json['targetDiscountAmount'] as String?,
  couponCode: json['couponCode'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderDetailGet$Response$Data$DiscountInfos$ItemToJson(
  OrderServiceOrderDetailGet$Response$Data$DiscountInfos$Item instance,
) => <String, dynamic>{
  'discountType': instance.discountType,
  'userCouponCode': instance.userCouponCode,
  'discountAmount': instance.discountAmount,
  'targetDiscountAmount': instance.targetDiscountAmount,
  'couponCode': instance.couponCode,
};

OrderServiceOpenapiOrderDetailGet$Response$Data$BaseInfo
_$OrderServiceOpenapiOrderDetailGet$Response$Data$BaseInfoFromJson(
  Map<String, dynamic> json,
) => OrderServiceOpenapiOrderDetailGet$Response$Data$BaseInfo(
  userId: json['userId'] as String?,
  orderId: json['orderId'] as String?,
  skuSourceCode: json['skuSourceCode'] as String?,
  parentOrderId: json['parentOrderId'] as String?,
  status: (json['status'] as num?)?.toDouble(),
  frontStatus: (json['frontStatus'] as num?)?.toDouble(),
  statusContent: json['statusContent'] as String?,
  orderStatus: (json['orderStatus'] as num?)?.toDouble(),
  evaluateStatus: (json['evaluateStatus'] as num?)?.toDouble(),
  timeoutPeriod: (json['timeoutPeriod'] as num?)?.toDouble(),
  createTime: (json['createTime'] as num?)?.toDouble(),
  leftTime: (json['leftTime'] as num?)?.toDouble(),
  title: json['title'] as String?,
  subTitle: json['subTitle'] as String?,
  operates:
      (json['operates'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      [],
  description: json['description'] as String?,
  paySuccessDescription: json['paySuccessDescription'] as String?,
  afterSalesExpressMethod: (json['afterSalesExpressMethod'] as num?)
      ?.toDouble(),
  afterSalesState: (json['afterSalesState'] as num?)?.toDouble(),
  remark: json['remark'] as String?,
  remarkImages: json['remarkImages'] as String?,
  supportOnlineAfterSales: (json['supportOnlineAfterSales'] as num?)
      ?.toDouble(),
  receiptPdfLink: json['receiptPdfLink'] as String?,
  afterSalesSupport: json['afterSalesSupport'] as String?,
  tenantCode: json['tenantCode'] as String?,
  shippingCountry: json['shippingCountry'] as String?,
  payTime: (json['payTime'] as num?)?.toDouble(),
  afterSales: json['afterSales'] as bool?,
  wish: json['wish'] as bool?,
  removePackage: json['removePackage'] as bool?,
);

Map<String, dynamic>
_$OrderServiceOpenapiOrderDetailGet$Response$Data$BaseInfoToJson(
  OrderServiceOpenapiOrderDetailGet$Response$Data$BaseInfo instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'orderId': instance.orderId,
  'skuSourceCode': instance.skuSourceCode,
  'parentOrderId': instance.parentOrderId,
  'status': instance.status,
  'frontStatus': instance.frontStatus,
  'statusContent': instance.statusContent,
  'orderStatus': instance.orderStatus,
  'evaluateStatus': instance.evaluateStatus,
  'timeoutPeriod': instance.timeoutPeriod,
  'createTime': instance.createTime,
  'leftTime': instance.leftTime,
  'title': instance.title,
  'subTitle': instance.subTitle,
  'operates': instance.operates,
  'description': instance.description,
  'paySuccessDescription': instance.paySuccessDescription,
  'afterSalesExpressMethod': instance.afterSalesExpressMethod,
  'afterSalesState': instance.afterSalesState,
  'remark': instance.remark,
  'remarkImages': instance.remarkImages,
  'supportOnlineAfterSales': instance.supportOnlineAfterSales,
  'receiptPdfLink': instance.receiptPdfLink,
  'afterSalesSupport': instance.afterSalesSupport,
  'tenantCode': instance.tenantCode,
  'shippingCountry': instance.shippingCountry,
  'payTime': instance.payTime,
  'afterSales': instance.afterSales,
  'wish': instance.wish,
  'removePackage': instance.removePackage,
};

OrderServiceOpenapiOrderDetailGet$Response$Data$UserAddress
_$OrderServiceOpenapiOrderDetailGet$Response$Data$UserAddressFromJson(
  Map<String, dynamic> json,
) => OrderServiceOpenapiOrderDetailGet$Response$Data$UserAddress(
  country: json['country'] as String?,
  countryCode: json['countryCode'] as String?,
  state: json['state'] as String?,
  stateCode: json['stateCode'] as String?,
  city: json['city'] as String?,
  cityCode: json['cityCode'] as String?,
  street: json['street'] as String?,
  apartment: json['apartment'] as String?,
  address: json['address'] as String?,
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  phoneNumber: json['phoneNumber'] as String?,
  zipCode: json['zipCode'] as String?,
  id: (json['id'] as num?)?.toDouble(),
);

Map<String, dynamic>
_$OrderServiceOpenapiOrderDetailGet$Response$Data$UserAddressToJson(
  OrderServiceOpenapiOrderDetailGet$Response$Data$UserAddress instance,
) => <String, dynamic>{
  'country': instance.country,
  'countryCode': instance.countryCode,
  'state': instance.state,
  'stateCode': instance.stateCode,
  'city': instance.city,
  'cityCode': instance.cityCode,
  'street': instance.street,
  'apartment': instance.apartment,
  'address': instance.address,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'phoneNumber': instance.phoneNumber,
  'zipCode': instance.zipCode,
  'id': instance.id,
};

OrderServiceOpenapiOrderDetailGet$Response$Data$PayMethod
_$OrderServiceOpenapiOrderDetailGet$Response$Data$PayMethodFromJson(
  Map<String, dynamic> json,
) => OrderServiceOpenapiOrderDetailGet$Response$Data$PayMethod(
  method: json['method'] as String?,
  methodName: json['methodName'] as String?,
  payOrderId: json['payOrderId'] as String?,
  cardMsg: json['cardMsg'] as String?,
  image: json['image'] as String?,
);

Map<String, dynamic>
_$OrderServiceOpenapiOrderDetailGet$Response$Data$PayMethodToJson(
  OrderServiceOpenapiOrderDetailGet$Response$Data$PayMethod instance,
) => <String, dynamic>{
  'method': instance.method,
  'methodName': instance.methodName,
  'payOrderId': instance.payOrderId,
  'cardMsg': instance.cardMsg,
  'image': instance.image,
};

OrderServiceOpenapiOrderDetailGet$Response$Data$Payments
_$OrderServiceOpenapiOrderDetailGet$Response$Data$PaymentsFromJson(
  Map<String, dynamic> json,
) => OrderServiceOpenapiOrderDetailGet$Response$Data$Payments(
  receiptAmount: json['receiptAmount'] as String?,
  itemsTotalAmount: json['itemsTotalAmount'] as String?,
  freightAmount: json['freightAmount'] as String?,
  skuQuantity: (json['skuQuantity'] as num?)?.toDouble(),
  currency: json['currency'] as String?,
  totalPrice: json['totalPrice'] as String?,
  targetPrice: json['targetPrice'] as String?,
  targetSettlementAmount: json['targetSettlementAmount'] as String?,
  settlementAmount: json['settlementAmount'] as String?,
  discountAmount: json['discountAmount'] as String?,
  targetDiscountAmount: json['targetDiscountAmount'] as String?,
  rechargeAmount: json['rechargeAmount'] as String?,
  targetRechargePrice: json['targetRechargePrice'] as String?,
  targetCurrency: json['targetCurrency'] as String?,
  targetItemsTotalAmount: json['targetItemsTotalAmount'] as String?,
);

Map<String, dynamic>
_$OrderServiceOpenapiOrderDetailGet$Response$Data$PaymentsToJson(
  OrderServiceOpenapiOrderDetailGet$Response$Data$Payments instance,
) => <String, dynamic>{
  'receiptAmount': instance.receiptAmount,
  'itemsTotalAmount': instance.itemsTotalAmount,
  'freightAmount': instance.freightAmount,
  'skuQuantity': instance.skuQuantity,
  'currency': instance.currency,
  'totalPrice': instance.totalPrice,
  'targetPrice': instance.targetPrice,
  'targetSettlementAmount': instance.targetSettlementAmount,
  'settlementAmount': instance.settlementAmount,
  'discountAmount': instance.discountAmount,
  'targetDiscountAmount': instance.targetDiscountAmount,
  'rechargeAmount': instance.rechargeAmount,
  'targetRechargePrice': instance.targetRechargePrice,
  'targetCurrency': instance.targetCurrency,
  'targetItemsTotalAmount': instance.targetItemsTotalAmount,
};

OrderServiceOpenapiOrderDetailGet$Response$Data$OrderBillList$Item
_$OrderServiceOpenapiOrderDetailGet$Response$Data$OrderBillList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOpenapiOrderDetailGet$Response$Data$OrderBillList$Item(
  status: json['status'] as String?,
  targetCurrency: json['targetCurrency'] as String?,
  targetTotalPrice: json['targetTotalPrice'] as String?,
  billId: json['billId'] as String?,
);

Map<String, dynamic>
_$OrderServiceOpenapiOrderDetailGet$Response$Data$OrderBillList$ItemToJson(
  OrderServiceOpenapiOrderDetailGet$Response$Data$OrderBillList$Item instance,
) => <String, dynamic>{
  'status': instance.status,
  'targetCurrency': instance.targetCurrency,
  'targetTotalPrice': instance.targetTotalPrice,
  'billId': instance.billId,
};

OrderServiceOpenapiOrderDetailGet$Response$Data$ParcelOrder
_$OrderServiceOpenapiOrderDetailGet$Response$Data$ParcelOrderFromJson(
  Map<String, dynamic> json,
) => OrderServiceOpenapiOrderDetailGet$Response$Data$ParcelOrder(
  parcelOrderId: json['parcelOrderId'] as String?,
  parcelStatus: json['parcelStatus'] as String?,
  parcelStatusDesc: json['parcelStatusDesc'] as String?,
  createTime: (json['createTime'] as num?)?.toDouble(),
  warehouseCode: json['warehouseCode'] as String?,
  warehouseName: json['warehouseName'] as String?,
  freight: json['freight'] as String?,
  freightCurrency: json['freightCurrency'] == null
      ? null
      : OrderServiceOpenapiOrderDetailGet$Response$Data$ParcelOrder$FreightCurrency.fromJson(
          json['freightCurrency'] as Map<String, dynamic>,
        ),
  lastMileMailNo: json['lastMileMailNo'],
  lastMileCompanyCode: json['lastMileCompanyCode'],
  lastMileCompanyName: json['lastMileCompanyName'],
  parcelProductDTOList: (json['parcelProductDTOList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOpenapiOrderDetailGet$Response$Data$ParcelOrder$ParcelProductDTOList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  buyerOperates:
      (json['buyerOperates'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
  freightCompensate: json['freightCompensate'] == null
      ? null
      : OrderServiceOpenapiOrderDetailGet$Response$Data$ParcelOrder$FreightCompensate.fromJson(
          json['freightCompensate'] as Map<String, dynamic>,
        ),
  solutionCode: json['solutionCode'] as String?,
  actualFreight: json['actualFreight'] as String?,
  actualFreightCurrency: json['actualFreightCurrency'] as String?,
  targetFreightCouponDiscountAmount:
      json['targetFreightCouponDiscountAmount'] as String?,
  targetFreightCouponDiscountCurrency:
      json['targetFreightCouponDiscountCurrency'] as String?,
  targetFreight: json['targetFreight'] as String?,
  targetFreightCurrency: json['targetFreightCurrency'] == null
      ? null
      : OrderServiceOpenapiOrderDetailGet$Response$Data$ParcelOrder$TargetFreightCurrency.fromJson(
          json['targetFreightCurrency'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$OrderServiceOpenapiOrderDetailGet$Response$Data$ParcelOrderToJson(
  OrderServiceOpenapiOrderDetailGet$Response$Data$ParcelOrder instance,
) => <String, dynamic>{
  'parcelOrderId': instance.parcelOrderId,
  'parcelStatus': instance.parcelStatus,
  'parcelStatusDesc': instance.parcelStatusDesc,
  'createTime': instance.createTime,
  'warehouseCode': instance.warehouseCode,
  'warehouseName': instance.warehouseName,
  'freight': instance.freight,
  'freightCurrency': instance.freightCurrency?.toJson(),
  'lastMileMailNo': instance.lastMileMailNo,
  'lastMileCompanyCode': instance.lastMileCompanyCode,
  'lastMileCompanyName': instance.lastMileCompanyName,
  'parcelProductDTOList': instance.parcelProductDTOList
      ?.map((e) => e.toJson())
      .toList(),
  'buyerOperates': instance.buyerOperates,
  'freightCompensate': instance.freightCompensate?.toJson(),
  'solutionCode': instance.solutionCode,
  'actualFreight': instance.actualFreight,
  'actualFreightCurrency': instance.actualFreightCurrency,
  'targetFreightCouponDiscountAmount':
      instance.targetFreightCouponDiscountAmount,
  'targetFreightCouponDiscountCurrency':
      instance.targetFreightCouponDiscountCurrency,
  'targetFreight': instance.targetFreight,
  'targetFreightCurrency': instance.targetFreightCurrency?.toJson(),
};

OrderServiceOpenapiOrderDetailGet$Response$Data$OrderTrace
_$OrderServiceOpenapiOrderDetailGet$Response$Data$OrderTraceFromJson(
  Map<String, dynamic> json,
) => OrderServiceOpenapiOrderDetailGet$Response$Data$OrderTrace(
  tradeOrderId: json['tradeOrderId'] as String?,
  logisticsOrderId: json['logisticsOrderId'] as String?,
  logisticsStatus: json['logisticsStatus'] as String?,
  traceList: (json['traceList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOpenapiOrderDetailGet$Response$Data$OrderTrace$TraceList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  parcelOrderId: json['parcelOrderId'] as String?,
);

Map<String, dynamic>
_$OrderServiceOpenapiOrderDetailGet$Response$Data$OrderTraceToJson(
  OrderServiceOpenapiOrderDetailGet$Response$Data$OrderTrace instance,
) => <String, dynamic>{
  'tradeOrderId': instance.tradeOrderId,
  'logisticsOrderId': instance.logisticsOrderId,
  'logisticsStatus': instance.logisticsStatus,
  'traceList': instance.traceList?.map((e) => e.toJson()).toList(),
  'parcelOrderId': instance.parcelOrderId,
};

OrderServiceOpenapiOrderDetailGet$Response$Data$OrderList$Item
_$OrderServiceOpenapiOrderDetailGet$Response$Data$OrderList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOpenapiOrderDetailGet$Response$Data$OrderList$Item(
  skuList: (json['skuList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOpenapiOrderDetailGet$Response$Data$OrderList$Item$SkuList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  afterSalesList:
      (json['afterSalesList'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
  supplyOrderList: (json['supplyOrderList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOpenapiOrderDetailGet$Response$Data$OrderList$Item$SupplyOrderList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$OrderServiceOpenapiOrderDetailGet$Response$Data$OrderList$ItemToJson(
  OrderServiceOpenapiOrderDetailGet$Response$Data$OrderList$Item instance,
) => <String, dynamic>{
  'skuList': instance.skuList?.map((e) => e.toJson()).toList(),
  'afterSalesList': instance.afterSalesList,
  'supplyOrderList': instance.supplyOrderList?.map((e) => e.toJson()).toList(),
};

OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item(
  baseInfo: json['baseInfo'] == null
      ? null
      : OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$BaseInfo.fromJson(
          json['baseInfo'] as Map<String, dynamic>,
        ),
  userAddress: json['userAddress'] == null
      ? null
      : OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$UserAddress.fromJson(
          json['userAddress'] as Map<String, dynamic>,
        ),
  payMethod: json['payMethod'] == null
      ? null
      : OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$PayMethod.fromJson(
          json['payMethod'] as Map<String, dynamic>,
        ),
  payments: json['payments'] == null
      ? null
      : OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$Payments.fromJson(
          json['payments'] as Map<String, dynamic>,
        ),
  orderBillList: (json['orderBillList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderBillList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  parcelOrder: json['parcelOrder'] == null
      ? null
      : OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$ParcelOrder.fromJson(
          json['parcelOrder'] as Map<String, dynamic>,
        ),
  orderTrace: json['orderTrace'] == null
      ? null
      : OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderTrace.fromJson(
          json['orderTrace'] as Map<String, dynamic>,
        ),
  discountInfos: (json['discountInfos'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$DiscountInfos$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  orderList: (json['orderList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$ItemToJson(
  OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item
  instance,
) => <String, dynamic>{
  'baseInfo': instance.baseInfo?.toJson(),
  'userAddress': instance.userAddress?.toJson(),
  'payMethod': instance.payMethod?.toJson(),
  'payments': instance.payments?.toJson(),
  'orderBillList': instance.orderBillList?.map((e) => e.toJson()).toList(),
  'parcelOrder': instance.parcelOrder?.toJson(),
  'orderTrace': instance.orderTrace?.toJson(),
  'discountInfos': instance.discountInfos?.map((e) => e.toJson()).toList(),
  'orderList': instance.orderList?.map((e) => e.toJson()).toList(),
};

OrderServiceOrderCombineDetailGet$Response$Data$BaseInfo
_$OrderServiceOrderCombineDetailGet$Response$Data$BaseInfoFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderCombineDetailGet$Response$Data$BaseInfo(
  userId: json['userId'] as String?,
  orderId: json['orderId'] as String?,
  skuSourceCode: json['skuSourceCode'] as String?,
  parentOrderId: json['parentOrderId'] as String?,
  status: (json['status'] as num?)?.toDouble(),
  frontStatus: (json['frontStatus'] as num?)?.toDouble(),
  statusContent: json['statusContent'] as String?,
  orderStatus: (json['orderStatus'] as num?)?.toDouble(),
  evaluateStatus: (json['evaluateStatus'] as num?)?.toDouble(),
  timeoutPeriod: (json['timeoutPeriod'] as num?)?.toDouble(),
  createTime: (json['createTime'] as num?)?.toDouble(),
  leftTime: (json['leftTime'] as num?)?.toDouble(),
  title: json['title'] as String?,
  subTitle: json['subTitle'] as String?,
  operates:
      (json['operates'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      [],
  description: json['description'] as String?,
  paySuccessDescription: json['paySuccessDescription'] as String?,
  afterSalesExpressMethod: (json['afterSalesExpressMethod'] as num?)
      ?.toDouble(),
  afterSalesState: (json['afterSalesState'] as num?)?.toDouble(),
  remark: json['remark'] as String?,
  remarkImages: json['remarkImages'] as String?,
  supportOnlineAfterSales: (json['supportOnlineAfterSales'] as num?)
      ?.toDouble(),
  receiptPdfLink: json['receiptPdfLink'] as String?,
  afterSalesSupport: json['afterSalesSupport'] as String?,
  tenantCode: json['tenantCode'] as String?,
  shippingCountry: json['shippingCountry'] as String?,
  payTime: (json['payTime'] as num?)?.toDouble(),
  afterSales: json['afterSales'] as bool?,
  wish: json['wish'] as bool?,
  removePackage: json['removePackage'] as bool?,
  orderFreight: json['orderFreight'] as bool?,
  giveawayGift: (json['giveawayGift'] as num?)?.toInt(),
);

Map<String, dynamic>
_$OrderServiceOrderCombineDetailGet$Response$Data$BaseInfoToJson(
  OrderServiceOrderCombineDetailGet$Response$Data$BaseInfo instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'orderId': instance.orderId,
  'skuSourceCode': instance.skuSourceCode,
  'parentOrderId': instance.parentOrderId,
  'status': instance.status,
  'frontStatus': instance.frontStatus,
  'statusContent': instance.statusContent,
  'orderStatus': instance.orderStatus,
  'evaluateStatus': instance.evaluateStatus,
  'timeoutPeriod': instance.timeoutPeriod,
  'createTime': instance.createTime,
  'leftTime': instance.leftTime,
  'title': instance.title,
  'subTitle': instance.subTitle,
  'operates': instance.operates,
  'description': instance.description,
  'paySuccessDescription': instance.paySuccessDescription,
  'afterSalesExpressMethod': instance.afterSalesExpressMethod,
  'afterSalesState': instance.afterSalesState,
  'remark': instance.remark,
  'remarkImages': instance.remarkImages,
  'supportOnlineAfterSales': instance.supportOnlineAfterSales,
  'receiptPdfLink': instance.receiptPdfLink,
  'afterSalesSupport': instance.afterSalesSupport,
  'tenantCode': instance.tenantCode,
  'shippingCountry': instance.shippingCountry,
  'payTime': instance.payTime,
  'afterSales': instance.afterSales,
  'wish': instance.wish,
  'removePackage': instance.removePackage,
  'orderFreight': instance.orderFreight,
  'giveawayGift': instance.giveawayGift,
};

OrderServiceOrderCombineDetailGet$Response$Data$ParcelOrder
_$OrderServiceOrderCombineDetailGet$Response$Data$ParcelOrderFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderCombineDetailGet$Response$Data$ParcelOrder(
  parcelOrderId: json['parcelOrderId'] as String?,
  parcelStatus: json['parcelStatus'] as String?,
  parcelStatusDesc: json['parcelStatusDesc'] as String?,
  createTime: (json['createTime'] as num?)?.toDouble(),
  warehouseCode: json['warehouseCode'] as String?,
  warehouseName: json['warehouseName'] as String?,
  freight: json['freight'] as String?,
  freightCurrency: json['freightCurrency'] == null
      ? null
      : OrderServiceOrderCombineDetailGet$Response$Data$ParcelOrder$FreightCurrency.fromJson(
          json['freightCurrency'] as Map<String, dynamic>,
        ),
  lastMileMailNo: json['lastMileMailNo'],
  lastMileCompanyCode: json['lastMileCompanyCode'],
  lastMileCompanyName: json['lastMileCompanyName'],
  parcelProductDTOList: (json['parcelProductDTOList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderCombineDetailGet$Response$Data$ParcelOrder$ParcelProductDTOList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  buyerOperates:
      (json['buyerOperates'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
  freightCompensate: json['freightCompensate'] == null
      ? null
      : OrderServiceOrderCombineDetailGet$Response$Data$ParcelOrder$FreightCompensate.fromJson(
          json['freightCompensate'] as Map<String, dynamic>,
        ),
  solutionCode: json['solutionCode'] as String?,
  actualFreight: json['actualFreight'] as String?,
  actualFreightCurrency: json['actualFreightCurrency'] as String?,
  targetFreightCouponDiscountAmount:
      json['targetFreightCouponDiscountAmount'] as String?,
  targetFreightCouponDiscountCurrency:
      json['targetFreightCouponDiscountCurrency'] as String?,
  targetFreight: json['targetFreight'] as String?,
  targetFreightCurrency: json['targetFreightCurrency'] == null
      ? null
      : OrderServiceOrderCombineDetailGet$Response$Data$ParcelOrder$TargetFreightCurrency.fromJson(
          json['targetFreightCurrency'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$OrderServiceOrderCombineDetailGet$Response$Data$ParcelOrderToJson(
  OrderServiceOrderCombineDetailGet$Response$Data$ParcelOrder instance,
) => <String, dynamic>{
  'parcelOrderId': instance.parcelOrderId,
  'parcelStatus': instance.parcelStatus,
  'parcelStatusDesc': instance.parcelStatusDesc,
  'createTime': instance.createTime,
  'warehouseCode': instance.warehouseCode,
  'warehouseName': instance.warehouseName,
  'freight': instance.freight,
  'freightCurrency': instance.freightCurrency?.toJson(),
  'lastMileMailNo': instance.lastMileMailNo,
  'lastMileCompanyCode': instance.lastMileCompanyCode,
  'lastMileCompanyName': instance.lastMileCompanyName,
  'parcelProductDTOList': instance.parcelProductDTOList
      ?.map((e) => e.toJson())
      .toList(),
  'buyerOperates': instance.buyerOperates,
  'freightCompensate': instance.freightCompensate?.toJson(),
  'solutionCode': instance.solutionCode,
  'actualFreight': instance.actualFreight,
  'actualFreightCurrency': instance.actualFreightCurrency,
  'targetFreightCouponDiscountAmount':
      instance.targetFreightCouponDiscountAmount,
  'targetFreightCouponDiscountCurrency':
      instance.targetFreightCouponDiscountCurrency,
  'targetFreight': instance.targetFreight,
  'targetFreightCurrency': instance.targetFreightCurrency?.toJson(),
};

OrderServiceOrderCombineDetailGet$Response$Data$OrderTrace
_$OrderServiceOrderCombineDetailGet$Response$Data$OrderTraceFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderCombineDetailGet$Response$Data$OrderTrace(
  tradeOrderId: json['tradeOrderId'] as String?,
  logisticsOrderId: json['logisticsOrderId'] as String?,
  logisticsStatus: json['logisticsStatus'] as String?,
  traceList: (json['traceList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderCombineDetailGet$Response$Data$OrderTrace$TraceList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  parcelOrderId: json['parcelOrderId'] as String?,
  groupTraceList: (json['groupTraceList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderCombineDetailGet$Response$Data$OrderTrace$GroupTraceList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$OrderServiceOrderCombineDetailGet$Response$Data$OrderTraceToJson(
  OrderServiceOrderCombineDetailGet$Response$Data$OrderTrace instance,
) => <String, dynamic>{
  'tradeOrderId': instance.tradeOrderId,
  'logisticsOrderId': instance.logisticsOrderId,
  'logisticsStatus': instance.logisticsStatus,
  'traceList': instance.traceList?.map((e) => e.toJson()).toList(),
  'parcelOrderId': instance.parcelOrderId,
  'groupTraceList': instance.groupTraceList?.map((e) => e.toJson()).toList(),
};

OrderServiceOrderGetOrderTraceGet$Response$Data$TraceList$Item
_$OrderServiceOrderGetOrderTraceGet$Response$Data$TraceList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderGetOrderTraceGet$Response$Data$TraceList$Item(
  id: (json['id'] as num?)?.toDouble(),
  frontCode: json['frontCode'] as String?,
  icon: json['icon'] as String?,
  traceMessage: json['traceMessage'] as String?,
  time: (json['time'] as num?)?.toDouble(),
  lastMileMailNo: json['lastMileMailNo'],
  lastMileMailNoLink: json['lastMileMailNoLink'] as String?,
  lastMileMailNoTitle: json['lastMileMailNoTitle'] as String?,
  traceStatus: json['traceStatus'] as String?,
  frontTitle: json['frontTitle'] as String?,
  frontTitleCode: json['frontTitleCode'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderGetOrderTraceGet$Response$Data$TraceList$ItemToJson(
  OrderServiceOrderGetOrderTraceGet$Response$Data$TraceList$Item instance,
) => <String, dynamic>{
  'id': instance.id,
  'frontCode': instance.frontCode,
  'icon': instance.icon,
  'traceMessage': instance.traceMessage,
  'time': instance.time,
  'lastMileMailNo': instance.lastMileMailNo,
  'lastMileMailNoLink': instance.lastMileMailNoLink,
  'lastMileMailNoTitle': instance.lastMileMailNoTitle,
  'traceStatus': instance.traceStatus,
  'frontTitle': instance.frontTitle,
  'frontTitleCode': instance.frontTitleCode,
};

OrderServiceCartListGet$Response$Data$List$Item
_$OrderServiceCartListGet$Response$Data$List$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceCartListGet$Response$Data$List$Item(
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceCartListGet$Response$Data$List$Item$Records$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  productCode: json['productCode'] as String?,
  totalWeight: json['totalWeight'] as String?,
  weightUnit: json['weightUnit'] as String?,
  skuSourceCode: json['skuSourceCode'] as String?,
  skuSourceTitle: json['skuSourceTitle'] as String?,
  orderFreight: json['orderFreight'] as bool?,
  orderFreightUrl: json['orderFreightUrl'] as String?,
  billDescription: json['billDescription'] as String?,
  billSchema: json['billSchema'] as String?,
);

Map<String, dynamic> _$OrderServiceCartListGet$Response$Data$List$ItemToJson(
  OrderServiceCartListGet$Response$Data$List$Item instance,
) => <String, dynamic>{
  'records': instance.records?.map((e) => e.toJson()).toList(),
  'productCode': instance.productCode,
  'totalWeight': instance.totalWeight,
  'weightUnit': instance.weightUnit,
  'skuSourceCode': instance.skuSourceCode,
  'skuSourceTitle': instance.skuSourceTitle,
  'orderFreight': instance.orderFreight,
  'orderFreightUrl': instance.orderFreightUrl,
  'billDescription': instance.billDescription,
  'billSchema': instance.billSchema,
};

OrderServiceCartPricingPost$Response$Data$SkuQuantityDTOList$Item
_$OrderServiceCartPricingPost$Response$Data$SkuQuantityDTOList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceCartPricingPost$Response$Data$SkuQuantityDTOList$Item(
  skuCode: json['skuCode'] as String?,
  quantity: (json['quantity'] as num?)?.toDouble(),
  price: json['price'],
  inviteCode: json['inviteCode'],
  createTime: json['createTime'],
  remark: json['remark'],
  skuImg: json['skuImg'],
);

Map<String, dynamic>
_$OrderServiceCartPricingPost$Response$Data$SkuQuantityDTOList$ItemToJson(
  OrderServiceCartPricingPost$Response$Data$SkuQuantityDTOList$Item instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'quantity': instance.quantity,
  'price': instance.price,
  'inviteCode': instance.inviteCode,
  'createTime': instance.createTime,
  'remark': instance.remark,
  'skuImg': instance.skuImg,
};

OrderServiceCartPricingPost$Response$Data$ContentInfo
_$OrderServiceCartPricingPost$Response$Data$ContentInfoFromJson(
  Map<String, dynamic> json,
) => OrderServiceCartPricingPost$Response$Data$ContentInfo(
  rewardMarketing: json['rewardMarketing'] as String?,
  payFreightNotice: json['payFreightNotice'] as String?,
);

Map<String, dynamic>
_$OrderServiceCartPricingPost$Response$Data$ContentInfoToJson(
  OrderServiceCartPricingPost$Response$Data$ContentInfo instance,
) => <String, dynamic>{
  'rewardMarketing': instance.rewardMarketing,
  'payFreightNotice': instance.payFreightNotice,
};

OrderServiceCartNoAuthPricingPost$Response$Data$SkuQuantityDTOList$Item
_$OrderServiceCartNoAuthPricingPost$Response$Data$SkuQuantityDTOList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceCartNoAuthPricingPost$Response$Data$SkuQuantityDTOList$Item(
  skuCode: json['skuCode'] as String?,
  quantity: (json['quantity'] as num?)?.toDouble(),
  price: json['price'],
  inviteCode: json['inviteCode'],
  createTime: json['createTime'],
  remark: json['remark'],
  skuImg: json['skuImg'],
);

Map<String, dynamic>
_$OrderServiceCartNoAuthPricingPost$Response$Data$SkuQuantityDTOList$ItemToJson(
  OrderServiceCartNoAuthPricingPost$Response$Data$SkuQuantityDTOList$Item
  instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'quantity': instance.quantity,
  'price': instance.price,
  'inviteCode': instance.inviteCode,
  'createTime': instance.createTime,
  'remark': instance.remark,
  'skuImg': instance.skuImg,
};

OrderServiceCartNoAuthPricingPost$Response$Data$ContentInfo
_$OrderServiceCartNoAuthPricingPost$Response$Data$ContentInfoFromJson(
  Map<String, dynamic> json,
) => OrderServiceCartNoAuthPricingPost$Response$Data$ContentInfo(
  rewardMarketing: json['rewardMarketing'] as String?,
);

Map<String, dynamic>
_$OrderServiceCartNoAuthPricingPost$Response$Data$ContentInfoToJson(
  OrderServiceCartNoAuthPricingPost$Response$Data$ContentInfo instance,
) => <String, dynamic>{'rewardMarketing': instance.rewardMarketing};

OrderServiceOrderAppListGet$Response$Data$Records$Item$OrderSkuList$Item
_$OrderServiceOrderAppListGet$Response$Data$Records$Item$OrderSkuList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppListGet$Response$Data$Records$Item$OrderSkuList$Item(
  productName: json['productName'] as String?,
  skuCode: json['skuCode'] as String?,
  productCode: json['productCode'] as String?,
  image: json['image'] as String?,
  sellPrice: json['sellPrice'] as String?,
  sellCur: json['sellCur'] as String?,
  totalPrice: json['totalPrice'] as String?,
  targetSellPrice: json['targetSellPrice'] as String?,
  targetSellCur: json['targetSellCur'] as String?,
  targetTotalPrice: json['targetTotalPrice'] as String?,
  targetSkuDiscountPrice: json['targetSkuDiscountPrice'] as String?,
  targetSkuFinalPrice: json['targetSkuFinalPrice'] as String?,
  targetTotalFinalPrice: json['targetTotalFinalPrice'] as String?,
  remark: json['remark'] as String?,
  quantity: (json['quantity'] as num?)?.toDouble(),
  skuSpecValues: (json['skuSpecValues'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderAppListGet$Response$Data$Records$Item$OrderSkuList$Item$SkuSpecValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  isReturned: json['isReturned'] as bool?,
  targetOriginPrice: json['targetOriginPrice'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderAppListGet$Response$Data$Records$Item$OrderSkuList$ItemToJson(
  OrderServiceOrderAppListGet$Response$Data$Records$Item$OrderSkuList$Item
  instance,
) => <String, dynamic>{
  'productName': instance.productName,
  'skuCode': instance.skuCode,
  'productCode': instance.productCode,
  'image': instance.image,
  'sellPrice': instance.sellPrice,
  'sellCur': instance.sellCur,
  'totalPrice': instance.totalPrice,
  'targetSellPrice': instance.targetSellPrice,
  'targetSellCur': instance.targetSellCur,
  'targetTotalPrice': instance.targetTotalPrice,
  'targetSkuDiscountPrice': instance.targetSkuDiscountPrice,
  'targetSkuFinalPrice': instance.targetSkuFinalPrice,
  'targetTotalFinalPrice': instance.targetTotalFinalPrice,
  'remark': instance.remark,
  'quantity': instance.quantity,
  'skuSpecValues': instance.skuSpecValues?.map((e) => e.toJson()).toList(),
  'isReturned': instance.isReturned,
  'targetOriginPrice': instance.targetOriginPrice,
};

OrderServiceOrderAppListGet$Response$Data$Records$Item$SupplyOrderList$Item
_$OrderServiceOrderAppListGet$Response$Data$Records$Item$SupplyOrderList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppListGet$Response$Data$Records$Item$SupplyOrderList$Item(
  skuCode: json['skuCode'] as String?,
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  imageUrl: json['imageUrl'],
  quantity: (json['quantity'] as num?)?.toDouble(),
  weight: json['weight'] as String?,
  length: json['length'] as String?,
  width: json['width'] as String?,
  height: json['height'] as String?,
  inspectImageUrlList:
      (json['inspectImageUrlList'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
  secretKeyList: (json['secretKeyList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderAppListGet$Response$Data$Records$Item$SupplyOrderList$Item$SecretKeyList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$OrderServiceOrderAppListGet$Response$Data$Records$Item$SupplyOrderList$ItemToJson(
  OrderServiceOrderAppListGet$Response$Data$Records$Item$SupplyOrderList$Item
  instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'productCode': instance.productCode,
  'productName': instance.productName,
  'imageUrl': instance.imageUrl,
  'quantity': instance.quantity,
  'weight': instance.weight,
  'length': instance.length,
  'width': instance.width,
  'height': instance.height,
  'inspectImageUrlList': instance.inspectImageUrlList,
  'secretKeyList': instance.secretKeyList?.map((e) => e.toJson()).toList(),
};

OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder
_$OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrderFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder(
  parcelOrderId: json['parcelOrderId'] as String?,
  parcelStatus: json['parcelStatus'] as String?,
  parcelStatusDesc: json['parcelStatusDesc'] as String?,
  createTime: (json['createTime'] as num?)?.toDouble(),
  warehouseCode: json['warehouseCode'] as String?,
  warehouseName: json['warehouseName'] as String?,
  solutionCode: json['solutionCode'] as String?,
  freight: json['freight'] as String?,
  freightCurrency: json['freightCurrency'] == null
      ? null
      : OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$FreightCurrency.fromJson(
          json['freightCurrency'] as Map<String, dynamic>,
        ),
  targetFreight: json['targetFreight'] as String?,
  targetFreightCurrency: json['targetFreightCurrency'] == null
      ? null
      : OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$TargetFreightCurrency.fromJson(
          json['targetFreightCurrency'] as Map<String, dynamic>,
        ),
  actualFreight: json['actualFreight'] as String?,
  actualFreightCurrency: json['actualFreightCurrency'] as String?,
  targetActualFreight: json['targetActualFreight'] as String?,
  targetActualFreightCurrency: json['targetActualFreightCurrency'] as String?,
  freightCouponDiscountAmount: json['freightCouponDiscountAmount'] as String?,
  targetFreightCouponDiscountAmount:
      json['targetFreightCouponDiscountAmount'] as String?,
  freightCouponDiscountCurrency: json['freightCouponDiscountCurrency'] == null
      ? null
      : OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$FreightCouponDiscountCurrency.fromJson(
          json['freightCouponDiscountCurrency'] as Map<String, dynamic>,
        ),
  targetFreightCouponDiscountCurrency:
      json['targetFreightCouponDiscountCurrency'] as String?,
  lastMileMailNo: json['lastMileMailNo'] as String?,
  lastMileCompanyCode: json['lastMileCompanyCode'] as String?,
  lastMileCompanyName: json['lastMileCompanyName'] as String?,
  receiverAddress: json['receiverAddress'] == null
      ? null
      : OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$ReceiverAddress.fromJson(
          json['receiverAddress'] as Map<String, dynamic>,
        ),
  parcelProductDTOList: (json['parcelProductDTOList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$ParcelProductDTOList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  buyerOperates:
      (json['buyerOperates'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
);

Map<String, dynamic>
_$OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrderToJson(
  OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder instance,
) => <String, dynamic>{
  'parcelOrderId': instance.parcelOrderId,
  'parcelStatus': instance.parcelStatus,
  'parcelStatusDesc': instance.parcelStatusDesc,
  'createTime': instance.createTime,
  'warehouseCode': instance.warehouseCode,
  'warehouseName': instance.warehouseName,
  'solutionCode': instance.solutionCode,
  'freight': instance.freight,
  'freightCurrency': instance.freightCurrency?.toJson(),
  'targetFreight': instance.targetFreight,
  'targetFreightCurrency': instance.targetFreightCurrency?.toJson(),
  'actualFreight': instance.actualFreight,
  'actualFreightCurrency': instance.actualFreightCurrency,
  'targetActualFreight': instance.targetActualFreight,
  'targetActualFreightCurrency': instance.targetActualFreightCurrency,
  'freightCouponDiscountAmount': instance.freightCouponDiscountAmount,
  'targetFreightCouponDiscountAmount':
      instance.targetFreightCouponDiscountAmount,
  'freightCouponDiscountCurrency': instance.freightCouponDiscountCurrency
      ?.toJson(),
  'targetFreightCouponDiscountCurrency':
      instance.targetFreightCouponDiscountCurrency,
  'lastMileMailNo': instance.lastMileMailNo,
  'lastMileCompanyCode': instance.lastMileCompanyCode,
  'lastMileCompanyName': instance.lastMileCompanyName,
  'receiverAddress': instance.receiverAddress?.toJson(),
  'parcelProductDTOList': instance.parcelProductDTOList
      ?.map((e) => e.toJson())
      .toList(),
  'buyerOperates': instance.buyerOperates,
};

OrderServiceOrderAppListGet$Response$Data$Records$Item$OrderBillList$Item
_$OrderServiceOrderAppListGet$Response$Data$Records$Item$OrderBillList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppListGet$Response$Data$Records$Item$OrderBillList$Item(
  billId: json['billId'] as String?,
  status: (json['status'] as num?)?.toDouble(),
  targetTotalPrice: json['targetTotalPrice'] as String?,
  targetCurrency: json['targetCurrency'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderAppListGet$Response$Data$Records$Item$OrderBillList$ItemToJson(
  OrderServiceOrderAppListGet$Response$Data$Records$Item$OrderBillList$Item
  instance,
) => <String, dynamic>{
  'billId': instance.billId,
  'status': instance.status,
  'targetTotalPrice': instance.targetTotalPrice,
  'targetCurrency': instance.targetCurrency,
};

OrderServiceOrderAppListGet$Response$Data$Records$Item$UserAddress
_$OrderServiceOrderAppListGet$Response$Data$Records$Item$UserAddressFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppListGet$Response$Data$Records$Item$UserAddress(
  country: json['country'] as String?,
  countryCode: json['countryCode'] as String?,
  state: json['state'] as String?,
  stateCode: json['stateCode'] as String?,
  city: json['city'] as String?,
  cityCode: json['cityCode'] as String?,
  street: json['street'] as String?,
  apartment: json['apartment'] as String?,
  address: json['address'] as String?,
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  phoneNumber: json['phoneNumber'] as String?,
  zipCode: json['zipCode'] as String?,
  id: (json['id'] as num?)?.toDouble(),
);

Map<String, dynamic>
_$OrderServiceOrderAppListGet$Response$Data$Records$Item$UserAddressToJson(
  OrderServiceOrderAppListGet$Response$Data$Records$Item$UserAddress instance,
) => <String, dynamic>{
  'country': instance.country,
  'countryCode': instance.countryCode,
  'state': instance.state,
  'stateCode': instance.stateCode,
  'city': instance.city,
  'cityCode': instance.cityCode,
  'street': instance.street,
  'apartment': instance.apartment,
  'address': instance.address,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'phoneNumber': instance.phoneNumber,
  'zipCode': instance.zipCode,
  'id': instance.id,
};

OrderServiceOrderAppDetailGet$Response$Data$Payments$PaymentSubjoins$Item
_$OrderServiceOrderAppDetailGet$Response$Data$Payments$PaymentSubjoins$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppDetailGet$Response$Data$Payments$PaymentSubjoins$Item(
  type: json['type'] as String?,
  title: json['title'] as String?,
  description: json['description'] == null
      ? null
      : OrderServiceOrderAppDetailGet$Response$Data$Payments$PaymentSubjoins$Item$Description.fromJson(
          json['description'] as Map<String, dynamic>,
        ),
  lineContent: json['lineContent'] as String?,
  content: json['content'] as String?,
  amount: json['amount'] as String?,
  contentColor: json['contentColor'] as String?,
  showIcon: json['showIcon'] as bool?,
  expandIcon: json['expandIcon'] as bool?,
  showQuestionIcon: json['showQuestionIcon'] as bool?,
  questionIconContent: json['questionIconContent'] as String?,
  subList:
      (json['subList'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
      [],
);

Map<String, dynamic>
_$OrderServiceOrderAppDetailGet$Response$Data$Payments$PaymentSubjoins$ItemToJson(
  OrderServiceOrderAppDetailGet$Response$Data$Payments$PaymentSubjoins$Item
  instance,
) => <String, dynamic>{
  'type': instance.type,
  'title': instance.title,
  'description': instance.description?.toJson(),
  'lineContent': instance.lineContent,
  'content': instance.content,
  'amount': instance.amount,
  'contentColor': instance.contentColor,
  'showIcon': instance.showIcon,
  'expandIcon': instance.expandIcon,
  'showQuestionIcon': instance.showQuestionIcon,
  'questionIconContent': instance.questionIconContent,
  'subList': instance.subList,
};

OrderServiceOrderAppDetailGet$Response$Data$ParcelOrder$FreightCurrency
_$OrderServiceOrderAppDetailGet$Response$Data$ParcelOrder$FreightCurrencyFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppDetailGet$Response$Data$ParcelOrder$FreightCurrency(
  name: json['name'] as String?,
  symbol: json['symbol'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderAppDetailGet$Response$Data$ParcelOrder$FreightCurrencyToJson(
  OrderServiceOrderAppDetailGet$Response$Data$ParcelOrder$FreightCurrency
  instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

OrderServiceOrderAppDetailGet$Response$Data$ParcelOrder$ParcelProductDTOList$Item
_$OrderServiceOrderAppDetailGet$Response$Data$ParcelOrder$ParcelProductDTOList$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderAppDetailGet$Response$Data$ParcelOrder$ParcelProductDTOList$Item(
      skuCode: json['skuCode'] as String?,
      productCode: json['productCode'] as String?,
      productName: json['productName'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderAppDetailGet$Response$Data$ParcelOrder$ParcelProductDTOList$ItemToJson(
  OrderServiceOrderAppDetailGet$Response$Data$ParcelOrder$ParcelProductDTOList$Item
  instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'productCode': instance.productCode,
  'productName': instance.productName,
  'quantity': instance.quantity,
  'imageUrl': instance.imageUrl,
};

OrderServiceOrderAppDetailGet$Response$Data$ParcelOrder$FreightCompensate
_$OrderServiceOrderAppDetailGet$Response$Data$ParcelOrder$FreightCompensateFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppDetailGet$Response$Data$ParcelOrder$FreightCompensate(
  compensateBillId: json['compensateBillId'] as String?,
  compensatePrice: json['compensatePrice'] as String?,
  compensatePriceCurrency: json['compensatePriceCurrency'] as String?,
  compensateReason: json['compensateReason'] as String?,
  targetCompensatePrice: json['targetCompensatePrice'] as String?,
  targetCompensatePriceCurrency:
      json['targetCompensatePriceCurrency'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderAppDetailGet$Response$Data$ParcelOrder$FreightCompensateToJson(
  OrderServiceOrderAppDetailGet$Response$Data$ParcelOrder$FreightCompensate
  instance,
) => <String, dynamic>{
  'compensateBillId': instance.compensateBillId,
  'compensatePrice': instance.compensatePrice,
  'compensatePriceCurrency': instance.compensatePriceCurrency,
  'compensateReason': instance.compensateReason,
  'targetCompensatePrice': instance.targetCompensatePrice,
  'targetCompensatePriceCurrency': instance.targetCompensatePriceCurrency,
};

OrderServiceOrderAppDetailGet$Response$Data$ParcelOrder$TargetFreightCurrency
_$OrderServiceOrderAppDetailGet$Response$Data$ParcelOrder$TargetFreightCurrencyFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderAppDetailGet$Response$Data$ParcelOrder$TargetFreightCurrency(
      symbol: json['symbol'] as String?,
      currency: json['currency'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderAppDetailGet$Response$Data$ParcelOrder$TargetFreightCurrencyToJson(
  OrderServiceOrderAppDetailGet$Response$Data$ParcelOrder$TargetFreightCurrency
  instance,
) => <String, dynamic>{
  'symbol': instance.symbol,
  'currency': instance.currency,
};

OrderServiceOrderAppDetailGet$Response$Data$OrderTrace$TraceList$Item
_$OrderServiceOrderAppDetailGet$Response$Data$OrderTrace$TraceList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppDetailGet$Response$Data$OrderTrace$TraceList$Item(
  id: (json['id'] as num?)?.toDouble(),
  frontCode: json['frontCode'] as String?,
  icon: json['icon'] as String?,
  traceMessage: json['traceMessage'] as String?,
  time: (json['time'] as num?)?.toDouble(),
  lastMileMailNo: json['lastMileMailNo'] as String?,
  lastMileMailNoLink: json['lastMileMailNoLink'] as String?,
  lastMileMailNoTitle: json['lastMileMailNoTitle'] as String?,
  traceStatus: json['traceStatus'] as String?,
  logisticsOrderId: json['logisticsOrderId'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderAppDetailGet$Response$Data$OrderTrace$TraceList$ItemToJson(
  OrderServiceOrderAppDetailGet$Response$Data$OrderTrace$TraceList$Item
  instance,
) => <String, dynamic>{
  'id': instance.id,
  'frontCode': instance.frontCode,
  'icon': instance.icon,
  'traceMessage': instance.traceMessage,
  'time': instance.time,
  'lastMileMailNo': instance.lastMileMailNo,
  'lastMileMailNoLink': instance.lastMileMailNoLink,
  'lastMileMailNoTitle': instance.lastMileMailNoTitle,
  'traceStatus': instance.traceStatus,
  'logisticsOrderId': instance.logisticsOrderId,
};

OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item$SkuList$Item
_$OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item$SkuList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item$SkuList$Item(
  productName: json['productName'] as String?,
  productCode: json['productCode'] as String?,
  skuCode: json['skuCode'] as String?,
  image: json['image'] as String?,
  targetOriginPrice: json['targetOriginPrice'] as String?,
  targetOriginTotalPrice: json['targetOriginTotalPrice'] as String?,
  sellPrice: json['sellPrice'] as String?,
  targetSellPrice: json['targetSellPrice'] as String?,
  totalPrice: json['totalPrice'] as String?,
  targetTotalPrice: json['targetTotalPrice'] as String?,
  targetSkuDiscountPrice: json['targetSkuDiscountPrice'] as String?,
  targetTotalFinalPrice: json['targetTotalFinalPrice'] as String?,
  targetSkuFinalPrice: json['targetSkuFinalPrice'] as String?,
  currency: json['currency'] as String?,
  targetCurrency: json['targetCurrency'] as String?,
  quantity: (json['quantity'] as num?)?.toDouble(),
  remark: json['remark'] as String?,
  skuSpecValues: (json['skuSpecValues'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item$SkuList$Item$SkuSpecValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  isReturned: json['isReturned'] as bool?,
  skuSourceCode: json['skuSourceCode'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item$SkuList$ItemToJson(
  OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item$SkuList$Item
  instance,
) => <String, dynamic>{
  'productName': instance.productName,
  'productCode': instance.productCode,
  'skuCode': instance.skuCode,
  'image': instance.image,
  'targetOriginPrice': instance.targetOriginPrice,
  'targetOriginTotalPrice': instance.targetOriginTotalPrice,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'totalPrice': instance.totalPrice,
  'targetTotalPrice': instance.targetTotalPrice,
  'targetSkuDiscountPrice': instance.targetSkuDiscountPrice,
  'targetTotalFinalPrice': instance.targetTotalFinalPrice,
  'targetSkuFinalPrice': instance.targetSkuFinalPrice,
  'currency': instance.currency,
  'targetCurrency': instance.targetCurrency,
  'quantity': instance.quantity,
  'remark': instance.remark,
  'skuSpecValues': instance.skuSpecValues?.map((e) => e.toJson()).toList(),
  'isReturned': instance.isReturned,
  'skuSourceCode': instance.skuSourceCode,
};

OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item$SourceOption
_$OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item$SourceOptionFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item$SourceOption(
  canBatch: (json['canBatch'] as num?)?.toInt(),
  canPayFreight: (json['canPayFreight'] as num?)?.toInt(),
  canRemovePackage: (json['canRemovePackage'] as num?)?.toInt(),
  parcelBatch: json['parcelBatch'] as bool?,
  removePackage: json['removePackage'] as bool?,
  orderFreight: json['orderFreight'] as bool?,
  orderFreightUrl: json['orderFreightUrl'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item$SourceOptionToJson(
  OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item$SourceOption
  instance,
) => <String, dynamic>{
  'canBatch': instance.canBatch,
  'canPayFreight': instance.canPayFreight,
  'canRemovePackage': instance.canRemovePackage,
  'parcelBatch': instance.parcelBatch,
  'removePackage': instance.removePackage,
  'orderFreight': instance.orderFreight,
  'orderFreightUrl': instance.orderFreightUrl,
};

OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item$LogisticsInfo
_$OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item$LogisticsInfoFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item$LogisticsInfo(
  freightContent: json['freightContent'] as String?,
  expressionDateContent: json['expressionDateContent'] as String?,
  expressionDateHtml: json['expressionDateHtml'] as String?,
  targetFreight: json['targetFreight'] as String?,
  orderFreightUrl: json['orderFreightUrl'] as String?,
  freightTag: json['freightTag'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item$LogisticsInfoToJson(
  OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item$LogisticsInfo
  instance,
) => <String, dynamic>{
  'freightContent': instance.freightContent,
  'expressionDateContent': instance.expressionDateContent,
  'expressionDateHtml': instance.expressionDateHtml,
  'targetFreight': instance.targetFreight,
  'orderFreightUrl': instance.orderFreightUrl,
  'freightTag': instance.freightTag,
};

OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item$SupplyOrderList$Item
_$OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item$SupplyOrderList$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item$SupplyOrderList$Item(
      skuCode: json['skuCode'] as String?,
      productCode: json['productCode'] as String?,
      productName: json['productName'] as String?,
      imageUrl: json['imageUrl'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      weight: json['weight'] as String?,
      length: json['length'] as String?,
      width: json['width'] as String?,
      height: json['height'] as String?,
      inspectImageUrlList:
          (json['inspectImageUrlList'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      secretKeyList: json['secretKeyList'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item$SupplyOrderList$ItemToJson(
  OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item$SupplyOrderList$Item
  instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'productCode': instance.productCode,
  'productName': instance.productName,
  'imageUrl': instance.imageUrl,
  'quantity': instance.quantity,
  'weight': instance.weight,
  'length': instance.length,
  'width': instance.width,
  'height': instance.height,
  'inspectImageUrlList': instance.inspectImageUrlList,
  'secretKeyList': instance.secretKeyList,
};

OrderServiceOrderConfirmPost$Response$Data$Pricing$TaxLines$Item
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$TaxLines$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderConfirmPost$Response$Data$Pricing$TaxLines$Item(
  type: json['type'] as String?,
  title: json['title'] as String?,
  tax: json['tax'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$TaxLines$ItemToJson(
  OrderServiceOrderConfirmPost$Response$Data$Pricing$TaxLines$Item instance,
) => <String, dynamic>{
  'type': instance.type,
  'title': instance.title,
  'tax': instance.tax,
};

OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item(
  skuSourceCode: json['skuSourceCode'] as String?,
  recommendSolution: json['recommendSolution'] == null
      ? null
      : OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$RecommendSolution.fromJson(
          json['recommendSolution'] as Map<String, dynamic>,
        ),
  lastMileList: (json['lastMileList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$ItemToJson(
  OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item instance,
) => <String, dynamic>{
  'skuSourceCode': instance.skuSourceCode,
  'recommendSolution': instance.recommendSolution?.toJson(),
  'lastMileList': instance.lastMileList?.map((e) => e.toJson()).toList(),
};

OrderServiceOrderConfirmPost$Response$Data$Pricing$Giveaway$Item
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$Giveaway$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderConfirmPost$Response$Data$Pricing$Giveaway$Item(
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderConfirmPost$Response$Data$Pricing$Giveaway$Item$Records$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  skuSourceCode: json['skuSourceCode'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$Giveaway$ItemToJson(
  OrderServiceOrderConfirmPost$Response$Data$Pricing$Giveaway$Item instance,
) => <String, dynamic>{
  'records': instance.records?.map((e) => e.toJson()).toList(),
  'skuSourceCode': instance.skuSourceCode,
};

OrderServiceOrderConfirmPost$Response$Data$Pricing$VoucherMsg
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$VoucherMsgFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderConfirmPost$Response$Data$Pricing$VoucherMsg(
  voucherInfos: (json['voucherInfos'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderConfirmPost$Response$Data$Pricing$VoucherMsg$VoucherInfos$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  descprition: json['descprition'] as String?,
  usedVoucherInfoColor: json['usedVoucherInfoColor'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$VoucherMsgToJson(
  OrderServiceOrderConfirmPost$Response$Data$Pricing$VoucherMsg instance,
) => <String, dynamic>{
  'voucherInfos': instance.voucherInfos?.map((e) => e.toJson()).toList(),
  'descprition': instance.descprition,
  'usedVoucherInfoColor': instance.usedVoucherInfoColor,
};

OrderServiceOrderNoAuthDetailGet$Response$Data$ParcelOrder$FreightCurrency
_$OrderServiceOrderNoAuthDetailGet$Response$Data$ParcelOrder$FreightCurrencyFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderNoAuthDetailGet$Response$Data$ParcelOrder$FreightCurrency(
  name: json['name'] as String?,
  symbol: json['symbol'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderNoAuthDetailGet$Response$Data$ParcelOrder$FreightCurrencyToJson(
  OrderServiceOrderNoAuthDetailGet$Response$Data$ParcelOrder$FreightCurrency
  instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

OrderServiceOrderNoAuthDetailGet$Response$Data$ParcelOrder$ParcelProductDTOList$Item
_$OrderServiceOrderNoAuthDetailGet$Response$Data$ParcelOrder$ParcelProductDTOList$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderNoAuthDetailGet$Response$Data$ParcelOrder$ParcelProductDTOList$Item(
      skuCode: json['skuCode'] as String?,
      productCode: json['productCode'] as String?,
      productName: json['productName'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderNoAuthDetailGet$Response$Data$ParcelOrder$ParcelProductDTOList$ItemToJson(
  OrderServiceOrderNoAuthDetailGet$Response$Data$ParcelOrder$ParcelProductDTOList$Item
  instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'productCode': instance.productCode,
  'productName': instance.productName,
  'quantity': instance.quantity,
  'imageUrl': instance.imageUrl,
};

OrderServiceOrderNoAuthDetailGet$Response$Data$ParcelOrder$FreightCompensate
_$OrderServiceOrderNoAuthDetailGet$Response$Data$ParcelOrder$FreightCompensateFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderNoAuthDetailGet$Response$Data$ParcelOrder$FreightCompensate(
      compensateBillId: json['compensateBillId'] as String?,
      compensatePrice: json['compensatePrice'] as String?,
      compensatePriceCurrency: json['compensatePriceCurrency'] as String?,
      compensateReason: json['compensateReason'] as String?,
      targetCompensatePrice: json['targetCompensatePrice'] as String?,
      targetCompensatePriceCurrency:
          json['targetCompensatePriceCurrency'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderNoAuthDetailGet$Response$Data$ParcelOrder$FreightCompensateToJson(
  OrderServiceOrderNoAuthDetailGet$Response$Data$ParcelOrder$FreightCompensate
  instance,
) => <String, dynamic>{
  'compensateBillId': instance.compensateBillId,
  'compensatePrice': instance.compensatePrice,
  'compensatePriceCurrency': instance.compensatePriceCurrency,
  'compensateReason': instance.compensateReason,
  'targetCompensatePrice': instance.targetCompensatePrice,
  'targetCompensatePriceCurrency': instance.targetCompensatePriceCurrency,
};

OrderServiceOrderNoAuthDetailGet$Response$Data$ParcelOrder$TargetFreightCurrency
_$OrderServiceOrderNoAuthDetailGet$Response$Data$ParcelOrder$TargetFreightCurrencyFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderNoAuthDetailGet$Response$Data$ParcelOrder$TargetFreightCurrency(
      symbol: json['symbol'] as String?,
      currency: json['currency'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderNoAuthDetailGet$Response$Data$ParcelOrder$TargetFreightCurrencyToJson(
  OrderServiceOrderNoAuthDetailGet$Response$Data$ParcelOrder$TargetFreightCurrency
  instance,
) => <String, dynamic>{
  'symbol': instance.symbol,
  'currency': instance.currency,
};

OrderServiceOrderNoAuthDetailGet$Response$Data$OrderTrace$TraceList$Item
_$OrderServiceOrderNoAuthDetailGet$Response$Data$OrderTrace$TraceList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderNoAuthDetailGet$Response$Data$OrderTrace$TraceList$Item(
  id: (json['id'] as num?)?.toDouble(),
  frontCode: json['frontCode'] as String?,
  icon: json['icon'] as String?,
  traceMessage: json['traceMessage'] as String?,
  time: (json['time'] as num?)?.toDouble(),
  lastMileMailNo: json['lastMileMailNo'] as String?,
  lastMileMailNoLink: json['lastMileMailNoLink'] as String?,
  lastMileMailNoTitle: json['lastMileMailNoTitle'] as String?,
  traceStatus: json['traceStatus'] as String?,
  logisticsOrderId: json['logisticsOrderId'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderNoAuthDetailGet$Response$Data$OrderTrace$TraceList$ItemToJson(
  OrderServiceOrderNoAuthDetailGet$Response$Data$OrderTrace$TraceList$Item
  instance,
) => <String, dynamic>{
  'id': instance.id,
  'frontCode': instance.frontCode,
  'icon': instance.icon,
  'traceMessage': instance.traceMessage,
  'time': instance.time,
  'lastMileMailNo': instance.lastMileMailNo,
  'lastMileMailNoLink': instance.lastMileMailNoLink,
  'lastMileMailNoTitle': instance.lastMileMailNoTitle,
  'traceStatus': instance.traceStatus,
  'logisticsOrderId': instance.logisticsOrderId,
};

OrderServiceOrderNoAuthDetailGet$Response$Data$OrderTrace$GroupTraceList$Item
_$OrderServiceOrderNoAuthDetailGet$Response$Data$OrderTrace$GroupTraceList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderNoAuthDetailGet$Response$Data$OrderTrace$GroupTraceList$Item(
  subParcelOrderId: json['subParcelOrderId'] as String?,
  parcelOrderStatus: json['parcelOrderStatus'] as String?,
  lastMileMailNo: json['lastMileMailNo'] as String?,
  lastMileMailNoLink: json['lastMileMailNoLink'] as String?,
  lastMileCompanyName: json['lastMileCompanyName'] as String?,
  lastMileCompanyPhone: json['lastMileCompanyPhone'] as String?,
  lastMileCompanyEmail: json['lastMileCompanyEmail'] as String?,
  traceList: (json['traceList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderNoAuthDetailGet$Response$Data$OrderTrace$GroupTraceList$Item$TraceList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  sequenceTime: (json['sequenceTime'] as num?)?.toInt(),
);

Map<String, dynamic>
_$OrderServiceOrderNoAuthDetailGet$Response$Data$OrderTrace$GroupTraceList$ItemToJson(
  OrderServiceOrderNoAuthDetailGet$Response$Data$OrderTrace$GroupTraceList$Item
  instance,
) => <String, dynamic>{
  'subParcelOrderId': instance.subParcelOrderId,
  'parcelOrderStatus': instance.parcelOrderStatus,
  'lastMileMailNo': instance.lastMileMailNo,
  'lastMileMailNoLink': instance.lastMileMailNoLink,
  'lastMileCompanyName': instance.lastMileCompanyName,
  'lastMileCompanyPhone': instance.lastMileCompanyPhone,
  'lastMileCompanyEmail': instance.lastMileCompanyEmail,
  'traceList': instance.traceList?.map((e) => e.toJson()).toList(),
  'sequenceTime': instance.sequenceTime,
};

OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item$SkuList$Item
_$OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item$SkuList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item$SkuList$Item(
  productName: json['productName'] as String?,
  productCode: json['productCode'] as String?,
  skuCode: json['skuCode'] as String?,
  image: json['image'] as String?,
  targetOriginPrice: json['targetOriginPrice'] as String?,
  targetOriginTotalPrice: json['targetOriginTotalPrice'] as String?,
  sellPrice: json['sellPrice'] as String?,
  targetSellPrice: json['targetSellPrice'] as String?,
  totalPrice: json['totalPrice'] as String?,
  targetTotalPrice: json['targetTotalPrice'] as String?,
  targetSkuDiscountPrice: json['targetSkuDiscountPrice'] as String?,
  targetTotalFinalPrice: json['targetTotalFinalPrice'] as String?,
  targetSkuFinalPrice: json['targetSkuFinalPrice'] as String?,
  currency: json['currency'] as String?,
  targetCurrency: json['targetCurrency'] as String?,
  quantity: (json['quantity'] as num?)?.toDouble(),
  remark: json['remark'] as String?,
  skuSpecValues: (json['skuSpecValues'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item$SkuList$Item$SkuSpecValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  isReturned: json['isReturned'] as bool?,
  skuSourceCode: json['skuSourceCode'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item$SkuList$ItemToJson(
  OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item$SkuList$Item
  instance,
) => <String, dynamic>{
  'productName': instance.productName,
  'productCode': instance.productCode,
  'skuCode': instance.skuCode,
  'image': instance.image,
  'targetOriginPrice': instance.targetOriginPrice,
  'targetOriginTotalPrice': instance.targetOriginTotalPrice,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'totalPrice': instance.totalPrice,
  'targetTotalPrice': instance.targetTotalPrice,
  'targetSkuDiscountPrice': instance.targetSkuDiscountPrice,
  'targetTotalFinalPrice': instance.targetTotalFinalPrice,
  'targetSkuFinalPrice': instance.targetSkuFinalPrice,
  'currency': instance.currency,
  'targetCurrency': instance.targetCurrency,
  'quantity': instance.quantity,
  'remark': instance.remark,
  'skuSpecValues': instance.skuSpecValues?.map((e) => e.toJson()).toList(),
  'isReturned': instance.isReturned,
  'skuSourceCode': instance.skuSourceCode,
};

OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item$SupplyOrderList$Item
_$OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item$SupplyOrderList$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item$SupplyOrderList$Item(
      skuCode: json['skuCode'] as String?,
      productCode: json['productCode'] as String?,
      productName: json['productName'] as String?,
      imageUrl: json['imageUrl'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      weight: json['weight'] as String?,
      length: json['length'] as String?,
      width: json['width'] as String?,
      height: json['height'] as String?,
      inspectImageUrlList:
          (json['inspectImageUrlList'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      secretKeyList: json['secretKeyList'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item$SupplyOrderList$ItemToJson(
  OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item$SupplyOrderList$Item
  instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'productCode': instance.productCode,
  'productName': instance.productName,
  'imageUrl': instance.imageUrl,
  'quantity': instance.quantity,
  'weight': instance.weight,
  'length': instance.length,
  'width': instance.width,
  'height': instance.height,
  'inspectImageUrlList': instance.inspectImageUrlList,
  'secretKeyList': instance.secretKeyList,
};

OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item$SourceOption
_$OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item$SourceOptionFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item$SourceOption(
  canBatch: (json['canBatch'] as num?)?.toInt(),
  canFreightPay: (json['canFreightPay'] as num?)?.toInt(),
  canRemovePackage: (json['canRemovePackage'] as num?)?.toInt(),
  removePackage: json['removePackage'] as bool?,
  orderFreight: json['orderFreight'] as bool?,
  parcelBatch: json['parcelBatch'] as bool?,
);

Map<String, dynamic>
_$OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item$SourceOptionToJson(
  OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item$SourceOption
  instance,
) => <String, dynamic>{
  'canBatch': instance.canBatch,
  'canFreightPay': instance.canFreightPay,
  'canRemovePackage': instance.canRemovePackage,
  'removePackage': instance.removePackage,
  'orderFreight': instance.orderFreight,
  'parcelBatch': instance.parcelBatch,
};

OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item$LogisticsInfo
_$OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item$LogisticsInfoFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item$LogisticsInfo(
      expressionDateContent: json['expressionDateContent'] as String?,
      freightContent: json['freightContent'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item$LogisticsInfoToJson(
  OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item$LogisticsInfo
  instance,
) => <String, dynamic>{
  'expressionDateContent': instance.expressionDateContent,
  'freightContent': instance.freightContent,
};

OrderServiceOrderCouponListPost$Response$Data$Item$UserCoupon$MsgInfo
_$OrderServiceOrderCouponListPost$Response$Data$Item$UserCoupon$MsgInfoFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderCouponListPost$Response$Data$Item$UserCoupon$MsgInfo(
  name: json['name'] as String?,
  usage: json['usage'] as String?,
  invalidPeriod: (json['invalidPeriod'] as num?)?.toInt(),
  discountStr: json['discountStr'] as String?,
  discountUnit: json['discountUnit'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderCouponListPost$Response$Data$Item$UserCoupon$MsgInfoToJson(
  OrderServiceOrderCouponListPost$Response$Data$Item$UserCoupon$MsgInfo
  instance,
) => <String, dynamic>{
  'name': instance.name,
  'usage': instance.usage,
  'invalidPeriod': instance.invalidPeriod,
  'discountStr': instance.discountStr,
  'discountUnit': instance.discountUnit,
};

OrderServiceOrderListGet$Response$Data$Records$Item$OrderSkuList$Item
_$OrderServiceOrderListGet$Response$Data$Records$Item$OrderSkuList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderListGet$Response$Data$Records$Item$OrderSkuList$Item(
  productName: json['productName'] as String?,
  skuCode: json['skuCode'] as String?,
  productCode: json['productCode'] as String?,
  image: json['image'] as String?,
  sellPrice: json['sellPrice'] as String?,
  sellCur: json['sellCur'] as String?,
  totalPrice: json['totalPrice'] as String?,
  targetSellPrice: json['targetSellPrice'] as String?,
  targetSellCur: json['targetSellCur'] as String?,
  targetTotalPrice: json['targetTotalPrice'] as String?,
  targetSkuDiscountPrice: json['targetSkuDiscountPrice'] as String?,
  targetSkuFinalPrice: json['targetSkuFinalPrice'] as String?,
  targetTotalFinalPrice: json['targetTotalFinalPrice'] as String?,
  remark: json['remark'] as String?,
  quantity: (json['quantity'] as num?)?.toDouble(),
  skuSpecValues: (json['skuSpecValues'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderListGet$Response$Data$Records$Item$OrderSkuList$Item$SkuSpecValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  isReturned: json['isReturned'] as bool?,
  targetOriginPrice: json['targetOriginPrice'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderListGet$Response$Data$Records$Item$OrderSkuList$ItemToJson(
  OrderServiceOrderListGet$Response$Data$Records$Item$OrderSkuList$Item
  instance,
) => <String, dynamic>{
  'productName': instance.productName,
  'skuCode': instance.skuCode,
  'productCode': instance.productCode,
  'image': instance.image,
  'sellPrice': instance.sellPrice,
  'sellCur': instance.sellCur,
  'totalPrice': instance.totalPrice,
  'targetSellPrice': instance.targetSellPrice,
  'targetSellCur': instance.targetSellCur,
  'targetTotalPrice': instance.targetTotalPrice,
  'targetSkuDiscountPrice': instance.targetSkuDiscountPrice,
  'targetSkuFinalPrice': instance.targetSkuFinalPrice,
  'targetTotalFinalPrice': instance.targetTotalFinalPrice,
  'remark': instance.remark,
  'quantity': instance.quantity,
  'skuSpecValues': instance.skuSpecValues?.map((e) => e.toJson()).toList(),
  'isReturned': instance.isReturned,
  'targetOriginPrice': instance.targetOriginPrice,
};

OrderServiceOrderListGet$Response$Data$Records$Item$SupplyOrderList$Item
_$OrderServiceOrderListGet$Response$Data$Records$Item$SupplyOrderList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderListGet$Response$Data$Records$Item$SupplyOrderList$Item(
  skuCode: json['skuCode'] as String?,
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  imageUrl: json['imageUrl'],
  quantity: (json['quantity'] as num?)?.toDouble(),
  weight: json['weight'] as String?,
  length: json['length'] as String?,
  width: json['width'] as String?,
  height: json['height'] as String?,
  inspectImageUrlList:
      (json['inspectImageUrlList'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
  secretKeyList: (json['secretKeyList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderListGet$Response$Data$Records$Item$SupplyOrderList$Item$SecretKeyList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$OrderServiceOrderListGet$Response$Data$Records$Item$SupplyOrderList$ItemToJson(
  OrderServiceOrderListGet$Response$Data$Records$Item$SupplyOrderList$Item
  instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'productCode': instance.productCode,
  'productName': instance.productName,
  'imageUrl': instance.imageUrl,
  'quantity': instance.quantity,
  'weight': instance.weight,
  'length': instance.length,
  'width': instance.width,
  'height': instance.height,
  'inspectImageUrlList': instance.inspectImageUrlList,
  'secretKeyList': instance.secretKeyList?.map((e) => e.toJson()).toList(),
};

OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder
_$OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrderFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder(
  parcelOrderId: json['parcelOrderId'] as String?,
  parcelStatus: json['parcelStatus'] as String?,
  parcelStatusDesc: json['parcelStatusDesc'] as String?,
  createTime: (json['createTime'] as num?)?.toDouble(),
  warehouseCode: json['warehouseCode'] as String?,
  warehouseName: json['warehouseName'] as String?,
  solutionCode: json['solutionCode'] as String?,
  freight: json['freight'] as String?,
  freightCurrency: json['freightCurrency'] == null
      ? null
      : OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$FreightCurrency.fromJson(
          json['freightCurrency'] as Map<String, dynamic>,
        ),
  targetFreight: json['targetFreight'] as String?,
  targetFreightCurrency: json['targetFreightCurrency'] == null
      ? null
      : OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$TargetFreightCurrency.fromJson(
          json['targetFreightCurrency'] as Map<String, dynamic>,
        ),
  actualFreight: json['actualFreight'] as String?,
  actualFreightCurrency: json['actualFreightCurrency'] as String?,
  targetActualFreight: json['targetActualFreight'] as String?,
  targetActualFreightCurrency: json['targetActualFreightCurrency'] as String?,
  freightCouponDiscountAmount: json['freightCouponDiscountAmount'] as String?,
  targetFreightCouponDiscountAmount:
      json['targetFreightCouponDiscountAmount'] as String?,
  freightCouponDiscountCurrency: json['freightCouponDiscountCurrency'] == null
      ? null
      : OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$FreightCouponDiscountCurrency.fromJson(
          json['freightCouponDiscountCurrency'] as Map<String, dynamic>,
        ),
  targetFreightCouponDiscountCurrency:
      json['targetFreightCouponDiscountCurrency'] as String?,
  lastMileMailNo: json['lastMileMailNo'] as String?,
  lastMileCompanyCode: json['lastMileCompanyCode'] as String?,
  lastMileCompanyName: json['lastMileCompanyName'] as String?,
  receiverAddress: json['receiverAddress'] == null
      ? null
      : OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$ReceiverAddress.fromJson(
          json['receiverAddress'] as Map<String, dynamic>,
        ),
  parcelProductDTOList: (json['parcelProductDTOList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$ParcelProductDTOList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  buyerOperates:
      (json['buyerOperates'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
);

Map<String, dynamic>
_$OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrderToJson(
  OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder instance,
) => <String, dynamic>{
  'parcelOrderId': instance.parcelOrderId,
  'parcelStatus': instance.parcelStatus,
  'parcelStatusDesc': instance.parcelStatusDesc,
  'createTime': instance.createTime,
  'warehouseCode': instance.warehouseCode,
  'warehouseName': instance.warehouseName,
  'solutionCode': instance.solutionCode,
  'freight': instance.freight,
  'freightCurrency': instance.freightCurrency?.toJson(),
  'targetFreight': instance.targetFreight,
  'targetFreightCurrency': instance.targetFreightCurrency?.toJson(),
  'actualFreight': instance.actualFreight,
  'actualFreightCurrency': instance.actualFreightCurrency,
  'targetActualFreight': instance.targetActualFreight,
  'targetActualFreightCurrency': instance.targetActualFreightCurrency,
  'freightCouponDiscountAmount': instance.freightCouponDiscountAmount,
  'targetFreightCouponDiscountAmount':
      instance.targetFreightCouponDiscountAmount,
  'freightCouponDiscountCurrency': instance.freightCouponDiscountCurrency
      ?.toJson(),
  'targetFreightCouponDiscountCurrency':
      instance.targetFreightCouponDiscountCurrency,
  'lastMileMailNo': instance.lastMileMailNo,
  'lastMileCompanyCode': instance.lastMileCompanyCode,
  'lastMileCompanyName': instance.lastMileCompanyName,
  'receiverAddress': instance.receiverAddress?.toJson(),
  'parcelProductDTOList': instance.parcelProductDTOList
      ?.map((e) => e.toJson())
      .toList(),
  'buyerOperates': instance.buyerOperates,
};

OrderServiceOrderListGet$Response$Data$Records$Item$OrderBillList$Item
_$OrderServiceOrderListGet$Response$Data$Records$Item$OrderBillList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderListGet$Response$Data$Records$Item$OrderBillList$Item(
  billId: json['billId'] as String?,
  status: (json['status'] as num?)?.toDouble(),
  targetTotalPrice: json['targetTotalPrice'] as String?,
  targetCurrency: json['targetCurrency'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderListGet$Response$Data$Records$Item$OrderBillList$ItemToJson(
  OrderServiceOrderListGet$Response$Data$Records$Item$OrderBillList$Item
  instance,
) => <String, dynamic>{
  'billId': instance.billId,
  'status': instance.status,
  'targetTotalPrice': instance.targetTotalPrice,
  'targetCurrency': instance.targetCurrency,
};

OrderServiceOrderListGet$Response$Data$Records$Item$UserAddress
_$OrderServiceOrderListGet$Response$Data$Records$Item$UserAddressFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderListGet$Response$Data$Records$Item$UserAddress(
  country: json['country'] as String?,
  countryCode: json['countryCode'] as String?,
  state: json['state'] as String?,
  stateCode: json['stateCode'] as String?,
  city: json['city'] as String?,
  cityCode: json['cityCode'] as String?,
  street: json['street'] as String?,
  apartment: json['apartment'] as String?,
  address: json['address'] as String?,
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  phoneNumber: json['phoneNumber'] as String?,
  zipCode: json['zipCode'] as String?,
  id: (json['id'] as num?)?.toDouble(),
);

Map<String, dynamic>
_$OrderServiceOrderListGet$Response$Data$Records$Item$UserAddressToJson(
  OrderServiceOrderListGet$Response$Data$Records$Item$UserAddress instance,
) => <String, dynamic>{
  'country': instance.country,
  'countryCode': instance.countryCode,
  'state': instance.state,
  'stateCode': instance.stateCode,
  'city': instance.city,
  'cityCode': instance.cityCode,
  'street': instance.street,
  'apartment': instance.apartment,
  'address': instance.address,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'phoneNumber': instance.phoneNumber,
  'zipCode': instance.zipCode,
  'id': instance.id,
};

OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrderFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder(
  parcelOrderId: json['parcelOrderId'] as String?,
  parcelStatus: json['parcelStatus'] as String?,
  parcelStatusDesc: json['parcelStatusDesc'] as String?,
  createTime: (json['createTime'] as num?)?.toDouble(),
  warehouseCode: json['warehouseCode'] as String?,
  warehouseName: json['warehouseName'] as String?,
  solutionCode: json['solutionCode'] as String?,
  freight: json['freight'] as String?,
  freightCurrency: json['freightCurrency'] == null
      ? null
      : OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$FreightCurrency.fromJson(
          json['freightCurrency'] as Map<String, dynamic>,
        ),
  targetFreight: json['targetFreight'] as String?,
  targetFreightCurrency: json['targetFreightCurrency'] == null
      ? null
      : OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$TargetFreightCurrency.fromJson(
          json['targetFreightCurrency'] as Map<String, dynamic>,
        ),
  actualFreight: json['actualFreight'] as String?,
  actualFreightCurrency: json['actualFreightCurrency'] as String?,
  targetActualFreight: json['targetActualFreight'] as String?,
  targetActualFreightCurrency: json['targetActualFreightCurrency'] as String?,
  freightCouponDiscountAmount: json['freightCouponDiscountAmount'] as String?,
  targetFreightCouponDiscountAmount:
      json['targetFreightCouponDiscountAmount'] as String?,
  freightCouponDiscountCurrency: json['freightCouponDiscountCurrency'] == null
      ? null
      : OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$FreightCouponDiscountCurrency.fromJson(
          json['freightCouponDiscountCurrency'] as Map<String, dynamic>,
        ),
  targetFreightCouponDiscountCurrency:
      json['targetFreightCouponDiscountCurrency'] as String?,
  lastMileMailNo: json['lastMileMailNo'] as String?,
  lastMileCompanyCode: json['lastMileCompanyCode'] as String?,
  lastMileCompanyName: json['lastMileCompanyName'] as String?,
  receiverAddress: json['receiverAddress'] == null
      ? null
      : OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$ReceiverAddress.fromJson(
          json['receiverAddress'] as Map<String, dynamic>,
        ),
  parcelProductDTOList: (json['parcelProductDTOList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$ParcelProductDTOList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  buyerOperates:
      (json['buyerOperates'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
);

Map<String, dynamic>
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrderToJson(
  OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder
  instance,
) => <String, dynamic>{
  'parcelOrderId': instance.parcelOrderId,
  'parcelStatus': instance.parcelStatus,
  'parcelStatusDesc': instance.parcelStatusDesc,
  'createTime': instance.createTime,
  'warehouseCode': instance.warehouseCode,
  'warehouseName': instance.warehouseName,
  'solutionCode': instance.solutionCode,
  'freight': instance.freight,
  'freightCurrency': instance.freightCurrency?.toJson(),
  'targetFreight': instance.targetFreight,
  'targetFreightCurrency': instance.targetFreightCurrency?.toJson(),
  'actualFreight': instance.actualFreight,
  'actualFreightCurrency': instance.actualFreightCurrency,
  'targetActualFreight': instance.targetActualFreight,
  'targetActualFreightCurrency': instance.targetActualFreightCurrency,
  'freightCouponDiscountAmount': instance.freightCouponDiscountAmount,
  'targetFreightCouponDiscountAmount':
      instance.targetFreightCouponDiscountAmount,
  'freightCouponDiscountCurrency': instance.freightCouponDiscountCurrency
      ?.toJson(),
  'targetFreightCouponDiscountCurrency':
      instance.targetFreightCouponDiscountCurrency,
  'lastMileMailNo': instance.lastMileMailNo,
  'lastMileCompanyCode': instance.lastMileCompanyCode,
  'lastMileCompanyName': instance.lastMileCompanyName,
  'receiverAddress': instance.receiverAddress?.toJson(),
  'parcelProductDTOList': instance.parcelProductDTOList
      ?.map((e) => e.toJson())
      .toList(),
  'buyerOperates': instance.buyerOperates,
};

OrderServiceOrderCombineListGet$Response$Data$Records$Item$UserAddress
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$UserAddressFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderCombineListGet$Response$Data$Records$Item$UserAddress(
  country: json['country'] as String?,
  countryCode: json['countryCode'] as String?,
  state: json['state'] as String?,
  stateCode: json['stateCode'] as String?,
  city: json['city'] as String?,
  cityCode: json['cityCode'] as String?,
  street: json['street'] as String?,
  apartment: json['apartment'] as String?,
  address: json['address'] as String?,
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  phoneNumber: json['phoneNumber'] as String?,
  zipCode: json['zipCode'] as String?,
  id: (json['id'] as num?)?.toDouble(),
);

Map<String, dynamic>
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$UserAddressToJson(
  OrderServiceOrderCombineListGet$Response$Data$Records$Item$UserAddress
  instance,
) => <String, dynamic>{
  'country': instance.country,
  'countryCode': instance.countryCode,
  'state': instance.state,
  'stateCode': instance.stateCode,
  'city': instance.city,
  'cityCode': instance.cityCode,
  'street': instance.street,
  'apartment': instance.apartment,
  'address': instance.address,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'phoneNumber': instance.phoneNumber,
  'zipCode': instance.zipCode,
  'id': instance.id,
};

OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item(
  status: (json['status'] as num?)?.toDouble(),
  frontStatus: (json['frontStatus'] as num?)?.toDouble(),
  statusContent: json['statusContent'] as String?,
  orderStatus: (json['orderStatus'] as num?)?.toDouble(),
  orderId: json['orderId'] as String?,
  parentOrderId: json['parentOrderId'] as String?,
  quantity: (json['quantity'] as num?)?.toDouble(),
  targetOriginAmount: json['targetOriginAmount'] as String?,
  itemTotalAmount: json['itemTotalAmount'] as String?,
  totalAmount: json['totalAmount'] as String?,
  targetTotalAmount: json['targetTotalAmount'] as String?,
  discountAmount: json['discountAmount'] as String?,
  targetDiscountAmount: json['targetDiscountAmount'] as String?,
  targetItemTotalAmount: json['targetItemTotalAmount'] as String?,
  freightAmount: json['freightAmount'] as String?,
  targetFreightAmount: json['targetFreightAmount'] as String?,
  targetActualAmount: json['targetActualAmount'] as String?,
  currency: json['currency'] as String?,
  targetCurrency: json['targetCurrency'] as String?,
  description: json['description'] as String?,
  remark: json['remark'] as String?,
  statusIcon: json['statusIcon'] as String?,
  operates:
      (json['operates'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
      [],
  isLogisticsTrace: json['isLogisticsTrace'] as bool?,
  orderSkuList: (json['orderSkuList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$OrderSkuList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  supplyOrderList: (json['supplyOrderList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$SupplyOrderList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  parcelOrder: json['parcelOrder'] == null
      ? null
      : OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder.fromJson(
          json['parcelOrder'] as Map<String, dynamic>,
        ),
  afterSalesList: json['afterSalesList'] as String?,
  orderBillList: (json['orderBillList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$OrderBillList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  userAddress: json['userAddress'] == null
      ? null
      : OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$UserAddress.fromJson(
          json['userAddress'] as Map<String, dynamic>,
        ),
  createTime: (json['createTime'] as num?)?.toDouble(),
  wish: json['wish'] as bool?,
  giveawayGift: (json['giveawayGift'] as num?)?.toInt(),
);

Map<String, dynamic>
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$ItemToJson(
  OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item
  instance,
) => <String, dynamic>{
  'status': instance.status,
  'frontStatus': instance.frontStatus,
  'statusContent': instance.statusContent,
  'orderStatus': instance.orderStatus,
  'orderId': instance.orderId,
  'parentOrderId': instance.parentOrderId,
  'quantity': instance.quantity,
  'targetOriginAmount': instance.targetOriginAmount,
  'itemTotalAmount': instance.itemTotalAmount,
  'totalAmount': instance.totalAmount,
  'targetTotalAmount': instance.targetTotalAmount,
  'discountAmount': instance.discountAmount,
  'targetDiscountAmount': instance.targetDiscountAmount,
  'targetItemTotalAmount': instance.targetItemTotalAmount,
  'freightAmount': instance.freightAmount,
  'targetFreightAmount': instance.targetFreightAmount,
  'targetActualAmount': instance.targetActualAmount,
  'currency': instance.currency,
  'targetCurrency': instance.targetCurrency,
  'description': instance.description,
  'remark': instance.remark,
  'statusIcon': instance.statusIcon,
  'operates': instance.operates,
  'isLogisticsTrace': instance.isLogisticsTrace,
  'orderSkuList': instance.orderSkuList?.map((e) => e.toJson()).toList(),
  'supplyOrderList': instance.supplyOrderList?.map((e) => e.toJson()).toList(),
  'parcelOrder': instance.parcelOrder?.toJson(),
  'afterSalesList': instance.afterSalesList,
  'orderBillList': instance.orderBillList?.map((e) => e.toJson()).toList(),
  'userAddress': instance.userAddress?.toJson(),
  'createTime': instance.createTime,
  'wish': instance.wish,
  'giveawayGift': instance.giveawayGift,
};

OrderServiceOrderDetailGet$Response$Data$OrderList$Item$SkuList$Item
_$OrderServiceOrderDetailGet$Response$Data$OrderList$Item$SkuList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderDetailGet$Response$Data$OrderList$Item$SkuList$Item(
  productName: json['productName'] as String?,
  productCode: json['productCode'] as String?,
  skuCode: json['skuCode'] as String?,
  image: json['image'] as String?,
  targetOriginTotalPrice: json['targetOriginTotalPrice'] as String?,
  targetOriginPrice: json['targetOriginPrice'] as String?,
  sellPrice: json['sellPrice'] as String?,
  targetSellPrice: json['targetSellPrice'] as String?,
  totalPrice: json['totalPrice'] as String?,
  targetTotalPrice: json['targetTotalPrice'] as String?,
  currency: json['currency'] as String?,
  targetCurrency: json['targetCurrency'] as String?,
  targetSkuDiscountPrice: json['targetSkuDiscountPrice'] as String?,
  targetSkuFinalPrice: json['targetSkuFinalPrice'] as String?,
  targetTotalFinalPrice: json['targetTotalFinalPrice'] as String?,
  quantity: (json['quantity'] as num?)?.toDouble(),
  remark: json['remark'] as String?,
  skuSpecValues: (json['skuSpecValues'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderDetailGet$Response$Data$OrderList$Item$SkuList$Item$SkuSpecValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  canAfterSales: json['canAfterSales'] as bool?,
  isReturned: json['isReturned'] as bool?,
  returnQuantity: json['returnQuantity'],
  realRemark: json['realRemark'],
  field2: json['field_2'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderDetailGet$Response$Data$OrderList$Item$SkuList$ItemToJson(
  OrderServiceOrderDetailGet$Response$Data$OrderList$Item$SkuList$Item instance,
) => <String, dynamic>{
  'productName': instance.productName,
  'productCode': instance.productCode,
  'skuCode': instance.skuCode,
  'image': instance.image,
  'targetOriginTotalPrice': instance.targetOriginTotalPrice,
  'targetOriginPrice': instance.targetOriginPrice,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'totalPrice': instance.totalPrice,
  'targetTotalPrice': instance.targetTotalPrice,
  'currency': instance.currency,
  'targetCurrency': instance.targetCurrency,
  'targetSkuDiscountPrice': instance.targetSkuDiscountPrice,
  'targetSkuFinalPrice': instance.targetSkuFinalPrice,
  'targetTotalFinalPrice': instance.targetTotalFinalPrice,
  'quantity': instance.quantity,
  'remark': instance.remark,
  'skuSpecValues': instance.skuSpecValues?.map((e) => e.toJson()).toList(),
  'canAfterSales': instance.canAfterSales,
  'isReturned': instance.isReturned,
  'returnQuantity': instance.returnQuantity,
  'realRemark': instance.realRemark,
  'field_2': instance.field2,
};

OrderServiceOrderDetailGet$Response$Data$OrderList$Item$SupplyOrderList$Item
_$OrderServiceOrderDetailGet$Response$Data$OrderList$Item$SupplyOrderList$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderDetailGet$Response$Data$OrderList$Item$SupplyOrderList$Item(
      skuCode: json['skuCode'] as String?,
      productCode: json['productCode'] as String?,
      productName: json['productName'] as String?,
      sellPrice: json['sellPrice'] as String?,
      purchasePrice: json['purchasePrice'],
      actualPurchasePrice: json['actualPurchasePrice'] as String?,
      imageUrl: json['imageUrl'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      weight: json['weight'] as String?,
      length: json['length'] as String?,
      width: json['width'] as String?,
      height: json['height'] as String?,
      logisticsAttr: json['logisticsAttr'] as String?,
      inspectImageUrlList:
          (json['inspectImageUrlList'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      secretKeyList: json['secretKeyList'] as String?,
      qcRemark: json['qcRemark'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderDetailGet$Response$Data$OrderList$Item$SupplyOrderList$ItemToJson(
  OrderServiceOrderDetailGet$Response$Data$OrderList$Item$SupplyOrderList$Item
  instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'productCode': instance.productCode,
  'productName': instance.productName,
  'sellPrice': instance.sellPrice,
  'purchasePrice': instance.purchasePrice,
  'actualPurchasePrice': instance.actualPurchasePrice,
  'imageUrl': instance.imageUrl,
  'quantity': instance.quantity,
  'weight': instance.weight,
  'length': instance.length,
  'width': instance.width,
  'height': instance.height,
  'logisticsAttr': instance.logisticsAttr,
  'inspectImageUrlList': instance.inspectImageUrlList,
  'secretKeyList': instance.secretKeyList,
  'qcRemark': instance.qcRemark,
};

OrderServiceOrderDetailGet$Response$Data$OrderList$Item$LogisticsInfo
_$OrderServiceOrderDetailGet$Response$Data$OrderList$Item$LogisticsInfoFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderDetailGet$Response$Data$OrderList$Item$LogisticsInfo(
  targetFreight: json['targetFreight'] as String?,
  expressionDate: json['expressionDate'] as String?,
  freightContent: json['freightContent'] as String?,
  expressionDateContent: json['expressionDateContent'] as String?,
  expressionDateHtml: json['expressionDateHtml'] as String?,
  orderFreightUrl: json['orderFreightUrl'] as String?,
  freightTag: json['freightTag'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderDetailGet$Response$Data$OrderList$Item$LogisticsInfoToJson(
  OrderServiceOrderDetailGet$Response$Data$OrderList$Item$LogisticsInfo
  instance,
) => <String, dynamic>{
  'targetFreight': instance.targetFreight,
  'expressionDate': instance.expressionDate,
  'freightContent': instance.freightContent,
  'expressionDateContent': instance.expressionDateContent,
  'expressionDateHtml': instance.expressionDateHtml,
  'orderFreightUrl': instance.orderFreightUrl,
  'freightTag': instance.freightTag,
};

OrderServiceOrderDetailGet$Response$Data$OrderList$Item$SourceOption
_$OrderServiceOrderDetailGet$Response$Data$OrderList$Item$SourceOptionFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderDetailGet$Response$Data$OrderList$Item$SourceOption(
  batchNo: json['batchNo'] as String?,
  parcelBatch: json['parcelBatch'] as bool?,
  removePackage: json['removePackage'] as bool?,
  orderFreight: json['orderFreight'] as bool?,
  canBatch: (json['canBatch'] as num?)?.toInt(),
  canPayFreight: (json['canPayFreight'] as num?)?.toInt(),
  canRemovePackage: (json['canRemovePackage'] as num?)?.toInt(),
  orderFreightUrl: json['orderFreightUrl'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderDetailGet$Response$Data$OrderList$Item$SourceOptionToJson(
  OrderServiceOrderDetailGet$Response$Data$OrderList$Item$SourceOption instance,
) => <String, dynamic>{
  'batchNo': instance.batchNo,
  'parcelBatch': instance.parcelBatch,
  'removePackage': instance.removePackage,
  'orderFreight': instance.orderFreight,
  'canBatch': instance.canBatch,
  'canPayFreight': instance.canPayFreight,
  'canRemovePackage': instance.canRemovePackage,
  'orderFreightUrl': instance.orderFreightUrl,
};

OrderServiceOrderDetailGet$Response$Data$ParcelOrder$FreightCurrency
_$OrderServiceOrderDetailGet$Response$Data$ParcelOrder$FreightCurrencyFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderDetailGet$Response$Data$ParcelOrder$FreightCurrency(
  name: json['name'] as String?,
  symbol: json['symbol'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderDetailGet$Response$Data$ParcelOrder$FreightCurrencyToJson(
  OrderServiceOrderDetailGet$Response$Data$ParcelOrder$FreightCurrency instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

OrderServiceOrderDetailGet$Response$Data$ParcelOrder$TargetFreightCurrency
_$OrderServiceOrderDetailGet$Response$Data$ParcelOrder$TargetFreightCurrencyFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderDetailGet$Response$Data$ParcelOrder$TargetFreightCurrency(
  symbol: json['symbol'] as String?,
  name: json['name'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderDetailGet$Response$Data$ParcelOrder$TargetFreightCurrencyToJson(
  OrderServiceOrderDetailGet$Response$Data$ParcelOrder$TargetFreightCurrency
  instance,
) => <String, dynamic>{'symbol': instance.symbol, 'name': instance.name};

OrderServiceOrderDetailGet$Response$Data$ParcelOrder$ReceiverAddress
_$OrderServiceOrderDetailGet$Response$Data$ParcelOrder$ReceiverAddressFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderDetailGet$Response$Data$ParcelOrder$ReceiverAddress(
  country: json['country'] as String?,
  countryCode: json['countryCode'] as String?,
  state: json['state'] as String?,
  stateCode: json['stateCode'] as String?,
  city: json['city'] as String?,
  cityCode: json['cityCode'] as String?,
  street: json['street'] as String?,
  apartment: json['apartment'] as String?,
  address: json['address'] as String?,
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  phoneNumber: json['phoneNumber'] as String?,
  zipCode: json['zipCode'] as String?,
  id: (json['id'] as num?)?.toDouble(),
  remark: json['remark'],
  accessCode: json['accessCode'],
  email: json['email'],
  tin: json['tin'],
);

Map<String, dynamic>
_$OrderServiceOrderDetailGet$Response$Data$ParcelOrder$ReceiverAddressToJson(
  OrderServiceOrderDetailGet$Response$Data$ParcelOrder$ReceiverAddress instance,
) => <String, dynamic>{
  'country': instance.country,
  'countryCode': instance.countryCode,
  'state': instance.state,
  'stateCode': instance.stateCode,
  'city': instance.city,
  'cityCode': instance.cityCode,
  'street': instance.street,
  'apartment': instance.apartment,
  'address': instance.address,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'phoneNumber': instance.phoneNumber,
  'zipCode': instance.zipCode,
  'id': instance.id,
  'remark': instance.remark,
  'accessCode': instance.accessCode,
  'email': instance.email,
  'tin': instance.tin,
};

OrderServiceOrderDetailGet$Response$Data$ParcelOrder$ParcelProductDTOList$Item
_$OrderServiceOrderDetailGet$Response$Data$ParcelOrder$ParcelProductDTOList$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderDetailGet$Response$Data$ParcelOrder$ParcelProductDTOList$Item(
      skuCode: json['skuCode'] as String?,
      productCode: json['productCode'] as String?,
      productName: json['productName'] as String?,
      logisticsOrderId: json['logisticsOrderId'] as String?,
      tradeOrderId: json['tradeOrderId'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      imageUrl: json['imageUrl'] as String?,
      declareName: json['declareName'] as String?,
      declareNameEn: json['declareNameEn'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderDetailGet$Response$Data$ParcelOrder$ParcelProductDTOList$ItemToJson(
  OrderServiceOrderDetailGet$Response$Data$ParcelOrder$ParcelProductDTOList$Item
  instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'productCode': instance.productCode,
  'productName': instance.productName,
  'logisticsOrderId': instance.logisticsOrderId,
  'tradeOrderId': instance.tradeOrderId,
  'quantity': instance.quantity,
  'imageUrl': instance.imageUrl,
  'declareName': instance.declareName,
  'declareNameEn': instance.declareNameEn,
};

OrderServiceOrderDetailGet$Response$Data$OrderTrace$GroupTraceList$Item
_$OrderServiceOrderDetailGet$Response$Data$OrderTrace$GroupTraceList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderDetailGet$Response$Data$OrderTrace$GroupTraceList$Item(
  subParcelOrderId: json['subParcelOrderId'] as String?,
  parcelOrderStatus: json['parcelOrderStatus'] as String?,
  lastMileMailNo: json['lastMileMailNo'] as String?,
  lastMileMailNoLink: json['lastMileMailNoLink'] as String?,
  lastMileCompanyName: json['lastMileCompanyName'] as String?,
  lastMileCompanyPhone: json['lastMileCompanyPhone'] as String?,
  lastMileCompanyEmail: json['lastMileCompanyEmail'] as String?,
  traceList: (json['traceList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderDetailGet$Response$Data$OrderTrace$GroupTraceList$Item$TraceList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  sequenceTime: (json['sequenceTime'] as num?)?.toDouble(),
);

Map<String, dynamic>
_$OrderServiceOrderDetailGet$Response$Data$OrderTrace$GroupTraceList$ItemToJson(
  OrderServiceOrderDetailGet$Response$Data$OrderTrace$GroupTraceList$Item
  instance,
) => <String, dynamic>{
  'subParcelOrderId': instance.subParcelOrderId,
  'parcelOrderStatus': instance.parcelOrderStatus,
  'lastMileMailNo': instance.lastMileMailNo,
  'lastMileMailNoLink': instance.lastMileMailNoLink,
  'lastMileCompanyName': instance.lastMileCompanyName,
  'lastMileCompanyPhone': instance.lastMileCompanyPhone,
  'lastMileCompanyEmail': instance.lastMileCompanyEmail,
  'traceList': instance.traceList?.map((e) => e.toJson()).toList(),
  'sequenceTime': instance.sequenceTime,
};

OrderServiceOrderDetailGet$Response$Data$OrderTrace$ReceiverAddress
_$OrderServiceOrderDetailGet$Response$Data$OrderTrace$ReceiverAddressFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderDetailGet$Response$Data$OrderTrace$ReceiverAddress(
  country: json['country'] as String?,
  countryCode: json['countryCode'] as String?,
  state: json['state'] as String?,
  stateCode: json['stateCode'] as String?,
  city: json['city'] as String?,
  cityCode: json['cityCode'] as String?,
  street: json['street'] as String?,
  apartment: json['apartment'] as String?,
  address: json['address'] as String?,
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  phoneNumber: json['phoneNumber'] as String?,
  zipCode: json['zipCode'] as String?,
  id: (json['id'] as num?)?.toDouble(),
  remark: json['remark'] as String?,
  accessCode: json['accessCode'] as String?,
  email: json['email'] as String?,
  tin: json['tin'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderDetailGet$Response$Data$OrderTrace$ReceiverAddressToJson(
  OrderServiceOrderDetailGet$Response$Data$OrderTrace$ReceiverAddress instance,
) => <String, dynamic>{
  'country': instance.country,
  'countryCode': instance.countryCode,
  'state': instance.state,
  'stateCode': instance.stateCode,
  'city': instance.city,
  'cityCode': instance.cityCode,
  'street': instance.street,
  'apartment': instance.apartment,
  'address': instance.address,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'phoneNumber': instance.phoneNumber,
  'zipCode': instance.zipCode,
  'id': instance.id,
  'remark': instance.remark,
  'accessCode': instance.accessCode,
  'email': instance.email,
  'tin': instance.tin,
};

OrderServiceOrderDetailGet$Response$Data$OrderTrace$LogisticsSkuDetailList$Item
_$OrderServiceOrderDetailGet$Response$Data$OrderTrace$LogisticsSkuDetailList$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderDetailGet$Response$Data$OrderTrace$LogisticsSkuDetailList$Item(
      skuCode: json['skuCode'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      imageUrl: json['imageUrl'] as String?,
      skuName: json['skuName'] as String?,
      skuSpecValues: json['skuSpecValues'] as String?,
      skuTotalWeight: json['skuTotalWeight'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderDetailGet$Response$Data$OrderTrace$LogisticsSkuDetailList$ItemToJson(
  OrderServiceOrderDetailGet$Response$Data$OrderTrace$LogisticsSkuDetailList$Item
  instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'quantity': instance.quantity,
  'imageUrl': instance.imageUrl,
  'skuName': instance.skuName,
  'skuSpecValues': instance.skuSpecValues,
  'skuTotalWeight': instance.skuTotalWeight,
};

OrderServiceOrderDetailGet$Response$Data$OrderTrace$TraceList$Item
_$OrderServiceOrderDetailGet$Response$Data$OrderTrace$TraceList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderDetailGet$Response$Data$OrderTrace$TraceList$Item(
  id: (json['id'] as num?)?.toDouble(),
  subParcelOrderId: json['subParcelOrderId'] as String?,
  frontCode: json['frontCode'] as String?,
  frontTitleCode: json['frontTitleCode'] as String?,
  frontTitle: json['frontTitle'] as String?,
  icon: json['icon'] as String?,
  traceMessage: json['traceMessage'] as String?,
  time: (json['time'] as num?)?.toDouble(),
  lastMileMailNo: json['lastMileMailNo'] as String?,
  lastMileCompanyName: json['lastMileCompanyName'] as String?,
  lastMileMailNoLink: json['lastMileMailNoLink'] as String?,
  lastMileMailNoTitle: json['lastMileMailNoTitle'] as String?,
  traceStatus: json['traceStatus'] as String?,
  traceTime: json['traceTime'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderDetailGet$Response$Data$OrderTrace$TraceList$ItemToJson(
  OrderServiceOrderDetailGet$Response$Data$OrderTrace$TraceList$Item instance,
) => <String, dynamic>{
  'id': instance.id,
  'subParcelOrderId': instance.subParcelOrderId,
  'frontCode': instance.frontCode,
  'frontTitleCode': instance.frontTitleCode,
  'frontTitle': instance.frontTitle,
  'icon': instance.icon,
  'traceMessage': instance.traceMessage,
  'time': instance.time,
  'lastMileMailNo': instance.lastMileMailNo,
  'lastMileCompanyName': instance.lastMileCompanyName,
  'lastMileMailNoLink': instance.lastMileMailNoLink,
  'lastMileMailNoTitle': instance.lastMileMailNoTitle,
  'traceStatus': instance.traceStatus,
  'traceTime': instance.traceTime,
};

OrderServiceOpenapiOrderDetailGet$Response$Data$ParcelOrder$FreightCurrency
_$OrderServiceOpenapiOrderDetailGet$Response$Data$ParcelOrder$FreightCurrencyFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOpenapiOrderDetailGet$Response$Data$ParcelOrder$FreightCurrency(
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOpenapiOrderDetailGet$Response$Data$ParcelOrder$FreightCurrencyToJson(
  OrderServiceOpenapiOrderDetailGet$Response$Data$ParcelOrder$FreightCurrency
  instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

OrderServiceOpenapiOrderDetailGet$Response$Data$ParcelOrder$ParcelProductDTOList$Item
_$OrderServiceOpenapiOrderDetailGet$Response$Data$ParcelOrder$ParcelProductDTOList$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOpenapiOrderDetailGet$Response$Data$ParcelOrder$ParcelProductDTOList$Item(
      skuCode: json['skuCode'] as String?,
      productCode: json['productCode'] as String?,
      productName: json['productName'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOpenapiOrderDetailGet$Response$Data$ParcelOrder$ParcelProductDTOList$ItemToJson(
  OrderServiceOpenapiOrderDetailGet$Response$Data$ParcelOrder$ParcelProductDTOList$Item
  instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'productCode': instance.productCode,
  'productName': instance.productName,
  'quantity': instance.quantity,
  'imageUrl': instance.imageUrl,
};

OrderServiceOpenapiOrderDetailGet$Response$Data$ParcelOrder$FreightCompensate
_$OrderServiceOpenapiOrderDetailGet$Response$Data$ParcelOrder$FreightCompensateFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOpenapiOrderDetailGet$Response$Data$ParcelOrder$FreightCompensate(
      compensateBillId: json['compensateBillId'] as String?,
      compensatePrice: json['compensatePrice'] as String?,
      compensatePriceCurrency: json['compensatePriceCurrency'] as String?,
      compensateReason: json['compensateReason'] as String?,
      targetCompensatePrice: json['targetCompensatePrice'] as String?,
      targetCompensatePriceCurrency:
          json['targetCompensatePriceCurrency'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOpenapiOrderDetailGet$Response$Data$ParcelOrder$FreightCompensateToJson(
  OrderServiceOpenapiOrderDetailGet$Response$Data$ParcelOrder$FreightCompensate
  instance,
) => <String, dynamic>{
  'compensateBillId': instance.compensateBillId,
  'compensatePrice': instance.compensatePrice,
  'compensatePriceCurrency': instance.compensatePriceCurrency,
  'compensateReason': instance.compensateReason,
  'targetCompensatePrice': instance.targetCompensatePrice,
  'targetCompensatePriceCurrency': instance.targetCompensatePriceCurrency,
};

OrderServiceOpenapiOrderDetailGet$Response$Data$ParcelOrder$TargetFreightCurrency
_$OrderServiceOpenapiOrderDetailGet$Response$Data$ParcelOrder$TargetFreightCurrencyFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOpenapiOrderDetailGet$Response$Data$ParcelOrder$TargetFreightCurrency(
      symbol: json['symbol'] as String?,
      currency: json['currency'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOpenapiOrderDetailGet$Response$Data$ParcelOrder$TargetFreightCurrencyToJson(
  OrderServiceOpenapiOrderDetailGet$Response$Data$ParcelOrder$TargetFreightCurrency
  instance,
) => <String, dynamic>{
  'symbol': instance.symbol,
  'currency': instance.currency,
};

OrderServiceOpenapiOrderDetailGet$Response$Data$OrderTrace$TraceList$Item
_$OrderServiceOpenapiOrderDetailGet$Response$Data$OrderTrace$TraceList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOpenapiOrderDetailGet$Response$Data$OrderTrace$TraceList$Item(
  id: (json['id'] as num?)?.toDouble(),
  frontCode: json['frontCode'] as String?,
  icon: json['icon'] as String?,
  traceMessage: json['traceMessage'] as String?,
  time: (json['time'] as num?)?.toDouble(),
  lastMileMailNo: json['lastMileMailNo'] as String?,
  lastMileMailNoLink: json['lastMileMailNoLink'] as String?,
  lastMileMailNoTitle: json['lastMileMailNoTitle'] as String?,
  traceStatus: json['traceStatus'] as String?,
  logisticsOrderId: json['logisticsOrderId'] as String?,
);

Map<String, dynamic>
_$OrderServiceOpenapiOrderDetailGet$Response$Data$OrderTrace$TraceList$ItemToJson(
  OrderServiceOpenapiOrderDetailGet$Response$Data$OrderTrace$TraceList$Item
  instance,
) => <String, dynamic>{
  'id': instance.id,
  'frontCode': instance.frontCode,
  'icon': instance.icon,
  'traceMessage': instance.traceMessage,
  'time': instance.time,
  'lastMileMailNo': instance.lastMileMailNo,
  'lastMileMailNoLink': instance.lastMileMailNoLink,
  'lastMileMailNoTitle': instance.lastMileMailNoTitle,
  'traceStatus': instance.traceStatus,
  'logisticsOrderId': instance.logisticsOrderId,
};

OrderServiceOpenapiOrderDetailGet$Response$Data$OrderList$Item$SkuList$Item
_$OrderServiceOpenapiOrderDetailGet$Response$Data$OrderList$Item$SkuList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOpenapiOrderDetailGet$Response$Data$OrderList$Item$SkuList$Item(
  productName: json['productName'] as String?,
  productCode: json['productCode'] as String?,
  skuCode: json['skuCode'] as String?,
  image: json['image'] as String?,
  sellPrice: json['sellPrice'] as String?,
  targetSellPrice: json['targetSellPrice'] as String?,
  totalPrice: json['totalPrice'] as String?,
  targetTotalPrice: json['targetTotalPrice'] as String?,
  currency: json['currency'] as String?,
  targetCurrency: json['targetCurrency'] as String?,
  quantity: (json['quantity'] as num?)?.toDouble(),
  remark: json['remark'] as String?,
  skuSpecValues: (json['skuSpecValues'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOpenapiOrderDetailGet$Response$Data$OrderList$Item$SkuList$Item$SkuSpecValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$OrderServiceOpenapiOrderDetailGet$Response$Data$OrderList$Item$SkuList$ItemToJson(
  OrderServiceOpenapiOrderDetailGet$Response$Data$OrderList$Item$SkuList$Item
  instance,
) => <String, dynamic>{
  'productName': instance.productName,
  'productCode': instance.productCode,
  'skuCode': instance.skuCode,
  'image': instance.image,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'totalPrice': instance.totalPrice,
  'targetTotalPrice': instance.targetTotalPrice,
  'currency': instance.currency,
  'targetCurrency': instance.targetCurrency,
  'quantity': instance.quantity,
  'remark': instance.remark,
  'skuSpecValues': instance.skuSpecValues?.map((e) => e.toJson()).toList(),
};

OrderServiceOpenapiOrderDetailGet$Response$Data$OrderList$Item$SupplyOrderList$Item
_$OrderServiceOpenapiOrderDetailGet$Response$Data$OrderList$Item$SupplyOrderList$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOpenapiOrderDetailGet$Response$Data$OrderList$Item$SupplyOrderList$Item(
      skuCode: json['skuCode'] as String?,
      productCode: json['productCode'] as String?,
      productName: json['productName'] as String?,
      imageUrl: json['imageUrl'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      weight: json['weight'] as String?,
      length: json['length'] as String?,
      width: json['width'] as String?,
      height: json['height'] as String?,
      inspectImageUrlList:
          (json['inspectImageUrlList'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      secretKeyList: json['secretKeyList'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOpenapiOrderDetailGet$Response$Data$OrderList$Item$SupplyOrderList$ItemToJson(
  OrderServiceOpenapiOrderDetailGet$Response$Data$OrderList$Item$SupplyOrderList$Item
  instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'productCode': instance.productCode,
  'productName': instance.productName,
  'imageUrl': instance.imageUrl,
  'quantity': instance.quantity,
  'weight': instance.weight,
  'length': instance.length,
  'width': instance.width,
  'height': instance.height,
  'inspectImageUrlList': instance.inspectImageUrlList,
  'secretKeyList': instance.secretKeyList,
};

OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$BaseInfo
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$BaseInfoFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$BaseInfo(
      userId: json['userId'] as String?,
      orderId: json['orderId'] as String?,
      skuSourceCode: json['skuSourceCode'] as String?,
      parentOrderId: json['parentOrderId'] as String?,
      status: (json['status'] as num?)?.toDouble(),
      frontStatus: (json['frontStatus'] as num?)?.toDouble(),
      statusContent: json['statusContent'] as String?,
      orderStatus: (json['orderStatus'] as num?)?.toDouble(),
      evaluateStatus: (json['evaluateStatus'] as num?)?.toDouble(),
      timeoutPeriod: (json['timeoutPeriod'] as num?)?.toDouble(),
      createTime: (json['createTime'] as num?)?.toDouble(),
      leftTime: (json['leftTime'] as num?)?.toDouble(),
      title: json['title'] as String?,
      subTitle: json['subTitle'] as String?,
      operates:
          (json['operates'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      description: json['description'] as String?,
      paySuccessDescription: json['paySuccessDescription'] as String?,
      afterSalesExpressMethod: (json['afterSalesExpressMethod'] as num?)
          ?.toDouble(),
      afterSalesState: (json['afterSalesState'] as num?)?.toDouble(),
      remark: json['remark'] as String?,
      remarkImages: json['remarkImages'] as String?,
      supportOnlineAfterSales: (json['supportOnlineAfterSales'] as num?)
          ?.toDouble(),
      receiptPdfLink: json['receiptPdfLink'] as String?,
      afterSalesSupport: json['afterSalesSupport'] as String?,
      tenantCode: json['tenantCode'] as String?,
      shippingCountry: json['shippingCountry'] as String?,
      payTime: (json['payTime'] as num?)?.toDouble(),
      afterSales: json['afterSales'] as bool?,
      wish: json['wish'] as bool?,
      removePackage: json['removePackage'] as bool?,
      orderFreight: json['orderFreight'] as bool?,
      giveawayGift: (json['giveawayGift'] as num?)?.toDouble(),
    );

Map<String, dynamic>
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$BaseInfoToJson(
  OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$BaseInfo
  instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'orderId': instance.orderId,
  'skuSourceCode': instance.skuSourceCode,
  'parentOrderId': instance.parentOrderId,
  'status': instance.status,
  'frontStatus': instance.frontStatus,
  'statusContent': instance.statusContent,
  'orderStatus': instance.orderStatus,
  'evaluateStatus': instance.evaluateStatus,
  'timeoutPeriod': instance.timeoutPeriod,
  'createTime': instance.createTime,
  'leftTime': instance.leftTime,
  'title': instance.title,
  'subTitle': instance.subTitle,
  'operates': instance.operates,
  'description': instance.description,
  'paySuccessDescription': instance.paySuccessDescription,
  'afterSalesExpressMethod': instance.afterSalesExpressMethod,
  'afterSalesState': instance.afterSalesState,
  'remark': instance.remark,
  'remarkImages': instance.remarkImages,
  'supportOnlineAfterSales': instance.supportOnlineAfterSales,
  'receiptPdfLink': instance.receiptPdfLink,
  'afterSalesSupport': instance.afterSalesSupport,
  'tenantCode': instance.tenantCode,
  'shippingCountry': instance.shippingCountry,
  'payTime': instance.payTime,
  'afterSales': instance.afterSales,
  'wish': instance.wish,
  'removePackage': instance.removePackage,
  'orderFreight': instance.orderFreight,
  'giveawayGift': instance.giveawayGift,
};

OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$UserAddress
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$UserAddressFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$UserAddress(
      country: json['country'] as String?,
      countryCode: json['countryCode'] as String?,
      state: json['state'] as String?,
      stateCode: json['stateCode'] as String?,
      city: json['city'] as String?,
      cityCode: json['cityCode'] as String?,
      street: json['street'] as String?,
      apartment: json['apartment'] as String?,
      address: json['address'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      zipCode: json['zipCode'] as String?,
      id: (json['id'] as num?)?.toDouble(),
    );

Map<String, dynamic>
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$UserAddressToJson(
  OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$UserAddress
  instance,
) => <String, dynamic>{
  'country': instance.country,
  'countryCode': instance.countryCode,
  'state': instance.state,
  'stateCode': instance.stateCode,
  'city': instance.city,
  'cityCode': instance.cityCode,
  'street': instance.street,
  'apartment': instance.apartment,
  'address': instance.address,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'phoneNumber': instance.phoneNumber,
  'zipCode': instance.zipCode,
  'id': instance.id,
};

OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$PayMethod
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$PayMethodFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$PayMethod(
      method: json['method'] as String?,
      methodName: json['methodName'] as String?,
      payOrderId: json['payOrderId'] as String?,
      cardMsg: json['cardMsg'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$PayMethodToJson(
  OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$PayMethod
  instance,
) => <String, dynamic>{
  'method': instance.method,
  'methodName': instance.methodName,
  'payOrderId': instance.payOrderId,
  'cardMsg': instance.cardMsg,
  'image': instance.image,
};

OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$Payments
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$PaymentsFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$Payments(
      receiptAmount: json['receiptAmount'] as String?,
      targetOriginAmount: json['targetOriginAmount'] as String?,
      itemsTotalAmount: json['itemsTotalAmount'] as String?,
      freightAmount: json['freightAmount'] as String?,
      targetFreightAmount: json['targetFreightAmount'] as String?,
      skuQuantity: (json['skuQuantity'] as num?)?.toDouble(),
      currency: json['currency'] as String?,
      totalPrice: json['totalPrice'] as String?,
      targetPrice: json['targetPrice'] as String?,
      targetSettlementAmount: json['targetSettlementAmount'] as String?,
      settlementAmount: json['settlementAmount'] as String?,
      discountAmount: json['discountAmount'] as String?,
      targetDiscountAmount: json['targetDiscountAmount'] as String?,
      rechargeAmount: json['rechargeAmount'] as String?,
      targetRechargePrice: json['targetRechargePrice'] as String?,
      targetPayFeeAmount: json['targetPayFeeAmount'] as String?,
      targetCurrency: json['targetCurrency'] as String?,
      targetItemsTotalAmount: json['targetItemsTotalAmount'] as String?,
      targetStockFeeAmount: json['targetStockFeeAmount'] as String?,
      targetActualAmount: json['targetActualAmount'] as String?,
      targetTipAmount: json['targetTipAmount'] as String?,
      targetServiceAmount: json['targetServiceAmount'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$PaymentsToJson(
  OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$Payments
  instance,
) => <String, dynamic>{
  'receiptAmount': instance.receiptAmount,
  'targetOriginAmount': instance.targetOriginAmount,
  'itemsTotalAmount': instance.itemsTotalAmount,
  'freightAmount': instance.freightAmount,
  'targetFreightAmount': instance.targetFreightAmount,
  'skuQuantity': instance.skuQuantity,
  'currency': instance.currency,
  'totalPrice': instance.totalPrice,
  'targetPrice': instance.targetPrice,
  'targetSettlementAmount': instance.targetSettlementAmount,
  'settlementAmount': instance.settlementAmount,
  'discountAmount': instance.discountAmount,
  'targetDiscountAmount': instance.targetDiscountAmount,
  'rechargeAmount': instance.rechargeAmount,
  'targetRechargePrice': instance.targetRechargePrice,
  'targetPayFeeAmount': instance.targetPayFeeAmount,
  'targetCurrency': instance.targetCurrency,
  'targetItemsTotalAmount': instance.targetItemsTotalAmount,
  'targetStockFeeAmount': instance.targetStockFeeAmount,
  'targetActualAmount': instance.targetActualAmount,
  'targetTipAmount': instance.targetTipAmount,
  'targetServiceAmount': instance.targetServiceAmount,
};

OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderBillList$Item
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderBillList$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderBillList$Item(
      status: json['status'] as String?,
      targetCurrency: json['targetCurrency'] as String?,
      targetTotalPrice: json['targetTotalPrice'] as String?,
      billId: json['billId'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderBillList$ItemToJson(
  OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderBillList$Item
  instance,
) => <String, dynamic>{
  'status': instance.status,
  'targetCurrency': instance.targetCurrency,
  'targetTotalPrice': instance.targetTotalPrice,
  'billId': instance.billId,
};

OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$ParcelOrder
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$ParcelOrderFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$ParcelOrder(
  parcelOrderId: json['parcelOrderId'] as String?,
  parcelStatus: json['parcelStatus'] as String?,
  parcelStatusDesc: json['parcelStatusDesc'] as String?,
  createTime: (json['createTime'] as num?)?.toDouble(),
  warehouseCode: json['warehouseCode'] as String?,
  warehouseName: json['warehouseName'] as String?,
  freight: json['freight'] as String?,
  freightCurrency: json['freightCurrency'] == null
      ? null
      : OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$ParcelOrder$FreightCurrency.fromJson(
          json['freightCurrency'] as Map<String, dynamic>,
        ),
  lastMileMailNo: json['lastMileMailNo'],
  lastMileCompanyCode: json['lastMileCompanyCode'],
  lastMileCompanyName: json['lastMileCompanyName'],
  parcelProductDTOList: (json['parcelProductDTOList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$ParcelOrder$ParcelProductDTOList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  buyerOperates:
      (json['buyerOperates'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
  freightCompensate: json['freightCompensate'] == null
      ? null
      : OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$ParcelOrder$FreightCompensate.fromJson(
          json['freightCompensate'] as Map<String, dynamic>,
        ),
  solutionCode: json['solutionCode'] as String?,
  actualFreight: json['actualFreight'] as String?,
  actualFreightCurrency: json['actualFreightCurrency'] as String?,
  targetFreightCouponDiscountAmount:
      json['targetFreightCouponDiscountAmount'] as String?,
  targetFreightCouponDiscountCurrency:
      json['targetFreightCouponDiscountCurrency'] as String?,
  targetFreight: json['targetFreight'] as String?,
  targetFreightCurrency: json['targetFreightCurrency'] == null
      ? null
      : OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$ParcelOrder$TargetFreightCurrency.fromJson(
          json['targetFreightCurrency'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$ParcelOrderToJson(
  OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$ParcelOrder
  instance,
) => <String, dynamic>{
  'parcelOrderId': instance.parcelOrderId,
  'parcelStatus': instance.parcelStatus,
  'parcelStatusDesc': instance.parcelStatusDesc,
  'createTime': instance.createTime,
  'warehouseCode': instance.warehouseCode,
  'warehouseName': instance.warehouseName,
  'freight': instance.freight,
  'freightCurrency': instance.freightCurrency?.toJson(),
  'lastMileMailNo': instance.lastMileMailNo,
  'lastMileCompanyCode': instance.lastMileCompanyCode,
  'lastMileCompanyName': instance.lastMileCompanyName,
  'parcelProductDTOList': instance.parcelProductDTOList
      ?.map((e) => e.toJson())
      .toList(),
  'buyerOperates': instance.buyerOperates,
  'freightCompensate': instance.freightCompensate?.toJson(),
  'solutionCode': instance.solutionCode,
  'actualFreight': instance.actualFreight,
  'actualFreightCurrency': instance.actualFreightCurrency,
  'targetFreightCouponDiscountAmount':
      instance.targetFreightCouponDiscountAmount,
  'targetFreightCouponDiscountCurrency':
      instance.targetFreightCouponDiscountCurrency,
  'targetFreight': instance.targetFreight,
  'targetFreightCurrency': instance.targetFreightCurrency?.toJson(),
};

OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderTrace
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderTraceFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderTrace(
  tradeOrderId: json['tradeOrderId'] as String?,
  logisticsOrderId: json['logisticsOrderId'] as String?,
  logisticsStatus: json['logisticsStatus'] as String?,
  traceList: (json['traceList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderTrace$TraceList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  parcelOrderId: json['parcelOrderId'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderTraceToJson(
  OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderTrace
  instance,
) => <String, dynamic>{
  'tradeOrderId': instance.tradeOrderId,
  'logisticsOrderId': instance.logisticsOrderId,
  'logisticsStatus': instance.logisticsStatus,
  'traceList': instance.traceList?.map((e) => e.toJson()).toList(),
  'parcelOrderId': instance.parcelOrderId,
};

OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$DiscountInfos$Item
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$DiscountInfos$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$DiscountInfos$Item(
      discountType: (json['discountType'] as num?)?.toDouble(),
      userCouponCode: json['userCouponCode'] as String?,
      discountAmount: json['discountAmount'] as String?,
      targetDiscountAmount: json['targetDiscountAmount'] as String?,
      couponCode: json['couponCode'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$DiscountInfos$ItemToJson(
  OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$DiscountInfos$Item
  instance,
) => <String, dynamic>{
  'discountType': instance.discountType,
  'userCouponCode': instance.userCouponCode,
  'discountAmount': instance.discountAmount,
  'targetDiscountAmount': instance.targetDiscountAmount,
  'couponCode': instance.couponCode,
};

OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderList$Item
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderList$Item(
  skuList: (json['skuList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderList$Item$SkuList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  afterSalesList:
      (json['afterSalesList'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
  supplyOrderList: (json['supplyOrderList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderList$Item$SupplyOrderList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderList$ItemToJson(
  OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderList$Item
  instance,
) => <String, dynamic>{
  'skuList': instance.skuList?.map((e) => e.toJson()).toList(),
  'afterSalesList': instance.afterSalesList,
  'supplyOrderList': instance.supplyOrderList?.map((e) => e.toJson()).toList(),
};

OrderServiceOrderCombineDetailGet$Response$Data$ParcelOrder$FreightCurrency
_$OrderServiceOrderCombineDetailGet$Response$Data$ParcelOrder$FreightCurrencyFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderCombineDetailGet$Response$Data$ParcelOrder$FreightCurrency(
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderCombineDetailGet$Response$Data$ParcelOrder$FreightCurrencyToJson(
  OrderServiceOrderCombineDetailGet$Response$Data$ParcelOrder$FreightCurrency
  instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

OrderServiceOrderCombineDetailGet$Response$Data$ParcelOrder$ParcelProductDTOList$Item
_$OrderServiceOrderCombineDetailGet$Response$Data$ParcelOrder$ParcelProductDTOList$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderCombineDetailGet$Response$Data$ParcelOrder$ParcelProductDTOList$Item(
      skuCode: json['skuCode'] as String?,
      productCode: json['productCode'] as String?,
      productName: json['productName'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderCombineDetailGet$Response$Data$ParcelOrder$ParcelProductDTOList$ItemToJson(
  OrderServiceOrderCombineDetailGet$Response$Data$ParcelOrder$ParcelProductDTOList$Item
  instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'productCode': instance.productCode,
  'productName': instance.productName,
  'quantity': instance.quantity,
  'imageUrl': instance.imageUrl,
};

OrderServiceOrderCombineDetailGet$Response$Data$ParcelOrder$FreightCompensate
_$OrderServiceOrderCombineDetailGet$Response$Data$ParcelOrder$FreightCompensateFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderCombineDetailGet$Response$Data$ParcelOrder$FreightCompensate(
      compensateBillId: json['compensateBillId'] as String?,
      compensatePrice: json['compensatePrice'] as String?,
      compensatePriceCurrency: json['compensatePriceCurrency'] as String?,
      compensateReason: json['compensateReason'] as String?,
      targetCompensatePrice: json['targetCompensatePrice'] as String?,
      targetCompensatePriceCurrency:
          json['targetCompensatePriceCurrency'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderCombineDetailGet$Response$Data$ParcelOrder$FreightCompensateToJson(
  OrderServiceOrderCombineDetailGet$Response$Data$ParcelOrder$FreightCompensate
  instance,
) => <String, dynamic>{
  'compensateBillId': instance.compensateBillId,
  'compensatePrice': instance.compensatePrice,
  'compensatePriceCurrency': instance.compensatePriceCurrency,
  'compensateReason': instance.compensateReason,
  'targetCompensatePrice': instance.targetCompensatePrice,
  'targetCompensatePriceCurrency': instance.targetCompensatePriceCurrency,
};

OrderServiceOrderCombineDetailGet$Response$Data$ParcelOrder$TargetFreightCurrency
_$OrderServiceOrderCombineDetailGet$Response$Data$ParcelOrder$TargetFreightCurrencyFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderCombineDetailGet$Response$Data$ParcelOrder$TargetFreightCurrency(
      symbol: json['symbol'] as String?,
      currency: json['currency'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderCombineDetailGet$Response$Data$ParcelOrder$TargetFreightCurrencyToJson(
  OrderServiceOrderCombineDetailGet$Response$Data$ParcelOrder$TargetFreightCurrency
  instance,
) => <String, dynamic>{
  'symbol': instance.symbol,
  'currency': instance.currency,
};

OrderServiceOrderCombineDetailGet$Response$Data$OrderTrace$TraceList$Item
_$OrderServiceOrderCombineDetailGet$Response$Data$OrderTrace$TraceList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderCombineDetailGet$Response$Data$OrderTrace$TraceList$Item(
  id: (json['id'] as num?)?.toDouble(),
  frontCode: json['frontCode'] as String?,
  icon: json['icon'] as String?,
  traceMessage: json['traceMessage'] as String?,
  time: (json['time'] as num?)?.toDouble(),
  lastMileMailNo: json['lastMileMailNo'] as String?,
  lastMileMailNoLink: json['lastMileMailNoLink'] as String?,
  lastMileMailNoTitle: json['lastMileMailNoTitle'] as String?,
  traceStatus: json['traceStatus'] as String?,
  logisticsOrderId: json['logisticsOrderId'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderCombineDetailGet$Response$Data$OrderTrace$TraceList$ItemToJson(
  OrderServiceOrderCombineDetailGet$Response$Data$OrderTrace$TraceList$Item
  instance,
) => <String, dynamic>{
  'id': instance.id,
  'frontCode': instance.frontCode,
  'icon': instance.icon,
  'traceMessage': instance.traceMessage,
  'time': instance.time,
  'lastMileMailNo': instance.lastMileMailNo,
  'lastMileMailNoLink': instance.lastMileMailNoLink,
  'lastMileMailNoTitle': instance.lastMileMailNoTitle,
  'traceStatus': instance.traceStatus,
  'logisticsOrderId': instance.logisticsOrderId,
};

OrderServiceOrderCombineDetailGet$Response$Data$OrderTrace$GroupTraceList$Item
_$OrderServiceOrderCombineDetailGet$Response$Data$OrderTrace$GroupTraceList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderCombineDetailGet$Response$Data$OrderTrace$GroupTraceList$Item(
  parcelOrderId: json['parcelOrderId'] as String?,
  parcelOrderStatus: json['parcelOrderStatus'] as String?,
  lastMileMailNo: json['lastMileMailNo'] as String?,
  lastMileCompanyName: json['lastMileCompanyName'] as String?,
  lastMileMailNoLink: json['lastMileMailNoLink'] as String?,
  traceList: (json['traceList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderCombineDetailGet$Response$Data$OrderTrace$GroupTraceList$Item$TraceList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$OrderServiceOrderCombineDetailGet$Response$Data$OrderTrace$GroupTraceList$ItemToJson(
  OrderServiceOrderCombineDetailGet$Response$Data$OrderTrace$GroupTraceList$Item
  instance,
) => <String, dynamic>{
  'parcelOrderId': instance.parcelOrderId,
  'parcelOrderStatus': instance.parcelOrderStatus,
  'lastMileMailNo': instance.lastMileMailNo,
  'lastMileCompanyName': instance.lastMileCompanyName,
  'lastMileMailNoLink': instance.lastMileMailNoLink,
  'traceList': instance.traceList?.map((e) => e.toJson()).toList(),
};

OrderServiceCartListGet$Response$Data$List$Item$Records$Item
_$OrderServiceCartListGet$Response$Data$List$Item$Records$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceCartListGet$Response$Data$List$Item$Records$Item(
  skuCode: json['skuCode'] as String?,
  skuImage: json['skuImage'] as String?,
  offerPrice: json['offerPrice'] as String?,
  shopName: json['shopName'] as String?,
  shopImage: json['shopImage'] as String?,
  shopId: json['shopId'] as String?,
  quantity: (json['quantity'] as num?)?.toDouble(),
  targetOriginPrice: json['targetOriginPrice'] as String?,
  targetOriginTotalPrice: json['targetOriginTotalPrice'] as String?,
  totalPrice: json['totalPrice'] as String?,
  targetTotalPrice: json['targetTotalPrice'] as String?,
  productName: json['productName'] as String?,
  productCode: json['productCode'] as String?,
  remarkList: json['remarkList'] as String?,
  status: (json['status'] as num?)?.toDouble(),
  sellPrice: json['sellPrice'] as String?,
  sellCur: json['sellCur'] as String?,
  targetSellPrice: json['targetSellPrice'] as String?,
  targetSellCur: json['targetSellCur'] as String?,
  skuOptions: (json['skuOptions'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceCartListGet$Response$Data$List$Item$Records$Item$SkuOptions$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  discountAmount: (json['discountAmount'] as num?)?.toDouble(),
  discountRemark: json['discountRemark'] as String?,
  skuSourceCode: json['skuSourceCode'] as String?,
  skuSourceTitle: json['skuSourceTitle'] as String?,
  weight: json['weight'] as String?,
  weightUnit: json['weightUnit'] as String?,
  canDeliver: (json['canDeliver'] as num?)?.toDouble(),
  inviteCode: json['inviteCode'] as String?,
  qualityImages:
      (json['qualityImages'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
  remark: json['remark'] as String?,
  sourceDetail: json['sourceDetail'] as String?,
);

Map<String, dynamic>
_$OrderServiceCartListGet$Response$Data$List$Item$Records$ItemToJson(
  OrderServiceCartListGet$Response$Data$List$Item$Records$Item instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'skuImage': instance.skuImage,
  'offerPrice': instance.offerPrice,
  'shopName': instance.shopName,
  'shopImage': instance.shopImage,
  'shopId': instance.shopId,
  'quantity': instance.quantity,
  'targetOriginPrice': instance.targetOriginPrice,
  'targetOriginTotalPrice': instance.targetOriginTotalPrice,
  'totalPrice': instance.totalPrice,
  'targetTotalPrice': instance.targetTotalPrice,
  'productName': instance.productName,
  'productCode': instance.productCode,
  'remarkList': instance.remarkList,
  'status': instance.status,
  'sellPrice': instance.sellPrice,
  'sellCur': instance.sellCur,
  'targetSellPrice': instance.targetSellPrice,
  'targetSellCur': instance.targetSellCur,
  'skuOptions': instance.skuOptions?.map((e) => e.toJson()).toList(),
  'discountAmount': instance.discountAmount,
  'discountRemark': instance.discountRemark,
  'skuSourceCode': instance.skuSourceCode,
  'skuSourceTitle': instance.skuSourceTitle,
  'weight': instance.weight,
  'weightUnit': instance.weightUnit,
  'canDeliver': instance.canDeliver,
  'inviteCode': instance.inviteCode,
  'qualityImages': instance.qualityImages,
  'remark': instance.remark,
  'sourceDetail': instance.sourceDetail,
};

OrderServiceOrderAppListGet$Response$Data$Records$Item$OrderSkuList$Item$SkuSpecValues$Item
_$OrderServiceOrderAppListGet$Response$Data$Records$Item$OrderSkuList$Item$SkuSpecValues$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderAppListGet$Response$Data$Records$Item$OrderSkuList$Item$SkuSpecValues$Item(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderAppListGet$Response$Data$Records$Item$OrderSkuList$Item$SkuSpecValues$ItemToJson(
  OrderServiceOrderAppListGet$Response$Data$Records$Item$OrderSkuList$Item$SkuSpecValues$Item
  instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

OrderServiceOrderAppListGet$Response$Data$Records$Item$SupplyOrderList$Item$SecretKeyList$Item
_$OrderServiceOrderAppListGet$Response$Data$Records$Item$SupplyOrderList$Item$SecretKeyList$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderAppListGet$Response$Data$Records$Item$SupplyOrderList$Item$SecretKeyList$Item(
      barCodeImg: json['barCodeImg'] as String?,
      codeInfo: json['codeInfo'] as String?,
      pin: json['pin'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderAppListGet$Response$Data$Records$Item$SupplyOrderList$Item$SecretKeyList$ItemToJson(
  OrderServiceOrderAppListGet$Response$Data$Records$Item$SupplyOrderList$Item$SecretKeyList$Item
  instance,
) => <String, dynamic>{
  'barCodeImg': instance.barCodeImg,
  'codeInfo': instance.codeInfo,
  'pin': instance.pin,
};

OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$FreightCurrency
_$OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$FreightCurrencyFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$FreightCurrency(
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$FreightCurrencyToJson(
  OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$FreightCurrency
  instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$TargetFreightCurrency
_$OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$TargetFreightCurrencyFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$TargetFreightCurrency(
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$TargetFreightCurrencyToJson(
  OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$TargetFreightCurrency
  instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$FreightCouponDiscountCurrency
_$OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$FreightCouponDiscountCurrencyFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$FreightCouponDiscountCurrency(
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$FreightCouponDiscountCurrencyToJson(
  OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$FreightCouponDiscountCurrency
  instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$ReceiverAddress
_$OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$ReceiverAddressFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$ReceiverAddress(
      country: json['country'] as String?,
      countryCode: json['countryCode'] as String?,
      state: json['state'] as String?,
      stateCode: json['stateCode'] as String?,
      city: json['city'] as String?,
      cityCode: json['cityCode'] as String?,
      street: json['street'] as String?,
      apartment: json['apartment'] as String?,
      address: json['address'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      zipCode: json['zipCode'] as String?,
      id: (json['id'] as num?)?.toDouble(),
    );

Map<String, dynamic>
_$OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$ReceiverAddressToJson(
  OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$ReceiverAddress
  instance,
) => <String, dynamic>{
  'country': instance.country,
  'countryCode': instance.countryCode,
  'state': instance.state,
  'stateCode': instance.stateCode,
  'city': instance.city,
  'cityCode': instance.cityCode,
  'street': instance.street,
  'apartment': instance.apartment,
  'address': instance.address,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'phoneNumber': instance.phoneNumber,
  'zipCode': instance.zipCode,
  'id': instance.id,
};

OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$ParcelProductDTOList$Item
_$OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$ParcelProductDTOList$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$ParcelProductDTOList$Item(
      skuCode: json['skuCode'] as String?,
      productCode: json['productCode'] as String?,
      productName: json['productName'] as String?,
      logisticsOrderId: json['logisticsOrderId'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      imageUrl: json['imageUrl'] as String?,
      declareName: json['declareName'] as String?,
      declareNameEn: json['declareNameEn'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$ParcelProductDTOList$ItemToJson(
  OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$ParcelProductDTOList$Item
  instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'productCode': instance.productCode,
  'productName': instance.productName,
  'logisticsOrderId': instance.logisticsOrderId,
  'quantity': instance.quantity,
  'imageUrl': instance.imageUrl,
  'declareName': instance.declareName,
  'declareNameEn': instance.declareNameEn,
};

OrderServiceOrderAppDetailGet$Response$Data$Payments$PaymentSubjoins$Item$Description
_$OrderServiceOrderAppDetailGet$Response$Data$Payments$PaymentSubjoins$Item$DescriptionFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderAppDetailGet$Response$Data$Payments$PaymentSubjoins$Item$Description(
      desc: json['desc'] as String?,
      fontSize: json['fontSize'] as String?,
      fontColor: json['fontColor'] as String?,
      position: (json['position'] as num?)?.toInt(),
    );

Map<String, dynamic>
_$OrderServiceOrderAppDetailGet$Response$Data$Payments$PaymentSubjoins$Item$DescriptionToJson(
  OrderServiceOrderAppDetailGet$Response$Data$Payments$PaymentSubjoins$Item$Description
  instance,
) => <String, dynamic>{
  'desc': instance.desc,
  'fontSize': instance.fontSize,
  'fontColor': instance.fontColor,
  'position': instance.position,
};

OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item$SkuList$Item$SkuSpecValues$Item
_$OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item$SkuList$Item$SkuSpecValues$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item$SkuList$Item$SkuSpecValues$Item(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item$SkuList$Item$SkuSpecValues$ItemToJson(
  OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item$SkuList$Item$SkuSpecValues$Item
  instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$RecommendSolution
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$RecommendSolutionFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$RecommendSolution(
  solutionName: json['solutionName'] as String?,
  solutionCode: json['solutionCode'] as String?,
  freight: json['freight'] as String?,
  freightCurrency: json['freightCurrency'] == null
      ? null
      : OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$RecommendSolution$FreightCurrency.fromJson(
          json['freightCurrency'] as Map<String, dynamic>,
        ),
  freightFreeThreshold: json['freightFreeThreshold'] as String?,
  freightFreeThresholdCurrency: json['freightFreeThresholdCurrency'] == null
      ? null
      : OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$RecommendSolution$FreightFreeThresholdCurrency.fromJson(
          json['freightFreeThresholdCurrency'] as Map<String, dynamic>,
        ),
  gmtExpectArriveStart: (json['gmtExpectArriveStart'] as num?)?.toDouble(),
  gmtExpectArriveEnd: (json['gmtExpectArriveEnd'] as num?)?.toDouble(),
  lateCompensation: json['lateCompensation'] as String?,
  lateCompensationCurrency: json['lateCompensationCurrency'] == null
      ? null
      : OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$RecommendSolution$LateCompensationCurrency.fromJson(
          json['lateCompensationCurrency'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$RecommendSolutionToJson(
  OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$RecommendSolution
  instance,
) => <String, dynamic>{
  'solutionName': instance.solutionName,
  'solutionCode': instance.solutionCode,
  'freight': instance.freight,
  'freightCurrency': instance.freightCurrency?.toJson(),
  'freightFreeThreshold': instance.freightFreeThreshold,
  'freightFreeThresholdCurrency': instance.freightFreeThresholdCurrency
      ?.toJson(),
  'gmtExpectArriveStart': instance.gmtExpectArriveStart,
  'gmtExpectArriveEnd': instance.gmtExpectArriveEnd,
  'lateCompensation': instance.lateCompensation,
  'lateCompensationCurrency': instance.lateCompensationCurrency?.toJson(),
};

OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$Item
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$Item(
  name: json['name'] as String?,
  solutionList: (json['solutionList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$Item$SolutionList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$ItemToJson(
  OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$Item
  instance,
) => <String, dynamic>{
  'name': instance.name,
  'solutionList': instance.solutionList?.map((e) => e.toJson()).toList(),
};

OrderServiceOrderConfirmPost$Response$Data$Pricing$Giveaway$Item$Records$Item
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$Giveaway$Item$Records$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderConfirmPost$Response$Data$Pricing$Giveaway$Item$Records$Item(
  skuCode: json['skuCode'] as String?,
  skuImage: json['skuImage'] as String?,
  sellPrice: json['sellPrice'] as String?,
  quantity: json['quantity'] as String?,
  productName: json['productName'] as String?,
  currency: json['currency'] == null
      ? null
      : OrderServiceOrderConfirmPost$Response$Data$Pricing$Giveaway$Item$Records$Item$Currency.fromJson(
          json['currency'] as Map<String, dynamic>,
        ),
  skuSpecValues:
      (json['skuSpecValues'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
  shopName: json['shopName'] as String?,
  shopImage: json['shopImage'] as String?,
  lowStocks: json['lowStocks'] as String?,
  giftCode: json['giftCode'] as String?,
  weight: json['weight'] as String?,
  weightUnit: json['weightUnit'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$Giveaway$Item$Records$ItemToJson(
  OrderServiceOrderConfirmPost$Response$Data$Pricing$Giveaway$Item$Records$Item
  instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'skuImage': instance.skuImage,
  'sellPrice': instance.sellPrice,
  'quantity': instance.quantity,
  'productName': instance.productName,
  'currency': instance.currency?.toJson(),
  'skuSpecValues': instance.skuSpecValues,
  'shopName': instance.shopName,
  'shopImage': instance.shopImage,
  'lowStocks': instance.lowStocks,
  'giftCode': instance.giftCode,
  'weight': instance.weight,
  'weightUnit': instance.weightUnit,
};

OrderServiceOrderConfirmPost$Response$Data$Pricing$VoucherMsg$VoucherInfos$Item
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$VoucherMsg$VoucherInfos$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderConfirmPost$Response$Data$Pricing$VoucherMsg$VoucherInfos$Item(
  title: json['title'] as String?,
  list: (json['list'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderConfirmPost$Response$Data$Pricing$VoucherMsg$VoucherInfos$Item$List$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$VoucherMsg$VoucherInfos$ItemToJson(
  OrderServiceOrderConfirmPost$Response$Data$Pricing$VoucherMsg$VoucherInfos$Item
  instance,
) => <String, dynamic>{
  'title': instance.title,
  'list': instance.list?.map((e) => e.toJson()).toList(),
};

OrderServiceOrderNoAuthDetailGet$Response$Data$OrderTrace$GroupTraceList$Item$TraceList$Item
_$OrderServiceOrderNoAuthDetailGet$Response$Data$OrderTrace$GroupTraceList$Item$TraceList$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderNoAuthDetailGet$Response$Data$OrderTrace$GroupTraceList$Item$TraceList$Item(
      id: (json['id'] as num?)?.toInt(),
      subParcelOrderId: json['subParcelOrderId'] as String?,
      frontCode: json['frontCode'] as String?,
      frontTitleCode: json['frontTitleCode'] as String?,
      frontTitle: json['frontTitle'] as String?,
      icon: json['icon'] as String?,
      traceMessage: json['traceMessage'] as String?,
      time: (json['time'] as num?)?.toInt(),
      lastMileMailNo: json['lastMileMailNo'] as String?,
      lastMileCompanyName: json['lastMileCompanyName'] as String?,
      lastMileMailNoLink: json['lastMileMailNoLink'] as String?,
      lastMileMailNoTitle: json['lastMileMailNoTitle'] as String?,
      traceStatus: json['traceStatus'] as String?,
      traceTime: json['traceTime'] == null
          ? null
          : DateTime.parse(json['traceTime'] as String),
    );

Map<String, dynamic>
_$OrderServiceOrderNoAuthDetailGet$Response$Data$OrderTrace$GroupTraceList$Item$TraceList$ItemToJson(
  OrderServiceOrderNoAuthDetailGet$Response$Data$OrderTrace$GroupTraceList$Item$TraceList$Item
  instance,
) => <String, dynamic>{
  'id': instance.id,
  'subParcelOrderId': instance.subParcelOrderId,
  'frontCode': instance.frontCode,
  'frontTitleCode': instance.frontTitleCode,
  'frontTitle': instance.frontTitle,
  'icon': instance.icon,
  'traceMessage': instance.traceMessage,
  'time': instance.time,
  'lastMileMailNo': instance.lastMileMailNo,
  'lastMileCompanyName': instance.lastMileCompanyName,
  'lastMileMailNoLink': instance.lastMileMailNoLink,
  'lastMileMailNoTitle': instance.lastMileMailNoTitle,
  'traceStatus': instance.traceStatus,
  'traceTime': instance.traceTime?.toIso8601String(),
};

OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item$SkuList$Item$SkuSpecValues$Item
_$OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item$SkuList$Item$SkuSpecValues$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item$SkuList$Item$SkuSpecValues$Item(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item$SkuList$Item$SkuSpecValues$ItemToJson(
  OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item$SkuList$Item$SkuSpecValues$Item
  instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

OrderServiceOrderListGet$Response$Data$Records$Item$OrderSkuList$Item$SkuSpecValues$Item
_$OrderServiceOrderListGet$Response$Data$Records$Item$OrderSkuList$Item$SkuSpecValues$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderListGet$Response$Data$Records$Item$OrderSkuList$Item$SkuSpecValues$Item(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderListGet$Response$Data$Records$Item$OrderSkuList$Item$SkuSpecValues$ItemToJson(
  OrderServiceOrderListGet$Response$Data$Records$Item$OrderSkuList$Item$SkuSpecValues$Item
  instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

OrderServiceOrderListGet$Response$Data$Records$Item$SupplyOrderList$Item$SecretKeyList$Item
_$OrderServiceOrderListGet$Response$Data$Records$Item$SupplyOrderList$Item$SecretKeyList$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderListGet$Response$Data$Records$Item$SupplyOrderList$Item$SecretKeyList$Item(
      barCodeImg: json['barCodeImg'] as String?,
      codeInfo: json['codeInfo'] as String?,
      pin: json['pin'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderListGet$Response$Data$Records$Item$SupplyOrderList$Item$SecretKeyList$ItemToJson(
  OrderServiceOrderListGet$Response$Data$Records$Item$SupplyOrderList$Item$SecretKeyList$Item
  instance,
) => <String, dynamic>{
  'barCodeImg': instance.barCodeImg,
  'codeInfo': instance.codeInfo,
  'pin': instance.pin,
};

OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$FreightCurrency
_$OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$FreightCurrencyFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$FreightCurrency(
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$FreightCurrencyToJson(
  OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$FreightCurrency
  instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$TargetFreightCurrency
_$OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$TargetFreightCurrencyFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$TargetFreightCurrency(
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$TargetFreightCurrencyToJson(
  OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$TargetFreightCurrency
  instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$FreightCouponDiscountCurrency
_$OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$FreightCouponDiscountCurrencyFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$FreightCouponDiscountCurrency(
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$FreightCouponDiscountCurrencyToJson(
  OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$FreightCouponDiscountCurrency
  instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$ReceiverAddress
_$OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$ReceiverAddressFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$ReceiverAddress(
      country: json['country'] as String?,
      countryCode: json['countryCode'] as String?,
      state: json['state'] as String?,
      stateCode: json['stateCode'] as String?,
      city: json['city'] as String?,
      cityCode: json['cityCode'] as String?,
      street: json['street'] as String?,
      apartment: json['apartment'] as String?,
      address: json['address'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      zipCode: json['zipCode'] as String?,
      id: (json['id'] as num?)?.toDouble(),
    );

Map<String, dynamic>
_$OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$ReceiverAddressToJson(
  OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$ReceiverAddress
  instance,
) => <String, dynamic>{
  'country': instance.country,
  'countryCode': instance.countryCode,
  'state': instance.state,
  'stateCode': instance.stateCode,
  'city': instance.city,
  'cityCode': instance.cityCode,
  'street': instance.street,
  'apartment': instance.apartment,
  'address': instance.address,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'phoneNumber': instance.phoneNumber,
  'zipCode': instance.zipCode,
  'id': instance.id,
};

OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$ParcelProductDTOList$Item
_$OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$ParcelProductDTOList$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$ParcelProductDTOList$Item(
      skuCode: json['skuCode'] as String?,
      productCode: json['productCode'] as String?,
      productName: json['productName'] as String?,
      logisticsOrderId: json['logisticsOrderId'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      imageUrl: json['imageUrl'] as String?,
      declareName: json['declareName'] as String?,
      declareNameEn: json['declareNameEn'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$ParcelProductDTOList$ItemToJson(
  OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$ParcelProductDTOList$Item
  instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'productCode': instance.productCode,
  'productName': instance.productName,
  'logisticsOrderId': instance.logisticsOrderId,
  'quantity': instance.quantity,
  'imageUrl': instance.imageUrl,
  'declareName': instance.declareName,
  'declareNameEn': instance.declareNameEn,
};

OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$FreightCurrency
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$FreightCurrencyFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$FreightCurrency(
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$FreightCurrencyToJson(
  OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$FreightCurrency
  instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$TargetFreightCurrency
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$TargetFreightCurrencyFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$TargetFreightCurrency(
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$TargetFreightCurrencyToJson(
  OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$TargetFreightCurrency
  instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$FreightCouponDiscountCurrency
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$FreightCouponDiscountCurrencyFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$FreightCouponDiscountCurrency(
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$FreightCouponDiscountCurrencyToJson(
  OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$FreightCouponDiscountCurrency
  instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$ReceiverAddress
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$ReceiverAddressFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$ReceiverAddress(
      country: json['country'] as String?,
      countryCode: json['countryCode'] as String?,
      state: json['state'] as String?,
      stateCode: json['stateCode'] as String?,
      city: json['city'] as String?,
      cityCode: json['cityCode'] as String?,
      street: json['street'] as String?,
      apartment: json['apartment'] as String?,
      address: json['address'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      zipCode: json['zipCode'] as String?,
      id: (json['id'] as num?)?.toDouble(),
    );

Map<String, dynamic>
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$ReceiverAddressToJson(
  OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$ReceiverAddress
  instance,
) => <String, dynamic>{
  'country': instance.country,
  'countryCode': instance.countryCode,
  'state': instance.state,
  'stateCode': instance.stateCode,
  'city': instance.city,
  'cityCode': instance.cityCode,
  'street': instance.street,
  'apartment': instance.apartment,
  'address': instance.address,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'phoneNumber': instance.phoneNumber,
  'zipCode': instance.zipCode,
  'id': instance.id,
};

OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$ParcelProductDTOList$Item
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$ParcelProductDTOList$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$ParcelProductDTOList$Item(
      skuCode: json['skuCode'] as String?,
      productCode: json['productCode'] as String?,
      productName: json['productName'] as String?,
      logisticsOrderId: json['logisticsOrderId'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      imageUrl: json['imageUrl'] as String?,
      declareName: json['declareName'] as String?,
      declareNameEn: json['declareNameEn'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$ParcelProductDTOList$ItemToJson(
  OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$ParcelProductDTOList$Item
  instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'productCode': instance.productCode,
  'productName': instance.productName,
  'logisticsOrderId': instance.logisticsOrderId,
  'quantity': instance.quantity,
  'imageUrl': instance.imageUrl,
  'declareName': instance.declareName,
  'declareNameEn': instance.declareNameEn,
};

OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$OrderSkuList$Item
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$OrderSkuList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$OrderSkuList$Item(
  productName: json['productName'] as String?,
  skuCode: json['skuCode'] as String?,
  productCode: json['productCode'] as String?,
  image: json['image'] as String?,
  targetOriginTotalPrice: json['targetOriginTotalPrice'] as String?,
  targetOriginPrice: json['targetOriginPrice'] as String?,
  sellPrice: json['sellPrice'] as String?,
  sellCur: json['sellCur'] as String?,
  totalPrice: json['totalPrice'] as String?,
  targetSellPrice: json['targetSellPrice'] as String?,
  targetSellCur: json['targetSellCur'] as String?,
  targetTotalPrice: json['targetTotalPrice'] as String?,
  targetSkuDiscountPrice: json['targetSkuDiscountPrice'] as String?,
  targetSkuFinalPrice: json['targetSkuFinalPrice'] as String?,
  targetTotalFinalPrice: json['targetTotalFinalPrice'] as String?,
  remark: json['remark'] as String?,
  quantity: (json['quantity'] as num?)?.toDouble(),
  skuSpecValues: (json['skuSpecValues'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$OrderSkuList$Item$SkuSpecValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  isReturned: json['isReturned'] as bool?,
);

Map<String, dynamic>
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$OrderSkuList$ItemToJson(
  OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$OrderSkuList$Item
  instance,
) => <String, dynamic>{
  'productName': instance.productName,
  'skuCode': instance.skuCode,
  'productCode': instance.productCode,
  'image': instance.image,
  'targetOriginTotalPrice': instance.targetOriginTotalPrice,
  'targetOriginPrice': instance.targetOriginPrice,
  'sellPrice': instance.sellPrice,
  'sellCur': instance.sellCur,
  'totalPrice': instance.totalPrice,
  'targetSellPrice': instance.targetSellPrice,
  'targetSellCur': instance.targetSellCur,
  'targetTotalPrice': instance.targetTotalPrice,
  'targetSkuDiscountPrice': instance.targetSkuDiscountPrice,
  'targetSkuFinalPrice': instance.targetSkuFinalPrice,
  'targetTotalFinalPrice': instance.targetTotalFinalPrice,
  'remark': instance.remark,
  'quantity': instance.quantity,
  'skuSpecValues': instance.skuSpecValues?.map((e) => e.toJson()).toList(),
  'isReturned': instance.isReturned,
};

OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$SupplyOrderList$Item
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$SupplyOrderList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$SupplyOrderList$Item(
  skuCode: json['skuCode'] as String?,
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  imageUrl: json['imageUrl'],
  quantity: (json['quantity'] as num?)?.toDouble(),
  weight: json['weight'] as String?,
  length: json['length'] as String?,
  width: json['width'] as String?,
  height: json['height'] as String?,
  qcRemark: json['qcRemark'] as String?,
  inspectImageUrlList:
      (json['inspectImageUrlList'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
  secretKeyList: (json['secretKeyList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$SupplyOrderList$Item$SecretKeyList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$SupplyOrderList$ItemToJson(
  OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$SupplyOrderList$Item
  instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'productCode': instance.productCode,
  'productName': instance.productName,
  'imageUrl': instance.imageUrl,
  'quantity': instance.quantity,
  'weight': instance.weight,
  'length': instance.length,
  'width': instance.width,
  'height': instance.height,
  'qcRemark': instance.qcRemark,
  'inspectImageUrlList': instance.inspectImageUrlList,
  'secretKeyList': instance.secretKeyList?.map((e) => e.toJson()).toList(),
};

OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrderFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder(
  parcelOrderId: json['parcelOrderId'] as String?,
  parcelStatus: json['parcelStatus'] as String?,
  parcelStatusDesc: json['parcelStatusDesc'] as String?,
  createTime: (json['createTime'] as num?)?.toDouble(),
  warehouseCode: json['warehouseCode'] as String?,
  warehouseName: json['warehouseName'] as String?,
  solutionCode: json['solutionCode'] as String?,
  freight: json['freight'] as String?,
  freightCurrency: json['freightCurrency'] == null
      ? null
      : OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$FreightCurrency.fromJson(
          json['freightCurrency'] as Map<String, dynamic>,
        ),
  targetFreight: json['targetFreight'] as String?,
  targetFreightCurrency: json['targetFreightCurrency'] == null
      ? null
      : OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$TargetFreightCurrency.fromJson(
          json['targetFreightCurrency'] as Map<String, dynamic>,
        ),
  actualFreight: json['actualFreight'] as String?,
  actualFreightCurrency: json['actualFreightCurrency'] as String?,
  targetActualFreight: json['targetActualFreight'] as String?,
  targetActualFreightCurrency: json['targetActualFreightCurrency'] as String?,
  freightCouponDiscountAmount: json['freightCouponDiscountAmount'] as String?,
  targetFreightCouponDiscountAmount:
      json['targetFreightCouponDiscountAmount'] as String?,
  freightCouponDiscountCurrency: json['freightCouponDiscountCurrency'] == null
      ? null
      : OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$FreightCouponDiscountCurrency.fromJson(
          json['freightCouponDiscountCurrency'] as Map<String, dynamic>,
        ),
  targetFreightCouponDiscountCurrency:
      json['targetFreightCouponDiscountCurrency'] as String?,
  lastMileMailNo: json['lastMileMailNo'] as String?,
  lastMileCompanyCode: json['lastMileCompanyCode'] as String?,
  lastMileCompanyName: json['lastMileCompanyName'] as String?,
  receiverAddress: json['receiverAddress'] == null
      ? null
      : OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$ReceiverAddress.fromJson(
          json['receiverAddress'] as Map<String, dynamic>,
        ),
  parcelProductDTOList: (json['parcelProductDTOList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$ParcelProductDTOList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  buyerOperates:
      (json['buyerOperates'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
);

Map<String, dynamic>
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrderToJson(
  OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder
  instance,
) => <String, dynamic>{
  'parcelOrderId': instance.parcelOrderId,
  'parcelStatus': instance.parcelStatus,
  'parcelStatusDesc': instance.parcelStatusDesc,
  'createTime': instance.createTime,
  'warehouseCode': instance.warehouseCode,
  'warehouseName': instance.warehouseName,
  'solutionCode': instance.solutionCode,
  'freight': instance.freight,
  'freightCurrency': instance.freightCurrency?.toJson(),
  'targetFreight': instance.targetFreight,
  'targetFreightCurrency': instance.targetFreightCurrency?.toJson(),
  'actualFreight': instance.actualFreight,
  'actualFreightCurrency': instance.actualFreightCurrency,
  'targetActualFreight': instance.targetActualFreight,
  'targetActualFreightCurrency': instance.targetActualFreightCurrency,
  'freightCouponDiscountAmount': instance.freightCouponDiscountAmount,
  'targetFreightCouponDiscountAmount':
      instance.targetFreightCouponDiscountAmount,
  'freightCouponDiscountCurrency': instance.freightCouponDiscountCurrency
      ?.toJson(),
  'targetFreightCouponDiscountCurrency':
      instance.targetFreightCouponDiscountCurrency,
  'lastMileMailNo': instance.lastMileMailNo,
  'lastMileCompanyCode': instance.lastMileCompanyCode,
  'lastMileCompanyName': instance.lastMileCompanyName,
  'receiverAddress': instance.receiverAddress?.toJson(),
  'parcelProductDTOList': instance.parcelProductDTOList
      ?.map((e) => e.toJson())
      .toList(),
  'buyerOperates': instance.buyerOperates,
};

OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$OrderBillList$Item
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$OrderBillList$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$OrderBillList$Item(
      billId: json['billId'] as String?,
      status: (json['status'] as num?)?.toDouble(),
      targetTotalPrice: json['targetTotalPrice'] as String?,
      targetCurrency: json['targetCurrency'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$OrderBillList$ItemToJson(
  OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$OrderBillList$Item
  instance,
) => <String, dynamic>{
  'billId': instance.billId,
  'status': instance.status,
  'targetTotalPrice': instance.targetTotalPrice,
  'targetCurrency': instance.targetCurrency,
};

OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$UserAddress
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$UserAddressFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$UserAddress(
      country: json['country'] as String?,
      countryCode: json['countryCode'] as String?,
      state: json['state'] as String?,
      stateCode: json['stateCode'] as String?,
      city: json['city'] as String?,
      cityCode: json['cityCode'] as String?,
      street: json['street'] as String?,
      apartment: json['apartment'] as String?,
      address: json['address'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      zipCode: json['zipCode'] as String?,
      id: (json['id'] as num?)?.toDouble(),
    );

Map<String, dynamic>
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$UserAddressToJson(
  OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$UserAddress
  instance,
) => <String, dynamic>{
  'country': instance.country,
  'countryCode': instance.countryCode,
  'state': instance.state,
  'stateCode': instance.stateCode,
  'city': instance.city,
  'cityCode': instance.cityCode,
  'street': instance.street,
  'apartment': instance.apartment,
  'address': instance.address,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'phoneNumber': instance.phoneNumber,
  'zipCode': instance.zipCode,
  'id': instance.id,
};

OrderServiceOrderDetailGet$Response$Data$OrderList$Item$SkuList$Item$SkuSpecValues$Item
_$OrderServiceOrderDetailGet$Response$Data$OrderList$Item$SkuList$Item$SkuSpecValues$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderDetailGet$Response$Data$OrderList$Item$SkuList$Item$SkuSpecValues$Item(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderDetailGet$Response$Data$OrderList$Item$SkuList$Item$SkuSpecValues$ItemToJson(
  OrderServiceOrderDetailGet$Response$Data$OrderList$Item$SkuList$Item$SkuSpecValues$Item
  instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

OrderServiceOrderDetailGet$Response$Data$OrderTrace$GroupTraceList$Item$TraceList$Item
_$OrderServiceOrderDetailGet$Response$Data$OrderTrace$GroupTraceList$Item$TraceList$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderDetailGet$Response$Data$OrderTrace$GroupTraceList$Item$TraceList$Item(
      id: (json['id'] as num?)?.toDouble(),
      subParcelOrderId: json['subParcelOrderId'] as String?,
      frontCode: json['frontCode'] as String?,
      frontTitleCode: json['frontTitleCode'] as String?,
      frontTitle: json['frontTitle'] as String?,
      icon: json['icon'] as String?,
      traceMessage: json['traceMessage'] as String?,
      time: (json['time'] as num?)?.toDouble(),
      lastMileMailNo: json['lastMileMailNo'] as String?,
      lastMileCompanyName: json['lastMileCompanyName'] as String?,
      lastMileMailNoLink: json['lastMileMailNoLink'] as String?,
      lastMileMailNoTitle: json['lastMileMailNoTitle'] as String?,
      traceStatus: json['traceStatus'] as String?,
      traceTime: json['traceTime'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderDetailGet$Response$Data$OrderTrace$GroupTraceList$Item$TraceList$ItemToJson(
  OrderServiceOrderDetailGet$Response$Data$OrderTrace$GroupTraceList$Item$TraceList$Item
  instance,
) => <String, dynamic>{
  'id': instance.id,
  'subParcelOrderId': instance.subParcelOrderId,
  'frontCode': instance.frontCode,
  'frontTitleCode': instance.frontTitleCode,
  'frontTitle': instance.frontTitle,
  'icon': instance.icon,
  'traceMessage': instance.traceMessage,
  'time': instance.time,
  'lastMileMailNo': instance.lastMileMailNo,
  'lastMileCompanyName': instance.lastMileCompanyName,
  'lastMileMailNoLink': instance.lastMileMailNoLink,
  'lastMileMailNoTitle': instance.lastMileMailNoTitle,
  'traceStatus': instance.traceStatus,
  'traceTime': instance.traceTime,
};

OrderServiceOpenapiOrderDetailGet$Response$Data$OrderList$Item$SkuList$Item$SkuSpecValues$Item
_$OrderServiceOpenapiOrderDetailGet$Response$Data$OrderList$Item$SkuList$Item$SkuSpecValues$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOpenapiOrderDetailGet$Response$Data$OrderList$Item$SkuList$Item$SkuSpecValues$Item(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOpenapiOrderDetailGet$Response$Data$OrderList$Item$SkuList$Item$SkuSpecValues$ItemToJson(
  OrderServiceOpenapiOrderDetailGet$Response$Data$OrderList$Item$SkuList$Item$SkuSpecValues$Item
  instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$ParcelOrder$FreightCurrency
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$ParcelOrder$FreightCurrencyFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$ParcelOrder$FreightCurrency(
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$ParcelOrder$FreightCurrencyToJson(
  OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$ParcelOrder$FreightCurrency
  instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$ParcelOrder$ParcelProductDTOList$Item
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$ParcelOrder$ParcelProductDTOList$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$ParcelOrder$ParcelProductDTOList$Item(
      skuCode: json['skuCode'] as String?,
      productCode: json['productCode'] as String?,
      productName: json['productName'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$ParcelOrder$ParcelProductDTOList$ItemToJson(
  OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$ParcelOrder$ParcelProductDTOList$Item
  instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'productCode': instance.productCode,
  'productName': instance.productName,
  'quantity': instance.quantity,
  'imageUrl': instance.imageUrl,
};

OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$ParcelOrder$FreightCompensate
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$ParcelOrder$FreightCompensateFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$ParcelOrder$FreightCompensate(
      compensateBillId: json['compensateBillId'] as String?,
      compensatePrice: json['compensatePrice'] as String?,
      compensatePriceCurrency: json['compensatePriceCurrency'] as String?,
      compensateReason: json['compensateReason'] as String?,
      targetCompensatePrice: json['targetCompensatePrice'] as String?,
      targetCompensatePriceCurrency:
          json['targetCompensatePriceCurrency'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$ParcelOrder$FreightCompensateToJson(
  OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$ParcelOrder$FreightCompensate
  instance,
) => <String, dynamic>{
  'compensateBillId': instance.compensateBillId,
  'compensatePrice': instance.compensatePrice,
  'compensatePriceCurrency': instance.compensatePriceCurrency,
  'compensateReason': instance.compensateReason,
  'targetCompensatePrice': instance.targetCompensatePrice,
  'targetCompensatePriceCurrency': instance.targetCompensatePriceCurrency,
};

OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$ParcelOrder$TargetFreightCurrency
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$ParcelOrder$TargetFreightCurrencyFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$ParcelOrder$TargetFreightCurrency(
      symbol: json['symbol'] as String?,
      currency: json['currency'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$ParcelOrder$TargetFreightCurrencyToJson(
  OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$ParcelOrder$TargetFreightCurrency
  instance,
) => <String, dynamic>{
  'symbol': instance.symbol,
  'currency': instance.currency,
};

OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderTrace$TraceList$Item
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderTrace$TraceList$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderTrace$TraceList$Item(
      id: (json['id'] as num?)?.toDouble(),
      frontCode: json['frontCode'] as String?,
      icon: json['icon'] as String?,
      traceMessage: json['traceMessage'] as String?,
      time: (json['time'] as num?)?.toDouble(),
      lastMileMailNo: json['lastMileMailNo'] as String?,
      lastMileMailNoLink: json['lastMileMailNoLink'] as String?,
      lastMileMailNoTitle: json['lastMileMailNoTitle'] as String?,
      traceStatus: json['traceStatus'] as String?,
      logisticsOrderId: json['logisticsOrderId'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderTrace$TraceList$ItemToJson(
  OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderTrace$TraceList$Item
  instance,
) => <String, dynamic>{
  'id': instance.id,
  'frontCode': instance.frontCode,
  'icon': instance.icon,
  'traceMessage': instance.traceMessage,
  'time': instance.time,
  'lastMileMailNo': instance.lastMileMailNo,
  'lastMileMailNoLink': instance.lastMileMailNoLink,
  'lastMileMailNoTitle': instance.lastMileMailNoTitle,
  'traceStatus': instance.traceStatus,
  'logisticsOrderId': instance.logisticsOrderId,
};

OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderList$Item$SkuList$Item
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderList$Item$SkuList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderList$Item$SkuList$Item(
  productName: json['productName'] as String?,
  productCode: json['productCode'] as String?,
  skuCode: json['skuCode'] as String?,
  image: json['image'] as String?,
  targetOriginPrice: json['targetOriginPrice'] as String?,
  targetOriginTotalPrice: json['targetOriginTotalPrice'] as String?,
  sellPrice: json['sellPrice'] as String?,
  targetSellPrice: json['targetSellPrice'] as String?,
  totalPrice: json['totalPrice'] as String?,
  targetTotalPrice: json['targetTotalPrice'] as String?,
  targetSkuDiscountPrice: json['targetSkuDiscountPrice'] as String?,
  targetSkuFinalPrice: json['targetSkuFinalPrice'] as String?,
  targetTotalFinalPrice: json['targetTotalFinalPrice'] as String?,
  currency: json['currency'] as String?,
  targetCurrency: json['targetCurrency'] as String?,
  quantity: (json['quantity'] as num?)?.toDouble(),
  remark: json['remark'] as String?,
  skuSpecValues: (json['skuSpecValues'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderList$Item$SkuList$Item$SkuSpecValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  isReturned: json['isReturned'] as bool?,
);

Map<String, dynamic>
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderList$Item$SkuList$ItemToJson(
  OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderList$Item$SkuList$Item
  instance,
) => <String, dynamic>{
  'productName': instance.productName,
  'productCode': instance.productCode,
  'skuCode': instance.skuCode,
  'image': instance.image,
  'targetOriginPrice': instance.targetOriginPrice,
  'targetOriginTotalPrice': instance.targetOriginTotalPrice,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'totalPrice': instance.totalPrice,
  'targetTotalPrice': instance.targetTotalPrice,
  'targetSkuDiscountPrice': instance.targetSkuDiscountPrice,
  'targetSkuFinalPrice': instance.targetSkuFinalPrice,
  'targetTotalFinalPrice': instance.targetTotalFinalPrice,
  'currency': instance.currency,
  'targetCurrency': instance.targetCurrency,
  'quantity': instance.quantity,
  'remark': instance.remark,
  'skuSpecValues': instance.skuSpecValues?.map((e) => e.toJson()).toList(),
  'isReturned': instance.isReturned,
};

OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderList$Item$SupplyOrderList$Item
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderList$Item$SupplyOrderList$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderList$Item$SupplyOrderList$Item(
      skuCode: json['skuCode'] as String?,
      productCode: json['productCode'] as String?,
      productName: json['productName'] as String?,
      imageUrl: json['imageUrl'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      weight: json['weight'] as String?,
      length: json['length'] as String?,
      width: json['width'] as String?,
      height: json['height'] as String?,
      inspectImageUrlList:
          (json['inspectImageUrlList'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      secretKeyList: json['secretKeyList'] as String?,
      qcRemark: json['qcRemark'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderList$Item$SupplyOrderList$ItemToJson(
  OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderList$Item$SupplyOrderList$Item
  instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'productCode': instance.productCode,
  'productName': instance.productName,
  'imageUrl': instance.imageUrl,
  'quantity': instance.quantity,
  'weight': instance.weight,
  'length': instance.length,
  'width': instance.width,
  'height': instance.height,
  'inspectImageUrlList': instance.inspectImageUrlList,
  'secretKeyList': instance.secretKeyList,
  'qcRemark': instance.qcRemark,
};

OrderServiceOrderCombineDetailGet$Response$Data$OrderTrace$GroupTraceList$Item$TraceList$Item
_$OrderServiceOrderCombineDetailGet$Response$Data$OrderTrace$GroupTraceList$Item$TraceList$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderCombineDetailGet$Response$Data$OrderTrace$GroupTraceList$Item$TraceList$Item(
      id: (json['id'] as num?)?.toDouble(),
      frontCode: json['frontCode'] as String?,
      icon: json['icon'] as String?,
      traceMessage: json['traceMessage'] as String?,
      time: (json['time'] as num?)?.toDouble(),
      lastMileMailNo: json['lastMileMailNo'],
      lastMileMailNoLink: json['lastMileMailNoLink'] as String?,
      lastMileMailNoTitle: json['lastMileMailNoTitle'] as String?,
      traceStatus: json['traceStatus'] as String?,
      frontTitle: json['frontTitle'] as String?,
      frontTitleCode: json['frontTitleCode'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderCombineDetailGet$Response$Data$OrderTrace$GroupTraceList$Item$TraceList$ItemToJson(
  OrderServiceOrderCombineDetailGet$Response$Data$OrderTrace$GroupTraceList$Item$TraceList$Item
  instance,
) => <String, dynamic>{
  'id': instance.id,
  'frontCode': instance.frontCode,
  'icon': instance.icon,
  'traceMessage': instance.traceMessage,
  'time': instance.time,
  'lastMileMailNo': instance.lastMileMailNo,
  'lastMileMailNoLink': instance.lastMileMailNoLink,
  'lastMileMailNoTitle': instance.lastMileMailNoTitle,
  'traceStatus': instance.traceStatus,
  'frontTitle': instance.frontTitle,
  'frontTitleCode': instance.frontTitleCode,
};

OrderServiceCartListGet$Response$Data$List$Item$Records$Item$SkuOptions$Item
_$OrderServiceCartListGet$Response$Data$List$Item$Records$Item$SkuOptions$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceCartListGet$Response$Data$List$Item$Records$Item$SkuOptions$Item(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic>
_$OrderServiceCartListGet$Response$Data$List$Item$Records$Item$SkuOptions$ItemToJson(
  OrderServiceCartListGet$Response$Data$List$Item$Records$Item$SkuOptions$Item
  instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$RecommendSolution$FreightCurrency
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$RecommendSolution$FreightCurrencyFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$RecommendSolution$FreightCurrency(
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$RecommendSolution$FreightCurrencyToJson(
  OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$RecommendSolution$FreightCurrency
  instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$RecommendSolution$FreightFreeThresholdCurrency
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$RecommendSolution$FreightFreeThresholdCurrencyFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$RecommendSolution$FreightFreeThresholdCurrency(
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$RecommendSolution$FreightFreeThresholdCurrencyToJson(
  OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$RecommendSolution$FreightFreeThresholdCurrency
  instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$RecommendSolution$LateCompensationCurrency
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$RecommendSolution$LateCompensationCurrencyFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$RecommendSolution$LateCompensationCurrency(
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$RecommendSolution$LateCompensationCurrencyToJson(
  OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$RecommendSolution$LateCompensationCurrency
  instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$Item$SolutionList$Item
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$Item$SolutionList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$Item$SolutionList$Item(
  solutionName: json['solutionName'] as String?,
  solutionCode: json['solutionCode'] as String?,
  freight: json['freight'] as String?,
  freightCurrency: json['freightCurrency'] == null
      ? null
      : OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$Item$SolutionList$Item$FreightCurrency.fromJson(
          json['freightCurrency'] as Map<String, dynamic>,
        ),
  freightFreeThreshold: json['freightFreeThreshold'] as String?,
  freightFreeThresholdCurrency: json['freightFreeThresholdCurrency'] == null
      ? null
      : OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$Item$SolutionList$Item$FreightFreeThresholdCurrency.fromJson(
          json['freightFreeThresholdCurrency'] as Map<String, dynamic>,
        ),
  gmtExpectArriveStart: json['gmtExpectArriveStart'] as String?,
  gmtExpectArriveEnd: json['gmtExpectArriveEnd'] as String?,
  lateCompensation: json['lateCompensation'] as String?,
  lateCompensationCurrency: json['lateCompensationCurrency'] == null
      ? null
      : OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$Item$SolutionList$Item$LateCompensationCurrency.fromJson(
          json['lateCompensationCurrency'] as Map<String, dynamic>,
        ),
  lateCompensationTimeframe: json['lateCompensationTimeframe'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$Item$SolutionList$ItemToJson(
  OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$Item$SolutionList$Item
  instance,
) => <String, dynamic>{
  'solutionName': instance.solutionName,
  'solutionCode': instance.solutionCode,
  'freight': instance.freight,
  'freightCurrency': instance.freightCurrency?.toJson(),
  'freightFreeThreshold': instance.freightFreeThreshold,
  'freightFreeThresholdCurrency': instance.freightFreeThresholdCurrency
      ?.toJson(),
  'gmtExpectArriveStart': instance.gmtExpectArriveStart,
  'gmtExpectArriveEnd': instance.gmtExpectArriveEnd,
  'lateCompensation': instance.lateCompensation,
  'lateCompensationCurrency': instance.lateCompensationCurrency?.toJson(),
  'lateCompensationTimeframe': instance.lateCompensationTimeframe,
};

OrderServiceOrderConfirmPost$Response$Data$Pricing$Giveaway$Item$Records$Item$Currency
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$Giveaway$Item$Records$Item$CurrencyFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderConfirmPost$Response$Data$Pricing$Giveaway$Item$Records$Item$Currency(
      symbol: json['symbol'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$Giveaway$Item$Records$Item$CurrencyToJson(
  OrderServiceOrderConfirmPost$Response$Data$Pricing$Giveaway$Item$Records$Item$Currency
  instance,
) => <String, dynamic>{'symbol': instance.symbol, 'name': instance.name};

OrderServiceOrderConfirmPost$Response$Data$Pricing$VoucherMsg$VoucherInfos$Item$List$Item
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$VoucherMsg$VoucherInfos$Item$List$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderConfirmPost$Response$Data$Pricing$VoucherMsg$VoucherInfos$Item$List$Item(
  name: json['name'] as String?,
  description: json['description'] as String?,
  voucherCode: json['voucherCode'] as String?,
  discountType: json['discountType'] as String?,
  discountInfo: json['discountInfo'] as String?,
  currency: json['currency'] == null
      ? null
      : OrderServiceOrderConfirmPost$Response$Data$Pricing$VoucherMsg$VoucherInfos$Item$List$Item$Currency.fromJson(
          json['currency'] as Map<String, dynamic>,
        ),
  validStartStamp: json['validStartStamp'] as String?,
  validEndStamp: json['validEndStamp'] as String?,
  desc: json['desc'] as String?,
  status: json['status'] as String?,
  isDefault: json['isDefault'] as String?,
  available: json['available'] as String?,
  unavailableReason: json['unavailableReason'] as String?,
  sourceCode: json['sourceCode'] as String?,
  validEndDesc: json['validEndDesc'] as String?,
  usedVoucherInfo: json['usedVoucherInfo'] as String?,
  minOrderAmountInfo: json['minOrderAmountInfo'] as String?,
);

Map<String, dynamic>
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$VoucherMsg$VoucherInfos$Item$List$ItemToJson(
  OrderServiceOrderConfirmPost$Response$Data$Pricing$VoucherMsg$VoucherInfos$Item$List$Item
  instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'voucherCode': instance.voucherCode,
  'discountType': instance.discountType,
  'discountInfo': instance.discountInfo,
  'currency': instance.currency?.toJson(),
  'validStartStamp': instance.validStartStamp,
  'validEndStamp': instance.validEndStamp,
  'desc': instance.desc,
  'status': instance.status,
  'isDefault': instance.isDefault,
  'available': instance.available,
  'unavailableReason': instance.unavailableReason,
  'sourceCode': instance.sourceCode,
  'validEndDesc': instance.validEndDesc,
  'usedVoucherInfo': instance.usedVoucherInfo,
  'minOrderAmountInfo': instance.minOrderAmountInfo,
};

OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$OrderSkuList$Item$SkuSpecValues$Item
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$OrderSkuList$Item$SkuSpecValues$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$OrderSkuList$Item$SkuSpecValues$Item(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$OrderSkuList$Item$SkuSpecValues$ItemToJson(
  OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$OrderSkuList$Item$SkuSpecValues$Item
  instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$SupplyOrderList$Item$SecretKeyList$Item
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$SupplyOrderList$Item$SecretKeyList$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$SupplyOrderList$Item$SecretKeyList$Item(
      barCodeImg: json['barCodeImg'] as String?,
      codeInfo: json['codeInfo'] as String?,
      pin: json['pin'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$SupplyOrderList$Item$SecretKeyList$ItemToJson(
  OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$SupplyOrderList$Item$SecretKeyList$Item
  instance,
) => <String, dynamic>{
  'barCodeImg': instance.barCodeImg,
  'codeInfo': instance.codeInfo,
  'pin': instance.pin,
};

OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$FreightCurrency
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$FreightCurrencyFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$FreightCurrency(
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$FreightCurrencyToJson(
  OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$FreightCurrency
  instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$TargetFreightCurrency
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$TargetFreightCurrencyFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$TargetFreightCurrency(
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$TargetFreightCurrencyToJson(
  OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$TargetFreightCurrency
  instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$FreightCouponDiscountCurrency
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$FreightCouponDiscountCurrencyFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$FreightCouponDiscountCurrency(
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$FreightCouponDiscountCurrencyToJson(
  OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$FreightCouponDiscountCurrency
  instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$ReceiverAddress
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$ReceiverAddressFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$ReceiverAddress(
      country: json['country'] as String?,
      countryCode: json['countryCode'] as String?,
      state: json['state'] as String?,
      stateCode: json['stateCode'] as String?,
      city: json['city'] as String?,
      cityCode: json['cityCode'] as String?,
      street: json['street'] as String?,
      apartment: json['apartment'] as String?,
      address: json['address'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      zipCode: json['zipCode'] as String?,
      id: (json['id'] as num?)?.toDouble(),
    );

Map<String, dynamic>
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$ReceiverAddressToJson(
  OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$ReceiverAddress
  instance,
) => <String, dynamic>{
  'country': instance.country,
  'countryCode': instance.countryCode,
  'state': instance.state,
  'stateCode': instance.stateCode,
  'city': instance.city,
  'cityCode': instance.cityCode,
  'street': instance.street,
  'apartment': instance.apartment,
  'address': instance.address,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'phoneNumber': instance.phoneNumber,
  'zipCode': instance.zipCode,
  'id': instance.id,
};

OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$ParcelProductDTOList$Item
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$ParcelProductDTOList$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$ParcelProductDTOList$Item(
      skuCode: json['skuCode'] as String?,
      productCode: json['productCode'] as String?,
      productName: json['productName'] as String?,
      logisticsOrderId: json['logisticsOrderId'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      imageUrl: json['imageUrl'] as String?,
      declareName: json['declareName'] as String?,
      declareNameEn: json['declareNameEn'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$ParcelProductDTOList$ItemToJson(
  OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$ParcelProductDTOList$Item
  instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'productCode': instance.productCode,
  'productName': instance.productName,
  'logisticsOrderId': instance.logisticsOrderId,
  'quantity': instance.quantity,
  'imageUrl': instance.imageUrl,
  'declareName': instance.declareName,
  'declareNameEn': instance.declareNameEn,
};

OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderList$Item$SkuList$Item$SkuSpecValues$Item
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderList$Item$SkuList$Item$SkuSpecValues$ItemFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderList$Item$SkuList$Item$SkuSpecValues$Item(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderList$Item$SkuList$Item$SkuSpecValues$ItemToJson(
  OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderList$Item$SkuList$Item$SkuSpecValues$Item
  instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$Item$SolutionList$Item$FreightCurrency
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$Item$SolutionList$Item$FreightCurrencyFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$Item$SolutionList$Item$FreightCurrency(
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$Item$SolutionList$Item$FreightCurrencyToJson(
  OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$Item$SolutionList$Item$FreightCurrency
  instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$Item$SolutionList$Item$FreightFreeThresholdCurrency
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$Item$SolutionList$Item$FreightFreeThresholdCurrencyFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$Item$SolutionList$Item$FreightFreeThresholdCurrency(
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$Item$SolutionList$Item$FreightFreeThresholdCurrencyToJson(
  OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$Item$SolutionList$Item$FreightFreeThresholdCurrency
  instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$Item$SolutionList$Item$LateCompensationCurrency
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$Item$SolutionList$Item$LateCompensationCurrencyFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$Item$SolutionList$Item$LateCompensationCurrency(
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$Item$SolutionList$Item$LateCompensationCurrencyToJson(
  OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$Item$SolutionList$Item$LateCompensationCurrency
  instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

OrderServiceOrderConfirmPost$Response$Data$Pricing$VoucherMsg$VoucherInfos$Item$List$Item$Currency
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$VoucherMsg$VoucherInfos$Item$List$Item$CurrencyFromJson(
  Map<String, dynamic> json,
) =>
    OrderServiceOrderConfirmPost$Response$Data$Pricing$VoucherMsg$VoucherInfos$Item$List$Item$Currency(
      symbol: json['symbol'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic>
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$VoucherMsg$VoucherInfos$Item$List$Item$CurrencyToJson(
  OrderServiceOrderConfirmPost$Response$Data$Pricing$VoucherMsg$VoucherInfos$Item$List$Item$Currency
  instance,
) => <String, dynamic>{'symbol': instance.symbol, 'name': instance.name};
