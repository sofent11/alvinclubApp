// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swaggerApiOrder.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderServiceOrderAppCancelPostRequest
_$OrderServiceOrderAppCancelPostRequestFromJson(Map<String, dynamic> json) =>
    OrderServiceOrderAppCancelPostRequest(
      orderId: JsonCoerce.asString(json['orderId']),
    );

Map<String, dynamic> _$OrderServiceOrderAppCancelPostRequestToJson(
  OrderServiceOrderAppCancelPostRequest instance,
) => <String, dynamic>{'orderId': instance.orderId};

OrderServiceOrderAppBatchinfosGetRequest
_$OrderServiceOrderAppBatchinfosGetRequestFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppBatchinfosGetRequest(
  orderId: JsonCoerce.asString(json['orderId']),
  userAddressId: JsonCoerce.asInt(json['userAddressId']),
  userAddress: json['userAddress'] == null
      ? null
      : OrderServiceOrderAppBatchinfosGetRequest$UserAddress.fromJson(
          json['userAddress'] as Map<String, dynamic>,
        ),
  addBatch: JsonCoerce.asBool(json['addBatch']),
  paySubmit: JsonCoerce.asBool(json['paySubmit']),
  payFreight: JsonCoerce.asBool(json['payFreight']),
  submitAnyWay: JsonCoerce.asBool(json['submitAnyWay']),
  userCouponCode: JsonCoerce.asString(json['userCouponCode']),
  userDiscountCode: JsonCoerce.asString(json['userDiscountCode']),
  removePackage: JsonCoerce.asBool(json['removePackage']),
  remark: JsonCoerce.asString(json['remark']),
  giveawayGift: JsonCoerce.asInt(json['giveawayGift']),
  sourceItems: (json['sourceItems'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderAppBatchinfosGetRequest$SourceItems$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  itemList: (json['itemList'] as List<dynamic>?)
      ?.map(
        (e) => OrderServiceOrderAppBatchinfosGetRequest$ItemList$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
);

Map<String, dynamic> _$OrderServiceOrderAppBatchinfosGetRequestToJson(
  OrderServiceOrderAppBatchinfosGetRequest instance,
) => <String, dynamic>{
  'orderId': instance.orderId,
  'userAddressId': instance.userAddressId,
  'userAddress': instance.userAddress?.toJson(),
  'addBatch': instance.addBatch,
  'paySubmit': instance.paySubmit,
  'payFreight': instance.payFreight,
  'submitAnyWay': instance.submitAnyWay,
  'userCouponCode': instance.userCouponCode,
  'userDiscountCode': instance.userDiscountCode,
  'removePackage': instance.removePackage,
  'remark': instance.remark,
  'giveawayGift': instance.giveawayGift,
  'sourceItems': instance.sourceItems?.map((e) => e.toJson()).toList(),
  'itemList': instance.itemList?.map((e) => e.toJson()).toList(),
};

OrderServiceOrderAppSubmitPostRequest
_$OrderServiceOrderAppSubmitPostRequestFromJson(Map<String, dynamic> json) =>
    OrderServiceOrderAppSubmitPostRequest(
      sourceItems: (json['sourceItems'] as List<dynamic>?)
          ?.map(
            (e) =>
                OrderServiceOrderAppSubmitPostRequest$SourceItems$Item.fromJson(
                  e as Map<String, dynamic>,
                ),
          )
          .toList(),
      country: JsonCoerce.asString(json['country']),
      buyType: JsonCoerce.asInt(json['buyType']),
      invitedCode: JsonCoerce.asString(json['invitedCode']),
      userAddressId: JsonCoerce.asInt(json['userAddressId']),
      addBatch: JsonCoerce.asBool(json['addBatch']),
      remark: JsonCoerce.asString(json['remark']),
      isDraft: JsonCoerce.asBool(json['isDraft']),
      submitAnyWay: JsonCoerce.asBool(json['submitAnyWay']),
      userCouponCode: JsonCoerce.asString(json['userCouponCode']),
      removePackage: JsonCoerce.asBool(json['removePackage']),
    );

Map<String, dynamic> _$OrderServiceOrderAppSubmitPostRequestToJson(
  OrderServiceOrderAppSubmitPostRequest instance,
) => <String, dynamic>{
  'sourceItems': instance.sourceItems?.map((e) => e.toJson()).toList(),
  'country': instance.country,
  'buyType': instance.buyType,
  'invitedCode': instance.invitedCode,
  'userAddressId': instance.userAddressId,
  'addBatch': instance.addBatch,
  'remark': instance.remark,
  'isDraft': instance.isDraft,
  'submitAnyWay': instance.submitAnyWay,
  'userCouponCode': instance.userCouponCode,
  'removePackage': instance.removePackage,
};

OrderServiceOrderAppUpdatePostRequest
_$OrderServiceOrderAppUpdatePostRequestFromJson(Map<String, dynamic> json) =>
    OrderServiceOrderAppUpdatePostRequest(
      orderId: JsonCoerce.asString(json['orderId']),
      userAddressId: JsonCoerce.asInt(json['userAddressId']),
      userAddress: json['userAddress'] == null
          ? null
          : OrderServiceOrderAppUpdatePostRequest$UserAddress.fromJson(
              json['userAddress'] as Map<String, dynamic>,
            ),
      addBatch: JsonCoerce.asBool(json['addBatch']),
      targetTip: JsonCoerce.asInt(json['targetTip']),
      paySubmit: JsonCoerce.asBool(json['paySubmit']),
      payFreight: JsonCoerce.asBool(json['payFreight']),
      submitAnyWay: JsonCoerce.asBool(json['submitAnyWay']),
      userCouponCode: JsonCoerce.asString(json['userCouponCode']),
      userDiscountCode: JsonCoerce.asString(json['userDiscountCode']),
      removePackage: JsonCoerce.asBool(json['removePackage']),
      remark: JsonCoerce.asString(json['remark']),
      giveawayGift: JsonCoerce.asInt(json['giveawayGift']),
      sourceItems: (json['sourceItems'] as List<dynamic>?)
          ?.map(
            (e) =>
                OrderServiceOrderAppUpdatePostRequest$SourceItems$Item.fromJson(
                  e as Map<String, dynamic>,
                ),
          )
          .toList(),
      itemList: (json['itemList'] as List<dynamic>?)
          ?.map(
            (e) => OrderServiceOrderAppUpdatePostRequest$ItemList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    );

Map<String, dynamic> _$OrderServiceOrderAppUpdatePostRequestToJson(
  OrderServiceOrderAppUpdatePostRequest instance,
) => <String, dynamic>{
  'orderId': instance.orderId,
  'userAddressId': instance.userAddressId,
  'userAddress': instance.userAddress?.toJson(),
  'addBatch': instance.addBatch,
  'targetTip': instance.targetTip,
  'paySubmit': instance.paySubmit,
  'payFreight': instance.payFreight,
  'submitAnyWay': instance.submitAnyWay,
  'userCouponCode': instance.userCouponCode,
  'userDiscountCode': instance.userDiscountCode,
  'removePackage': instance.removePackage,
  'remark': instance.remark,
  'giveawayGift': instance.giveawayGift,
  'sourceItems': instance.sourceItems?.map((e) => e.toJson()).toList(),
  'itemList': instance.itemList?.map((e) => e.toJson()).toList(),
};

OrderServiceOrderCancelPostRequest _$OrderServiceOrderCancelPostRequestFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderCancelPostRequest(
  orderId: JsonCoerce.asString(json['orderId']),
);

Map<String, dynamic> _$OrderServiceOrderCancelPostRequestToJson(
  OrderServiceOrderCancelPostRequest instance,
) => <String, dynamic>{'orderId': instance.orderId};

OrderServiceOrderSubmitPostRequest _$OrderServiceOrderSubmitPostRequestFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderSubmitPostRequest(
  sourceItems: (json['sourceItems'] as List<dynamic>?)
      ?.map(
        (e) => OrderServiceOrderSubmitPostRequest$SourceItems$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  skuList: (json['skuList'] as List<dynamic>?)
      ?.map(
        (e) => OrderServiceOrderSubmitPostRequest$SkuList$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  country: JsonCoerce.asString(json['country']),
  buyType: JsonCoerce.asInt(json['buyType']),
  invitedCode: JsonCoerce.asString(json['invitedCode']),
  userAddressId: JsonCoerce.asInt(json['userAddressId']),
  addBatch: JsonCoerce.asBool(json['addBatch']),
  remark: JsonCoerce.asString(json['remark']),
  isDraft: JsonCoerce.asBool(json['isDraft']),
  submitAnyWay: JsonCoerce.asBool(json['submitAnyWay']),
  userCouponCode: JsonCoerce.asString(json['userCouponCode']),
  removePackage: JsonCoerce.asBool(json['removePackage']),
);

Map<String, dynamic> _$OrderServiceOrderSubmitPostRequestToJson(
  OrderServiceOrderSubmitPostRequest instance,
) => <String, dynamic>{
  'sourceItems': instance.sourceItems?.map((e) => e.toJson()).toList(),
  'skuList': instance.skuList?.map((e) => e.toJson()).toList(),
  'country': instance.country,
  'buyType': instance.buyType,
  'invitedCode': instance.invitedCode,
  'userAddressId': instance.userAddressId,
  'addBatch': instance.addBatch,
  'remark': instance.remark,
  'isDraft': instance.isDraft,
  'submitAnyWay': instance.submitAnyWay,
  'userCouponCode': instance.userCouponCode,
  'removePackage': instance.removePackage,
};

OrderServiceOrderUpdatePostRequest _$OrderServiceOrderUpdatePostRequestFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderUpdatePostRequest(
  orderId: JsonCoerce.asString(json['orderId']),
  userAddressId: JsonCoerce.asInt(json['userAddressId']),
  userAddress: json['userAddress'] == null
      ? null
      : OrderServiceOrderUpdatePostRequest$UserAddress.fromJson(
          json['userAddress'] as Map<String, dynamic>,
        ),
  addBatch: JsonCoerce.asBool(json['addBatch']),
  paySubmit: JsonCoerce.asBool(json['paySubmit']),
  payFreight: JsonCoerce.asBool(json['payFreight']),
  submitAnyWay: JsonCoerce.asBool(json['submitAnyWay']),
  userCouponCode: JsonCoerce.asString(json['userCouponCode']),
  userDiscountCode: JsonCoerce.asString(json['userDiscountCode']),
  removePackage: JsonCoerce.asBool(json['removePackage']),
  remark: JsonCoerce.asString(json['remark']),
  giveawayGift: JsonCoerce.asInt(json['giveawayGift']),
  targetTip: JsonCoerce.asInt(json['targetTip']),
  skuList: (json['skuList'] as List<dynamic>?)
      ?.map(
        (e) => OrderServiceOrderUpdatePostRequest$SkuList$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  sourceItems: (json['sourceItems'] as List<dynamic>?)
      ?.map(
        (e) => OrderServiceOrderUpdatePostRequest$SourceItems$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  itemList: (json['itemList'] as List<dynamic>?)
      ?.map(
        (e) => OrderServiceOrderUpdatePostRequest$ItemList$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
);

Map<String, dynamic> _$OrderServiceOrderUpdatePostRequestToJson(
  OrderServiceOrderUpdatePostRequest instance,
) => <String, dynamic>{
  'orderId': instance.orderId,
  'userAddressId': instance.userAddressId,
  'userAddress': instance.userAddress?.toJson(),
  'addBatch': instance.addBatch,
  'paySubmit': instance.paySubmit,
  'payFreight': instance.payFreight,
  'submitAnyWay': instance.submitAnyWay,
  'userCouponCode': instance.userCouponCode,
  'userDiscountCode': instance.userDiscountCode,
  'removePackage': instance.removePackage,
  'remark': instance.remark,
  'giveawayGift': instance.giveawayGift,
  'targetTip': instance.targetTip,
  'skuList': instance.skuList?.map((e) => e.toJson()).toList(),
  'sourceItems': instance.sourceItems?.map((e) => e.toJson()).toList(),
  'itemList': instance.itemList?.map((e) => e.toJson()).toList(),
};

OrderServiceOrderConfirmPostRequest
_$OrderServiceOrderConfirmPostRequestFromJson(Map<String, dynamic> json) =>
    OrderServiceOrderConfirmPostRequest(
      code: JsonCoerce.asString(json['code']),
      message: JsonCoerce.asString(json['message']),
      data: json['data'] == null
          ? null
          : OrderServiceOrderConfirmPostRequest$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$OrderServiceOrderConfirmPostRequestToJson(
  OrderServiceOrderConfirmPostRequest instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
};

OrderServiceOrderSettlementPostRequest
_$OrderServiceOrderSettlementPostRequestFromJson(Map<String, dynamic> json) =>
    OrderServiceOrderSettlementPostRequest(
      orderId: JsonCoerce.asString(json['orderId']),
      isRecharge: JsonCoerce.asInt(json['isRecharge']),
      rechargeAmount: JsonCoerce.asInt(json['rechargeAmount']),
    );

Map<String, dynamic> _$OrderServiceOrderSettlementPostRequestToJson(
  OrderServiceOrderSettlementPostRequest instance,
) => <String, dynamic>{
  'orderId': instance.orderId,
  'isRecharge': instance.isRecharge,
  'rechargeAmount': instance.rechargeAmount,
};

OrderServiceOrderPricingPostRequest
_$OrderServiceOrderPricingPostRequestFromJson(Map<String, dynamic> json) =>
    OrderServiceOrderPricingPostRequest(
      skuList: (json['skuList'] as List<dynamic>?)
          ?.map(
            (e) => OrderServiceOrderPricingPostRequest$SkuList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
      userCouponCode: JsonCoerce.asString(json['userCouponCode']),
    );

Map<String, dynamic> _$OrderServiceOrderPricingPostRequestToJson(
  OrderServiceOrderPricingPostRequest instance,
) => <String, dynamic>{
  'skuList': instance.skuList?.map((e) => e.toJson()).toList(),
  'userCouponCode': instance.userCouponCode,
};

OrderServiceAftersaleOrderSubmitPostRequest
_$OrderServiceAftersaleOrderSubmitPostRequestFromJson(
  Map<String, dynamic> json,
) => OrderServiceAftersaleOrderSubmitPostRequest(
  orderId: JsonCoerce.asString(json['orderId']),
  skuList: JsonCoerce.asString(json['skuList']),
  returnPayMethod: JsonCoerce.asString(json['returnPayMethod']),
  returnType: JsonCoerce.asString(json['returnType']),
  remark: JsonCoerce.asString(json['remark']),
  remarkImages: JsonCoerce.asString(json['remarkImages']),
  allReturn: JsonCoerce.asBool(json['allReturn']),
);

Map<String, dynamic> _$OrderServiceAftersaleOrderSubmitPostRequestToJson(
  OrderServiceAftersaleOrderSubmitPostRequest instance,
) => <String, dynamic>{
  'orderId': instance.orderId,
  'skuList': instance.skuList,
  'returnPayMethod': instance.returnPayMethod,
  'returnType': instance.returnType,
  'remark': instance.remark,
  'remarkImages': instance.remarkImages,
  'allReturn': instance.allReturn,
};

OrderServiceOrderCouponlistPostRequest
_$OrderServiceOrderCouponlistPostRequestFromJson(Map<String, dynamic> json) =>
    OrderServiceOrderCouponlistPostRequest(
      orderId: JsonCoerce.asString(json['orderId']),
    );

Map<String, dynamic> _$OrderServiceOrderCouponlistPostRequestToJson(
  OrderServiceOrderCouponlistPostRequest instance,
) => <String, dynamic>{'orderId': instance.orderId};

OrderServiceOrderDiscountlistPostRequest
_$OrderServiceOrderDiscountlistPostRequestFromJson(Map<String, dynamic> json) =>
    OrderServiceOrderDiscountlistPostRequest(
      orderId: JsonCoerce.asString(json['orderId']),
      discountCode: JsonCoerce.asString(json['discountCode']),
    );

Map<String, dynamic> _$OrderServiceOrderDiscountlistPostRequestToJson(
  OrderServiceOrderDiscountlistPostRequest instance,
) => <String, dynamic>{
  'orderId': instance.orderId,
  'discountCode': instance.discountCode,
};

OrderServiceOrderAvailableCouponPostRequest
_$OrderServiceOrderAvailableCouponPostRequestFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAvailableCouponPostRequest(
  skuList: (json['skuList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderAvailableCouponPostRequest$SkuList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic> _$OrderServiceOrderAvailableCouponPostRequestToJson(
  OrderServiceOrderAvailableCouponPostRequest instance,
) => <String, dynamic>{
  'skuList': instance.skuList?.map((e) => e.toJson()).toList(),
};

OrderServiceOrderCoupontitlePostRequest
_$OrderServiceOrderCoupontitlePostRequestFromJson(Map<String, dynamic> json) =>
    OrderServiceOrderCoupontitlePostRequest(
      skuList: (json['skuList'] as List<dynamic>?)
          ?.map(
            (e) =>
                OrderServiceOrderCoupontitlePostRequest$SkuList$Item.fromJson(
                  e as Map<String, dynamic>,
                ),
          )
          .toList(),
    );

Map<String, dynamic> _$OrderServiceOrderCoupontitlePostRequestToJson(
  OrderServiceOrderCoupontitlePostRequest instance,
) => <String, dynamic>{
  'skuList': instance.skuList?.map((e) => e.toJson()).toList(),
};

OrderServiceOrderReviewPostRequest _$OrderServiceOrderReviewPostRequestFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderReviewPostRequest(
  itemReviewList: (json['itemReviewList'] as List<dynamic>?)
      ?.map(
        (e) => OrderServiceOrderReviewPostRequest$ItemReviewList$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  orderId: JsonCoerce.asString(json['orderId']),
);

Map<String, dynamic> _$OrderServiceOrderReviewPostRequestToJson(
  OrderServiceOrderReviewPostRequest instance,
) => <String, dynamic>{
  'itemReviewList': instance.itemReviewList?.map((e) => e.toJson()).toList(),
  'orderId': instance.orderId,
};

OrderServiceCartAddPostRequest _$OrderServiceCartAddPostRequestFromJson(
  Map<String, dynamic> json,
) => OrderServiceCartAddPostRequest(
  skuCode: JsonCoerce.asString(json['skuCode']),
  quantity: JsonCoerce.asString(json['quantity']),
  inviteCode: JsonCoerce.asString(json['inviteCode']),
  remark: JsonCoerce.asString(json['remark']),
  sourceDetail: JsonCoerce.asString(json['sourceDetail']),
);

Map<String, dynamic> _$OrderServiceCartAddPostRequestToJson(
  OrderServiceCartAddPostRequest instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'quantity': instance.quantity,
  'inviteCode': instance.inviteCode,
  'remark': instance.remark,
  'sourceDetail': instance.sourceDetail,
};

OrderServiceCartListGetRequest _$OrderServiceCartListGetRequestFromJson(
  Map<String, dynamic> json,
) => OrderServiceCartListGetRequest(
  skuList: (json['skuList'] as List<dynamic>?)
      ?.map(
        (e) => OrderServiceCartListGetRequest$SkuList$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
);

Map<String, dynamic> _$OrderServiceCartListGetRequestToJson(
  OrderServiceCartListGetRequest instance,
) => <String, dynamic>{
  'skuList': instance.skuList?.map((e) => e.toJson()).toList(),
};

OrderServiceCartUpdatePostRequest _$OrderServiceCartUpdatePostRequestFromJson(
  Map<String, dynamic> json,
) => OrderServiceCartUpdatePostRequest(
  type: JsonCoerce.asString(json['type']),
  cart: (json['cart'] as List<dynamic>?)
      ?.map(
        (e) => OrderServiceCartUpdatePostRequest$Cart$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
);

Map<String, dynamic> _$OrderServiceCartUpdatePostRequestToJson(
  OrderServiceCartUpdatePostRequest instance,
) => <String, dynamic>{
  'type': instance.type,
  'cart': instance.cart?.map((e) => e.toJson()).toList(),
};

OrderServiceCartSettlementPostRequest
_$OrderServiceCartSettlementPostRequestFromJson(Map<String, dynamic> json) =>
    OrderServiceCartSettlementPostRequest(
      skuList: (json['skuList'] as List<dynamic>?)
          ?.map(
            (e) => OrderServiceCartSettlementPostRequest$SkuList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    );

Map<String, dynamic> _$OrderServiceCartSettlementPostRequestToJson(
  OrderServiceCartSettlementPostRequest instance,
) => <String, dynamic>{
  'skuList': instance.skuList?.map((e) => e.toJson()).toList(),
};

OrderServiceCartPricingPostRequest _$OrderServiceCartPricingPostRequestFromJson(
  Map<String, dynamic> json,
) => OrderServiceCartPricingPostRequest(
  skuList: (json['skuList'] as List<dynamic>?)
      ?.map(
        (e) => OrderServiceCartPricingPostRequest$SkuList$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  userCouponCode: JsonCoerce.asString(json['userCouponCode']),
);

Map<String, dynamic> _$OrderServiceCartPricingPostRequestToJson(
  OrderServiceCartPricingPostRequest instance,
) => <String, dynamic>{
  'skuList': instance.skuList?.map((e) => e.toJson()).toList(),
  'userCouponCode': instance.userCouponCode,
};

OrderServiceCartNoAuthPricingPostRequest
_$OrderServiceCartNoAuthPricingPostRequestFromJson(Map<String, dynamic> json) =>
    OrderServiceCartNoAuthPricingPostRequest(
      skuList: (json['skuList'] as List<dynamic>?)
          ?.map(
            (e) =>
                OrderServiceCartNoAuthPricingPostRequest$SkuList$Item.fromJson(
                  e as Map<String, dynamic>,
                ),
          )
          .toList(),
      userCouponCode: JsonCoerce.asString(json['userCouponCode']),
    );

Map<String, dynamic> _$OrderServiceCartNoAuthPricingPostRequestToJson(
  OrderServiceCartNoAuthPricingPostRequest instance,
) => <String, dynamic>{
  'skuList': instance.skuList?.map((e) => e.toJson()).toList(),
  'userCouponCode': instance.userCouponCode,
};

OrderServiceOrderAppCancelPost$Response
_$OrderServiceOrderAppCancelPost$ResponseFromJson(Map<String, dynamic> json) =>
    OrderServiceOrderAppCancelPost$Response(
      message: JsonCoerce.asString(json['message']),
      code: JsonCoerce.asInt(json['code']),
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
  code: JsonCoerce.asInt(json['code']),
  message: JsonCoerce.asString(json['message']),
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
      code: JsonCoerce.asInt(json['code']),
      message: JsonCoerce.asString(json['message']),
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
      code: JsonCoerce.asInt(json['code']),
      message: JsonCoerce.asString(json['message']),
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
      code: JsonCoerce.asInt(json['code']),
      message: JsonCoerce.asString(json['message']),
      data: json['data'] == null
          ? null
          : OrderServiceOrderAppListGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: JsonCoerce.asString(json['traceId']),
      placeholder: json['placeholder'],
      success: JsonCoerce.asBool(json['success']),
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
      code: JsonCoerce.asInt(json['code']),
      message: JsonCoerce.asString(json['message']),
      data: json['data'] == null
          ? null
          : OrderServiceOrderAppDetailGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: JsonCoerce.asString(json['traceId']),
      placeholder: json['placeholder'],
      success: JsonCoerce.asBool(json['success']),
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
      code: JsonCoerce.asInt(json['code']),
      message: JsonCoerce.asString(json['message']),
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
      message: JsonCoerce.asString(json['message']),
      code: JsonCoerce.asInt(json['code']),
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
      code: JsonCoerce.asInt(json['code']),
      message: JsonCoerce.asString(json['message']),
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
      code: JsonCoerce.asInt(json['code']),
      message: JsonCoerce.asString(json['message']),
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
      code: JsonCoerce.asString(json['code']),
      message: JsonCoerce.asString(json['message']),
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
      totalPrice: JsonCoerce.asString(json['totalPrice']),
      targetTotalPrice: JsonCoerce.asString(json['targetTotalPrice']),
      currency: JsonCoerce.asString(json['currency']),
      targetCurrency: JsonCoerce.asString(json['targetCurrency']),
      rechargeBalance: JsonCoerce.asString(json['rechargeBalance']),
      rechargeStatus: JsonCoerce.asString(json['rechargeStatus']),
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
      totalAmount: JsonCoerce.asString(json['totalAmount']),
      targetTotalAmount: JsonCoerce.asString(json['targetTotalAmount']),
      sellCur: JsonCoerce.asString(json['sellCur']),
      targetSellCur: JsonCoerce.asString(json['targetSellCur']),
      targetOrderLimitAmount: JsonCoerce.asString(
        json['targetOrderLimitAmount'],
      ),
      targetShipLimitAmount: JsonCoerce.asString(json['targetShipLimitAmount']),
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
      billId: JsonCoerce.asString(json['billId']),
      bizId: JsonCoerce.asString(json['bizId']),
      billType: JsonCoerce.asString(json['billType']),
      status: JsonCoerce.asString(json['status']),
      gmtTimeout: JsonCoerce.asString(json['gmtTimeout']),
      gmtPay: JsonCoerce.asString(json['gmtPay']),
      settlementPrice: JsonCoerce.asString(json['settlementPrice']),
      currency: JsonCoerce.asString(json['currency']),
      targetCurrency: JsonCoerce.asString(json['targetCurrency']),
      targetTotalPrice: JsonCoerce.asString(json['targetTotalPrice']),
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
  code: JsonCoerce.asInt(json['code']),
  message: JsonCoerce.asString(json['message']),
  data: json['data'] == null
      ? null
      : OrderServiceOrderNoAuthDetailGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: JsonCoerce.asString(json['traceId']),
  placeholder: json['placeholder'],
  success: JsonCoerce.asBool(json['success']),
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
      code: JsonCoerce.asInt(json['code']),
      message: JsonCoerce.asString(json['message']),
      data: (json['data'] as List<dynamic>?)
          ?.map(
            (e) => OrderServiceOrderCouponListPost$Response$Data$Item.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
      traceId: JsonCoerce.asString(json['traceId']),
      placeholder: json['placeholder'],
      success: JsonCoerce.asBool(json['success']),
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
  code: JsonCoerce.asInt(json['code']),
  message: JsonCoerce.asString(json['message']),
  data: (json['data'] as List<dynamic>?)
      ?.map(
        (e) => OrderServiceOrderDiscountListPost$Response$Data$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  traceId: JsonCoerce.asString(json['traceId']),
  placeholder: json['placeholder'],
  success: JsonCoerce.asBool(json['success']),
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
  code: JsonCoerce.asInt(json['code']),
  message: JsonCoerce.asString(json['message']),
  data: json['data'] == null
      ? null
      : OrderServiceOrderAvailableCouponPost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: JsonCoerce.asString(json['traceId']),
  placeholder: json['placeholder'],
  success: JsonCoerce.asBool(json['success']),
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
  code: JsonCoerce.asInt(json['code']),
  message: JsonCoerce.asString(json['message']),
  data: JsonCoerce.asString(json['data']),
  traceId: JsonCoerce.asString(json['traceId']),
  placeholder: json['placeholder'],
  success: JsonCoerce.asBool(json['success']),
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
      code: JsonCoerce.asInt(json['code']),
      message: JsonCoerce.asString(json['message']),
      data: (json['data'] as List<dynamic>?)
          ?.map(
            (e) => OrderServiceOrderGetReviewGet$Response$Data$Item.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
      traceId: JsonCoerce.asString(json['traceId']),
      placeholder: json['placeholder'],
      success: JsonCoerce.asBool(json['success']),
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
  code: JsonCoerce.asInt(json['code']),
  message: JsonCoerce.asString(json['message']),
  data: json['data'] == null
      ? null
      : OrderServiceOrderListGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: JsonCoerce.asString(json['traceId']),
  placeholder: json['placeholder'],
  success: JsonCoerce.asBool(json['success']),
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
      code: JsonCoerce.asInt(json['code']),
      message: JsonCoerce.asString(json['message']),
      data: json['data'] == null
          ? null
          : OrderServiceOrderCombineListGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: JsonCoerce.asString(json['traceId']),
      placeholder: json['placeholder'],
      success: JsonCoerce.asBool(json['success']),
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
      code: JsonCoerce.asInt(json['code']),
      message: JsonCoerce.asString(json['message']),
      data: json['data'] == null
          ? null
          : OrderServiceOrderGetBatchNoGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: JsonCoerce.asString(json['traceId']),
      placeholder: json['placeholder'],
      success: JsonCoerce.asBool(json['success']),
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
      code: JsonCoerce.asInt(json['code']),
      message: JsonCoerce.asString(json['message']),
      data: json['data'] == null
          ? null
          : OrderServiceOrderGetButtonGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: JsonCoerce.asString(json['traceId']),
      placeholder: json['placeholder'],
      success: JsonCoerce.asBool(json['success']),
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
      code: JsonCoerce.asInt(json['code']),
      message: JsonCoerce.asString(json['message']),
      data: JsonCoerce.asString(json['data']),
      traceId: JsonCoerce.asString(json['traceId']),
      placeholder: json['placeholder'],
      success: JsonCoerce.asBool(json['success']),
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
      code: JsonCoerce.asInt(json['code']),
      message: JsonCoerce.asString(json['message']),
      data: json['data'] == null
          ? null
          : OrderServiceOrderDetailGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: JsonCoerce.asString(json['traceId']),
      success: JsonCoerce.asBool(json['success']),
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
  code: JsonCoerce.asInt(json['code']),
  message: JsonCoerce.asString(json['message']),
  data: json['data'] == null
      ? null
      : OrderServiceOpenapiOrderDetailGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: JsonCoerce.asString(json['traceId']),
  placeholder: json['placeholder'],
  success: JsonCoerce.asBool(json['success']),
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
  code: JsonCoerce.asInt(json['code']),
  message: JsonCoerce.asString(json['message']),
  data: json['data'] == null
      ? null
      : OrderServiceOrderCombineDetailGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: JsonCoerce.asString(json['traceId']),
  placeholder: json['placeholder'],
  success: JsonCoerce.asBool(json['success']),
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
  code: JsonCoerce.asInt(json['code']),
  message: JsonCoerce.asString(json['message']),
  data: json['data'] == null
      ? null
      : OrderServiceOrderGetOrderTraceGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: JsonCoerce.asString(json['traceId']),
  placeholder: json['placeholder'],
  success: JsonCoerce.asBool(json['success']),
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
  code: JsonCoerce.asInt(json['code']),
  message: JsonCoerce.asString(json['message']),
  data: json['data'] == null
      ? null
      : OrderServiceCartListGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: JsonCoerce.asString(json['traceId']),
  placeholder: JsonCoerce.asString(json['placeholder']),
  success: JsonCoerce.asBool(json['success']),
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
      code: JsonCoerce.asString(json['code']),
      message: JsonCoerce.asString(json['message']),
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
      code: JsonCoerce.asInt(json['code']),
      message: JsonCoerce.asString(json['message']),
      data: json['data'] == null
          ? null
          : OrderServiceCartPricingPost$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: JsonCoerce.asString(json['traceId']),
      success: JsonCoerce.asBool(json['success']),
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
  code: JsonCoerce.asInt(json['code']),
  message: JsonCoerce.asString(json['message']),
  data: json['data'] == null
      ? null
      : OrderServiceCartNoAuthPricingPost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: JsonCoerce.asString(json['traceId']),
  success: JsonCoerce.asBool(json['success']),
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

OrderServiceOrderAppBatchinfosGetRequest$UserAddress
_$OrderServiceOrderAppBatchinfosGetRequest$UserAddressFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppBatchinfosGetRequest$UserAddress(
  isDefault: JsonCoerce.asInt(json['isDefault']),
  email: JsonCoerce.asString(json['email']),
  country: JsonCoerce.asString(json['country']),
  countryCode: JsonCoerce.asString(json['countryCode']),
  state: JsonCoerce.asString(json['state']),
  stateCode: JsonCoerce.asString(json['stateCode']),
  city: JsonCoerce.asString(json['city']),
  cityCode: JsonCoerce.asString(json['cityCode']),
  street: JsonCoerce.asString(json['street']),
  apartment: JsonCoerce.asString(json['apartment']),
  address: JsonCoerce.asString(json['address']),
  coordinate: JsonCoerce.asString(json['coordinate']),
  firstName: JsonCoerce.asString(json['firstName']),
  lastName: JsonCoerce.asString(json['lastName']),
  phoneNumber: JsonCoerce.asString(json['phoneNumber']),
  zipCode: JsonCoerce.asString(json['zipCode']),
  userId: JsonCoerce.asString(json['userId']),
  id: JsonCoerce.asInt(json['id']),
);

Map<String, dynamic>
_$OrderServiceOrderAppBatchinfosGetRequest$UserAddressToJson(
  OrderServiceOrderAppBatchinfosGetRequest$UserAddress instance,
) => <String, dynamic>{
  'isDefault': instance.isDefault,
  'email': instance.email,
  'country': instance.country,
  'countryCode': instance.countryCode,
  'state': instance.state,
  'stateCode': instance.stateCode,
  'city': instance.city,
  'cityCode': instance.cityCode,
  'street': instance.street,
  'apartment': instance.apartment,
  'address': instance.address,
  'coordinate': instance.coordinate,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'phoneNumber': instance.phoneNumber,
  'zipCode': instance.zipCode,
  'userId': instance.userId,
  'id': instance.id,
};

OrderServiceOrderAppBatchinfosGetRequest$SourceItems$Item
_$OrderServiceOrderAppBatchinfosGetRequest$SourceItems$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppBatchinfosGetRequest$SourceItems$Item(
  skuList: (json['skuList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderAppBatchinfosGetRequest$SourceItems$Item$SkuList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  addBatch: JsonCoerce.asBool(json['addBatch']),
  removePackage: JsonCoerce.asBool(json['removePackage']),
  remark: JsonCoerce.asString(json['remark']),
  skuSourceCode: JsonCoerce.asString(json['skuSourceCode']),
);

Map<String, dynamic>
_$OrderServiceOrderAppBatchinfosGetRequest$SourceItems$ItemToJson(
  OrderServiceOrderAppBatchinfosGetRequest$SourceItems$Item instance,
) => <String, dynamic>{
  'skuList': instance.skuList?.map((e) => e.toJson()).toList(),
  'addBatch': instance.addBatch,
  'removePackage': instance.removePackage,
  'remark': instance.remark,
  'skuSourceCode': instance.skuSourceCode,
};

OrderServiceOrderAppBatchinfosGetRequest$ItemList$Item
_$OrderServiceOrderAppBatchinfosGetRequest$ItemList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppBatchinfosGetRequest$ItemList$Item(
  skuCode: JsonCoerce.asString(json['skuCode']),
  remark: JsonCoerce.asString(json['remark']),
);

Map<String, dynamic>
_$OrderServiceOrderAppBatchinfosGetRequest$ItemList$ItemToJson(
  OrderServiceOrderAppBatchinfosGetRequest$ItemList$Item instance,
) => <String, dynamic>{'skuCode': instance.skuCode, 'remark': instance.remark};

OrderServiceOrderAppSubmitPostRequest$SourceItems$Item
_$OrderServiceOrderAppSubmitPostRequest$SourceItems$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppSubmitPostRequest$SourceItems$Item(
  skuList: (json['skuList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderAppSubmitPostRequest$SourceItems$Item$SkuList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  skuSourceCode: JsonCoerce.asString(json['skuSourceCode']),
  addBatch: JsonCoerce.asBool(json['addBatch']),
  removePackage: JsonCoerce.asBool(json['removePackage']),
  remark: JsonCoerce.asString(json['remark']),
);

Map<String, dynamic>
_$OrderServiceOrderAppSubmitPostRequest$SourceItems$ItemToJson(
  OrderServiceOrderAppSubmitPostRequest$SourceItems$Item instance,
) => <String, dynamic>{
  'skuList': instance.skuList?.map((e) => e.toJson()).toList(),
  'skuSourceCode': instance.skuSourceCode,
  'addBatch': instance.addBatch,
  'removePackage': instance.removePackage,
  'remark': instance.remark,
};

OrderServiceOrderAppUpdatePostRequest$UserAddress
_$OrderServiceOrderAppUpdatePostRequest$UserAddressFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppUpdatePostRequest$UserAddress(
  isDefault: JsonCoerce.asInt(json['isDefault']),
  email: JsonCoerce.asString(json['email']),
  country: JsonCoerce.asString(json['country']),
  countryCode: JsonCoerce.asString(json['countryCode']),
  state: JsonCoerce.asString(json['state']),
  stateCode: JsonCoerce.asString(json['stateCode']),
  city: JsonCoerce.asString(json['city']),
  cityCode: JsonCoerce.asString(json['cityCode']),
  street: JsonCoerce.asString(json['street']),
  apartment: JsonCoerce.asString(json['apartment']),
  address: JsonCoerce.asString(json['address']),
  coordinate: JsonCoerce.asString(json['coordinate']),
  firstName: JsonCoerce.asString(json['firstName']),
  lastName: JsonCoerce.asString(json['lastName']),
  phoneNumber: JsonCoerce.asString(json['phoneNumber']),
  zipCode: JsonCoerce.asString(json['zipCode']),
  userId: JsonCoerce.asString(json['userId']),
  id: JsonCoerce.asInt(json['id']),
);

Map<String, dynamic> _$OrderServiceOrderAppUpdatePostRequest$UserAddressToJson(
  OrderServiceOrderAppUpdatePostRequest$UserAddress instance,
) => <String, dynamic>{
  'isDefault': instance.isDefault,
  'email': instance.email,
  'country': instance.country,
  'countryCode': instance.countryCode,
  'state': instance.state,
  'stateCode': instance.stateCode,
  'city': instance.city,
  'cityCode': instance.cityCode,
  'street': instance.street,
  'apartment': instance.apartment,
  'address': instance.address,
  'coordinate': instance.coordinate,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'phoneNumber': instance.phoneNumber,
  'zipCode': instance.zipCode,
  'userId': instance.userId,
  'id': instance.id,
};

OrderServiceOrderAppUpdatePostRequest$SourceItems$Item
_$OrderServiceOrderAppUpdatePostRequest$SourceItems$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppUpdatePostRequest$SourceItems$Item(
  skuList: (json['skuList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderAppUpdatePostRequest$SourceItems$Item$SkuList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  addBatch: JsonCoerce.asBool(json['addBatch']),
  removePackage: JsonCoerce.asBool(json['removePackage']),
  remark: JsonCoerce.asString(json['remark']),
  skuSourceCode: JsonCoerce.asString(json['skuSourceCode']),
);

Map<String, dynamic>
_$OrderServiceOrderAppUpdatePostRequest$SourceItems$ItemToJson(
  OrderServiceOrderAppUpdatePostRequest$SourceItems$Item instance,
) => <String, dynamic>{
  'skuList': instance.skuList?.map((e) => e.toJson()).toList(),
  'addBatch': instance.addBatch,
  'removePackage': instance.removePackage,
  'remark': instance.remark,
  'skuSourceCode': instance.skuSourceCode,
};

OrderServiceOrderAppUpdatePostRequest$ItemList$Item
_$OrderServiceOrderAppUpdatePostRequest$ItemList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppUpdatePostRequest$ItemList$Item(
  skuCode: JsonCoerce.asString(json['skuCode']),
  remark: JsonCoerce.asString(json['remark']),
);

Map<String, dynamic>
_$OrderServiceOrderAppUpdatePostRequest$ItemList$ItemToJson(
  OrderServiceOrderAppUpdatePostRequest$ItemList$Item instance,
) => <String, dynamic>{'skuCode': instance.skuCode, 'remark': instance.remark};

OrderServiceOrderSubmitPostRequest$SourceItems$Item
_$OrderServiceOrderSubmitPostRequest$SourceItems$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderSubmitPostRequest$SourceItems$Item(
  skuList: (json['skuList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderSubmitPostRequest$SourceItems$Item$SkuList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  skuSourceCode: JsonCoerce.asString(json['skuSourceCode']),
  addBatch: JsonCoerce.asBool(json['addBatch']),
  removePackage: JsonCoerce.asBool(json['removePackage']),
  remark: JsonCoerce.asString(json['remark']),
);

Map<String, dynamic>
_$OrderServiceOrderSubmitPostRequest$SourceItems$ItemToJson(
  OrderServiceOrderSubmitPostRequest$SourceItems$Item instance,
) => <String, dynamic>{
  'skuList': instance.skuList?.map((e) => e.toJson()).toList(),
  'skuSourceCode': instance.skuSourceCode,
  'addBatch': instance.addBatch,
  'removePackage': instance.removePackage,
  'remark': instance.remark,
};

OrderServiceOrderSubmitPostRequest$SkuList$Item
_$OrderServiceOrderSubmitPostRequest$SkuList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderSubmitPostRequest$SkuList$Item(
  skuCode: JsonCoerce.asString(json['skuCode']),
  price: JsonCoerce.asString(json['price']),
  quantity: JsonCoerce.asString(json['quantity']),
  inviteCode: JsonCoerce.asString(json['inviteCode']),
  remark: JsonCoerce.asString(json['remark']),
);

Map<String, dynamic> _$OrderServiceOrderSubmitPostRequest$SkuList$ItemToJson(
  OrderServiceOrderSubmitPostRequest$SkuList$Item instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'price': instance.price,
  'quantity': instance.quantity,
  'inviteCode': instance.inviteCode,
  'remark': instance.remark,
};

OrderServiceOrderUpdatePostRequest$UserAddress
_$OrderServiceOrderUpdatePostRequest$UserAddressFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderUpdatePostRequest$UserAddress(
  isDefault: JsonCoerce.asInt(json['isDefault']),
  email: JsonCoerce.asString(json['email']),
  country: JsonCoerce.asString(json['country']),
  countryCode: JsonCoerce.asString(json['countryCode']),
  state: JsonCoerce.asString(json['state']),
  stateCode: JsonCoerce.asString(json['stateCode']),
  city: JsonCoerce.asString(json['city']),
  cityCode: JsonCoerce.asString(json['cityCode']),
  street: JsonCoerce.asString(json['street']),
  apartment: JsonCoerce.asString(json['apartment']),
  address: JsonCoerce.asString(json['address']),
  coordinate: JsonCoerce.asString(json['coordinate']),
  firstName: JsonCoerce.asString(json['firstName']),
  lastName: JsonCoerce.asString(json['lastName']),
  phoneNumber: JsonCoerce.asString(json['phoneNumber']),
  zipCode: JsonCoerce.asString(json['zipCode']),
  userId: JsonCoerce.asString(json['userId']),
  id: JsonCoerce.asInt(json['id']),
);

Map<String, dynamic> _$OrderServiceOrderUpdatePostRequest$UserAddressToJson(
  OrderServiceOrderUpdatePostRequest$UserAddress instance,
) => <String, dynamic>{
  'isDefault': instance.isDefault,
  'email': instance.email,
  'country': instance.country,
  'countryCode': instance.countryCode,
  'state': instance.state,
  'stateCode': instance.stateCode,
  'city': instance.city,
  'cityCode': instance.cityCode,
  'street': instance.street,
  'apartment': instance.apartment,
  'address': instance.address,
  'coordinate': instance.coordinate,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'phoneNumber': instance.phoneNumber,
  'zipCode': instance.zipCode,
  'userId': instance.userId,
  'id': instance.id,
};

OrderServiceOrderUpdatePostRequest$SkuList$Item
_$OrderServiceOrderUpdatePostRequest$SkuList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderUpdatePostRequest$SkuList$Item(
  skuCode: JsonCoerce.asString(json['skuCode']),
  quantity: JsonCoerce.asInt(json['quantity']),
  remark: JsonCoerce.asString(json['remark']),
);

Map<String, dynamic> _$OrderServiceOrderUpdatePostRequest$SkuList$ItemToJson(
  OrderServiceOrderUpdatePostRequest$SkuList$Item instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'quantity': instance.quantity,
  'remark': instance.remark,
};

OrderServiceOrderUpdatePostRequest$SourceItems$Item
_$OrderServiceOrderUpdatePostRequest$SourceItems$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderUpdatePostRequest$SourceItems$Item(
  skuList: (json['skuList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderUpdatePostRequest$SourceItems$Item$SkuList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  addBatch: JsonCoerce.asBool(json['addBatch']),
  payFreight: JsonCoerce.asBool(json['payFreight']),
  removePackage: JsonCoerce.asBool(json['removePackage']),
  remark: JsonCoerce.asString(json['remark']),
  skuSourceCode: JsonCoerce.asString(json['skuSourceCode']),
);

Map<String, dynamic>
_$OrderServiceOrderUpdatePostRequest$SourceItems$ItemToJson(
  OrderServiceOrderUpdatePostRequest$SourceItems$Item instance,
) => <String, dynamic>{
  'skuList': instance.skuList?.map((e) => e.toJson()).toList(),
  'addBatch': instance.addBatch,
  'payFreight': instance.payFreight,
  'removePackage': instance.removePackage,
  'remark': instance.remark,
  'skuSourceCode': instance.skuSourceCode,
};

OrderServiceOrderUpdatePostRequest$ItemList$Item
_$OrderServiceOrderUpdatePostRequest$ItemList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderUpdatePostRequest$ItemList$Item(
  skuCode: JsonCoerce.asString(json['skuCode']),
  remark: JsonCoerce.asString(json['remark']),
);

Map<String, dynamic> _$OrderServiceOrderUpdatePostRequest$ItemList$ItemToJson(
  OrderServiceOrderUpdatePostRequest$ItemList$Item instance,
) => <String, dynamic>{'skuCode': instance.skuCode, 'remark': instance.remark};

OrderServiceOrderConfirmPostRequest$Data
_$OrderServiceOrderConfirmPostRequest$DataFromJson(Map<String, dynamic> json) =>
    OrderServiceOrderConfirmPostRequest$Data(
      skuList: json['skuList'] == null
          ? null
          : OrderServiceOrderConfirmPostRequest$Data$SkuList.fromJson(
              json['skuList'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$OrderServiceOrderConfirmPostRequest$DataToJson(
  OrderServiceOrderConfirmPostRequest$Data instance,
) => <String, dynamic>{'skuList': instance.skuList?.toJson()};

OrderServiceOrderPricingPostRequest$SkuList$Item
_$OrderServiceOrderPricingPostRequest$SkuList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderPricingPostRequest$SkuList$Item(
  skuCode: JsonCoerce.asString(json['skuCode']),
  quantity: JsonCoerce.asInt(json['quantity']),
  price: JsonCoerce.asInt(json['price']),
);

Map<String, dynamic> _$OrderServiceOrderPricingPostRequest$SkuList$ItemToJson(
  OrderServiceOrderPricingPostRequest$SkuList$Item instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'quantity': instance.quantity,
  'price': instance.price,
};

OrderServiceOrderAvailableCouponPostRequest$SkuList$Item
_$OrderServiceOrderAvailableCouponPostRequest$SkuList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAvailableCouponPostRequest$SkuList$Item(
  skuCode: JsonCoerce.asString(json['skuCode']),
  quantity: JsonCoerce.asInt(json['quantity']),
);

Map<String, dynamic>
_$OrderServiceOrderAvailableCouponPostRequest$SkuList$ItemToJson(
  OrderServiceOrderAvailableCouponPostRequest$SkuList$Item instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'quantity': instance.quantity,
};

OrderServiceOrderCoupontitlePostRequest$SkuList$Item
_$OrderServiceOrderCoupontitlePostRequest$SkuList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderCoupontitlePostRequest$SkuList$Item(
  skuCode: JsonCoerce.asString(json['skuCode']),
  quantity: JsonCoerce.asInt(json['quantity']),
);

Map<String, dynamic>
_$OrderServiceOrderCoupontitlePostRequest$SkuList$ItemToJson(
  OrderServiceOrderCoupontitlePostRequest$SkuList$Item instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'quantity': instance.quantity,
};

OrderServiceOrderReviewPostRequest$ItemReviewList$Item
_$OrderServiceOrderReviewPostRequest$ItemReviewList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderReviewPostRequest$ItemReviewList$Item(
  skuCode: JsonCoerce.asString(json['skuCode']),
  comment: JsonCoerce.asInt(json['comment']),
  score: JsonCoerce.asString(json['score']),
  images:
      (json['images'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
      [],
  extraComment: JsonCoerce.asString(json['extraComment']),
);

Map<String, dynamic>
_$OrderServiceOrderReviewPostRequest$ItemReviewList$ItemToJson(
  OrderServiceOrderReviewPostRequest$ItemReviewList$Item instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'comment': instance.comment,
  'score': instance.score,
  'images': instance.images,
  'extraComment': instance.extraComment,
};

OrderServiceCartListGetRequest$SkuList$Item
_$OrderServiceCartListGetRequest$SkuList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceCartListGetRequest$SkuList$Item(
  skuCode: JsonCoerce.asString(json['skuCode']),
  quantity: JsonCoerce.asString(json['quantity']),
  token: JsonCoerce.asString(json['token']),
  groupType: JsonCoerce.asString(json['groupType']),
);

Map<String, dynamic> _$OrderServiceCartListGetRequest$SkuList$ItemToJson(
  OrderServiceCartListGetRequest$SkuList$Item instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'quantity': instance.quantity,
  'token': instance.token,
  'groupType': instance.groupType,
};

OrderServiceCartUpdatePostRequest$Cart$Item
_$OrderServiceCartUpdatePostRequest$Cart$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceCartUpdatePostRequest$Cart$Item(
  skuCode: JsonCoerce.asString(json['skuCode']),
  quantity: JsonCoerce.asInt(json['quantity']),
  orderUpdate: JsonCoerce.asString(json['orderUpdate']),
  remark: JsonCoerce.asString(json['remark']),
);

Map<String, dynamic> _$OrderServiceCartUpdatePostRequest$Cart$ItemToJson(
  OrderServiceCartUpdatePostRequest$Cart$Item instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'quantity': instance.quantity,
  'orderUpdate': instance.orderUpdate,
  'remark': instance.remark,
};

OrderServiceCartSettlementPostRequest$SkuList$Item
_$OrderServiceCartSettlementPostRequest$SkuList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceCartSettlementPostRequest$SkuList$Item(
  skuCode: JsonCoerce.asString(json['skuCode']),
  quantity: JsonCoerce.asInt(json['quantity']),
  price: JsonCoerce.asString(json['price']),
);

Map<String, dynamic> _$OrderServiceCartSettlementPostRequest$SkuList$ItemToJson(
  OrderServiceCartSettlementPostRequest$SkuList$Item instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'quantity': instance.quantity,
  'price': instance.price,
};

OrderServiceCartPricingPostRequest$SkuList$Item
_$OrderServiceCartPricingPostRequest$SkuList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceCartPricingPostRequest$SkuList$Item(
  skuCode: JsonCoerce.asString(json['skuCode']),
  quantity: JsonCoerce.asInt(json['quantity']),
  price: JsonCoerce.asInt(json['price']),
);

Map<String, dynamic> _$OrderServiceCartPricingPostRequest$SkuList$ItemToJson(
  OrderServiceCartPricingPostRequest$SkuList$Item instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'quantity': instance.quantity,
  'price': instance.price,
};

OrderServiceCartNoAuthPricingPostRequest$SkuList$Item
_$OrderServiceCartNoAuthPricingPostRequest$SkuList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceCartNoAuthPricingPostRequest$SkuList$Item(
  skuCode: JsonCoerce.asString(json['skuCode']),
  quantity: JsonCoerce.asInt(json['quantity']),
  price: JsonCoerce.asInt(json['price']),
);

Map<String, dynamic>
_$OrderServiceCartNoAuthPricingPostRequest$SkuList$ItemToJson(
  OrderServiceCartNoAuthPricingPostRequest$SkuList$Item instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'quantity': instance.quantity,
  'price': instance.price,
};

OrderServiceOrderAppBatchInfosGet$Response$Data
_$OrderServiceOrderAppBatchInfosGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppBatchInfosGet$Response$Data(
  title: JsonCoerce.asString(json['title']),
  description: JsonCoerce.asString(json['description']),
  parcelOrderId: JsonCoerce.asString(json['parcelOrderId']),
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
  orderId: JsonCoerce.asString(json['orderId']),
  single: JsonCoerce.asBool(json['single']),
  orderStatus: JsonCoerce.asInt(json['orderStatus']),
  timeoutPeriod: JsonCoerce.asInt(json['timeoutPeriod']),
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
  total: JsonCoerce.asInt(json['total']),
  pageSize: JsonCoerce.asInt(json['pageSize']),
  totalPages: JsonCoerce.asInt(json['totalPages']),
  current: JsonCoerce.asInt(json['current']),
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
  currency: JsonCoerce.asString(json['currency']),
  totalPrice: JsonCoerce.asString(json['totalPrice']),
  targetCurrency: JsonCoerce.asInt(json['targetCurrency']),
  targetPrice: JsonCoerce.asString(json['targetPrice']),
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
  orderId: JsonCoerce.asString(json['orderId']),
  orderStatus: JsonCoerce.asInt(json['orderStatus']),
  timeoutPeriod: JsonCoerce.asInt(json['timeoutPeriod']),
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
  couponCode: JsonCoerce.asString(json['couponCode']),
  discountInfo: JsonCoerce.asString(json['discountInfo']),
  discountType: JsonCoerce.asInt(json['discountType']),
  discountAmount: JsonCoerce.asString(json['discountAmount']),
  currency: JsonCoerce.asString(json['currency']),
  targetDiscountAmount: JsonCoerce.asString(json['targetDiscountAmount']),
  targetCurrency: JsonCoerce.asString(json['targetCurrency']),
  available: JsonCoerce.asBool(json['available']),
  unavailableReason: JsonCoerce.asString(json['unavailableReason']),
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
  couponCode: JsonCoerce.asString(json['couponCode']),
  discountInfo: JsonCoerce.asString(json['discountInfo']),
  discountType: JsonCoerce.asInt(json['discountType']),
  discountAmount: JsonCoerce.asString(json['discountAmount']),
  currency: JsonCoerce.asString(json['currency']),
  targetDiscountAmount: JsonCoerce.asString(json['targetDiscountAmount']),
  targetCurrency: JsonCoerce.asString(json['targetCurrency']),
  available: JsonCoerce.asBool(json['available']),
  unavailableReason: JsonCoerce.asString(json['unavailableReason']),
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
  couponCode: JsonCoerce.asString(json['couponCode']),
  discountInfo: JsonCoerce.asString(json['discountInfo']),
  discountType: JsonCoerce.asInt(json['discountType']),
  discountAmount: JsonCoerce.asString(json['discountAmount']),
  currency: JsonCoerce.asString(json['currency']),
  targetDiscountAmount: JsonCoerce.asString(json['targetDiscountAmount']),
  targetCurrency: JsonCoerce.asString(json['targetCurrency']),
  available: JsonCoerce.asBool(json['available']),
  unavailableReason: JsonCoerce.asString(json['unavailableReason']),
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
  productName: JsonCoerce.asString(json['productName']),
  skuCode: JsonCoerce.asString(json['skuCode']),
  productCode: JsonCoerce.asString(json['productCode']),
  image: JsonCoerce.asString(json['image']),
  targetSellPrice: JsonCoerce.asString(json['targetSellPrice']),
  targetSellCur: JsonCoerce.asString(json['targetSellCur']),
  targetTotalPrice: JsonCoerce.asString(json['targetTotalPrice']),
  quantity: JsonCoerce.asString(json['quantity']),
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
      total: JsonCoerce.asInt(json['total']),
      pageSize: JsonCoerce.asInt(json['pageSize']),
      totalPages: JsonCoerce.asInt(json['totalPages']),
      current: JsonCoerce.asInt(json['current']),
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
  total: JsonCoerce.asInt(json['total']),
  pageSize: JsonCoerce.asInt(json['pageSize']),
  totalPages: JsonCoerce.asInt(json['totalPages']),
  current: JsonCoerce.asInt(json['current']),
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
  batchNo: JsonCoerce.asString(json['batchNo']),
);

Map<String, dynamic> _$OrderServiceOrderGetBatchNoGet$Response$DataToJson(
  OrderServiceOrderGetBatchNoGet$Response$Data instance,
) => <String, dynamic>{'batchNo': instance.batchNo};

OrderServiceOrderGetButtonGet$Response$Data
_$OrderServiceOrderGetButtonGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderGetButtonGet$Response$Data(
  canBatch: JsonCoerce.asBool(json['canBatch']),
  canFreightCalc: JsonCoerce.asBool(json['canFreightCalc']),
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
  afterSalesList: json['afterSalesList'] == null
      ? []
      : JsonCoerce.asStringList(json['afterSalesList']),
  orderBillList: json['orderBillList'] == null
      ? []
      : JsonCoerce.asStringList(json['orderBillList']),
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
  parcelOrderId: JsonCoerce.asString(json['parcelOrderId']),
  parcelOrderStatus: JsonCoerce.asString(json['parcelOrderStatus']),
  lastMileMailNo: JsonCoerce.asString(json['lastMileMailNo']),
  lastMileCompanyName: JsonCoerce.asString(json['lastMileCompanyName']),
  lastMileMailNoLink: JsonCoerce.asString(json['lastMileMailNoLink']),
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
      discountAmount: JsonCoerce.asString(json['discountAmount']),
      totalDiscountAmount: JsonCoerce.asString(json['totalDiscountAmount']),
      totalAmount: JsonCoerce.asString(json['totalAmount']),
      targetTotalAmount: JsonCoerce.asString(json['targetTotalAmount']),
      totalAmountCur: JsonCoerce.asString(json['totalAmountCur']),
      targetTotalAmountCur: JsonCoerce.asString(json['targetTotalAmountCur']),
      orderLimitAmount: JsonCoerce.asInt(json['orderLimitAmount']),
      shipLimitAmount: JsonCoerce.asInt(json['shipLimitAmount']),
      country: JsonCoerce.asString(json['country']),
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
  itemsTotalAmount: JsonCoerce.asString(json['itemsTotalAmount']),
  targetOriginAmount: JsonCoerce.asString(json['targetOriginAmount']),
  freightAmount: JsonCoerce.asString(json['freightAmount']),
  totalAmount: JsonCoerce.asString(json['totalAmount']),
  targetTotalAmount: JsonCoerce.asString(json['targetTotalAmount']),
  discountAmount: JsonCoerce.asString(json['discountAmount']),
  targetDiscountAmount: JsonCoerce.asString(json['targetDiscountAmount']),
  settlementAmount: JsonCoerce.asString(json['settlementAmount']),
  targetSettlementAmount: JsonCoerce.asString(json['targetSettlementAmount']),
  targetOrderLimitAmount: JsonCoerce.asString(json['targetOrderLimitAmount']),
  targetShipLimitAmount: JsonCoerce.asString(json['targetShipLimitAmount']),
  targetSellCur: JsonCoerce.asString(json['targetSellCur']),
  sellCur: JsonCoerce.asString(json['sellCur']),
  userCouponCode: JsonCoerce.asString(json['userCouponCode']),
  rechargeBalance: JsonCoerce.asString(json['rechargeBalance']),
  targetItemDiscountAmount: JsonCoerce.asString(
    json['targetItemDiscountAmount'],
  ),
  skuQuantityDTOList: (json['skuQuantityDTOList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceCartPricingPost$Response$Data$SkuQuantityDTOList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  remark: JsonCoerce.asString(json['remark']),
  remarkImages: JsonCoerce.asString(json['remarkImages']),
  country: JsonCoerce.asString(json['country']),
  orderBatch: JsonCoerce.asBool(json['orderBatch']),
  targetItemsTotalAmount: JsonCoerce.asString(json['targetItemsTotalAmount']),
  amountValidContent: JsonCoerce.asString(json['amountValidContent']),
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
  itemsTotalAmount: JsonCoerce.asString(json['itemsTotalAmount']),
  freightAmount: JsonCoerce.asString(json['freightAmount']),
  totalAmount: JsonCoerce.asString(json['totalAmount']),
  targetTotalAmount: JsonCoerce.asString(json['targetTotalAmount']),
  discountAmount: JsonCoerce.asString(json['discountAmount']),
  targetDiscountAmount: JsonCoerce.asString(json['targetDiscountAmount']),
  settlementAmount: JsonCoerce.asString(json['settlementAmount']),
  targetSettlementAmount: JsonCoerce.asString(json['targetSettlementAmount']),
  targetOrderLimitAmount: JsonCoerce.asString(json['targetOrderLimitAmount']),
  targetShipLimitAmount: JsonCoerce.asString(json['targetShipLimitAmount']),
  targetSellCur: JsonCoerce.asString(json['targetSellCur']),
  sellCur: JsonCoerce.asString(json['sellCur']),
  userCouponCode: JsonCoerce.asString(json['userCouponCode']),
  rechargeBalance: JsonCoerce.asString(json['rechargeBalance']),
  skuQuantityDTOList: (json['skuQuantityDTOList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceCartNoAuthPricingPost$Response$Data$SkuQuantityDTOList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  remark: JsonCoerce.asString(json['remark']),
  remarkImages: JsonCoerce.asString(json['remarkImages']),
  country: JsonCoerce.asString(json['country']),
  orderBatch: JsonCoerce.asBool(json['orderBatch']),
  targetItemsTotalAmount: JsonCoerce.asString(json['targetItemsTotalAmount']),
  amountValidContent: JsonCoerce.asString(json['amountValidContent']),
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

OrderServiceOrderAppBatchinfosGetRequest$SourceItems$Item$SkuList$Item
_$OrderServiceOrderAppBatchinfosGetRequest$SourceItems$Item$SkuList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppBatchinfosGetRequest$SourceItems$Item$SkuList$Item(
  skuCode: JsonCoerce.asString(json['skuCode']),
  quantity: JsonCoerce.asInt(json['quantity']),
  remark: JsonCoerce.asString(json['remark']),
);

Map<String, dynamic>
_$OrderServiceOrderAppBatchinfosGetRequest$SourceItems$Item$SkuList$ItemToJson(
  OrderServiceOrderAppBatchinfosGetRequest$SourceItems$Item$SkuList$Item
  instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'quantity': instance.quantity,
  'remark': instance.remark,
};

OrderServiceOrderAppSubmitPostRequest$SourceItems$Item$SkuList$Item
_$OrderServiceOrderAppSubmitPostRequest$SourceItems$Item$SkuList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppSubmitPostRequest$SourceItems$Item$SkuList$Item(
  skuCode: JsonCoerce.asString(json['skuCode']),
  quantity: JsonCoerce.asInt(json['quantity']),
);

Map<String, dynamic>
_$OrderServiceOrderAppSubmitPostRequest$SourceItems$Item$SkuList$ItemToJson(
  OrderServiceOrderAppSubmitPostRequest$SourceItems$Item$SkuList$Item instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'quantity': instance.quantity,
};

OrderServiceOrderAppUpdatePostRequest$SourceItems$Item$SkuList$Item
_$OrderServiceOrderAppUpdatePostRequest$SourceItems$Item$SkuList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppUpdatePostRequest$SourceItems$Item$SkuList$Item(
  skuCode: JsonCoerce.asString(json['skuCode']),
  quantity: JsonCoerce.asInt(json['quantity']),
  remark: JsonCoerce.asString(json['remark']),
);

Map<String, dynamic>
_$OrderServiceOrderAppUpdatePostRequest$SourceItems$Item$SkuList$ItemToJson(
  OrderServiceOrderAppUpdatePostRequest$SourceItems$Item$SkuList$Item instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'quantity': instance.quantity,
  'remark': instance.remark,
};

OrderServiceOrderSubmitPostRequest$SourceItems$Item$SkuList$Item
_$OrderServiceOrderSubmitPostRequest$SourceItems$Item$SkuList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderSubmitPostRequest$SourceItems$Item$SkuList$Item(
  skuCode: JsonCoerce.asString(json['skuCode']),
  quantity: JsonCoerce.asInt(json['quantity']),
  price: JsonCoerce.asInt(json['price']),
  remark: JsonCoerce.asString(json['remark']),
  inviteCode: JsonCoerce.asString(json['inviteCode']),
);

Map<String, dynamic>
_$OrderServiceOrderSubmitPostRequest$SourceItems$Item$SkuList$ItemToJson(
  OrderServiceOrderSubmitPostRequest$SourceItems$Item$SkuList$Item instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'quantity': instance.quantity,
  'price': instance.price,
  'remark': instance.remark,
  'inviteCode': instance.inviteCode,
};

OrderServiceOrderUpdatePostRequest$SourceItems$Item$SkuList$Item
_$OrderServiceOrderUpdatePostRequest$SourceItems$Item$SkuList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderUpdatePostRequest$SourceItems$Item$SkuList$Item(
  skuCode: JsonCoerce.asString(json['skuCode']),
  quantity: JsonCoerce.asInt(json['quantity']),
  remark: JsonCoerce.asString(json['remark']),
);

Map<String, dynamic>
_$OrderServiceOrderUpdatePostRequest$SourceItems$Item$SkuList$ItemToJson(
  OrderServiceOrderUpdatePostRequest$SourceItems$Item$SkuList$Item instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'quantity': instance.quantity,
  'remark': instance.remark,
};

OrderServiceOrderConfirmPostRequest$Data$SkuList
_$OrderServiceOrderConfirmPostRequest$Data$SkuListFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderConfirmPostRequest$Data$SkuList(
  skuCode: JsonCoerce.asString(json['skuCode']),
  quantity: JsonCoerce.asString(json['quantity']),
  price: JsonCoerce.asString(json['price']),
);

Map<String, dynamic> _$OrderServiceOrderConfirmPostRequest$Data$SkuListToJson(
  OrderServiceOrderConfirmPostRequest$Data$SkuList instance,
) => <String, dynamic>{
  'skuCode': instance.skuCode,
  'quantity': instance.quantity,
  'price': instance.price,
};

OrderServiceOrderAppBatchInfosGet$Response$Data$LogisticsJoinInfoList$Item
_$OrderServiceOrderAppBatchInfosGet$Response$Data$LogisticsJoinInfoList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppBatchInfosGet$Response$Data$LogisticsJoinInfoList$Item(
  title: JsonCoerce.asString(json['title']),
  orderId: JsonCoerce.asString(json['orderId']),
  itemCount: JsonCoerce.asInt(json['itemCount']),
  itemCountDescription: JsonCoerce.asString(json['itemCountDescription']),
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
  status: JsonCoerce.asInt(json['status']),
  frontStatus: JsonCoerce.asInt(json['frontStatus']),
  statusContent: JsonCoerce.asString(json['statusContent']),
  orderStatus: JsonCoerce.asInt(json['orderStatus']),
  orderId: JsonCoerce.asString(json['orderId']),
  parentOrderId: JsonCoerce.asString(json['parentOrderId']),
  quantity: JsonCoerce.asInt(json['quantity']),
  totalAmount: JsonCoerce.asString(json['totalAmount']),
  targetTotalAmount: JsonCoerce.asString(json['targetTotalAmount']),
  discountAmount: JsonCoerce.asString(json['discountAmount']),
  targetDiscountAmount: JsonCoerce.asString(json['targetDiscountAmount']),
  targetPayFeeAmount: JsonCoerce.asString(json['targetPayFeeAmount']),
  targetActualAmount: JsonCoerce.asString(json['targetActualAmount']),
  targetTipAmount: JsonCoerce.asString(json['targetTipAmount']),
  targetServiceAmount: JsonCoerce.asString(json['targetServiceAmount']),
  currency: JsonCoerce.asString(json['currency']),
  targetCurrency: JsonCoerce.asString(json['targetCurrency']),
  description: JsonCoerce.asString(json['description']),
  remark: JsonCoerce.asString(json['remark']),
  statusIcon: JsonCoerce.asString(json['statusIcon']),
  operates:
      (json['operates'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
      [],
  isLogisticsTrace: JsonCoerce.asBool(json['isLogisticsTrace']),
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
  afterSalesList: JsonCoerce.asString(json['afterSalesList']),
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
  createTime: JsonCoerce.asInt(json['createTime']),
  wish: JsonCoerce.asBool(json['wish']),
  targetItemTotalAmount: JsonCoerce.asString(json['targetItemTotalAmount']),
  targetFreightAmount: JsonCoerce.asString(json['targetFreightAmount']),
  giveawayGift: JsonCoerce.asInt(json['giveawayGift']),
  orderFreight: JsonCoerce.asBool(json['orderFreight']),
  skuSourceCode: JsonCoerce.asString(json['skuSourceCode']),
  skuSourceCodeTitle: JsonCoerce.asString(json['skuSourceCodeTitle']),
  tabStatusContent: JsonCoerce.asString(json['tabStatusContent']),
  tabStatusDescription: JsonCoerce.asString(json['tabStatusDescription']),
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
  userId: JsonCoerce.asString(json['userId']),
  orderId: JsonCoerce.asString(json['orderId']),
  skuSourceCode: JsonCoerce.asString(json['skuSourceCode']),
  parentOrderId: JsonCoerce.asString(json['parentOrderId']),
  status: JsonCoerce.asInt(json['status']),
  frontStatus: JsonCoerce.asInt(json['frontStatus']),
  statusContent: JsonCoerce.asString(json['statusContent']),
  orderStatus: JsonCoerce.asInt(json['orderStatus']),
  evaluateStatus: JsonCoerce.asInt(json['evaluateStatus']),
  timeoutPeriod: JsonCoerce.asInt(json['timeoutPeriod']),
  createTime: JsonCoerce.asInt(json['createTime']),
  leftTime: JsonCoerce.asInt(json['leftTime']),
  title: JsonCoerce.asString(json['title']),
  subTitle: JsonCoerce.asString(json['subTitle']),
  operates: json['operates'] == null
      ? []
      : JsonCoerce.asStringList(json['operates']),
  description: JsonCoerce.asString(json['description']),
  paySuccessDescription: JsonCoerce.asString(json['paySuccessDescription']),
  afterSalesExpressMethod: JsonCoerce.asInt(json['afterSalesExpressMethod']),
  afterSalesState: JsonCoerce.asInt(json['afterSalesState']),
  remark: JsonCoerce.asString(json['remark']),
  remarkImages: JsonCoerce.asString(json['remarkImages']),
  supportOnlineAfterSales: JsonCoerce.asInt(json['supportOnlineAfterSales']),
  receiptPdfLink: JsonCoerce.asString(json['receiptPdfLink']),
  afterSalesSupport: JsonCoerce.asString(json['afterSalesSupport']),
  tenantCode: JsonCoerce.asString(json['tenantCode']),
  shippingCountry: JsonCoerce.asString(json['shippingCountry']),
  payTime: JsonCoerce.asInt(json['payTime']),
  afterSales: JsonCoerce.asBool(json['afterSales']),
  wish: JsonCoerce.asBool(json['wish']),
  removePackage: JsonCoerce.asBool(json['removePackage']),
  orderFreight: JsonCoerce.asBool(json['orderFreight']),
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
  country: JsonCoerce.asString(json['country']),
  countryCode: JsonCoerce.asString(json['countryCode']),
  state: JsonCoerce.asString(json['state']),
  stateCode: JsonCoerce.asString(json['stateCode']),
  city: JsonCoerce.asString(json['city']),
  cityCode: JsonCoerce.asString(json['cityCode']),
  street: JsonCoerce.asString(json['street']),
  apartment: JsonCoerce.asString(json['apartment']),
  address: JsonCoerce.asString(json['address']),
  firstName: JsonCoerce.asString(json['firstName']),
  lastName: JsonCoerce.asString(json['lastName']),
  phoneNumber: JsonCoerce.asString(json['phoneNumber']),
  zipCode: JsonCoerce.asString(json['zipCode']),
  id: JsonCoerce.asInt(json['id']),
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
  method: JsonCoerce.asString(json['method']),
  methodName: JsonCoerce.asString(json['methodName']),
  payOrderId: JsonCoerce.asString(json['payOrderId']),
  cardMsg: JsonCoerce.asString(json['cardMsg']),
  image: JsonCoerce.asString(json['image']),
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
  receiptAmount: JsonCoerce.asString(json['receiptAmount']),
  itemsTotalAmount: JsonCoerce.asString(json['itemsTotalAmount']),
  freightAmount: JsonCoerce.asString(json['freightAmount']),
  targetFreightAmount: JsonCoerce.asString(json['targetFreightAmount']),
  skuQuantity: JsonCoerce.asInt(json['skuQuantity']),
  currency: JsonCoerce.asString(json['currency']),
  totalPrice: JsonCoerce.asString(json['totalPrice']),
  targetPrice: JsonCoerce.asString(json['targetPrice']),
  targetSettlementAmount: JsonCoerce.asString(json['targetSettlementAmount']),
  settlementAmount: JsonCoerce.asString(json['settlementAmount']),
  discountAmount: JsonCoerce.asString(json['discountAmount']),
  targetDiscountAmount: JsonCoerce.asString(json['targetDiscountAmount']),
  rechargeAmount: JsonCoerce.asString(json['rechargeAmount']),
  targetRechargePrice: JsonCoerce.asString(json['targetRechargePrice']),
  targetPayFeeAmount: JsonCoerce.asString(json['targetPayFeeAmount']),
  targetCurrency: JsonCoerce.asString(json['targetCurrency']),
  targetItemsTotalAmount: JsonCoerce.asString(json['targetItemsTotalAmount']),
  targetOriginAmount: JsonCoerce.asString(json['targetOriginAmount']),
  targetItemDiscountAmount: JsonCoerce.asString(
    json['targetItemDiscountAmount'],
  ),
  targetActualAmount: JsonCoerce.asString(json['targetActualAmount']),
  targetTipAmount: JsonCoerce.asString(json['targetTipAmount']),
  targetServiceAmount: JsonCoerce.asString(json['targetServiceAmount']),
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
  status: JsonCoerce.asString(json['status']),
  targetCurrency: JsonCoerce.asString(json['targetCurrency']),
  targetTotalPrice: JsonCoerce.asString(json['targetTotalPrice']),
  billId: JsonCoerce.asString(json['billId']),
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
  parcelOrderId: JsonCoerce.asString(json['parcelOrderId']),
  parcelStatus: JsonCoerce.asString(json['parcelStatus']),
  parcelStatusDesc: JsonCoerce.asString(json['parcelStatusDesc']),
  createTime: JsonCoerce.asInt(json['createTime']),
  warehouseCode: JsonCoerce.asString(json['warehouseCode']),
  warehouseName: JsonCoerce.asString(json['warehouseName']),
  freight: JsonCoerce.asString(json['freight']),
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
  buyerOperates: json['buyerOperates'] == null
      ? []
      : JsonCoerce.asStringList(json['buyerOperates']),
  freightCompensate: json['freightCompensate'] == null
      ? null
      : OrderServiceOrderAppDetailGet$Response$Data$ParcelOrder$FreightCompensate.fromJson(
          json['freightCompensate'] as Map<String, dynamic>,
        ),
  solutionCode: JsonCoerce.asString(json['solutionCode']),
  actualFreight: JsonCoerce.asString(json['actualFreight']),
  actualFreightCurrency: JsonCoerce.asString(json['actualFreightCurrency']),
  targetFreightCouponDiscountAmount: JsonCoerce.asString(
    json['targetFreightCouponDiscountAmount'],
  ),
  targetFreightCouponDiscountCurrency: JsonCoerce.asString(
    json['targetFreightCouponDiscountCurrency'],
  ),
  targetFreight: JsonCoerce.asString(json['targetFreight']),
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
  tradeOrderId: JsonCoerce.asString(json['tradeOrderId']),
  logisticsOrderId: JsonCoerce.asString(json['logisticsOrderId']),
  logisticsStatus: JsonCoerce.asString(json['logisticsStatus']),
  traceList: (json['traceList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderAppDetailGet$Response$Data$OrderTrace$TraceList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  parcelOrderId: JsonCoerce.asString(json['parcelOrderId']),
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
  discountType: JsonCoerce.asInt(json['discountType']),
  userCouponCode: JsonCoerce.asString(json['userCouponCode']),
  discountAmount: JsonCoerce.asString(json['discountAmount']),
  targetDiscountAmount: JsonCoerce.asString(json['targetDiscountAmount']),
  couponCode: JsonCoerce.asString(json['couponCode']),
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
  skuSourceCode: JsonCoerce.asString(json['skuSourceCode']),
  skuSourceTitle: JsonCoerce.asString(json['skuSourceTitle']),
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
  itemsOriginTotalAmount: JsonCoerce.asString(json['itemsOriginTotalAmount']),
  freightAmount: JsonCoerce.asString(json['freightAmount']),
  taxDetail: JsonCoerce.asString(json['taxDetail']),
  rechargeBalance: JsonCoerce.asString(json['rechargeBalance']),
  rechargeBalanceTips: JsonCoerce.asString(json['rechargeBalanceTips']),
  isCouponCode: JsonCoerce.asString(json['isCouponCode']),
  couponCodeReason: JsonCoerce.asString(json['couponCodeReason']),
  isVoucherCode: JsonCoerce.asString(json['isVoucherCode']),
  notSupportDeliveryDescription: JsonCoerce.asString(
    json['notSupportDeliveryDescription'],
  ),
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
  payType: JsonCoerce.asString(json['payType']),
  payTypeName: JsonCoerce.asString(json['payTypeName']),
  payTypeIcon: JsonCoerce.asString(json['payTypeIcon']),
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
  userId: JsonCoerce.asString(json['userId']),
  orderId: JsonCoerce.asString(json['orderId']),
  skuSourceCode: JsonCoerce.asString(json['skuSourceCode']),
  parentOrderId: JsonCoerce.asString(json['parentOrderId']),
  status: JsonCoerce.asInt(json['status']),
  frontStatus: JsonCoerce.asInt(json['frontStatus']),
  statusContent: JsonCoerce.asString(json['statusContent']),
  orderStatus: JsonCoerce.asInt(json['orderStatus']),
  evaluateStatus: JsonCoerce.asInt(json['evaluateStatus']),
  timeoutPeriod: JsonCoerce.asInt(json['timeoutPeriod']),
  createTime: JsonCoerce.asInt(json['createTime']),
  leftTime: JsonCoerce.asInt(json['leftTime']),
  title: JsonCoerce.asString(json['title']),
  subTitle: JsonCoerce.asString(json['subTitle']),
  operates: json['operates'] == null
      ? []
      : JsonCoerce.asStringList(json['operates']),
  description: JsonCoerce.asString(json['description']),
  paySuccessDescription: JsonCoerce.asString(json['paySuccessDescription']),
  afterSalesExpressMethod: JsonCoerce.asInt(json['afterSalesExpressMethod']),
  afterSalesState: JsonCoerce.asInt(json['afterSalesState']),
  remark: JsonCoerce.asString(json['remark']),
  remarkImages: JsonCoerce.asString(json['remarkImages']),
  supportOnlineAfterSales: JsonCoerce.asInt(json['supportOnlineAfterSales']),
  receiptPdfLink: JsonCoerce.asString(json['receiptPdfLink']),
  afterSalesSupport: JsonCoerce.asString(json['afterSalesSupport']),
  tenantCode: JsonCoerce.asString(json['tenantCode']),
  shippingCountry: JsonCoerce.asString(json['shippingCountry']),
  payTime: JsonCoerce.asInt(json['payTime']),
  afterSales: JsonCoerce.asBool(json['afterSales']),
  wish: JsonCoerce.asBool(json['wish']),
  removePackage: JsonCoerce.asBool(json['removePackage']),
  orderFreight: JsonCoerce.asBool(json['orderFreight']),
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
  country: JsonCoerce.asString(json['country']),
  countryCode: JsonCoerce.asString(json['countryCode']),
  state: JsonCoerce.asString(json['state']),
  stateCode: JsonCoerce.asString(json['stateCode']),
  city: JsonCoerce.asString(json['city']),
  cityCode: JsonCoerce.asString(json['cityCode']),
  street: JsonCoerce.asString(json['street']),
  apartment: JsonCoerce.asString(json['apartment']),
  address: JsonCoerce.asString(json['address']),
  firstName: JsonCoerce.asString(json['firstName']),
  lastName: JsonCoerce.asString(json['lastName']),
  phoneNumber: JsonCoerce.asString(json['phoneNumber']),
  zipCode: JsonCoerce.asString(json['zipCode']),
  id: JsonCoerce.asInt(json['id']),
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
  method: JsonCoerce.asString(json['method']),
  methodName: JsonCoerce.asString(json['methodName']),
  payOrderId: JsonCoerce.asString(json['payOrderId']),
  cardMsg: JsonCoerce.asString(json['cardMsg']),
  image: JsonCoerce.asString(json['image']),
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
  receiptAmount: JsonCoerce.asString(json['receiptAmount']),
  itemsTotalAmount: JsonCoerce.asString(json['itemsTotalAmount']),
  freightAmount: JsonCoerce.asString(json['freightAmount']),
  targetFreightAmount: JsonCoerce.asString(json['targetFreightAmount']),
  skuQuantity: JsonCoerce.asInt(json['skuQuantity']),
  currency: JsonCoerce.asString(json['currency']),
  totalPrice: JsonCoerce.asString(json['totalPrice']),
  targetPrice: JsonCoerce.asString(json['targetPrice']),
  targetSettlementAmount: JsonCoerce.asString(json['targetSettlementAmount']),
  settlementAmount: JsonCoerce.asString(json['settlementAmount']),
  discountAmount: JsonCoerce.asString(json['discountAmount']),
  targetDiscountAmount: JsonCoerce.asString(json['targetDiscountAmount']),
  rechargeAmount: JsonCoerce.asString(json['rechargeAmount']),
  targetRechargePrice: JsonCoerce.asString(json['targetRechargePrice']),
  targetPayFeeAmount: JsonCoerce.asString(json['targetPayFeeAmount']),
  targetCurrency: JsonCoerce.asString(json['targetCurrency']),
  targetItemsTotalAmount: JsonCoerce.asString(json['targetItemsTotalAmount']),
  targetOriginAmount: JsonCoerce.asString(json['targetOriginAmount']),
  targetActualAmount: JsonCoerce.asString(json['targetActualAmount']),
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
  status: JsonCoerce.asString(json['status']),
  targetCurrency: JsonCoerce.asString(json['targetCurrency']),
  targetTotalPrice: JsonCoerce.asString(json['targetTotalPrice']),
  billId: JsonCoerce.asString(json['billId']),
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
  parcelOrderId: JsonCoerce.asString(json['parcelOrderId']),
  parcelStatus: JsonCoerce.asString(json['parcelStatus']),
  parcelStatusDesc: JsonCoerce.asString(json['parcelStatusDesc']),
  createTime: JsonCoerce.asInt(json['createTime']),
  warehouseCode: JsonCoerce.asString(json['warehouseCode']),
  warehouseName: JsonCoerce.asString(json['warehouseName']),
  freight: JsonCoerce.asString(json['freight']),
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
  buyerOperates: json['buyerOperates'] == null
      ? []
      : JsonCoerce.asStringList(json['buyerOperates']),
  freightCompensate: json['freightCompensate'] == null
      ? null
      : OrderServiceOrderNoAuthDetailGet$Response$Data$ParcelOrder$FreightCompensate.fromJson(
          json['freightCompensate'] as Map<String, dynamic>,
        ),
  solutionCode: JsonCoerce.asString(json['solutionCode']),
  actualFreight: JsonCoerce.asString(json['actualFreight']),
  actualFreightCurrency: JsonCoerce.asString(json['actualFreightCurrency']),
  targetFreightCouponDiscountAmount: JsonCoerce.asString(
    json['targetFreightCouponDiscountAmount'],
  ),
  targetFreightCouponDiscountCurrency: JsonCoerce.asString(
    json['targetFreightCouponDiscountCurrency'],
  ),
  targetFreight: JsonCoerce.asString(json['targetFreight']),
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
  tradeOrderId: JsonCoerce.asString(json['tradeOrderId']),
  logisticsOrderId: JsonCoerce.asString(json['logisticsOrderId']),
  logisticsStatus: JsonCoerce.asString(json['logisticsStatus']),
  traceList: (json['traceList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderNoAuthDetailGet$Response$Data$OrderTrace$TraceList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  parcelOrderId: JsonCoerce.asString(json['parcelOrderId']),
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
  discountType: JsonCoerce.asInt(json['discountType']),
  userCouponCode: JsonCoerce.asString(json['userCouponCode']),
  discountAmount: JsonCoerce.asString(json['discountAmount']),
  targetDiscountAmount: JsonCoerce.asString(json['targetDiscountAmount']),
  couponCode: JsonCoerce.asString(json['couponCode']),
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
  skuSourceCode: JsonCoerce.asString(json['skuSourceCode']),
  remark: JsonCoerce.asString(json['remark']),
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
  userCouponCode: JsonCoerce.asString(json['userCouponCode']),
  couponCode: JsonCoerce.asString(json['couponCode']),
  couponTitle: JsonCoerce.asInt(json['couponTitle']),
  isUsed: JsonCoerce.asString(json['isUsed']),
  gmtInvalid: JsonCoerce.asString(json['gmtInvalid']),
  type: JsonCoerce.asInt(json['type']),
  discount: JsonCoerce.asInt(json['discount']),
  limitAmount: JsonCoerce.asInt(json['limitAmount']),
  currency: JsonCoerce.asString(json['currency']),
  discountTarget: JsonCoerce.asString(json['discountTarget']),
  limitAmountTarget: JsonCoerce.asString(json['limitAmountTarget']),
  currencyTarget: JsonCoerce.asString(json['currencyTarget']),
  sourceCode: JsonCoerce.asString(json['sourceCode']),
  scence: JsonCoerce.asString(json['scence']),
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
  name: JsonCoerce.asString(json['name']),
  value: JsonCoerce.asString(json['value']),
);

Map<String, dynamic>
_$OrderServiceOrderGetReviewGet$Response$Data$Item$SkuSpecValues$ItemToJson(
  OrderServiceOrderGetReviewGet$Response$Data$Item$SkuSpecValues$Item instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

OrderServiceOrderGetReviewGet$Response$Data$Item$Review
_$OrderServiceOrderGetReviewGet$Response$Data$Item$ReviewFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderGetReviewGet$Response$Data$Item$Review(
  comment: JsonCoerce.asString(json['comment']),
  score: JsonCoerce.asString(json['score']),
  images: json['images'] == null ? [] : JsonCoerce.asStringList(json['images']),
  extraComment: JsonCoerce.asString(json['extraComment']),
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
  status: JsonCoerce.asInt(json['status']),
  frontStatus: JsonCoerce.asInt(json['frontStatus']),
  statusContent: JsonCoerce.asString(json['statusContent']),
  orderStatus: JsonCoerce.asInt(json['orderStatus']),
  orderId: JsonCoerce.asString(json['orderId']),
  parentOrderId: JsonCoerce.asString(json['parentOrderId']),
  quantity: JsonCoerce.asInt(json['quantity']),
  totalAmount: JsonCoerce.asString(json['totalAmount']),
  targetTotalAmount: JsonCoerce.asString(json['targetTotalAmount']),
  discountAmount: JsonCoerce.asString(json['discountAmount']),
  targetDiscountAmount: JsonCoerce.asString(json['targetDiscountAmount']),
  targetPayFeeAmount: JsonCoerce.asString(json['targetPayFeeAmount']),
  targetActualAmount: JsonCoerce.asString(json['targetActualAmount']),
  currency: JsonCoerce.asString(json['currency']),
  targetCurrency: JsonCoerce.asString(json['targetCurrency']),
  description: JsonCoerce.asString(json['description']),
  remark: JsonCoerce.asString(json['remark']),
  statusIcon: JsonCoerce.asString(json['statusIcon']),
  operates:
      (json['operates'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
      [],
  isLogisticsTrace: JsonCoerce.asBool(json['isLogisticsTrace']),
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
  afterSalesList: JsonCoerce.asString(json['afterSalesList']),
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
  createTime: JsonCoerce.asInt(json['createTime']),
  wish: JsonCoerce.asBool(json['wish']),
  targetItemTotalAmount: JsonCoerce.asString(json['targetItemTotalAmount']),
  targetFreightAmount: JsonCoerce.asString(json['targetFreightAmount']),
  giveawayGift: JsonCoerce.asInt(json['giveawayGift']),
  skuSourceCode: JsonCoerce.asString(json['skuSourceCode']),
  skuSourceCodeTitle: JsonCoerce.asString(json['skuSourceCodeTitle']),
  targetTipAmount: JsonCoerce.asString(json['targetTipAmount']),
  targetServiceAmount: JsonCoerce.asString(json['targetServiceAmount']),
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
  status: JsonCoerce.asInt(json['status']),
  frontStatus: JsonCoerce.asInt(json['frontStatus']),
  statusContent: JsonCoerce.asString(json['statusContent']),
  orderStatus: JsonCoerce.asInt(json['orderStatus']),
  quantity: JsonCoerce.asInt(json['quantity']),
  totalAmount: JsonCoerce.asString(json['totalAmount']),
  targetTotalAmount: JsonCoerce.asString(json['targetTotalAmount']),
  discountAmount: JsonCoerce.asString(json['discountAmount']),
  targetDiscountAmount: JsonCoerce.asString(json['targetDiscountAmount']),
  itemTotalAmount: JsonCoerce.asString(json['itemTotalAmount']),
  freightAmount: JsonCoerce.asString(json['freightAmount']),
  targetItemTotalAmount: JsonCoerce.asString(json['targetItemTotalAmount']),
  targetFreightAmount: JsonCoerce.asString(json['targetFreightAmount']),
  targetPayFeeAmount: JsonCoerce.asString(json['targetPayFeeAmount']),
  currency: JsonCoerce.asString(json['currency']),
  targetCurrency: JsonCoerce.asString(json['targetCurrency']),
  description: JsonCoerce.asString(json['description']),
  remark: JsonCoerce.asString(json['remark']),
  operates:
      (json['operates'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
      [],
  isLogisticsTrace: JsonCoerce.asBool(json['isLogisticsTrace']),
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
  createTime: JsonCoerce.asInt(json['createTime']),
  wish: JsonCoerce.asBool(json['wish']),
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
  skuSourceCode: JsonCoerce.asString(json['skuSourceCode']),
  skuSourceTitle: JsonCoerce.asString(json['skuSourceTitle']),
  remark: JsonCoerce.asString(json['remark']),
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
  userId: JsonCoerce.asString(json['userId']),
  orderId: JsonCoerce.asString(json['orderId']),
  skuSourceCode: JsonCoerce.asString(json['skuSourceCode']),
  skuSourceTitle: JsonCoerce.asString(json['skuSourceTitle']),
  parentOrderId: JsonCoerce.asString(json['parentOrderId']),
  status: JsonCoerce.asInt(json['status']),
  frontStatus: JsonCoerce.asInt(json['frontStatus']),
  statusContent: JsonCoerce.asString(json['statusContent']),
  orderStatus: JsonCoerce.asInt(json['orderStatus']),
  evaluateStatus: JsonCoerce.asInt(json['evaluateStatus']),
  timeoutPeriod: JsonCoerce.asInt(json['timeoutPeriod']),
  createTime: JsonCoerce.asInt(json['createTime']),
  leftTime: JsonCoerce.asInt(json['leftTime']),
  title: JsonCoerce.asString(json['title']),
  subTitle: JsonCoerce.asString(json['subTitle']),
  operates: json['operates'] == null
      ? []
      : JsonCoerce.asStringList(json['operates']),
  description: JsonCoerce.asString(json['description']),
  paySuccessDescription: JsonCoerce.asString(json['paySuccessDescription']),
  afterSalesExpressMethod: JsonCoerce.asInt(json['afterSalesExpressMethod']),
  afterSalesState: JsonCoerce.asInt(json['afterSalesState']),
  remark: JsonCoerce.asString(json['remark']),
  remarkImages: JsonCoerce.asString(json['remarkImages']),
  supportOnlineAfterSales: JsonCoerce.asInt(json['supportOnlineAfterSales']),
  receiptPdfLink: JsonCoerce.asString(json['receiptPdfLink']),
  afterSalesSupport: JsonCoerce.asString(json['afterSalesSupport']),
  tenantCode: JsonCoerce.asString(json['tenantCode']),
  shippingCountry: JsonCoerce.asString(json['shippingCountry']),
  payTime: JsonCoerce.asInt(json['payTime']),
  batchNo: JsonCoerce.asString(json['batchNo']),
  parcelBatch: JsonCoerce.asBool(json['parcelBatch']),
  removePackage: JsonCoerce.asBool(json['removePackage']),
  orderFreight: JsonCoerce.asBool(json['orderFreight']),
  logisticsSolutionCode: json['logisticsSolutionCode'],
  returnType: JsonCoerce.asInt(json['returnType']),
  language: json['language'],
  giveawayGift: JsonCoerce.asInt(json['giveawayGift']),
  afterSales: JsonCoerce.asBool(json['afterSales']),
  wish: JsonCoerce.asBool(json['wish']),
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
  method: JsonCoerce.asInt(json['method']),
  methodName: JsonCoerce.asString(json['methodName']),
  payOrderId: json['payOrderId'],
  cardMsg: json['cardMsg'],
  image: JsonCoerce.asString(json['image']),
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
  targetOriginAmount: JsonCoerce.asString(json['targetOriginAmount']),
  receiptAmount: JsonCoerce.asString(json['receiptAmount']),
  itemsTotalAmount: JsonCoerce.asString(json['itemsTotalAmount']),
  targetItemsTotalAmount: JsonCoerce.asString(json['targetItemsTotalAmount']),
  targetItemDiscountAmount: JsonCoerce.asString(
    json['targetItemDiscountAmount'],
  ),
  freightAmount: JsonCoerce.asString(json['freightAmount']),
  targetFreightAmount: JsonCoerce.asString(json['targetFreightAmount']),
  skuQuantity: JsonCoerce.asInt(json['skuQuantity']),
  currency: JsonCoerce.asString(json['currency']),
  totalPrice: JsonCoerce.asString(json['totalPrice']),
  targetPrice: JsonCoerce.asString(json['targetPrice']),
  discountAmount: JsonCoerce.asString(json['discountAmount']),
  targetDiscountAmount: JsonCoerce.asString(json['targetDiscountAmount']),
  targetActualAmount: JsonCoerce.asString(json['targetActualAmount']),
  targetStockFeeAmount: JsonCoerce.asString(json['targetStockFeeAmount']),
  rechargeAmount: JsonCoerce.asString(json['rechargeAmount']),
  targetRechargePrice: JsonCoerce.asString(json['targetRechargePrice']),
  targetCurrency: JsonCoerce.asString(json['targetCurrency']),
  targetPurchaseDiffPrice: JsonCoerce.asString(json['targetPurchaseDiffPrice']),
  targetPurchasePrice: JsonCoerce.asString(json['targetPurchasePrice']),
  purchasePrice: json['purchasePrice'],
  targetPayFeeAmount: JsonCoerce.asString(json['targetPayFeeAmount']),
  targetTipAmount: JsonCoerce.asString(json['targetTipAmount']),
  targetServiceAmount: JsonCoerce.asString(json['targetServiceAmount']),
  wdSourcePlatform: JsonCoerce.asBool(json['wdSourcePlatform']),
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
  country: JsonCoerce.asString(json['country']),
  countryCode: JsonCoerce.asString(json['countryCode']),
  state: JsonCoerce.asString(json['state']),
  stateCode: JsonCoerce.asString(json['stateCode']),
  city: JsonCoerce.asString(json['city']),
  cityCode: JsonCoerce.asString(json['cityCode']),
  street: JsonCoerce.asString(json['street']),
  apartment: JsonCoerce.asString(json['apartment']),
  address: JsonCoerce.asString(json['address']),
  firstName: JsonCoerce.asString(json['firstName']),
  lastName: JsonCoerce.asString(json['lastName']),
  phoneNumber: JsonCoerce.asString(json['phoneNumber']),
  zipCode: JsonCoerce.asString(json['zipCode']),
  id: JsonCoerce.asInt(json['id']),
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
  parcelOrderId: JsonCoerce.asString(json['parcelOrderId']),
  parcelStatus: JsonCoerce.asString(json['parcelStatus']),
  parcelStatusDesc: JsonCoerce.asString(json['parcelStatusDesc']),
  batchNo: JsonCoerce.asString(json['batchNo']),
  createTime: JsonCoerce.asInt(json['createTime']),
  warehouseCode: JsonCoerce.asString(json['warehouseCode']),
  warehouseName: JsonCoerce.asString(json['warehouseName']),
  solutionCode: JsonCoerce.asString(json['solutionCode']),
  freight: JsonCoerce.asString(json['freight']),
  freightCurrency: json['freightCurrency'] == null
      ? null
      : OrderServiceOrderDetailGet$Response$Data$ParcelOrder$FreightCurrency.fromJson(
          json['freightCurrency'] as Map<String, dynamic>,
        ),
  targetFreight: JsonCoerce.asString(json['targetFreight']),
  targetFreightCurrency: json['targetFreightCurrency'] == null
      ? null
      : OrderServiceOrderDetailGet$Response$Data$ParcelOrder$TargetFreightCurrency.fromJson(
          json['targetFreightCurrency'] as Map<String, dynamic>,
        ),
  actualFreight: JsonCoerce.asString(json['actualFreight']),
  actualFreightCurrency: JsonCoerce.asString(json['actualFreightCurrency']),
  targetActualFreight: JsonCoerce.asString(json['targetActualFreight']),
  targetActualFreightCurrency: JsonCoerce.asString(
    json['targetActualFreightCurrency'],
  ),
  freightCouponCode: JsonCoerce.asString(json['freightCouponCode']),
  freightCouponDiscountAmount: JsonCoerce.asString(
    json['freightCouponDiscountAmount'],
  ),
  freightCouponDiscountCurrency: JsonCoerce.asString(
    json['freightCouponDiscountCurrency'],
  ),
  targetFreightCouponDiscountAmount: JsonCoerce.asString(
    json['targetFreightCouponDiscountAmount'],
  ),
  targetFreightCouponDiscountCurrency: JsonCoerce.asString(
    json['targetFreightCouponDiscountCurrency'],
  ),
  targetServiceAmount: JsonCoerce.asString(json['targetServiceAmount']),
  targetServiceAmountCurrency: JsonCoerce.asString(
    json['targetServiceAmountCurrency'],
  ),
  weight: JsonCoerce.asString(json['weight']),
  length: JsonCoerce.asString(json['length']),
  width: JsonCoerce.asString(json['width']),
  height: JsonCoerce.asString(json['height']),
  lastMileMailNo: JsonCoerce.asString(json['lastMileMailNo']),
  lastMileCompanyCode: JsonCoerce.asString(json['lastMileCompanyCode']),
  lastMileCompanyName: JsonCoerce.asString(json['lastMileCompanyName']),
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
  buyerOperates: json['buyerOperates'] == null
      ? []
      : JsonCoerce.asStringList(json['buyerOperates']),
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
  tradeOrderId: JsonCoerce.asString(json['tradeOrderId']),
  logisticsOrderId: JsonCoerce.asString(json['logisticsOrderId']),
  logisticsStatus: JsonCoerce.asString(json['logisticsStatus']),
  parcelOrderId: JsonCoerce.asString(json['parcelOrderId']),
  parcelOrderStatus: JsonCoerce.asString(json['parcelOrderStatus']),
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
  lastMileMailNo: JsonCoerce.asString(json['lastMileMailNo']),
  lastMileMailNoLink: JsonCoerce.asString(json['lastMileMailNoLink']),
  lastMileCompanyName: JsonCoerce.asString(json['lastMileCompanyName']),
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
  discountType: JsonCoerce.asInt(json['discountType']),
  userCouponCode: JsonCoerce.asString(json['userCouponCode']),
  discountAmount: JsonCoerce.asString(json['discountAmount']),
  targetDiscountAmount: JsonCoerce.asString(json['targetDiscountAmount']),
  couponCode: JsonCoerce.asString(json['couponCode']),
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
  userId: JsonCoerce.asString(json['userId']),
  orderId: JsonCoerce.asString(json['orderId']),
  skuSourceCode: JsonCoerce.asString(json['skuSourceCode']),
  parentOrderId: JsonCoerce.asString(json['parentOrderId']),
  status: JsonCoerce.asInt(json['status']),
  frontStatus: JsonCoerce.asInt(json['frontStatus']),
  statusContent: JsonCoerce.asString(json['statusContent']),
  orderStatus: JsonCoerce.asInt(json['orderStatus']),
  evaluateStatus: JsonCoerce.asInt(json['evaluateStatus']),
  timeoutPeriod: JsonCoerce.asInt(json['timeoutPeriod']),
  createTime: JsonCoerce.asInt(json['createTime']),
  leftTime: JsonCoerce.asInt(json['leftTime']),
  title: JsonCoerce.asString(json['title']),
  subTitle: JsonCoerce.asString(json['subTitle']),
  operates: json['operates'] == null
      ? []
      : JsonCoerce.asStringList(json['operates']),
  description: JsonCoerce.asString(json['description']),
  paySuccessDescription: JsonCoerce.asString(json['paySuccessDescription']),
  afterSalesExpressMethod: JsonCoerce.asInt(json['afterSalesExpressMethod']),
  afterSalesState: JsonCoerce.asInt(json['afterSalesState']),
  remark: JsonCoerce.asString(json['remark']),
  remarkImages: JsonCoerce.asString(json['remarkImages']),
  supportOnlineAfterSales: JsonCoerce.asInt(json['supportOnlineAfterSales']),
  receiptPdfLink: JsonCoerce.asString(json['receiptPdfLink']),
  afterSalesSupport: JsonCoerce.asString(json['afterSalesSupport']),
  tenantCode: JsonCoerce.asString(json['tenantCode']),
  shippingCountry: JsonCoerce.asString(json['shippingCountry']),
  payTime: JsonCoerce.asInt(json['payTime']),
  afterSales: JsonCoerce.asBool(json['afterSales']),
  wish: JsonCoerce.asBool(json['wish']),
  removePackage: JsonCoerce.asBool(json['removePackage']),
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
  country: JsonCoerce.asString(json['country']),
  countryCode: JsonCoerce.asString(json['countryCode']),
  state: JsonCoerce.asString(json['state']),
  stateCode: JsonCoerce.asString(json['stateCode']),
  city: JsonCoerce.asString(json['city']),
  cityCode: JsonCoerce.asString(json['cityCode']),
  street: JsonCoerce.asString(json['street']),
  apartment: JsonCoerce.asString(json['apartment']),
  address: JsonCoerce.asString(json['address']),
  firstName: JsonCoerce.asString(json['firstName']),
  lastName: JsonCoerce.asString(json['lastName']),
  phoneNumber: JsonCoerce.asString(json['phoneNumber']),
  zipCode: JsonCoerce.asString(json['zipCode']),
  id: JsonCoerce.asInt(json['id']),
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
  method: JsonCoerce.asString(json['method']),
  methodName: JsonCoerce.asString(json['methodName']),
  payOrderId: JsonCoerce.asString(json['payOrderId']),
  cardMsg: JsonCoerce.asString(json['cardMsg']),
  image: JsonCoerce.asString(json['image']),
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
  receiptAmount: JsonCoerce.asString(json['receiptAmount']),
  itemsTotalAmount: JsonCoerce.asString(json['itemsTotalAmount']),
  freightAmount: JsonCoerce.asString(json['freightAmount']),
  skuQuantity: JsonCoerce.asInt(json['skuQuantity']),
  currency: JsonCoerce.asString(json['currency']),
  totalPrice: JsonCoerce.asString(json['totalPrice']),
  targetPrice: JsonCoerce.asString(json['targetPrice']),
  targetSettlementAmount: JsonCoerce.asString(json['targetSettlementAmount']),
  settlementAmount: JsonCoerce.asString(json['settlementAmount']),
  discountAmount: JsonCoerce.asString(json['discountAmount']),
  targetDiscountAmount: JsonCoerce.asString(json['targetDiscountAmount']),
  rechargeAmount: JsonCoerce.asString(json['rechargeAmount']),
  targetRechargePrice: JsonCoerce.asString(json['targetRechargePrice']),
  targetCurrency: JsonCoerce.asString(json['targetCurrency']),
  targetItemsTotalAmount: JsonCoerce.asString(json['targetItemsTotalAmount']),
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
  status: JsonCoerce.asString(json['status']),
  targetCurrency: JsonCoerce.asString(json['targetCurrency']),
  targetTotalPrice: JsonCoerce.asString(json['targetTotalPrice']),
  billId: JsonCoerce.asString(json['billId']),
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
  parcelOrderId: JsonCoerce.asString(json['parcelOrderId']),
  parcelStatus: JsonCoerce.asString(json['parcelStatus']),
  parcelStatusDesc: JsonCoerce.asString(json['parcelStatusDesc']),
  createTime: JsonCoerce.asInt(json['createTime']),
  warehouseCode: JsonCoerce.asString(json['warehouseCode']),
  warehouseName: JsonCoerce.asString(json['warehouseName']),
  freight: JsonCoerce.asString(json['freight']),
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
  buyerOperates: json['buyerOperates'] == null
      ? []
      : JsonCoerce.asStringList(json['buyerOperates']),
  freightCompensate: json['freightCompensate'] == null
      ? null
      : OrderServiceOpenapiOrderDetailGet$Response$Data$ParcelOrder$FreightCompensate.fromJson(
          json['freightCompensate'] as Map<String, dynamic>,
        ),
  solutionCode: JsonCoerce.asString(json['solutionCode']),
  actualFreight: JsonCoerce.asString(json['actualFreight']),
  actualFreightCurrency: JsonCoerce.asString(json['actualFreightCurrency']),
  targetFreightCouponDiscountAmount: JsonCoerce.asString(
    json['targetFreightCouponDiscountAmount'],
  ),
  targetFreightCouponDiscountCurrency: JsonCoerce.asString(
    json['targetFreightCouponDiscountCurrency'],
  ),
  targetFreight: JsonCoerce.asString(json['targetFreight']),
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
  tradeOrderId: JsonCoerce.asString(json['tradeOrderId']),
  logisticsOrderId: JsonCoerce.asString(json['logisticsOrderId']),
  logisticsStatus: JsonCoerce.asString(json['logisticsStatus']),
  traceList: (json['traceList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOpenapiOrderDetailGet$Response$Data$OrderTrace$TraceList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  parcelOrderId: JsonCoerce.asString(json['parcelOrderId']),
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
  userId: JsonCoerce.asString(json['userId']),
  orderId: JsonCoerce.asString(json['orderId']),
  skuSourceCode: JsonCoerce.asString(json['skuSourceCode']),
  parentOrderId: JsonCoerce.asString(json['parentOrderId']),
  status: JsonCoerce.asInt(json['status']),
  frontStatus: JsonCoerce.asInt(json['frontStatus']),
  statusContent: JsonCoerce.asString(json['statusContent']),
  orderStatus: JsonCoerce.asInt(json['orderStatus']),
  evaluateStatus: JsonCoerce.asInt(json['evaluateStatus']),
  timeoutPeriod: JsonCoerce.asInt(json['timeoutPeriod']),
  createTime: JsonCoerce.asInt(json['createTime']),
  leftTime: JsonCoerce.asInt(json['leftTime']),
  title: JsonCoerce.asString(json['title']),
  subTitle: JsonCoerce.asString(json['subTitle']),
  operates: json['operates'] == null
      ? []
      : JsonCoerce.asStringList(json['operates']),
  description: JsonCoerce.asString(json['description']),
  paySuccessDescription: JsonCoerce.asString(json['paySuccessDescription']),
  afterSalesExpressMethod: JsonCoerce.asInt(json['afterSalesExpressMethod']),
  afterSalesState: JsonCoerce.asInt(json['afterSalesState']),
  remark: JsonCoerce.asString(json['remark']),
  remarkImages: JsonCoerce.asString(json['remarkImages']),
  supportOnlineAfterSales: JsonCoerce.asInt(json['supportOnlineAfterSales']),
  receiptPdfLink: JsonCoerce.asString(json['receiptPdfLink']),
  afterSalesSupport: JsonCoerce.asString(json['afterSalesSupport']),
  tenantCode: JsonCoerce.asString(json['tenantCode']),
  shippingCountry: JsonCoerce.asString(json['shippingCountry']),
  payTime: JsonCoerce.asInt(json['payTime']),
  afterSales: JsonCoerce.asBool(json['afterSales']),
  wish: JsonCoerce.asBool(json['wish']),
  removePackage: JsonCoerce.asBool(json['removePackage']),
  orderFreight: JsonCoerce.asBool(json['orderFreight']),
  giveawayGift: JsonCoerce.asInt(json['giveawayGift']),
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
  parcelOrderId: JsonCoerce.asString(json['parcelOrderId']),
  parcelStatus: JsonCoerce.asString(json['parcelStatus']),
  parcelStatusDesc: JsonCoerce.asString(json['parcelStatusDesc']),
  createTime: JsonCoerce.asInt(json['createTime']),
  warehouseCode: JsonCoerce.asString(json['warehouseCode']),
  warehouseName: JsonCoerce.asString(json['warehouseName']),
  freight: JsonCoerce.asString(json['freight']),
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
  buyerOperates: json['buyerOperates'] == null
      ? []
      : JsonCoerce.asStringList(json['buyerOperates']),
  freightCompensate: json['freightCompensate'] == null
      ? null
      : OrderServiceOrderCombineDetailGet$Response$Data$ParcelOrder$FreightCompensate.fromJson(
          json['freightCompensate'] as Map<String, dynamic>,
        ),
  solutionCode: JsonCoerce.asString(json['solutionCode']),
  actualFreight: JsonCoerce.asString(json['actualFreight']),
  actualFreightCurrency: JsonCoerce.asString(json['actualFreightCurrency']),
  targetFreightCouponDiscountAmount: JsonCoerce.asString(
    json['targetFreightCouponDiscountAmount'],
  ),
  targetFreightCouponDiscountCurrency: JsonCoerce.asString(
    json['targetFreightCouponDiscountCurrency'],
  ),
  targetFreight: JsonCoerce.asString(json['targetFreight']),
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
  tradeOrderId: JsonCoerce.asString(json['tradeOrderId']),
  logisticsOrderId: JsonCoerce.asString(json['logisticsOrderId']),
  logisticsStatus: JsonCoerce.asString(json['logisticsStatus']),
  traceList: (json['traceList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderCombineDetailGet$Response$Data$OrderTrace$TraceList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  parcelOrderId: JsonCoerce.asString(json['parcelOrderId']),
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
  id: JsonCoerce.asInt(json['id']),
  frontCode: JsonCoerce.asString(json['frontCode']),
  icon: JsonCoerce.asString(json['icon']),
  traceMessage: JsonCoerce.asString(json['traceMessage']),
  time: JsonCoerce.asInt(json['time']),
  lastMileMailNo: json['lastMileMailNo'],
  lastMileMailNoLink: JsonCoerce.asString(json['lastMileMailNoLink']),
  lastMileMailNoTitle: JsonCoerce.asString(json['lastMileMailNoTitle']),
  traceStatus: JsonCoerce.asString(json['traceStatus']),
  frontTitle: JsonCoerce.asString(json['frontTitle']),
  frontTitleCode: JsonCoerce.asString(json['frontTitleCode']),
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
  productCode: JsonCoerce.asString(json['productCode']),
  totalWeight: JsonCoerce.asString(json['totalWeight']),
  weightUnit: JsonCoerce.asString(json['weightUnit']),
  skuSourceCode: JsonCoerce.asString(json['skuSourceCode']),
  skuSourceTitle: JsonCoerce.asString(json['skuSourceTitle']),
  orderFreight: JsonCoerce.asBool(json['orderFreight']),
  orderFreightUrl: JsonCoerce.asString(json['orderFreightUrl']),
  billDescription: JsonCoerce.asString(json['billDescription']),
  billSchema: JsonCoerce.asString(json['billSchema']),
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
  skuCode: JsonCoerce.asString(json['skuCode']),
  quantity: JsonCoerce.asInt(json['quantity']),
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
  rewardMarketing: JsonCoerce.asString(json['rewardMarketing']),
  payFreightNotice: JsonCoerce.asString(json['payFreightNotice']),
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
  skuCode: JsonCoerce.asString(json['skuCode']),
  quantity: JsonCoerce.asInt(json['quantity']),
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
  rewardMarketing: JsonCoerce.asString(json['rewardMarketing']),
);

Map<String, dynamic>
_$OrderServiceCartNoAuthPricingPost$Response$Data$ContentInfoToJson(
  OrderServiceCartNoAuthPricingPost$Response$Data$ContentInfo instance,
) => <String, dynamic>{'rewardMarketing': instance.rewardMarketing};

OrderServiceOrderAppListGet$Response$Data$Records$Item$OrderSkuList$Item
_$OrderServiceOrderAppListGet$Response$Data$Records$Item$OrderSkuList$ItemFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderAppListGet$Response$Data$Records$Item$OrderSkuList$Item(
  productName: JsonCoerce.asString(json['productName']),
  skuCode: JsonCoerce.asString(json['skuCode']),
  productCode: JsonCoerce.asString(json['productCode']),
  image: JsonCoerce.asString(json['image']),
  sellPrice: JsonCoerce.asString(json['sellPrice']),
  sellCur: JsonCoerce.asString(json['sellCur']),
  totalPrice: JsonCoerce.asString(json['totalPrice']),
  targetSellPrice: JsonCoerce.asString(json['targetSellPrice']),
  targetSellCur: JsonCoerce.asString(json['targetSellCur']),
  targetTotalPrice: JsonCoerce.asString(json['targetTotalPrice']),
  targetSkuDiscountPrice: JsonCoerce.asString(json['targetSkuDiscountPrice']),
  targetSkuFinalPrice: JsonCoerce.asString(json['targetSkuFinalPrice']),
  targetTotalFinalPrice: JsonCoerce.asString(json['targetTotalFinalPrice']),
  remark: JsonCoerce.asString(json['remark']),
  quantity: JsonCoerce.asInt(json['quantity']),
  skuSpecValues: (json['skuSpecValues'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderAppListGet$Response$Data$Records$Item$OrderSkuList$Item$SkuSpecValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  isReturned: JsonCoerce.asBool(json['isReturned']),
  targetOriginPrice: JsonCoerce.asString(json['targetOriginPrice']),
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
  skuCode: JsonCoerce.asString(json['skuCode']),
  productCode: JsonCoerce.asString(json['productCode']),
  productName: JsonCoerce.asString(json['productName']),
  imageUrl: json['imageUrl'],
  quantity: JsonCoerce.asInt(json['quantity']),
  weight: JsonCoerce.asString(json['weight']),
  length: JsonCoerce.asString(json['length']),
  width: JsonCoerce.asString(json['width']),
  height: JsonCoerce.asString(json['height']),
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
  parcelOrderId: JsonCoerce.asString(json['parcelOrderId']),
  parcelStatus: JsonCoerce.asString(json['parcelStatus']),
  parcelStatusDesc: JsonCoerce.asString(json['parcelStatusDesc']),
  createTime: JsonCoerce.asInt(json['createTime']),
  warehouseCode: JsonCoerce.asString(json['warehouseCode']),
  warehouseName: JsonCoerce.asString(json['warehouseName']),
  solutionCode: JsonCoerce.asString(json['solutionCode']),
  freight: JsonCoerce.asString(json['freight']),
  freightCurrency: json['freightCurrency'] == null
      ? null
      : OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$FreightCurrency.fromJson(
          json['freightCurrency'] as Map<String, dynamic>,
        ),
  targetFreight: JsonCoerce.asString(json['targetFreight']),
  targetFreightCurrency: json['targetFreightCurrency'] == null
      ? null
      : OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$TargetFreightCurrency.fromJson(
          json['targetFreightCurrency'] as Map<String, dynamic>,
        ),
  actualFreight: JsonCoerce.asString(json['actualFreight']),
  actualFreightCurrency: JsonCoerce.asString(json['actualFreightCurrency']),
  targetActualFreight: JsonCoerce.asString(json['targetActualFreight']),
  targetActualFreightCurrency: JsonCoerce.asString(
    json['targetActualFreightCurrency'],
  ),
  freightCouponDiscountAmount: JsonCoerce.asString(
    json['freightCouponDiscountAmount'],
  ),
  targetFreightCouponDiscountAmount: JsonCoerce.asString(
    json['targetFreightCouponDiscountAmount'],
  ),
  freightCouponDiscountCurrency: json['freightCouponDiscountCurrency'] == null
      ? null
      : OrderServiceOrderAppListGet$Response$Data$Records$Item$ParcelOrder$FreightCouponDiscountCurrency.fromJson(
          json['freightCouponDiscountCurrency'] as Map<String, dynamic>,
        ),
  targetFreightCouponDiscountCurrency: JsonCoerce.asString(
    json['targetFreightCouponDiscountCurrency'],
  ),
  lastMileMailNo: JsonCoerce.asString(json['lastMileMailNo']),
  lastMileCompanyCode: JsonCoerce.asString(json['lastMileCompanyCode']),
  lastMileCompanyName: JsonCoerce.asString(json['lastMileCompanyName']),
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
  buyerOperates: json['buyerOperates'] == null
      ? []
      : JsonCoerce.asStringList(json['buyerOperates']),
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
  billId: JsonCoerce.asString(json['billId']),
  status: JsonCoerce.asInt(json['status']),
  targetTotalPrice: JsonCoerce.asString(json['targetTotalPrice']),
  targetCurrency: JsonCoerce.asString(json['targetCurrency']),
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
  country: JsonCoerce.asString(json['country']),
  countryCode: JsonCoerce.asString(json['countryCode']),
  state: JsonCoerce.asString(json['state']),
  stateCode: JsonCoerce.asString(json['stateCode']),
  city: JsonCoerce.asString(json['city']),
  cityCode: JsonCoerce.asString(json['cityCode']),
  street: JsonCoerce.asString(json['street']),
  apartment: JsonCoerce.asString(json['apartment']),
  address: JsonCoerce.asString(json['address']),
  firstName: JsonCoerce.asString(json['firstName']),
  lastName: JsonCoerce.asString(json['lastName']),
  phoneNumber: JsonCoerce.asString(json['phoneNumber']),
  zipCode: JsonCoerce.asString(json['zipCode']),
  id: JsonCoerce.asInt(json['id']),
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
  type: JsonCoerce.asString(json['type']),
  title: JsonCoerce.asString(json['title']),
  description: json['description'] == null
      ? null
      : OrderServiceOrderAppDetailGet$Response$Data$Payments$PaymentSubjoins$Item$Description.fromJson(
          json['description'] as Map<String, dynamic>,
        ),
  lineContent: JsonCoerce.asString(json['lineContent']),
  content: JsonCoerce.asString(json['content']),
  amount: JsonCoerce.asString(json['amount']),
  contentColor: JsonCoerce.asString(json['contentColor']),
  showIcon: JsonCoerce.asBool(json['showIcon']),
  expandIcon: JsonCoerce.asBool(json['expandIcon']),
  showQuestionIcon: JsonCoerce.asBool(json['showQuestionIcon']),
  questionIconContent: JsonCoerce.asString(json['questionIconContent']),
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
  name: JsonCoerce.asString(json['name']),
  symbol: JsonCoerce.asString(json['symbol']),
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
      skuCode: JsonCoerce.asString(json['skuCode']),
      productCode: JsonCoerce.asString(json['productCode']),
      productName: JsonCoerce.asString(json['productName']),
      quantity: JsonCoerce.asInt(json['quantity']),
      imageUrl: JsonCoerce.asString(json['imageUrl']),
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
  compensateBillId: JsonCoerce.asString(json['compensateBillId']),
  compensatePrice: JsonCoerce.asString(json['compensatePrice']),
  compensatePriceCurrency: JsonCoerce.asString(json['compensatePriceCurrency']),
  compensateReason: JsonCoerce.asString(json['compensateReason']),
  targetCompensatePrice: JsonCoerce.asString(json['targetCompensatePrice']),
  targetCompensatePriceCurrency: JsonCoerce.asString(
    json['targetCompensatePriceCurrency'],
  ),
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
      symbol: JsonCoerce.asString(json['symbol']),
      currency: JsonCoerce.asString(json['currency']),
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
  id: JsonCoerce.asInt(json['id']),
  frontCode: JsonCoerce.asString(json['frontCode']),
  icon: JsonCoerce.asString(json['icon']),
  traceMessage: JsonCoerce.asString(json['traceMessage']),
  time: JsonCoerce.asInt(json['time']),
  lastMileMailNo: JsonCoerce.asString(json['lastMileMailNo']),
  lastMileMailNoLink: JsonCoerce.asString(json['lastMileMailNoLink']),
  lastMileMailNoTitle: JsonCoerce.asString(json['lastMileMailNoTitle']),
  traceStatus: JsonCoerce.asString(json['traceStatus']),
  logisticsOrderId: JsonCoerce.asString(json['logisticsOrderId']),
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
  productName: JsonCoerce.asString(json['productName']),
  productCode: JsonCoerce.asString(json['productCode']),
  skuCode: JsonCoerce.asString(json['skuCode']),
  image: JsonCoerce.asString(json['image']),
  targetOriginPrice: JsonCoerce.asString(json['targetOriginPrice']),
  targetOriginTotalPrice: JsonCoerce.asString(json['targetOriginTotalPrice']),
  sellPrice: JsonCoerce.asString(json['sellPrice']),
  targetSellPrice: JsonCoerce.asString(json['targetSellPrice']),
  totalPrice: JsonCoerce.asString(json['totalPrice']),
  targetTotalPrice: JsonCoerce.asString(json['targetTotalPrice']),
  targetSkuDiscountPrice: JsonCoerce.asString(json['targetSkuDiscountPrice']),
  targetTotalFinalPrice: JsonCoerce.asString(json['targetTotalFinalPrice']),
  targetSkuFinalPrice: JsonCoerce.asString(json['targetSkuFinalPrice']),
  currency: JsonCoerce.asString(json['currency']),
  targetCurrency: JsonCoerce.asString(json['targetCurrency']),
  quantity: JsonCoerce.asInt(json['quantity']),
  remark: JsonCoerce.asString(json['remark']),
  skuSpecValues: (json['skuSpecValues'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderAppDetailGet$Response$Data$OrderList$Item$SkuList$Item$SkuSpecValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  isReturned: JsonCoerce.asBool(json['isReturned']),
  skuSourceCode: JsonCoerce.asString(json['skuSourceCode']),
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
  canBatch: JsonCoerce.asInt(json['canBatch']),
  canPayFreight: JsonCoerce.asInt(json['canPayFreight']),
  canRemovePackage: JsonCoerce.asInt(json['canRemovePackage']),
  parcelBatch: JsonCoerce.asBool(json['parcelBatch']),
  removePackage: JsonCoerce.asBool(json['removePackage']),
  orderFreight: JsonCoerce.asBool(json['orderFreight']),
  orderFreightUrl: JsonCoerce.asString(json['orderFreightUrl']),
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
  freightContent: JsonCoerce.asString(json['freightContent']),
  expressionDateContent: JsonCoerce.asString(json['expressionDateContent']),
  expressionDateHtml: JsonCoerce.asString(json['expressionDateHtml']),
  targetFreight: JsonCoerce.asString(json['targetFreight']),
  orderFreightUrl: JsonCoerce.asString(json['orderFreightUrl']),
  freightTag: JsonCoerce.asString(json['freightTag']),
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
      skuCode: JsonCoerce.asString(json['skuCode']),
      productCode: JsonCoerce.asString(json['productCode']),
      productName: JsonCoerce.asString(json['productName']),
      imageUrl: JsonCoerce.asString(json['imageUrl']),
      quantity: JsonCoerce.asInt(json['quantity']),
      weight: JsonCoerce.asString(json['weight']),
      length: JsonCoerce.asString(json['length']),
      width: JsonCoerce.asString(json['width']),
      height: JsonCoerce.asString(json['height']),
      inspectImageUrlList:
          (json['inspectImageUrlList'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      secretKeyList: JsonCoerce.asString(json['secretKeyList']),
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
  type: JsonCoerce.asString(json['type']),
  title: JsonCoerce.asString(json['title']),
  tax: JsonCoerce.asString(json['tax']),
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
  skuSourceCode: JsonCoerce.asString(json['skuSourceCode']),
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
  skuSourceCode: JsonCoerce.asString(json['skuSourceCode']),
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
  descprition: JsonCoerce.asString(json['descprition']),
  usedVoucherInfoColor: JsonCoerce.asString(json['usedVoucherInfoColor']),
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
  name: JsonCoerce.asString(json['name']),
  symbol: JsonCoerce.asString(json['symbol']),
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
      skuCode: JsonCoerce.asString(json['skuCode']),
      productCode: JsonCoerce.asString(json['productCode']),
      productName: JsonCoerce.asString(json['productName']),
      quantity: JsonCoerce.asInt(json['quantity']),
      imageUrl: JsonCoerce.asString(json['imageUrl']),
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
      compensateBillId: JsonCoerce.asString(json['compensateBillId']),
      compensatePrice: JsonCoerce.asString(json['compensatePrice']),
      compensatePriceCurrency: JsonCoerce.asString(
        json['compensatePriceCurrency'],
      ),
      compensateReason: JsonCoerce.asString(json['compensateReason']),
      targetCompensatePrice: JsonCoerce.asString(json['targetCompensatePrice']),
      targetCompensatePriceCurrency: JsonCoerce.asString(
        json['targetCompensatePriceCurrency'],
      ),
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
      symbol: JsonCoerce.asString(json['symbol']),
      currency: JsonCoerce.asString(json['currency']),
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
  id: JsonCoerce.asInt(json['id']),
  frontCode: JsonCoerce.asString(json['frontCode']),
  icon: JsonCoerce.asString(json['icon']),
  traceMessage: JsonCoerce.asString(json['traceMessage']),
  time: JsonCoerce.asInt(json['time']),
  lastMileMailNo: JsonCoerce.asString(json['lastMileMailNo']),
  lastMileMailNoLink: JsonCoerce.asString(json['lastMileMailNoLink']),
  lastMileMailNoTitle: JsonCoerce.asString(json['lastMileMailNoTitle']),
  traceStatus: JsonCoerce.asString(json['traceStatus']),
  logisticsOrderId: JsonCoerce.asString(json['logisticsOrderId']),
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
  subParcelOrderId: JsonCoerce.asString(json['subParcelOrderId']),
  parcelOrderStatus: JsonCoerce.asString(json['parcelOrderStatus']),
  lastMileMailNo: JsonCoerce.asString(json['lastMileMailNo']),
  lastMileMailNoLink: JsonCoerce.asString(json['lastMileMailNoLink']),
  lastMileCompanyName: JsonCoerce.asString(json['lastMileCompanyName']),
  lastMileCompanyPhone: JsonCoerce.asString(json['lastMileCompanyPhone']),
  lastMileCompanyEmail: JsonCoerce.asString(json['lastMileCompanyEmail']),
  traceList: (json['traceList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderNoAuthDetailGet$Response$Data$OrderTrace$GroupTraceList$Item$TraceList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  sequenceTime: JsonCoerce.asInt(json['sequenceTime']),
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
  productName: JsonCoerce.asString(json['productName']),
  productCode: JsonCoerce.asString(json['productCode']),
  skuCode: JsonCoerce.asString(json['skuCode']),
  image: JsonCoerce.asString(json['image']),
  targetOriginPrice: JsonCoerce.asString(json['targetOriginPrice']),
  targetOriginTotalPrice: JsonCoerce.asString(json['targetOriginTotalPrice']),
  sellPrice: JsonCoerce.asString(json['sellPrice']),
  targetSellPrice: JsonCoerce.asString(json['targetSellPrice']),
  totalPrice: JsonCoerce.asString(json['totalPrice']),
  targetTotalPrice: JsonCoerce.asString(json['targetTotalPrice']),
  targetSkuDiscountPrice: JsonCoerce.asString(json['targetSkuDiscountPrice']),
  targetTotalFinalPrice: JsonCoerce.asString(json['targetTotalFinalPrice']),
  targetSkuFinalPrice: JsonCoerce.asString(json['targetSkuFinalPrice']),
  currency: JsonCoerce.asString(json['currency']),
  targetCurrency: JsonCoerce.asString(json['targetCurrency']),
  quantity: JsonCoerce.asInt(json['quantity']),
  remark: JsonCoerce.asString(json['remark']),
  skuSpecValues: (json['skuSpecValues'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderNoAuthDetailGet$Response$Data$OrderList$Item$SkuList$Item$SkuSpecValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  isReturned: JsonCoerce.asBool(json['isReturned']),
  skuSourceCode: JsonCoerce.asString(json['skuSourceCode']),
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
      skuCode: JsonCoerce.asString(json['skuCode']),
      productCode: JsonCoerce.asString(json['productCode']),
      productName: JsonCoerce.asString(json['productName']),
      imageUrl: JsonCoerce.asString(json['imageUrl']),
      quantity: JsonCoerce.asInt(json['quantity']),
      weight: JsonCoerce.asString(json['weight']),
      length: JsonCoerce.asString(json['length']),
      width: JsonCoerce.asString(json['width']),
      height: JsonCoerce.asString(json['height']),
      inspectImageUrlList:
          (json['inspectImageUrlList'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      secretKeyList: JsonCoerce.asString(json['secretKeyList']),
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
  canBatch: JsonCoerce.asInt(json['canBatch']),
  canFreightPay: JsonCoerce.asInt(json['canFreightPay']),
  canRemovePackage: JsonCoerce.asInt(json['canRemovePackage']),
  removePackage: JsonCoerce.asBool(json['removePackage']),
  orderFreight: JsonCoerce.asBool(json['orderFreight']),
  parcelBatch: JsonCoerce.asBool(json['parcelBatch']),
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
      expressionDateContent: JsonCoerce.asString(json['expressionDateContent']),
      freightContent: JsonCoerce.asString(json['freightContent']),
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
  name: JsonCoerce.asString(json['name']),
  usage: JsonCoerce.asString(json['usage']),
  invalidPeriod: JsonCoerce.asInt(json['invalidPeriod']),
  discountStr: JsonCoerce.asString(json['discountStr']),
  discountUnit: JsonCoerce.asString(json['discountUnit']),
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
  productName: JsonCoerce.asString(json['productName']),
  skuCode: JsonCoerce.asString(json['skuCode']),
  productCode: JsonCoerce.asString(json['productCode']),
  image: JsonCoerce.asString(json['image']),
  sellPrice: JsonCoerce.asString(json['sellPrice']),
  sellCur: JsonCoerce.asString(json['sellCur']),
  totalPrice: JsonCoerce.asString(json['totalPrice']),
  targetSellPrice: JsonCoerce.asString(json['targetSellPrice']),
  targetSellCur: JsonCoerce.asString(json['targetSellCur']),
  targetTotalPrice: JsonCoerce.asString(json['targetTotalPrice']),
  targetSkuDiscountPrice: JsonCoerce.asString(json['targetSkuDiscountPrice']),
  targetSkuFinalPrice: JsonCoerce.asString(json['targetSkuFinalPrice']),
  targetTotalFinalPrice: JsonCoerce.asString(json['targetTotalFinalPrice']),
  remark: JsonCoerce.asString(json['remark']),
  quantity: JsonCoerce.asInt(json['quantity']),
  skuSpecValues: (json['skuSpecValues'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderListGet$Response$Data$Records$Item$OrderSkuList$Item$SkuSpecValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  isReturned: JsonCoerce.asBool(json['isReturned']),
  targetOriginPrice: JsonCoerce.asString(json['targetOriginPrice']),
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
  skuCode: JsonCoerce.asString(json['skuCode']),
  productCode: JsonCoerce.asString(json['productCode']),
  productName: JsonCoerce.asString(json['productName']),
  imageUrl: json['imageUrl'],
  quantity: JsonCoerce.asInt(json['quantity']),
  weight: JsonCoerce.asString(json['weight']),
  length: JsonCoerce.asString(json['length']),
  width: JsonCoerce.asString(json['width']),
  height: JsonCoerce.asString(json['height']),
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
  parcelOrderId: JsonCoerce.asString(json['parcelOrderId']),
  parcelStatus: JsonCoerce.asString(json['parcelStatus']),
  parcelStatusDesc: JsonCoerce.asString(json['parcelStatusDesc']),
  createTime: JsonCoerce.asInt(json['createTime']),
  warehouseCode: JsonCoerce.asString(json['warehouseCode']),
  warehouseName: JsonCoerce.asString(json['warehouseName']),
  solutionCode: JsonCoerce.asString(json['solutionCode']),
  freight: JsonCoerce.asString(json['freight']),
  freightCurrency: json['freightCurrency'] == null
      ? null
      : OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$FreightCurrency.fromJson(
          json['freightCurrency'] as Map<String, dynamic>,
        ),
  targetFreight: JsonCoerce.asString(json['targetFreight']),
  targetFreightCurrency: json['targetFreightCurrency'] == null
      ? null
      : OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$TargetFreightCurrency.fromJson(
          json['targetFreightCurrency'] as Map<String, dynamic>,
        ),
  actualFreight: JsonCoerce.asString(json['actualFreight']),
  actualFreightCurrency: JsonCoerce.asString(json['actualFreightCurrency']),
  targetActualFreight: JsonCoerce.asString(json['targetActualFreight']),
  targetActualFreightCurrency: JsonCoerce.asString(
    json['targetActualFreightCurrency'],
  ),
  freightCouponDiscountAmount: JsonCoerce.asString(
    json['freightCouponDiscountAmount'],
  ),
  targetFreightCouponDiscountAmount: JsonCoerce.asString(
    json['targetFreightCouponDiscountAmount'],
  ),
  freightCouponDiscountCurrency: json['freightCouponDiscountCurrency'] == null
      ? null
      : OrderServiceOrderListGet$Response$Data$Records$Item$ParcelOrder$FreightCouponDiscountCurrency.fromJson(
          json['freightCouponDiscountCurrency'] as Map<String, dynamic>,
        ),
  targetFreightCouponDiscountCurrency: JsonCoerce.asString(
    json['targetFreightCouponDiscountCurrency'],
  ),
  lastMileMailNo: JsonCoerce.asString(json['lastMileMailNo']),
  lastMileCompanyCode: JsonCoerce.asString(json['lastMileCompanyCode']),
  lastMileCompanyName: JsonCoerce.asString(json['lastMileCompanyName']),
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
  buyerOperates: json['buyerOperates'] == null
      ? []
      : JsonCoerce.asStringList(json['buyerOperates']),
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
  billId: JsonCoerce.asString(json['billId']),
  status: JsonCoerce.asInt(json['status']),
  targetTotalPrice: JsonCoerce.asString(json['targetTotalPrice']),
  targetCurrency: JsonCoerce.asString(json['targetCurrency']),
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
  country: JsonCoerce.asString(json['country']),
  countryCode: JsonCoerce.asString(json['countryCode']),
  state: JsonCoerce.asString(json['state']),
  stateCode: JsonCoerce.asString(json['stateCode']),
  city: JsonCoerce.asString(json['city']),
  cityCode: JsonCoerce.asString(json['cityCode']),
  street: JsonCoerce.asString(json['street']),
  apartment: JsonCoerce.asString(json['apartment']),
  address: JsonCoerce.asString(json['address']),
  firstName: JsonCoerce.asString(json['firstName']),
  lastName: JsonCoerce.asString(json['lastName']),
  phoneNumber: JsonCoerce.asString(json['phoneNumber']),
  zipCode: JsonCoerce.asString(json['zipCode']),
  id: JsonCoerce.asInt(json['id']),
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
  parcelOrderId: JsonCoerce.asString(json['parcelOrderId']),
  parcelStatus: JsonCoerce.asString(json['parcelStatus']),
  parcelStatusDesc: JsonCoerce.asString(json['parcelStatusDesc']),
  createTime: JsonCoerce.asInt(json['createTime']),
  warehouseCode: JsonCoerce.asString(json['warehouseCode']),
  warehouseName: JsonCoerce.asString(json['warehouseName']),
  solutionCode: JsonCoerce.asString(json['solutionCode']),
  freight: JsonCoerce.asString(json['freight']),
  freightCurrency: json['freightCurrency'] == null
      ? null
      : OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$FreightCurrency.fromJson(
          json['freightCurrency'] as Map<String, dynamic>,
        ),
  targetFreight: JsonCoerce.asString(json['targetFreight']),
  targetFreightCurrency: json['targetFreightCurrency'] == null
      ? null
      : OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$TargetFreightCurrency.fromJson(
          json['targetFreightCurrency'] as Map<String, dynamic>,
        ),
  actualFreight: JsonCoerce.asString(json['actualFreight']),
  actualFreightCurrency: JsonCoerce.asString(json['actualFreightCurrency']),
  targetActualFreight: JsonCoerce.asString(json['targetActualFreight']),
  targetActualFreightCurrency: JsonCoerce.asString(
    json['targetActualFreightCurrency'],
  ),
  freightCouponDiscountAmount: JsonCoerce.asString(
    json['freightCouponDiscountAmount'],
  ),
  targetFreightCouponDiscountAmount: JsonCoerce.asString(
    json['targetFreightCouponDiscountAmount'],
  ),
  freightCouponDiscountCurrency: json['freightCouponDiscountCurrency'] == null
      ? null
      : OrderServiceOrderCombineListGet$Response$Data$Records$Item$ParcelOrder$FreightCouponDiscountCurrency.fromJson(
          json['freightCouponDiscountCurrency'] as Map<String, dynamic>,
        ),
  targetFreightCouponDiscountCurrency: JsonCoerce.asString(
    json['targetFreightCouponDiscountCurrency'],
  ),
  lastMileMailNo: JsonCoerce.asString(json['lastMileMailNo']),
  lastMileCompanyCode: JsonCoerce.asString(json['lastMileCompanyCode']),
  lastMileCompanyName: JsonCoerce.asString(json['lastMileCompanyName']),
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
  buyerOperates: json['buyerOperates'] == null
      ? []
      : JsonCoerce.asStringList(json['buyerOperates']),
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
  country: JsonCoerce.asString(json['country']),
  countryCode: JsonCoerce.asString(json['countryCode']),
  state: JsonCoerce.asString(json['state']),
  stateCode: JsonCoerce.asString(json['stateCode']),
  city: JsonCoerce.asString(json['city']),
  cityCode: JsonCoerce.asString(json['cityCode']),
  street: JsonCoerce.asString(json['street']),
  apartment: JsonCoerce.asString(json['apartment']),
  address: JsonCoerce.asString(json['address']),
  firstName: JsonCoerce.asString(json['firstName']),
  lastName: JsonCoerce.asString(json['lastName']),
  phoneNumber: JsonCoerce.asString(json['phoneNumber']),
  zipCode: JsonCoerce.asString(json['zipCode']),
  id: JsonCoerce.asInt(json['id']),
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
  status: JsonCoerce.asInt(json['status']),
  frontStatus: JsonCoerce.asInt(json['frontStatus']),
  statusContent: JsonCoerce.asString(json['statusContent']),
  orderStatus: JsonCoerce.asInt(json['orderStatus']),
  orderId: JsonCoerce.asString(json['orderId']),
  parentOrderId: JsonCoerce.asString(json['parentOrderId']),
  quantity: JsonCoerce.asInt(json['quantity']),
  targetOriginAmount: JsonCoerce.asString(json['targetOriginAmount']),
  itemTotalAmount: JsonCoerce.asString(json['itemTotalAmount']),
  totalAmount: JsonCoerce.asString(json['totalAmount']),
  targetTotalAmount: JsonCoerce.asString(json['targetTotalAmount']),
  discountAmount: JsonCoerce.asString(json['discountAmount']),
  targetDiscountAmount: JsonCoerce.asString(json['targetDiscountAmount']),
  targetItemTotalAmount: JsonCoerce.asString(json['targetItemTotalAmount']),
  freightAmount: JsonCoerce.asString(json['freightAmount']),
  targetFreightAmount: JsonCoerce.asString(json['targetFreightAmount']),
  targetActualAmount: JsonCoerce.asString(json['targetActualAmount']),
  currency: JsonCoerce.asString(json['currency']),
  targetCurrency: JsonCoerce.asString(json['targetCurrency']),
  description: JsonCoerce.asString(json['description']),
  remark: JsonCoerce.asString(json['remark']),
  statusIcon: JsonCoerce.asString(json['statusIcon']),
  operates:
      (json['operates'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
      [],
  isLogisticsTrace: JsonCoerce.asBool(json['isLogisticsTrace']),
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
  afterSalesList: JsonCoerce.asString(json['afterSalesList']),
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
  createTime: JsonCoerce.asInt(json['createTime']),
  wish: JsonCoerce.asBool(json['wish']),
  giveawayGift: JsonCoerce.asInt(json['giveawayGift']),
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
  productName: JsonCoerce.asString(json['productName']),
  productCode: JsonCoerce.asString(json['productCode']),
  skuCode: JsonCoerce.asString(json['skuCode']),
  image: JsonCoerce.asString(json['image']),
  targetOriginTotalPrice: JsonCoerce.asString(json['targetOriginTotalPrice']),
  targetOriginPrice: JsonCoerce.asString(json['targetOriginPrice']),
  sellPrice: JsonCoerce.asString(json['sellPrice']),
  targetSellPrice: JsonCoerce.asString(json['targetSellPrice']),
  totalPrice: JsonCoerce.asString(json['totalPrice']),
  targetTotalPrice: JsonCoerce.asString(json['targetTotalPrice']),
  currency: JsonCoerce.asString(json['currency']),
  targetCurrency: JsonCoerce.asString(json['targetCurrency']),
  targetSkuDiscountPrice: JsonCoerce.asString(json['targetSkuDiscountPrice']),
  targetSkuFinalPrice: JsonCoerce.asString(json['targetSkuFinalPrice']),
  targetTotalFinalPrice: JsonCoerce.asString(json['targetTotalFinalPrice']),
  quantity: JsonCoerce.asInt(json['quantity']),
  remark: JsonCoerce.asString(json['remark']),
  skuSpecValues: (json['skuSpecValues'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderDetailGet$Response$Data$OrderList$Item$SkuList$Item$SkuSpecValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  canAfterSales: JsonCoerce.asBool(json['canAfterSales']),
  isReturned: JsonCoerce.asBool(json['isReturned']),
  returnQuantity: json['returnQuantity'],
  realRemark: json['realRemark'],
  field2: JsonCoerce.asString(json['field_2']),
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
      skuCode: JsonCoerce.asString(json['skuCode']),
      productCode: JsonCoerce.asString(json['productCode']),
      productName: JsonCoerce.asString(json['productName']),
      sellPrice: JsonCoerce.asString(json['sellPrice']),
      purchasePrice: json['purchasePrice'],
      actualPurchasePrice: JsonCoerce.asString(json['actualPurchasePrice']),
      imageUrl: JsonCoerce.asString(json['imageUrl']),
      quantity: JsonCoerce.asInt(json['quantity']),
      weight: JsonCoerce.asString(json['weight']),
      length: JsonCoerce.asString(json['length']),
      width: JsonCoerce.asString(json['width']),
      height: JsonCoerce.asString(json['height']),
      logisticsAttr: JsonCoerce.asString(json['logisticsAttr']),
      inspectImageUrlList:
          (json['inspectImageUrlList'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      secretKeyList: JsonCoerce.asString(json['secretKeyList']),
      qcRemark: JsonCoerce.asString(json['qcRemark']),
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
  targetFreight: JsonCoerce.asString(json['targetFreight']),
  expressionDate: JsonCoerce.asString(json['expressionDate']),
  freightContent: JsonCoerce.asString(json['freightContent']),
  expressionDateContent: JsonCoerce.asString(json['expressionDateContent']),
  expressionDateHtml: JsonCoerce.asString(json['expressionDateHtml']),
  orderFreightUrl: JsonCoerce.asString(json['orderFreightUrl']),
  freightTag: JsonCoerce.asString(json['freightTag']),
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
  batchNo: JsonCoerce.asString(json['batchNo']),
  parcelBatch: JsonCoerce.asBool(json['parcelBatch']),
  removePackage: JsonCoerce.asBool(json['removePackage']),
  orderFreight: JsonCoerce.asBool(json['orderFreight']),
  canBatch: JsonCoerce.asInt(json['canBatch']),
  canPayFreight: JsonCoerce.asInt(json['canPayFreight']),
  canRemovePackage: JsonCoerce.asInt(json['canRemovePackage']),
  orderFreightUrl: JsonCoerce.asString(json['orderFreightUrl']),
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
  name: JsonCoerce.asString(json['name']),
  symbol: JsonCoerce.asString(json['symbol']),
);

Map<String, dynamic>
_$OrderServiceOrderDetailGet$Response$Data$ParcelOrder$FreightCurrencyToJson(
  OrderServiceOrderDetailGet$Response$Data$ParcelOrder$FreightCurrency instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

OrderServiceOrderDetailGet$Response$Data$ParcelOrder$TargetFreightCurrency
_$OrderServiceOrderDetailGet$Response$Data$ParcelOrder$TargetFreightCurrencyFromJson(
  Map<String, dynamic> json,
) => OrderServiceOrderDetailGet$Response$Data$ParcelOrder$TargetFreightCurrency(
  symbol: JsonCoerce.asString(json['symbol']),
  name: JsonCoerce.asString(json['name']),
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
  country: JsonCoerce.asString(json['country']),
  countryCode: JsonCoerce.asString(json['countryCode']),
  state: JsonCoerce.asString(json['state']),
  stateCode: JsonCoerce.asString(json['stateCode']),
  city: JsonCoerce.asString(json['city']),
  cityCode: JsonCoerce.asString(json['cityCode']),
  street: JsonCoerce.asString(json['street']),
  apartment: JsonCoerce.asString(json['apartment']),
  address: JsonCoerce.asString(json['address']),
  firstName: JsonCoerce.asString(json['firstName']),
  lastName: JsonCoerce.asString(json['lastName']),
  phoneNumber: JsonCoerce.asString(json['phoneNumber']),
  zipCode: JsonCoerce.asString(json['zipCode']),
  id: JsonCoerce.asInt(json['id']),
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
      skuCode: JsonCoerce.asString(json['skuCode']),
      productCode: JsonCoerce.asString(json['productCode']),
      productName: JsonCoerce.asString(json['productName']),
      logisticsOrderId: JsonCoerce.asString(json['logisticsOrderId']),
      tradeOrderId: JsonCoerce.asString(json['tradeOrderId']),
      quantity: JsonCoerce.asInt(json['quantity']),
      imageUrl: JsonCoerce.asString(json['imageUrl']),
      declareName: JsonCoerce.asString(json['declareName']),
      declareNameEn: JsonCoerce.asString(json['declareNameEn']),
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
  subParcelOrderId: JsonCoerce.asString(json['subParcelOrderId']),
  parcelOrderStatus: JsonCoerce.asString(json['parcelOrderStatus']),
  lastMileMailNo: JsonCoerce.asString(json['lastMileMailNo']),
  lastMileMailNoLink: JsonCoerce.asString(json['lastMileMailNoLink']),
  lastMileCompanyName: JsonCoerce.asString(json['lastMileCompanyName']),
  lastMileCompanyPhone: JsonCoerce.asString(json['lastMileCompanyPhone']),
  lastMileCompanyEmail: JsonCoerce.asString(json['lastMileCompanyEmail']),
  traceList: (json['traceList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderDetailGet$Response$Data$OrderTrace$GroupTraceList$Item$TraceList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  sequenceTime: JsonCoerce.asInt(json['sequenceTime']),
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
  country: JsonCoerce.asString(json['country']),
  countryCode: JsonCoerce.asString(json['countryCode']),
  state: JsonCoerce.asString(json['state']),
  stateCode: JsonCoerce.asString(json['stateCode']),
  city: JsonCoerce.asString(json['city']),
  cityCode: JsonCoerce.asString(json['cityCode']),
  street: JsonCoerce.asString(json['street']),
  apartment: JsonCoerce.asString(json['apartment']),
  address: JsonCoerce.asString(json['address']),
  firstName: JsonCoerce.asString(json['firstName']),
  lastName: JsonCoerce.asString(json['lastName']),
  phoneNumber: JsonCoerce.asString(json['phoneNumber']),
  zipCode: JsonCoerce.asString(json['zipCode']),
  id: JsonCoerce.asInt(json['id']),
  remark: JsonCoerce.asString(json['remark']),
  accessCode: JsonCoerce.asString(json['accessCode']),
  email: JsonCoerce.asString(json['email']),
  tin: JsonCoerce.asString(json['tin']),
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
      skuCode: JsonCoerce.asString(json['skuCode']),
      quantity: JsonCoerce.asInt(json['quantity']),
      imageUrl: JsonCoerce.asString(json['imageUrl']),
      skuName: JsonCoerce.asString(json['skuName']),
      skuSpecValues: JsonCoerce.asString(json['skuSpecValues']),
      skuTotalWeight: JsonCoerce.asString(json['skuTotalWeight']),
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
  id: JsonCoerce.asInt(json['id']),
  subParcelOrderId: JsonCoerce.asString(json['subParcelOrderId']),
  frontCode: JsonCoerce.asString(json['frontCode']),
  frontTitleCode: JsonCoerce.asString(json['frontTitleCode']),
  frontTitle: JsonCoerce.asString(json['frontTitle']),
  icon: JsonCoerce.asString(json['icon']),
  traceMessage: JsonCoerce.asString(json['traceMessage']),
  time: JsonCoerce.asInt(json['time']),
  lastMileMailNo: JsonCoerce.asString(json['lastMileMailNo']),
  lastMileCompanyName: JsonCoerce.asString(json['lastMileCompanyName']),
  lastMileMailNoLink: JsonCoerce.asString(json['lastMileMailNoLink']),
  lastMileMailNoTitle: JsonCoerce.asString(json['lastMileMailNoTitle']),
  traceStatus: JsonCoerce.asString(json['traceStatus']),
  traceTime: JsonCoerce.asString(json['traceTime']),
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
      name: JsonCoerce.asString(json['name']),
      symbol: JsonCoerce.asString(json['symbol']),
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
      skuCode: JsonCoerce.asString(json['skuCode']),
      productCode: JsonCoerce.asString(json['productCode']),
      productName: JsonCoerce.asString(json['productName']),
      quantity: JsonCoerce.asInt(json['quantity']),
      imageUrl: JsonCoerce.asString(json['imageUrl']),
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
      compensateBillId: JsonCoerce.asString(json['compensateBillId']),
      compensatePrice: JsonCoerce.asString(json['compensatePrice']),
      compensatePriceCurrency: JsonCoerce.asString(
        json['compensatePriceCurrency'],
      ),
      compensateReason: JsonCoerce.asString(json['compensateReason']),
      targetCompensatePrice: JsonCoerce.asString(json['targetCompensatePrice']),
      targetCompensatePriceCurrency: JsonCoerce.asString(
        json['targetCompensatePriceCurrency'],
      ),
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
      symbol: JsonCoerce.asString(json['symbol']),
      currency: JsonCoerce.asString(json['currency']),
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
  id: JsonCoerce.asInt(json['id']),
  frontCode: JsonCoerce.asString(json['frontCode']),
  icon: JsonCoerce.asString(json['icon']),
  traceMessage: JsonCoerce.asString(json['traceMessage']),
  time: JsonCoerce.asInt(json['time']),
  lastMileMailNo: JsonCoerce.asString(json['lastMileMailNo']),
  lastMileMailNoLink: JsonCoerce.asString(json['lastMileMailNoLink']),
  lastMileMailNoTitle: JsonCoerce.asString(json['lastMileMailNoTitle']),
  traceStatus: JsonCoerce.asString(json['traceStatus']),
  logisticsOrderId: JsonCoerce.asString(json['logisticsOrderId']),
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
  productName: JsonCoerce.asString(json['productName']),
  productCode: JsonCoerce.asString(json['productCode']),
  skuCode: JsonCoerce.asString(json['skuCode']),
  image: JsonCoerce.asString(json['image']),
  sellPrice: JsonCoerce.asString(json['sellPrice']),
  targetSellPrice: JsonCoerce.asString(json['targetSellPrice']),
  totalPrice: JsonCoerce.asString(json['totalPrice']),
  targetTotalPrice: JsonCoerce.asString(json['targetTotalPrice']),
  currency: JsonCoerce.asString(json['currency']),
  targetCurrency: JsonCoerce.asString(json['targetCurrency']),
  quantity: JsonCoerce.asInt(json['quantity']),
  remark: JsonCoerce.asString(json['remark']),
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
      skuCode: JsonCoerce.asString(json['skuCode']),
      productCode: JsonCoerce.asString(json['productCode']),
      productName: JsonCoerce.asString(json['productName']),
      imageUrl: JsonCoerce.asString(json['imageUrl']),
      quantity: JsonCoerce.asInt(json['quantity']),
      weight: JsonCoerce.asString(json['weight']),
      length: JsonCoerce.asString(json['length']),
      width: JsonCoerce.asString(json['width']),
      height: JsonCoerce.asString(json['height']),
      inspectImageUrlList:
          (json['inspectImageUrlList'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      secretKeyList: JsonCoerce.asString(json['secretKeyList']),
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
      userId: JsonCoerce.asString(json['userId']),
      orderId: JsonCoerce.asString(json['orderId']),
      skuSourceCode: JsonCoerce.asString(json['skuSourceCode']),
      parentOrderId: JsonCoerce.asString(json['parentOrderId']),
      status: JsonCoerce.asInt(json['status']),
      frontStatus: JsonCoerce.asInt(json['frontStatus']),
      statusContent: JsonCoerce.asString(json['statusContent']),
      orderStatus: JsonCoerce.asInt(json['orderStatus']),
      evaluateStatus: JsonCoerce.asInt(json['evaluateStatus']),
      timeoutPeriod: JsonCoerce.asInt(json['timeoutPeriod']),
      createTime: JsonCoerce.asInt(json['createTime']),
      leftTime: JsonCoerce.asInt(json['leftTime']),
      title: JsonCoerce.asString(json['title']),
      subTitle: JsonCoerce.asString(json['subTitle']),
      operates: json['operates'] == null
          ? []
          : JsonCoerce.asStringList(json['operates']),
      description: JsonCoerce.asString(json['description']),
      paySuccessDescription: JsonCoerce.asString(json['paySuccessDescription']),
      afterSalesExpressMethod: JsonCoerce.asInt(
        json['afterSalesExpressMethod'],
      ),
      afterSalesState: JsonCoerce.asInt(json['afterSalesState']),
      remark: JsonCoerce.asString(json['remark']),
      remarkImages: JsonCoerce.asString(json['remarkImages']),
      supportOnlineAfterSales: JsonCoerce.asInt(
        json['supportOnlineAfterSales'],
      ),
      receiptPdfLink: JsonCoerce.asString(json['receiptPdfLink']),
      afterSalesSupport: JsonCoerce.asString(json['afterSalesSupport']),
      tenantCode: JsonCoerce.asString(json['tenantCode']),
      shippingCountry: JsonCoerce.asString(json['shippingCountry']),
      payTime: JsonCoerce.asInt(json['payTime']),
      afterSales: JsonCoerce.asBool(json['afterSales']),
      wish: JsonCoerce.asBool(json['wish']),
      removePackage: JsonCoerce.asBool(json['removePackage']),
      orderFreight: JsonCoerce.asBool(json['orderFreight']),
      giveawayGift: JsonCoerce.asInt(json['giveawayGift']),
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
      country: JsonCoerce.asString(json['country']),
      countryCode: JsonCoerce.asString(json['countryCode']),
      state: JsonCoerce.asString(json['state']),
      stateCode: JsonCoerce.asString(json['stateCode']),
      city: JsonCoerce.asString(json['city']),
      cityCode: JsonCoerce.asString(json['cityCode']),
      street: JsonCoerce.asString(json['street']),
      apartment: JsonCoerce.asString(json['apartment']),
      address: JsonCoerce.asString(json['address']),
      firstName: JsonCoerce.asString(json['firstName']),
      lastName: JsonCoerce.asString(json['lastName']),
      phoneNumber: JsonCoerce.asString(json['phoneNumber']),
      zipCode: JsonCoerce.asString(json['zipCode']),
      id: JsonCoerce.asInt(json['id']),
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
      method: JsonCoerce.asString(json['method']),
      methodName: JsonCoerce.asString(json['methodName']),
      payOrderId: JsonCoerce.asString(json['payOrderId']),
      cardMsg: JsonCoerce.asString(json['cardMsg']),
      image: JsonCoerce.asString(json['image']),
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
      receiptAmount: JsonCoerce.asString(json['receiptAmount']),
      targetOriginAmount: JsonCoerce.asString(json['targetOriginAmount']),
      itemsTotalAmount: JsonCoerce.asString(json['itemsTotalAmount']),
      freightAmount: JsonCoerce.asString(json['freightAmount']),
      targetFreightAmount: JsonCoerce.asString(json['targetFreightAmount']),
      skuQuantity: JsonCoerce.asInt(json['skuQuantity']),
      currency: JsonCoerce.asString(json['currency']),
      totalPrice: JsonCoerce.asString(json['totalPrice']),
      targetPrice: JsonCoerce.asString(json['targetPrice']),
      targetSettlementAmount: JsonCoerce.asString(
        json['targetSettlementAmount'],
      ),
      settlementAmount: JsonCoerce.asString(json['settlementAmount']),
      discountAmount: JsonCoerce.asString(json['discountAmount']),
      targetDiscountAmount: JsonCoerce.asString(json['targetDiscountAmount']),
      rechargeAmount: JsonCoerce.asString(json['rechargeAmount']),
      targetRechargePrice: JsonCoerce.asString(json['targetRechargePrice']),
      targetPayFeeAmount: JsonCoerce.asString(json['targetPayFeeAmount']),
      targetCurrency: JsonCoerce.asString(json['targetCurrency']),
      targetItemsTotalAmount: JsonCoerce.asString(
        json['targetItemsTotalAmount'],
      ),
      targetStockFeeAmount: JsonCoerce.asString(json['targetStockFeeAmount']),
      targetActualAmount: JsonCoerce.asString(json['targetActualAmount']),
      targetTipAmount: JsonCoerce.asString(json['targetTipAmount']),
      targetServiceAmount: JsonCoerce.asString(json['targetServiceAmount']),
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
      status: JsonCoerce.asString(json['status']),
      targetCurrency: JsonCoerce.asString(json['targetCurrency']),
      targetTotalPrice: JsonCoerce.asString(json['targetTotalPrice']),
      billId: JsonCoerce.asString(json['billId']),
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
  parcelOrderId: JsonCoerce.asString(json['parcelOrderId']),
  parcelStatus: JsonCoerce.asString(json['parcelStatus']),
  parcelStatusDesc: JsonCoerce.asString(json['parcelStatusDesc']),
  createTime: JsonCoerce.asInt(json['createTime']),
  warehouseCode: JsonCoerce.asString(json['warehouseCode']),
  warehouseName: JsonCoerce.asString(json['warehouseName']),
  freight: JsonCoerce.asString(json['freight']),
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
  buyerOperates: json['buyerOperates'] == null
      ? []
      : JsonCoerce.asStringList(json['buyerOperates']),
  freightCompensate: json['freightCompensate'] == null
      ? null
      : OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$ParcelOrder$FreightCompensate.fromJson(
          json['freightCompensate'] as Map<String, dynamic>,
        ),
  solutionCode: JsonCoerce.asString(json['solutionCode']),
  actualFreight: JsonCoerce.asString(json['actualFreight']),
  actualFreightCurrency: JsonCoerce.asString(json['actualFreightCurrency']),
  targetFreightCouponDiscountAmount: JsonCoerce.asString(
    json['targetFreightCouponDiscountAmount'],
  ),
  targetFreightCouponDiscountCurrency: JsonCoerce.asString(
    json['targetFreightCouponDiscountCurrency'],
  ),
  targetFreight: JsonCoerce.asString(json['targetFreight']),
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
  tradeOrderId: JsonCoerce.asString(json['tradeOrderId']),
  logisticsOrderId: JsonCoerce.asString(json['logisticsOrderId']),
  logisticsStatus: JsonCoerce.asString(json['logisticsStatus']),
  traceList: (json['traceList'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderTrace$TraceList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  parcelOrderId: JsonCoerce.asString(json['parcelOrderId']),
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
      discountType: JsonCoerce.asInt(json['discountType']),
      userCouponCode: JsonCoerce.asString(json['userCouponCode']),
      discountAmount: JsonCoerce.asString(json['discountAmount']),
      targetDiscountAmount: JsonCoerce.asString(json['targetDiscountAmount']),
      couponCode: JsonCoerce.asString(json['couponCode']),
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
      name: JsonCoerce.asString(json['name']),
      symbol: JsonCoerce.asString(json['symbol']),
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
      skuCode: JsonCoerce.asString(json['skuCode']),
      productCode: JsonCoerce.asString(json['productCode']),
      productName: JsonCoerce.asString(json['productName']),
      quantity: JsonCoerce.asInt(json['quantity']),
      imageUrl: JsonCoerce.asString(json['imageUrl']),
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
      compensateBillId: JsonCoerce.asString(json['compensateBillId']),
      compensatePrice: JsonCoerce.asString(json['compensatePrice']),
      compensatePriceCurrency: JsonCoerce.asString(
        json['compensatePriceCurrency'],
      ),
      compensateReason: JsonCoerce.asString(json['compensateReason']),
      targetCompensatePrice: JsonCoerce.asString(json['targetCompensatePrice']),
      targetCompensatePriceCurrency: JsonCoerce.asString(
        json['targetCompensatePriceCurrency'],
      ),
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
      symbol: JsonCoerce.asString(json['symbol']),
      currency: JsonCoerce.asString(json['currency']),
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
  id: JsonCoerce.asInt(json['id']),
  frontCode: JsonCoerce.asString(json['frontCode']),
  icon: JsonCoerce.asString(json['icon']),
  traceMessage: JsonCoerce.asString(json['traceMessage']),
  time: JsonCoerce.asInt(json['time']),
  lastMileMailNo: JsonCoerce.asString(json['lastMileMailNo']),
  lastMileMailNoLink: JsonCoerce.asString(json['lastMileMailNoLink']),
  lastMileMailNoTitle: JsonCoerce.asString(json['lastMileMailNoTitle']),
  traceStatus: JsonCoerce.asString(json['traceStatus']),
  logisticsOrderId: JsonCoerce.asString(json['logisticsOrderId']),
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
  parcelOrderId: JsonCoerce.asString(json['parcelOrderId']),
  parcelOrderStatus: JsonCoerce.asString(json['parcelOrderStatus']),
  lastMileMailNo: JsonCoerce.asString(json['lastMileMailNo']),
  lastMileCompanyName: JsonCoerce.asString(json['lastMileCompanyName']),
  lastMileMailNoLink: JsonCoerce.asString(json['lastMileMailNoLink']),
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
  skuCode: JsonCoerce.asString(json['skuCode']),
  skuImage: JsonCoerce.asString(json['skuImage']),
  offerPrice: JsonCoerce.asString(json['offerPrice']),
  shopName: JsonCoerce.asString(json['shopName']),
  shopImage: JsonCoerce.asString(json['shopImage']),
  shopId: JsonCoerce.asString(json['shopId']),
  quantity: JsonCoerce.asInt(json['quantity']),
  targetOriginPrice: JsonCoerce.asString(json['targetOriginPrice']),
  targetOriginTotalPrice: JsonCoerce.asString(json['targetOriginTotalPrice']),
  totalPrice: JsonCoerce.asString(json['totalPrice']),
  targetTotalPrice: JsonCoerce.asString(json['targetTotalPrice']),
  productName: JsonCoerce.asString(json['productName']),
  productCode: JsonCoerce.asString(json['productCode']),
  remarkList: JsonCoerce.asString(json['remarkList']),
  status: JsonCoerce.asInt(json['status']),
  sellPrice: JsonCoerce.asString(json['sellPrice']),
  sellCur: JsonCoerce.asString(json['sellCur']),
  targetSellPrice: JsonCoerce.asString(json['targetSellPrice']),
  targetSellCur: JsonCoerce.asString(json['targetSellCur']),
  skuOptions: (json['skuOptions'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceCartListGet$Response$Data$List$Item$Records$Item$SkuOptions$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  discountAmount: JsonCoerce.asInt(json['discountAmount']),
  discountRemark: JsonCoerce.asString(json['discountRemark']),
  skuSourceCode: JsonCoerce.asString(json['skuSourceCode']),
  skuSourceTitle: JsonCoerce.asString(json['skuSourceTitle']),
  weight: JsonCoerce.asString(json['weight']),
  weightUnit: JsonCoerce.asString(json['weightUnit']),
  canDeliver: JsonCoerce.asInt(json['canDeliver']),
  inviteCode: JsonCoerce.asString(json['inviteCode']),
  qualityImages:
      (json['qualityImages'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
  remark: JsonCoerce.asString(json['remark']),
  sourceDetail: JsonCoerce.asString(json['sourceDetail']),
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
      name: JsonCoerce.asString(json['name']),
      value: JsonCoerce.asString(json['value']),
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
      barCodeImg: JsonCoerce.asString(json['barCodeImg']),
      codeInfo: JsonCoerce.asString(json['codeInfo']),
      pin: JsonCoerce.asString(json['pin']),
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
      name: JsonCoerce.asString(json['name']),
      symbol: JsonCoerce.asString(json['symbol']),
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
      name: JsonCoerce.asString(json['name']),
      symbol: JsonCoerce.asString(json['symbol']),
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
      name: JsonCoerce.asString(json['name']),
      symbol: JsonCoerce.asString(json['symbol']),
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
      country: JsonCoerce.asString(json['country']),
      countryCode: JsonCoerce.asString(json['countryCode']),
      state: JsonCoerce.asString(json['state']),
      stateCode: JsonCoerce.asString(json['stateCode']),
      city: JsonCoerce.asString(json['city']),
      cityCode: JsonCoerce.asString(json['cityCode']),
      street: JsonCoerce.asString(json['street']),
      apartment: JsonCoerce.asString(json['apartment']),
      address: JsonCoerce.asString(json['address']),
      firstName: JsonCoerce.asString(json['firstName']),
      lastName: JsonCoerce.asString(json['lastName']),
      phoneNumber: JsonCoerce.asString(json['phoneNumber']),
      zipCode: JsonCoerce.asString(json['zipCode']),
      id: JsonCoerce.asInt(json['id']),
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
      skuCode: JsonCoerce.asString(json['skuCode']),
      productCode: JsonCoerce.asString(json['productCode']),
      productName: JsonCoerce.asString(json['productName']),
      logisticsOrderId: JsonCoerce.asString(json['logisticsOrderId']),
      quantity: JsonCoerce.asInt(json['quantity']),
      imageUrl: JsonCoerce.asString(json['imageUrl']),
      declareName: JsonCoerce.asString(json['declareName']),
      declareNameEn: JsonCoerce.asString(json['declareNameEn']),
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
      desc: JsonCoerce.asString(json['desc']),
      fontSize: JsonCoerce.asString(json['fontSize']),
      fontColor: JsonCoerce.asString(json['fontColor']),
      position: JsonCoerce.asInt(json['position']),
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
      name: JsonCoerce.asString(json['name']),
      value: JsonCoerce.asString(json['value']),
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
  solutionName: JsonCoerce.asString(json['solutionName']),
  solutionCode: JsonCoerce.asString(json['solutionCode']),
  freight: JsonCoerce.asString(json['freight']),
  freightCurrency: json['freightCurrency'] == null
      ? null
      : OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$RecommendSolution$FreightCurrency.fromJson(
          json['freightCurrency'] as Map<String, dynamic>,
        ),
  freightFreeThreshold: JsonCoerce.asString(json['freightFreeThreshold']),
  freightFreeThresholdCurrency: json['freightFreeThresholdCurrency'] == null
      ? null
      : OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$RecommendSolution$FreightFreeThresholdCurrency.fromJson(
          json['freightFreeThresholdCurrency'] as Map<String, dynamic>,
        ),
  gmtExpectArriveStart: JsonCoerce.asInt(json['gmtExpectArriveStart']),
  gmtExpectArriveEnd: JsonCoerce.asInt(json['gmtExpectArriveEnd']),
  lateCompensation: JsonCoerce.asString(json['lateCompensation']),
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
  name: JsonCoerce.asString(json['name']),
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
  skuCode: JsonCoerce.asString(json['skuCode']),
  skuImage: JsonCoerce.asString(json['skuImage']),
  sellPrice: JsonCoerce.asString(json['sellPrice']),
  quantity: JsonCoerce.asString(json['quantity']),
  productName: JsonCoerce.asString(json['productName']),
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
  shopName: JsonCoerce.asString(json['shopName']),
  shopImage: JsonCoerce.asString(json['shopImage']),
  lowStocks: JsonCoerce.asString(json['lowStocks']),
  giftCode: JsonCoerce.asString(json['giftCode']),
  weight: JsonCoerce.asString(json['weight']),
  weightUnit: JsonCoerce.asString(json['weightUnit']),
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
  title: JsonCoerce.asString(json['title']),
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
      id: JsonCoerce.asInt(json['id']),
      subParcelOrderId: JsonCoerce.asString(json['subParcelOrderId']),
      frontCode: JsonCoerce.asString(json['frontCode']),
      frontTitleCode: JsonCoerce.asString(json['frontTitleCode']),
      frontTitle: JsonCoerce.asString(json['frontTitle']),
      icon: JsonCoerce.asString(json['icon']),
      traceMessage: JsonCoerce.asString(json['traceMessage']),
      time: JsonCoerce.asInt(json['time']),
      lastMileMailNo: JsonCoerce.asString(json['lastMileMailNo']),
      lastMileCompanyName: JsonCoerce.asString(json['lastMileCompanyName']),
      lastMileMailNoLink: JsonCoerce.asString(json['lastMileMailNoLink']),
      lastMileMailNoTitle: JsonCoerce.asString(json['lastMileMailNoTitle']),
      traceStatus: JsonCoerce.asString(json['traceStatus']),
      traceTime: JsonCoerce.asDateTime(json['traceTime']),
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
      name: JsonCoerce.asString(json['name']),
      value: JsonCoerce.asString(json['value']),
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
      name: JsonCoerce.asString(json['name']),
      value: JsonCoerce.asString(json['value']),
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
      barCodeImg: JsonCoerce.asString(json['barCodeImg']),
      codeInfo: JsonCoerce.asString(json['codeInfo']),
      pin: JsonCoerce.asString(json['pin']),
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
      name: JsonCoerce.asString(json['name']),
      symbol: JsonCoerce.asString(json['symbol']),
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
      name: JsonCoerce.asString(json['name']),
      symbol: JsonCoerce.asString(json['symbol']),
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
      name: JsonCoerce.asString(json['name']),
      symbol: JsonCoerce.asString(json['symbol']),
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
      country: JsonCoerce.asString(json['country']),
      countryCode: JsonCoerce.asString(json['countryCode']),
      state: JsonCoerce.asString(json['state']),
      stateCode: JsonCoerce.asString(json['stateCode']),
      city: JsonCoerce.asString(json['city']),
      cityCode: JsonCoerce.asString(json['cityCode']),
      street: JsonCoerce.asString(json['street']),
      apartment: JsonCoerce.asString(json['apartment']),
      address: JsonCoerce.asString(json['address']),
      firstName: JsonCoerce.asString(json['firstName']),
      lastName: JsonCoerce.asString(json['lastName']),
      phoneNumber: JsonCoerce.asString(json['phoneNumber']),
      zipCode: JsonCoerce.asString(json['zipCode']),
      id: JsonCoerce.asInt(json['id']),
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
      skuCode: JsonCoerce.asString(json['skuCode']),
      productCode: JsonCoerce.asString(json['productCode']),
      productName: JsonCoerce.asString(json['productName']),
      logisticsOrderId: JsonCoerce.asString(json['logisticsOrderId']),
      quantity: JsonCoerce.asInt(json['quantity']),
      imageUrl: JsonCoerce.asString(json['imageUrl']),
      declareName: JsonCoerce.asString(json['declareName']),
      declareNameEn: JsonCoerce.asString(json['declareNameEn']),
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
      name: JsonCoerce.asString(json['name']),
      symbol: JsonCoerce.asString(json['symbol']),
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
      name: JsonCoerce.asString(json['name']),
      symbol: JsonCoerce.asString(json['symbol']),
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
      name: JsonCoerce.asString(json['name']),
      symbol: JsonCoerce.asString(json['symbol']),
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
      country: JsonCoerce.asString(json['country']),
      countryCode: JsonCoerce.asString(json['countryCode']),
      state: JsonCoerce.asString(json['state']),
      stateCode: JsonCoerce.asString(json['stateCode']),
      city: JsonCoerce.asString(json['city']),
      cityCode: JsonCoerce.asString(json['cityCode']),
      street: JsonCoerce.asString(json['street']),
      apartment: JsonCoerce.asString(json['apartment']),
      address: JsonCoerce.asString(json['address']),
      firstName: JsonCoerce.asString(json['firstName']),
      lastName: JsonCoerce.asString(json['lastName']),
      phoneNumber: JsonCoerce.asString(json['phoneNumber']),
      zipCode: JsonCoerce.asString(json['zipCode']),
      id: JsonCoerce.asInt(json['id']),
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
      skuCode: JsonCoerce.asString(json['skuCode']),
      productCode: JsonCoerce.asString(json['productCode']),
      productName: JsonCoerce.asString(json['productName']),
      logisticsOrderId: JsonCoerce.asString(json['logisticsOrderId']),
      quantity: JsonCoerce.asInt(json['quantity']),
      imageUrl: JsonCoerce.asString(json['imageUrl']),
      declareName: JsonCoerce.asString(json['declareName']),
      declareNameEn: JsonCoerce.asString(json['declareNameEn']),
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
  productName: JsonCoerce.asString(json['productName']),
  skuCode: JsonCoerce.asString(json['skuCode']),
  productCode: JsonCoerce.asString(json['productCode']),
  image: JsonCoerce.asString(json['image']),
  targetOriginTotalPrice: JsonCoerce.asString(json['targetOriginTotalPrice']),
  targetOriginPrice: JsonCoerce.asString(json['targetOriginPrice']),
  sellPrice: JsonCoerce.asString(json['sellPrice']),
  sellCur: JsonCoerce.asString(json['sellCur']),
  totalPrice: JsonCoerce.asString(json['totalPrice']),
  targetSellPrice: JsonCoerce.asString(json['targetSellPrice']),
  targetSellCur: JsonCoerce.asString(json['targetSellCur']),
  targetTotalPrice: JsonCoerce.asString(json['targetTotalPrice']),
  targetSkuDiscountPrice: JsonCoerce.asString(json['targetSkuDiscountPrice']),
  targetSkuFinalPrice: JsonCoerce.asString(json['targetSkuFinalPrice']),
  targetTotalFinalPrice: JsonCoerce.asString(json['targetTotalFinalPrice']),
  remark: JsonCoerce.asString(json['remark']),
  quantity: JsonCoerce.asInt(json['quantity']),
  skuSpecValues: (json['skuSpecValues'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$OrderSkuList$Item$SkuSpecValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  isReturned: JsonCoerce.asBool(json['isReturned']),
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
  skuCode: JsonCoerce.asString(json['skuCode']),
  productCode: JsonCoerce.asString(json['productCode']),
  productName: JsonCoerce.asString(json['productName']),
  imageUrl: json['imageUrl'],
  quantity: JsonCoerce.asInt(json['quantity']),
  weight: JsonCoerce.asString(json['weight']),
  length: JsonCoerce.asString(json['length']),
  width: JsonCoerce.asString(json['width']),
  height: JsonCoerce.asString(json['height']),
  qcRemark: JsonCoerce.asString(json['qcRemark']),
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
  parcelOrderId: JsonCoerce.asString(json['parcelOrderId']),
  parcelStatus: JsonCoerce.asString(json['parcelStatus']),
  parcelStatusDesc: JsonCoerce.asString(json['parcelStatusDesc']),
  createTime: JsonCoerce.asInt(json['createTime']),
  warehouseCode: JsonCoerce.asString(json['warehouseCode']),
  warehouseName: JsonCoerce.asString(json['warehouseName']),
  solutionCode: JsonCoerce.asString(json['solutionCode']),
  freight: JsonCoerce.asString(json['freight']),
  freightCurrency: json['freightCurrency'] == null
      ? null
      : OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$FreightCurrency.fromJson(
          json['freightCurrency'] as Map<String, dynamic>,
        ),
  targetFreight: JsonCoerce.asString(json['targetFreight']),
  targetFreightCurrency: json['targetFreightCurrency'] == null
      ? null
      : OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$TargetFreightCurrency.fromJson(
          json['targetFreightCurrency'] as Map<String, dynamic>,
        ),
  actualFreight: JsonCoerce.asString(json['actualFreight']),
  actualFreightCurrency: JsonCoerce.asString(json['actualFreightCurrency']),
  targetActualFreight: JsonCoerce.asString(json['targetActualFreight']),
  targetActualFreightCurrency: JsonCoerce.asString(
    json['targetActualFreightCurrency'],
  ),
  freightCouponDiscountAmount: JsonCoerce.asString(
    json['freightCouponDiscountAmount'],
  ),
  targetFreightCouponDiscountAmount: JsonCoerce.asString(
    json['targetFreightCouponDiscountAmount'],
  ),
  freightCouponDiscountCurrency: json['freightCouponDiscountCurrency'] == null
      ? null
      : OrderServiceOrderCombineListGet$Response$Data$Records$Item$OrderList$Item$ParcelOrder$FreightCouponDiscountCurrency.fromJson(
          json['freightCouponDiscountCurrency'] as Map<String, dynamic>,
        ),
  targetFreightCouponDiscountCurrency: JsonCoerce.asString(
    json['targetFreightCouponDiscountCurrency'],
  ),
  lastMileMailNo: JsonCoerce.asString(json['lastMileMailNo']),
  lastMileCompanyCode: JsonCoerce.asString(json['lastMileCompanyCode']),
  lastMileCompanyName: JsonCoerce.asString(json['lastMileCompanyName']),
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
  buyerOperates: json['buyerOperates'] == null
      ? []
      : JsonCoerce.asStringList(json['buyerOperates']),
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
      billId: JsonCoerce.asString(json['billId']),
      status: JsonCoerce.asInt(json['status']),
      targetTotalPrice: JsonCoerce.asString(json['targetTotalPrice']),
      targetCurrency: JsonCoerce.asString(json['targetCurrency']),
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
      country: JsonCoerce.asString(json['country']),
      countryCode: JsonCoerce.asString(json['countryCode']),
      state: JsonCoerce.asString(json['state']),
      stateCode: JsonCoerce.asString(json['stateCode']),
      city: JsonCoerce.asString(json['city']),
      cityCode: JsonCoerce.asString(json['cityCode']),
      street: JsonCoerce.asString(json['street']),
      apartment: JsonCoerce.asString(json['apartment']),
      address: JsonCoerce.asString(json['address']),
      firstName: JsonCoerce.asString(json['firstName']),
      lastName: JsonCoerce.asString(json['lastName']),
      phoneNumber: JsonCoerce.asString(json['phoneNumber']),
      zipCode: JsonCoerce.asString(json['zipCode']),
      id: JsonCoerce.asInt(json['id']),
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
      name: JsonCoerce.asString(json['name']),
      value: JsonCoerce.asString(json['value']),
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
      id: JsonCoerce.asInt(json['id']),
      subParcelOrderId: JsonCoerce.asString(json['subParcelOrderId']),
      frontCode: JsonCoerce.asString(json['frontCode']),
      frontTitleCode: JsonCoerce.asString(json['frontTitleCode']),
      frontTitle: JsonCoerce.asString(json['frontTitle']),
      icon: JsonCoerce.asString(json['icon']),
      traceMessage: JsonCoerce.asString(json['traceMessage']),
      time: JsonCoerce.asInt(json['time']),
      lastMileMailNo: JsonCoerce.asString(json['lastMileMailNo']),
      lastMileCompanyName: JsonCoerce.asString(json['lastMileCompanyName']),
      lastMileMailNoLink: JsonCoerce.asString(json['lastMileMailNoLink']),
      lastMileMailNoTitle: JsonCoerce.asString(json['lastMileMailNoTitle']),
      traceStatus: JsonCoerce.asString(json['traceStatus']),
      traceTime: JsonCoerce.asString(json['traceTime']),
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
      name: JsonCoerce.asString(json['name']),
      value: JsonCoerce.asString(json['value']),
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
      name: JsonCoerce.asString(json['name']),
      symbol: JsonCoerce.asString(json['symbol']),
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
      skuCode: JsonCoerce.asString(json['skuCode']),
      productCode: JsonCoerce.asString(json['productCode']),
      productName: JsonCoerce.asString(json['productName']),
      quantity: JsonCoerce.asInt(json['quantity']),
      imageUrl: JsonCoerce.asString(json['imageUrl']),
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
      compensateBillId: JsonCoerce.asString(json['compensateBillId']),
      compensatePrice: JsonCoerce.asString(json['compensatePrice']),
      compensatePriceCurrency: JsonCoerce.asString(
        json['compensatePriceCurrency'],
      ),
      compensateReason: JsonCoerce.asString(json['compensateReason']),
      targetCompensatePrice: JsonCoerce.asString(json['targetCompensatePrice']),
      targetCompensatePriceCurrency: JsonCoerce.asString(
        json['targetCompensatePriceCurrency'],
      ),
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
      symbol: JsonCoerce.asString(json['symbol']),
      currency: JsonCoerce.asString(json['currency']),
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
      id: JsonCoerce.asInt(json['id']),
      frontCode: JsonCoerce.asString(json['frontCode']),
      icon: JsonCoerce.asString(json['icon']),
      traceMessage: JsonCoerce.asString(json['traceMessage']),
      time: JsonCoerce.asInt(json['time']),
      lastMileMailNo: JsonCoerce.asString(json['lastMileMailNo']),
      lastMileMailNoLink: JsonCoerce.asString(json['lastMileMailNoLink']),
      lastMileMailNoTitle: JsonCoerce.asString(json['lastMileMailNoTitle']),
      traceStatus: JsonCoerce.asString(json['traceStatus']),
      logisticsOrderId: JsonCoerce.asString(json['logisticsOrderId']),
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
  productName: JsonCoerce.asString(json['productName']),
  productCode: JsonCoerce.asString(json['productCode']),
  skuCode: JsonCoerce.asString(json['skuCode']),
  image: JsonCoerce.asString(json['image']),
  targetOriginPrice: JsonCoerce.asString(json['targetOriginPrice']),
  targetOriginTotalPrice: JsonCoerce.asString(json['targetOriginTotalPrice']),
  sellPrice: JsonCoerce.asString(json['sellPrice']),
  targetSellPrice: JsonCoerce.asString(json['targetSellPrice']),
  totalPrice: JsonCoerce.asString(json['totalPrice']),
  targetTotalPrice: JsonCoerce.asString(json['targetTotalPrice']),
  targetSkuDiscountPrice: JsonCoerce.asString(json['targetSkuDiscountPrice']),
  targetSkuFinalPrice: JsonCoerce.asString(json['targetSkuFinalPrice']),
  targetTotalFinalPrice: JsonCoerce.asString(json['targetTotalFinalPrice']),
  currency: JsonCoerce.asString(json['currency']),
  targetCurrency: JsonCoerce.asString(json['targetCurrency']),
  quantity: JsonCoerce.asInt(json['quantity']),
  remark: JsonCoerce.asString(json['remark']),
  skuSpecValues: (json['skuSpecValues'] as List<dynamic>?)
      ?.map(
        (e) =>
            OrderServiceOrderCombineDetailGet$Response$Data$BatchOrderDetails$Item$OrderList$Item$SkuList$Item$SkuSpecValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  isReturned: JsonCoerce.asBool(json['isReturned']),
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
      skuCode: JsonCoerce.asString(json['skuCode']),
      productCode: JsonCoerce.asString(json['productCode']),
      productName: JsonCoerce.asString(json['productName']),
      imageUrl: JsonCoerce.asString(json['imageUrl']),
      quantity: JsonCoerce.asInt(json['quantity']),
      weight: JsonCoerce.asString(json['weight']),
      length: JsonCoerce.asString(json['length']),
      width: JsonCoerce.asString(json['width']),
      height: JsonCoerce.asString(json['height']),
      inspectImageUrlList:
          (json['inspectImageUrlList'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      secretKeyList: JsonCoerce.asString(json['secretKeyList']),
      qcRemark: JsonCoerce.asString(json['qcRemark']),
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
      id: JsonCoerce.asInt(json['id']),
      frontCode: JsonCoerce.asString(json['frontCode']),
      icon: JsonCoerce.asString(json['icon']),
      traceMessage: JsonCoerce.asString(json['traceMessage']),
      time: JsonCoerce.asInt(json['time']),
      lastMileMailNo: json['lastMileMailNo'],
      lastMileMailNoLink: JsonCoerce.asString(json['lastMileMailNoLink']),
      lastMileMailNoTitle: JsonCoerce.asString(json['lastMileMailNoTitle']),
      traceStatus: JsonCoerce.asString(json['traceStatus']),
      frontTitle: JsonCoerce.asString(json['frontTitle']),
      frontTitleCode: JsonCoerce.asString(json['frontTitleCode']),
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
      name: JsonCoerce.asString(json['name']),
      value: JsonCoerce.asString(json['value']),
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
      name: JsonCoerce.asString(json['name']),
      symbol: JsonCoerce.asString(json['symbol']),
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
      name: JsonCoerce.asString(json['name']),
      symbol: JsonCoerce.asString(json['symbol']),
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
      name: JsonCoerce.asString(json['name']),
      symbol: JsonCoerce.asString(json['symbol']),
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
  solutionName: JsonCoerce.asString(json['solutionName']),
  solutionCode: JsonCoerce.asString(json['solutionCode']),
  freight: JsonCoerce.asString(json['freight']),
  freightCurrency: json['freightCurrency'] == null
      ? null
      : OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$Item$SolutionList$Item$FreightCurrency.fromJson(
          json['freightCurrency'] as Map<String, dynamic>,
        ),
  freightFreeThreshold: JsonCoerce.asString(json['freightFreeThreshold']),
  freightFreeThresholdCurrency: json['freightFreeThresholdCurrency'] == null
      ? null
      : OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$Item$SolutionList$Item$FreightFreeThresholdCurrency.fromJson(
          json['freightFreeThresholdCurrency'] as Map<String, dynamic>,
        ),
  gmtExpectArriveStart: JsonCoerce.asString(json['gmtExpectArriveStart']),
  gmtExpectArriveEnd: JsonCoerce.asString(json['gmtExpectArriveEnd']),
  lateCompensation: JsonCoerce.asString(json['lateCompensation']),
  lateCompensationCurrency: json['lateCompensationCurrency'] == null
      ? null
      : OrderServiceOrderConfirmPost$Response$Data$Pricing$SolutionList$Item$LastMileList$Item$SolutionList$Item$LateCompensationCurrency.fromJson(
          json['lateCompensationCurrency'] as Map<String, dynamic>,
        ),
  lateCompensationTimeframe: JsonCoerce.asString(
    json['lateCompensationTimeframe'],
  ),
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
      symbol: JsonCoerce.asString(json['symbol']),
      name: JsonCoerce.asString(json['name']),
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
  name: JsonCoerce.asString(json['name']),
  description: JsonCoerce.asString(json['description']),
  voucherCode: JsonCoerce.asString(json['voucherCode']),
  discountType: JsonCoerce.asString(json['discountType']),
  discountInfo: JsonCoerce.asString(json['discountInfo']),
  currency: json['currency'] == null
      ? null
      : OrderServiceOrderConfirmPost$Response$Data$Pricing$VoucherMsg$VoucherInfos$Item$List$Item$Currency.fromJson(
          json['currency'] as Map<String, dynamic>,
        ),
  validStartStamp: JsonCoerce.asString(json['validStartStamp']),
  validEndStamp: JsonCoerce.asString(json['validEndStamp']),
  desc: JsonCoerce.asString(json['desc']),
  status: JsonCoerce.asString(json['status']),
  isDefault: JsonCoerce.asString(json['isDefault']),
  available: JsonCoerce.asString(json['available']),
  unavailableReason: JsonCoerce.asString(json['unavailableReason']),
  sourceCode: JsonCoerce.asString(json['sourceCode']),
  validEndDesc: JsonCoerce.asString(json['validEndDesc']),
  usedVoucherInfo: JsonCoerce.asString(json['usedVoucherInfo']),
  minOrderAmountInfo: JsonCoerce.asString(json['minOrderAmountInfo']),
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
      name: JsonCoerce.asString(json['name']),
      value: JsonCoerce.asString(json['value']),
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
      barCodeImg: JsonCoerce.asString(json['barCodeImg']),
      codeInfo: JsonCoerce.asString(json['codeInfo']),
      pin: JsonCoerce.asString(json['pin']),
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
      name: JsonCoerce.asString(json['name']),
      symbol: JsonCoerce.asString(json['symbol']),
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
      name: JsonCoerce.asString(json['name']),
      symbol: JsonCoerce.asString(json['symbol']),
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
      name: JsonCoerce.asString(json['name']),
      symbol: JsonCoerce.asString(json['symbol']),
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
      country: JsonCoerce.asString(json['country']),
      countryCode: JsonCoerce.asString(json['countryCode']),
      state: JsonCoerce.asString(json['state']),
      stateCode: JsonCoerce.asString(json['stateCode']),
      city: JsonCoerce.asString(json['city']),
      cityCode: JsonCoerce.asString(json['cityCode']),
      street: JsonCoerce.asString(json['street']),
      apartment: JsonCoerce.asString(json['apartment']),
      address: JsonCoerce.asString(json['address']),
      firstName: JsonCoerce.asString(json['firstName']),
      lastName: JsonCoerce.asString(json['lastName']),
      phoneNumber: JsonCoerce.asString(json['phoneNumber']),
      zipCode: JsonCoerce.asString(json['zipCode']),
      id: JsonCoerce.asInt(json['id']),
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
      skuCode: JsonCoerce.asString(json['skuCode']),
      productCode: JsonCoerce.asString(json['productCode']),
      productName: JsonCoerce.asString(json['productName']),
      logisticsOrderId: JsonCoerce.asString(json['logisticsOrderId']),
      quantity: JsonCoerce.asInt(json['quantity']),
      imageUrl: JsonCoerce.asString(json['imageUrl']),
      declareName: JsonCoerce.asString(json['declareName']),
      declareNameEn: JsonCoerce.asString(json['declareNameEn']),
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
      name: JsonCoerce.asString(json['name']),
      value: JsonCoerce.asString(json['value']),
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
      name: JsonCoerce.asString(json['name']),
      symbol: JsonCoerce.asString(json['symbol']),
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
      name: JsonCoerce.asString(json['name']),
      symbol: JsonCoerce.asString(json['symbol']),
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
      name: JsonCoerce.asString(json['name']),
      symbol: JsonCoerce.asString(json['symbol']),
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
      symbol: JsonCoerce.asString(json['symbol']),
      name: JsonCoerce.asString(json['name']),
    );

Map<String, dynamic>
_$OrderServiceOrderConfirmPost$Response$Data$Pricing$VoucherMsg$VoucherInfos$Item$List$Item$CurrencyToJson(
  OrderServiceOrderConfirmPost$Response$Data$Pricing$VoucherMsg$VoucherInfos$Item$List$Item$Currency
  instance,
) => <String, dynamic>{'symbol': instance.symbol, 'name': instance.name};
