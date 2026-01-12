// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swaggerApiProduct.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductServiceProductReviewNoAuthPageGet$Response
_$ProductServiceProductReviewNoAuthPageGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductReviewNoAuthPageGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ProductServiceProductReviewNoAuthPageGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ProductServiceProductReviewNoAuthPageGet$ResponseToJson(
  ProductServiceProductReviewNoAuthPageGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
};

ProductServiceProductReviewNoAuthSummaryGet$Response
_$ProductServiceProductReviewNoAuthSummaryGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductReviewNoAuthSummaryGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ProductServiceProductReviewNoAuthSummaryGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$ProductServiceProductReviewNoAuthSummaryGet$ResponseToJson(
  ProductServiceProductReviewNoAuthSummaryGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
};

ProductServiceCategoryNoAuthTreeGet$Response
_$ProductServiceCategoryNoAuthTreeGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductServiceCategoryNoAuthTreeGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ProductServiceCategoryNoAuthTreeGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$ProductServiceCategoryNoAuthTreeGet$ResponseToJson(
  ProductServiceCategoryNoAuthTreeGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

ProductServiceActivityNoAuthFlashSaleActivityGet$Response
_$ProductServiceActivityNoAuthFlashSaleActivityGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductServiceActivityNoAuthFlashSaleActivityGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic>
_$ProductServiceActivityNoAuthFlashSaleActivityGet$ResponseToJson(
  ProductServiceActivityNoAuthFlashSaleActivityGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'success': instance.success,
};

ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response
_$ProductServiceActivityNoAuthFlashSaleActivityProductGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response(
  code: json['code'] as String?,
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
);

Map<String, dynamic>
_$ProductServiceActivityNoAuthFlashSaleActivityProductGet$ResponseToJson(
  ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
};

ProductServiceProductPremiumDupeNoAuthPagePost$Response
_$ProductServiceProductPremiumDupeNoAuthPagePost$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductPremiumDupeNoAuthPagePost$Response(
  code: (json['code'] as num?)?.toInt(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
);

Map<String, dynamic>
_$ProductServiceProductPremiumDupeNoAuthPagePost$ResponseToJson(
  ProductServiceProductPremiumDupeNoAuthPagePost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
};

ProductServiceProductPremiumDupeNoAuthMetaGet$Response
_$ProductServiceProductPremiumDupeNoAuthMetaGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductPremiumDupeNoAuthMetaGet$Response(
  code: (json['code'] as num?)?.toInt(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
);

Map<String, dynamic>
_$ProductServiceProductPremiumDupeNoAuthMetaGet$ResponseToJson(
  ProductServiceProductPremiumDupeNoAuthMetaGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
};

ProductServiceProductPremiumDupeNoAuthSelectionGet$Response
_$ProductServiceProductPremiumDupeNoAuthSelectionGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductPremiumDupeNoAuthSelectionGet$Response(
  code: (json['code'] as num?)?.toInt(),
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  traceId: json['traceId'] as String?,
);

Map<String, dynamic>
_$ProductServiceProductPremiumDupeNoAuthSelectionGet$ResponseToJson(
  ProductServiceProductPremiumDupeNoAuthSelectionGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'traceId': instance.traceId,
};

ProductServiceExternalPurchaseRecordPost$Response
_$ProductServiceExternalPurchaseRecordPost$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductServiceExternalPurchaseRecordPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] as bool?,
);

Map<String, dynamic> _$ProductServiceExternalPurchaseRecordPost$ResponseToJson(
  ProductServiceExternalPurchaseRecordPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
};

ProductServiceProductNoAuthPushProductGet$Response
_$ProductServiceProductNoAuthPushProductGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthPushProductGet$Response(
  code: (json['code'] as num?)?.toInt(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ProductServiceProductNoAuthPushProductGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$ProductServiceProductNoAuthPushProductGet$ResponseToJson(
  ProductServiceProductNoAuthPushProductGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
};

ProductServiceProductNoAuthSearchGet$Response
_$ProductServiceProductNoAuthSearchGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthSearchGet$Response(
  code: (json['code'] as num?)?.toInt(),
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map(
        (e) => ProductServiceProductNoAuthSearchGet$Response$Data$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$ProductServiceProductNoAuthSearchGet$ResponseToJson(
  ProductServiceProductNoAuthSearchGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'traceId': instance.traceId,
};

ProductServiceProductNoAuthCombineSearchGet$Response
_$ProductServiceProductNoAuthCombineSearchGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthCombineSearchGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ProductServiceProductNoAuthCombineSearchGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthCombineSearchGet$ResponseToJson(
  ProductServiceProductNoAuthCombineSearchGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

ProductServiceProductNoAuthNewArrivalProductGet$Response
_$ProductServiceProductNoAuthNewArrivalProductGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthNewArrivalProductGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ProductServiceProductNoAuthNewArrivalProductGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthNewArrivalProductGet$ResponseToJson(
  ProductServiceProductNoAuthNewArrivalProductGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

ProductServiceProductNoAuthNewArrivalProductBrandGet$Response
_$ProductServiceProductNoAuthNewArrivalProductBrandGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthNewArrivalProductBrandGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data:
      (json['data'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthNewArrivalProductBrandGet$ResponseToJson(
  ProductServiceProductNoAuthNewArrivalProductBrandGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

ProductServiceProductNoAuthSkuListGet$Response
_$ProductServiceProductNoAuthSkuListGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthSkuListGet$Response(
  code: (json['code'] as num?)?.toInt(),
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthSkuListGet$Response$Data$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$ProductServiceProductNoAuthSkuListGet$ResponseToJson(
  ProductServiceProductNoAuthSkuListGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'traceId': instance.traceId,
};

ProductServiceProductNoAuthGetProductInfoGet$Response
_$ProductServiceProductNoAuthGetProductInfoGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthGetProductInfoGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ProductServiceProductNoAuthGetProductInfoGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthGetProductInfoGet$ResponseToJson(
  ProductServiceProductNoAuthGetProductInfoGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

ProductServiceProductNoAuthPremierProductCategoryGet$Response
_$ProductServiceProductNoAuthPremierProductCategoryGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthPremierProductCategoryGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthPremierProductCategoryGet$ResponseToJson(
  ProductServiceProductNoAuthPremierProductCategoryGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

ProductServiceProductNoAuthHotProductGet$Response
_$ProductServiceProductNoAuthHotProductGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthHotProductGet$Response(
  code: (json['code'] as num?)?.toInt(),
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthHotProductGet$Response$Data$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$ProductServiceProductNoAuthHotProductGet$ResponseToJson(
  ProductServiceProductNoAuthHotProductGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'traceId': instance.traceId,
};

ProductServiceProductNoAuthHotProductV2Get$Response
_$ProductServiceProductNoAuthHotProductV2Get$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthHotProductV2Get$Response(
  code: (json['code'] as num?)?.toInt(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ProductServiceProductNoAuthHotProductV2Get$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthHotProductV2Get$ResponseToJson(
  ProductServiceProductNoAuthHotProductV2Get$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
};

ProductServiceProductNoAuthHotProductV3Get$Response
_$ProductServiceProductNoAuthHotProductV3Get$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthHotProductV3Get$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ProductServiceProductNoAuthHotProductV3Get$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthHotProductV3Get$ResponseToJson(
  ProductServiceProductNoAuthHotProductV3Get$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'success': instance.success,
};

ProductServiceProductNoAuthFlashSaleProductGet$Response
_$ProductServiceProductNoAuthFlashSaleProductGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthFlashSaleProductGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthFlashSaleProductGet$ResponseToJson(
  ProductServiceProductNoAuthFlashSaleProductGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

ProductServiceProductNoAuthAlbumProductGet$Response
_$ProductServiceProductNoAuthAlbumProductGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthAlbumProductGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ProductServiceProductNoAuthAlbumProductGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthAlbumProductGet$ResponseToJson(
  ProductServiceProductNoAuthAlbumProductGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

ProductServiceShopNoAuthGetThirdShopGet$Response
_$ProductServiceShopNoAuthGetThirdShopGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductServiceShopNoAuthGetThirdShopGet$Response(
  code: (json['code'] as num?)?.toInt(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ProductServiceShopNoAuthGetThirdShopGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$ProductServiceShopNoAuthGetThirdShopGet$ResponseToJson(
  ProductServiceShopNoAuthGetThirdShopGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
};

ProductServiceProductNoAuthKolProductGet$Response
_$ProductServiceProductNoAuthKolProductGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthKolProductGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthKolProductGet$Response$Data$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$ProductServiceProductNoAuthKolProductGet$ResponseToJson(
  ProductServiceProductNoAuthKolProductGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

ProductServiceProductNoAuthPremierProductGet$Response
_$ProductServiceProductNoAuthPremierProductGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthPremierProductGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ProductServiceProductNoAuthPremierProductGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthPremierProductGet$ResponseToJson(
  ProductServiceProductNoAuthPremierProductGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

ProductServiceProductNoAuthPremierProductBrandGet$Response
_$ProductServiceProductNoAuthPremierProductBrandGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthPremierProductBrandGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data:
      (json['data'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthPremierProductBrandGet$ResponseToJson(
  ProductServiceProductNoAuthPremierProductBrandGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

ProductServiceRecommendNoAuthCategoryRecommendationGet$Response
_$ProductServiceRecommendNoAuthCategoryRecommendationGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductServiceRecommendNoAuthCategoryRecommendationGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic>
_$ProductServiceRecommendNoAuthCategoryRecommendationGet$ResponseToJson(
  ProductServiceRecommendNoAuthCategoryRecommendationGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'success': instance.success,
};

ProductServiceRecommendNoAuthCategoryPost$Response
_$ProductServiceRecommendNoAuthCategoryPost$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductServiceRecommendNoAuthCategoryPost$Response(
  code: (json['code'] as num?)?.toInt(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ProductServiceRecommendNoAuthCategoryPost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$ProductServiceRecommendNoAuthCategoryPost$ResponseToJson(
  ProductServiceRecommendNoAuthCategoryPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
};

ProductServiceRecommendNoAuthShopPost$Response
_$ProductServiceRecommendNoAuthShopPost$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductServiceRecommendNoAuthShopPost$Response(
  code: (json['code'] as num?)?.toInt(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ProductServiceRecommendNoAuthShopPost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$ProductServiceRecommendNoAuthShopPost$ResponseToJson(
  ProductServiceRecommendNoAuthShopPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
};

ProductServiceRecommendNoAuthSimilarProductPost$Response
_$ProductServiceRecommendNoAuthSimilarProductPost$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductServiceRecommendNoAuthSimilarProductPost$Response(
  code: (json['code'] as num?)?.toInt(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ProductServiceRecommendNoAuthSimilarProductPost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
);

Map<String, dynamic>
_$ProductServiceRecommendNoAuthSimilarProductPost$ResponseToJson(
  ProductServiceRecommendNoAuthSimilarProductPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
};

ProductServiceProductReviewNoAuthPageGet$Response$Data
_$ProductServiceProductReviewNoAuthPageGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductReviewNoAuthPageGet$Response$Data(
  current: (json['current'] as num?)?.toDouble(),
  size: (json['size'] as num?)?.toDouble(),
  total: (json['total'] as num?)?.toDouble(),
  pages: (json['pages'] as num?)?.toDouble(),
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductReviewNoAuthPageGet$Response$Data$Records$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductServiceProductReviewNoAuthPageGet$Response$DataToJson(
  ProductServiceProductReviewNoAuthPageGet$Response$Data instance,
) => <String, dynamic>{
  'current': instance.current,
  'size': instance.size,
  'total': instance.total,
  'pages': instance.pages,
  'records': instance.records?.map((e) => e.toJson()).toList(),
};

ProductServiceProductReviewNoAuthSummaryGet$Response$Data
_$ProductServiceProductReviewNoAuthSummaryGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductReviewNoAuthSummaryGet$Response$Data(
  productCode: json['productCode'] as String?,
  reviewCount: (json['reviewCount'] as num?)?.toDouble(),
  averageScore: (json['averageScore'] as num?)?.toDouble(),
  aiSummary: json['aiSummary'] as String?,
  featuredReviews: (json['featuredReviews'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductServiceProductReviewNoAuthSummaryGet$Response$DataToJson(
  ProductServiceProductReviewNoAuthSummaryGet$Response$Data instance,
) => <String, dynamic>{
  'productCode': instance.productCode,
  'reviewCount': instance.reviewCount,
  'averageScore': instance.averageScore,
  'aiSummary': instance.aiSummary,
  'featuredReviews': instance.featuredReviews?.map((e) => e.toJson()).toList(),
};

ProductServiceCategoryNoAuthTreeGet$Response$Data
_$ProductServiceCategoryNoAuthTreeGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductServiceCategoryNoAuthTreeGet$Response$Data(
  categoryList: (json['categoryList'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic> _$ProductServiceCategoryNoAuthTreeGet$Response$DataToJson(
  ProductServiceCategoryNoAuthTreeGet$Response$Data instance,
) => <String, dynamic>{
  'categoryList': instance.categoryList?.map((e) => e.toJson()).toList(),
};

ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data
_$ProductServiceActivityNoAuthFlashSaleActivityGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data(
  pic: json['pic'] as String?,
  ruleLink: json['ruleLink'] as String?,
  activities: (json['activities'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductServiceActivityNoAuthFlashSaleActivityGet$Response$DataToJson(
  ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data instance,
) => <String, dynamic>{
  'pic': instance.pic,
  'ruleLink': instance.ruleLink,
  'activities': instance.activities?.map((e) => e.toJson()).toList(),
};

ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data
_$ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data(
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  total: (json['total'] as num?)?.toInt(),
  pageSize: (json['pageSize'] as num?)?.toInt(),
  totalPages: (json['totalPages'] as num?)?.toInt(),
  current: (json['current'] as num?)?.toInt(),
);

Map<String, dynamic>
_$ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$DataToJson(
  ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data
  instance,
) => <String, dynamic>{
  'records': instance.records?.map((e) => e.toJson()).toList(),
  'total': instance.total,
  'pageSize': instance.pageSize,
  'totalPages': instance.totalPages,
  'current': instance.current,
};

ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data
_$ProductServiceProductPremiumDupeNoAuthPagePost$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data(
  total: (json['total'] as num?)?.toInt(),
  pageSize: (json['pageSize'] as num?)?.toInt(),
  totalPages: (json['totalPages'] as num?)?.toInt(),
  current: (json['current'] as num?)?.toInt(),
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductServiceProductPremiumDupeNoAuthPagePost$Response$DataToJson(
  ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data instance,
) => <String, dynamic>{
  'total': instance.total,
  'pageSize': instance.pageSize,
  'totalPages': instance.totalPages,
  'current': instance.current,
  'records': instance.records?.map((e) => e.toJson()).toList(),
};

ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data
_$ProductServiceProductPremiumDupeNoAuthMetaGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data(
  categories: (json['categories'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  sorts: (json['sorts'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  config: json['config'] == null
      ? null
      : ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config.fromJson(
          json['config'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$ProductServiceProductPremiumDupeNoAuthMetaGet$Response$DataToJson(
  ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data instance,
) => <String, dynamic>{
  'categories': instance.categories?.map((e) => e.toJson()).toList(),
  'sorts': instance.sorts?.map((e) => e.toJson()).toList(),
  'config': instance.config?.toJson(),
};

ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item
_$ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item(
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  image: json['image'] == null
      ? null
      : ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Image.fromJson(
          json['image'] as Map<String, dynamic>,
        ),
  sourcePlatform: json['sourcePlatform'] as String?,
  platformProductId: json['platformProductId'] as String?,
  categoryTree:
      (json['categoryTree'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
  skuCode: json['skuCode'] as String?,
  sellPriceCur: json['sellPriceCur'] as String?,
  sellPrice: json['sellPrice'] as String?,
  targetSellPrice: json['targetSellPrice'] as String?,
  targetOriginPrice: json['targetOriginPrice'] as String?,
  targetSellCur: json['targetSellCur'] as String?,
  sellQuantity: json['sellQuantity'] as String?,
  skuCount: (json['skuCount'] as num?)?.toInt(),
  marketingInfo: json['marketingInfo'] as String?,
  tags: (json['tags'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  skuSourceCode: json['skuSourceCode'] as String?,
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
);

Map<String, dynamic>
_$ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$ItemToJson(
  ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item
  instance,
) => <String, dynamic>{
  'productCode': instance.productCode,
  'productName': instance.productName,
  'image': instance.image?.toJson(),
  'sourcePlatform': instance.sourcePlatform,
  'platformProductId': instance.platformProductId,
  'categoryTree': instance.categoryTree,
  'skuCode': instance.skuCode,
  'sellPriceCur': instance.sellPriceCur,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'targetOriginPrice': instance.targetOriginPrice,
  'targetSellCur': instance.targetSellCur,
  'sellQuantity': instance.sellQuantity,
  'skuCount': instance.skuCount,
  'marketingInfo': instance.marketingInfo,
  'tags': instance.tags?.map((e) => e.toJson()).toList(),
  'skuSourceCode': instance.skuSourceCode,
  'premiumBrandInfo': instance.premiumBrandInfo?.toJson(),
  'sellPoints': instance.sellPoints,
};

ProductServiceProductNoAuthPushProductGet$Response$Data
_$ProductServiceProductNoAuthPushProductGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthPushProductGet$Response$Data(
  total: (json['total'] as num?)?.toInt(),
  pageSize: (json['pageSize'] as num?)?.toInt(),
  current: (json['current'] as num?)?.toInt(),
  totalPages: (json['totalPages'] as num?)?.toInt(),
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductServiceProductNoAuthPushProductGet$Response$DataToJson(
  ProductServiceProductNoAuthPushProductGet$Response$Data instance,
) => <String, dynamic>{
  'total': instance.total,
  'pageSize': instance.pageSize,
  'current': instance.current,
  'totalPages': instance.totalPages,
  'records': instance.records?.map((e) => e.toJson()).toList(),
};

ProductServiceProductNoAuthSearchGet$Response$Data$Item
_$ProductServiceProductNoAuthSearchGet$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthSearchGet$Response$Data$Item(
  shopCode: json['shopCode'] as String?,
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  tenantCode: json['tenantCode'] as String?,
  brandName: json['brandName'] as String?,
  mainImg: json['mainImg'] == null
      ? null
      : ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainImg.fromJson(
          json['mainImg'] as Map<String, dynamic>,
        ),
  subImg: json['subImg'] == null
      ? null
      : ProductServiceProductNoAuthSearchGet$Response$Data$Item$SubImg.fromJson(
          json['subImg'] as Map<String, dynamic>,
        ),
  mainVideo: json['mainVideo'] == null
      ? null
      : ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainVideo.fromJson(
          json['mainVideo'] as Map<String, dynamic>,
        ),
  imgCollection: (json['imgCollection'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthSearchGet$Response$Data$Item$ImgCollection$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  textDetail: json['textDetail'] as String?,
  categoryId: json['categoryId'] as String?,
  productOptions: (json['productOptions'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  productAttrs: (json['productAttrs'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  sourcePlatform: json['sourcePlatform'] as String?,
  platformUrl: json['platformUrl'] as String?,
  platformProductId: json['platformProductId'] as String?,
  skuCode: json['skuCode'] as String?,
  sellPriceCur: json['sellPriceCur'] as String?,
  sellPrice: json['sellPrice'] as String?,
  targetSellPrice: json['targetSellPrice'] as String?,
  targetSellCur: json['targetSellCur'] as String?,
  marketingInfo: json['marketingInfo'] as String?,
  targetOriginPrice: json['targetOriginPrice'] as String?,
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductServiceProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
);

Map<String, dynamic>
_$ProductServiceProductNoAuthSearchGet$Response$Data$ItemToJson(
  ProductServiceProductNoAuthSearchGet$Response$Data$Item instance,
) => <String, dynamic>{
  'shopCode': instance.shopCode,
  'productCode': instance.productCode,
  'productName': instance.productName,
  'tenantCode': instance.tenantCode,
  'brandName': instance.brandName,
  'mainImg': instance.mainImg?.toJson(),
  'subImg': instance.subImg?.toJson(),
  'mainVideo': instance.mainVideo?.toJson(),
  'imgCollection': instance.imgCollection?.map((e) => e.toJson()).toList(),
  'textDetail': instance.textDetail,
  'categoryId': instance.categoryId,
  'productOptions': instance.productOptions?.map((e) => e.toJson()).toList(),
  'productAttrs': instance.productAttrs?.map((e) => e.toJson()).toList(),
  'sourcePlatform': instance.sourcePlatform,
  'platformUrl': instance.platformUrl,
  'platformProductId': instance.platformProductId,
  'skuCode': instance.skuCode,
  'sellPriceCur': instance.sellPriceCur,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'targetSellCur': instance.targetSellCur,
  'marketingInfo': instance.marketingInfo,
  'targetOriginPrice': instance.targetOriginPrice,
  'premiumBrandInfo': instance.premiumBrandInfo?.toJson(),
  'sellPoints': instance.sellPoints,
};

ProductServiceProductNoAuthCombineSearchGet$Response$Data
_$ProductServiceProductNoAuthCombineSearchGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthCombineSearchGet$Response$Data(
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  total: (json['total'] as num?)?.toDouble(),
  pageSize: (json['pageSize'] as num?)?.toDouble(),
  current: (json['current'] as num?)?.toDouble(),
  totalPages: (json['totalPages'] as num?)?.toDouble(),
);

Map<String, dynamic>
_$ProductServiceProductNoAuthCombineSearchGet$Response$DataToJson(
  ProductServiceProductNoAuthCombineSearchGet$Response$Data instance,
) => <String, dynamic>{
  'records': instance.records?.map((e) => e.toJson()).toList(),
  'total': instance.total,
  'pageSize': instance.pageSize,
  'current': instance.current,
  'totalPages': instance.totalPages,
};

ProductServiceProductNoAuthNewArrivalProductGet$Response$Data
_$ProductServiceProductNoAuthNewArrivalProductGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthNewArrivalProductGet$Response$Data(
  total: (json['total'] as num?)?.toDouble(),
  pageSize: (json['pageSize'] as num?)?.toDouble(),
  totalPages: (json['totalPages'] as num?)?.toDouble(),
  current: (json['current'] as num?)?.toDouble(),
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductServiceProductNoAuthNewArrivalProductGet$Response$DataToJson(
  ProductServiceProductNoAuthNewArrivalProductGet$Response$Data instance,
) => <String, dynamic>{
  'total': instance.total,
  'pageSize': instance.pageSize,
  'totalPages': instance.totalPages,
  'current': instance.current,
  'records': instance.records?.map((e) => e.toJson()).toList(),
};

ProductServiceProductNoAuthSkuListGet$Response$Data$Item
_$ProductServiceProductNoAuthSkuListGet$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthSkuListGet$Response$Data$Item(
  productCode: json['productCode'] as String?,
  skuCode: json['skuCode'] as String?,
  tenantCode: json['tenantCode'] as String?,
  extUrl: json['extUrl'] as String?,
  skuImg: json['skuImg'] == null
      ? null
      : ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuImg.fromJson(
          json['skuImg'] as Map<String, dynamic>,
        ),
  skuOptions: (json['skuOptions'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  sellPrice: json['sellPrice'] as String?,
  sellCur: json['sellCur'] as String?,
  targetSellPrice: json['targetSellPrice'] as String?,
  targetSellCur: json['targetSellCur'] as String?,
  length: json['length'] as String?,
  width: json['width'] as String?,
  height: json['height'] as String?,
  weight: json['weight'] as String?,
  estimateUnitFreight: json['estimateUnitFreight'] as String?,
  marketingInfo: json['marketingInfo'] as String?,
  targetOriginPrice: json['targetOriginPrice'] as String?,
  skuSourceCode: json['skuSourceCode'] as String?,
  flashSaleInfo: json['flashSaleInfo'] == null
      ? null
      : ProductServiceProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfo.fromJson(
          json['flashSaleInfo'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$ProductServiceProductNoAuthSkuListGet$Response$Data$ItemToJson(
  ProductServiceProductNoAuthSkuListGet$Response$Data$Item instance,
) => <String, dynamic>{
  'productCode': instance.productCode,
  'skuCode': instance.skuCode,
  'tenantCode': instance.tenantCode,
  'extUrl': instance.extUrl,
  'skuImg': instance.skuImg?.toJson(),
  'skuOptions': instance.skuOptions?.map((e) => e.toJson()).toList(),
  'sellPrice': instance.sellPrice,
  'sellCur': instance.sellCur,
  'targetSellPrice': instance.targetSellPrice,
  'targetSellCur': instance.targetSellCur,
  'length': instance.length,
  'width': instance.width,
  'height': instance.height,
  'weight': instance.weight,
  'estimateUnitFreight': instance.estimateUnitFreight,
  'marketingInfo': instance.marketingInfo,
  'targetOriginPrice': instance.targetOriginPrice,
  'skuSourceCode': instance.skuSourceCode,
  'flashSaleInfo': instance.flashSaleInfo?.toJson(),
};

ProductServiceProductNoAuthGetProductInfoGet$Response$Data
_$ProductServiceProductNoAuthGetProductInfoGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthGetProductInfoGet$Response$Data(
  shopCode: json['shopCode'] as String?,
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  tenantCode: json['tenantCode'] as String?,
  brandName: json['brandName'] as String?,
  mainImg: (json['mainImg'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainImg$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  subImg: json['subImg'] as String?,
  mainVideo: (json['mainVideo'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainVideo$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  imgCollection: (json['imgCollection'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  textDetail: json['textDetail'] as String?,
  imgDetail: (json['imgDetail'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  categoryId: (json['categoryId'] as num?)?.toDouble(),
  productOptions: (json['productOptions'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  productAttrs: (json['productAttrs'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  sourcePlatform: json['sourcePlatform'] as String?,
  platformUrl: json['platformUrl'] as String?,
  platformProductId: json['platformProductId'] as String?,
  skuCode: json['skuCode'] as String?,
  sellPriceCur: json['sellPriceCur'] as String?,
  sellPrice: json['sellPrice'] as String?,
  targetSellPrice: json['targetSellPrice'] as String?,
  targetSellCur: json['targetSellCur'] as String?,
  sellQuantity: json['sellQuantity'] as String?,
  inspectImages: (json['inspectImages'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  tags: (json['tags'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductServiceProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
  categoryTree:
      (json['categoryTree'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList() ??
      [],
  ext: json['ext'] == null
      ? null
      : ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext.fromJson(
          json['ext'] as Map<String, dynamic>,
        ),
  productFlag: json['productFlag'] as String?,
  marketingInfo: json['marketingInfo'] as String?,
  targetOriginPrice: json['targetOriginPrice'] as String?,
  flashSale: json['flashSale'] == null
      ? null
      : ProductServiceProductNoAuthGetProductInfoGet$Response$Data$FlashSale.fromJson(
          json['flashSale'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$ProductServiceProductNoAuthGetProductInfoGet$Response$DataToJson(
  ProductServiceProductNoAuthGetProductInfoGet$Response$Data instance,
) => <String, dynamic>{
  'shopCode': instance.shopCode,
  'productCode': instance.productCode,
  'productName': instance.productName,
  'tenantCode': instance.tenantCode,
  'brandName': instance.brandName,
  'mainImg': instance.mainImg?.map((e) => e.toJson()).toList(),
  'subImg': instance.subImg,
  'mainVideo': instance.mainVideo?.map((e) => e.toJson()).toList(),
  'imgCollection': instance.imgCollection?.map((e) => e.toJson()).toList(),
  'textDetail': instance.textDetail,
  'imgDetail': instance.imgDetail?.map((e) => e.toJson()).toList(),
  'categoryId': instance.categoryId,
  'productOptions': instance.productOptions?.map((e) => e.toJson()).toList(),
  'productAttrs': instance.productAttrs?.map((e) => e.toJson()).toList(),
  'sourcePlatform': instance.sourcePlatform,
  'platformUrl': instance.platformUrl,
  'platformProductId': instance.platformProductId,
  'skuCode': instance.skuCode,
  'sellPriceCur': instance.sellPriceCur,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'targetSellCur': instance.targetSellCur,
  'sellQuantity': instance.sellQuantity,
  'inspectImages': instance.inspectImages?.map((e) => e.toJson()).toList(),
  'tags': instance.tags?.map((e) => e.toJson()).toList(),
  'premiumBrandInfo': instance.premiumBrandInfo?.toJson(),
  'sellPoints': instance.sellPoints,
  'categoryTree': instance.categoryTree,
  'ext': instance.ext?.toJson(),
  'productFlag': instance.productFlag,
  'marketingInfo': instance.marketingInfo,
  'targetOriginPrice': instance.targetOriginPrice,
  'flashSale': instance.flashSale?.toJson(),
};

ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data
_$ProductServiceProductNoAuthPremierProductCategoryGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data(
  categoryList: (json['categoryList'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductServiceProductNoAuthPremierProductCategoryGet$Response$DataToJson(
  ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data instance,
) => <String, dynamic>{
  'categoryList': instance.categoryList?.map((e) => e.toJson()).toList(),
};

ProductServiceProductNoAuthHotProductGet$Response$Data$Item
_$ProductServiceProductNoAuthHotProductGet$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthHotProductGet$Response$Data$Item(
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  image: json['image'] == null
      ? null
      : ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Image.fromJson(
          json['image'] as Map<String, dynamic>,
        ),
  skuCode: json['skuCode'] as String?,
  sellPriceCur: json['sellPriceCur'] as String?,
  sellPrice: json['sellPrice'] as String?,
  targetSellPrice: json['targetSellPrice'] as String?,
  targetSellCur: json['targetSellCur'] as String?,
  sellQuantity: json['sellQuantity'] as String?,
  marketingInfo: json['marketingInfo'] as String?,
  targetOriginPrice: json['targetOriginPrice'] as String?,
  tags: (json['tags'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductServiceProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
);

Map<String, dynamic>
_$ProductServiceProductNoAuthHotProductGet$Response$Data$ItemToJson(
  ProductServiceProductNoAuthHotProductGet$Response$Data$Item instance,
) => <String, dynamic>{
  'productCode': instance.productCode,
  'productName': instance.productName,
  'image': instance.image?.toJson(),
  'skuCode': instance.skuCode,
  'sellPriceCur': instance.sellPriceCur,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'targetSellCur': instance.targetSellCur,
  'sellQuantity': instance.sellQuantity,
  'marketingInfo': instance.marketingInfo,
  'targetOriginPrice': instance.targetOriginPrice,
  'tags': instance.tags?.map((e) => e.toJson()).toList(),
  'premiumBrandInfo': instance.premiumBrandInfo?.toJson(),
  'sellPoints': instance.sellPoints,
};

ProductServiceProductNoAuthHotProductV2Get$Response$Data
_$ProductServiceProductNoAuthHotProductV2Get$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthHotProductV2Get$Response$Data(
  total: (json['total'] as num?)?.toInt(),
  pageSize: (json['pageSize'] as num?)?.toInt(),
  current: (json['current'] as num?)?.toInt(),
  totalPages: (json['totalPages'] as num?)?.toInt(),
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductServiceProductNoAuthHotProductV2Get$Response$DataToJson(
  ProductServiceProductNoAuthHotProductV2Get$Response$Data instance,
) => <String, dynamic>{
  'total': instance.total,
  'pageSize': instance.pageSize,
  'current': instance.current,
  'totalPages': instance.totalPages,
  'records': instance.records?.map((e) => e.toJson()).toList(),
};

ProductServiceProductNoAuthHotProductV3Get$Response$Data
_$ProductServiceProductNoAuthHotProductV3Get$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthHotProductV3Get$Response$Data(
  total: (json['total'] as num?)?.toDouble(),
  pageSize: (json['pageSize'] as num?)?.toDouble(),
  totalPages: (json['totalPages'] as num?)?.toDouble(),
  current: (json['current'] as num?)?.toDouble(),
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductServiceProductNoAuthHotProductV3Get$Response$DataToJson(
  ProductServiceProductNoAuthHotProductV3Get$Response$Data instance,
) => <String, dynamic>{
  'total': instance.total,
  'pageSize': instance.pageSize,
  'totalPages': instance.totalPages,
  'current': instance.current,
  'records': instance.records?.map((e) => e.toJson()).toList(),
};

ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item
_$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item(
  shopCode: json['shopCode'] as String?,
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  tenantCode: json['tenantCode'] as String?,
  brandName: json['brandName'] as String?,
  mainImg: (json['mainImg'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  subImg: json['subImg'],
  mainVideo: (json['mainVideo'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  imgCollection: (json['imgCollection'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  textDetail: json['textDetail'] as String?,
  imgDetail: (json['imgDetail'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  categoryId: (json['categoryId'] as num?)?.toDouble(),
  productOptions: (json['productOptions'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  productAttrs: (json['productAttrs'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  sourcePlatform: json['sourcePlatform'] as String?,
  platformUrl: json['platformUrl'] as String?,
  platformProductId: json['platformProductId'] as String?,
  skuCode: json['skuCode'] as String?,
  sellPriceCur: json['sellPriceCur'] as String?,
  sellPrice: json['sellPrice'] as String?,
  targetSellPrice: json['targetSellPrice'] as String?,
  targetSellCur: json['targetSellCur'] as String?,
  productFlag: json['productFlag'] as String?,
  marketingInfo: json['marketingInfo'] as String?,
  sellQuantity: json['sellQuantity'] as String?,
  tags: (json['tags'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
);

Map<String, dynamic>
_$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$ItemToJson(
  ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item instance,
) => <String, dynamic>{
  'shopCode': instance.shopCode,
  'productCode': instance.productCode,
  'productName': instance.productName,
  'tenantCode': instance.tenantCode,
  'brandName': instance.brandName,
  'mainImg': instance.mainImg?.map((e) => e.toJson()).toList(),
  'subImg': instance.subImg,
  'mainVideo': instance.mainVideo?.map((e) => e.toJson()).toList(),
  'imgCollection': instance.imgCollection?.map((e) => e.toJson()).toList(),
  'textDetail': instance.textDetail,
  'imgDetail': instance.imgDetail?.map((e) => e.toJson()).toList(),
  'categoryId': instance.categoryId,
  'productOptions': instance.productOptions?.map((e) => e.toJson()).toList(),
  'productAttrs': instance.productAttrs?.map((e) => e.toJson()).toList(),
  'sourcePlatform': instance.sourcePlatform,
  'platformUrl': instance.platformUrl,
  'platformProductId': instance.platformProductId,
  'skuCode': instance.skuCode,
  'sellPriceCur': instance.sellPriceCur,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'targetSellCur': instance.targetSellCur,
  'productFlag': instance.productFlag,
  'marketingInfo': instance.marketingInfo,
  'sellQuantity': instance.sellQuantity,
  'tags': instance.tags?.map((e) => e.toJson()).toList(),
  'premiumBrandInfo': instance.premiumBrandInfo?.toJson(),
  'sellPoints': instance.sellPoints,
};

ProductServiceProductNoAuthAlbumProductGet$Response$Data
_$ProductServiceProductNoAuthAlbumProductGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthAlbumProductGet$Response$Data(
  total: (json['total'] as num?)?.toDouble(),
  pageSize: (json['pageSize'] as num?)?.toDouble(),
  totalPages: (json['totalPages'] as num?)?.toDouble(),
  current: (json['current'] as num?)?.toDouble(),
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductServiceProductNoAuthAlbumProductGet$Response$DataToJson(
  ProductServiceProductNoAuthAlbumProductGet$Response$Data instance,
) => <String, dynamic>{
  'total': instance.total,
  'pageSize': instance.pageSize,
  'totalPages': instance.totalPages,
  'current': instance.current,
  'records': instance.records?.map((e) => e.toJson()).toList(),
};

ProductServiceShopNoAuthGetThirdShopGet$Response$Data
_$ProductServiceShopNoAuthGetThirdShopGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductServiceShopNoAuthGetThirdShopGet$Response$Data(
  shopCode: json['shopCode'] as String?,
  shopName: json['shopName'] as String?,
  icon: json['icon'] as String?,
  recordSource: (json['recordSource'] as num?)?.toInt(),
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductServiceShopNoAuthGetThirdShopGet$Response$DataToJson(
  ProductServiceShopNoAuthGetThirdShopGet$Response$Data instance,
) => <String, dynamic>{
  'shopCode': instance.shopCode,
  'shopName': instance.shopName,
  'icon': instance.icon,
  'recordSource': instance.recordSource,
  'records': instance.records?.map((e) => e.toJson()).toList(),
};

ProductServiceProductNoAuthKolProductGet$Response$Data$Item
_$ProductServiceProductNoAuthKolProductGet$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthKolProductGet$Response$Data$Item(
  shopCode: json['shopCode'] as String?,
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  tenantCode: json['tenantCode'] as String?,
  brandName: json['brandName'] as String?,
  mainImg: (json['mainImg'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainImg$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  subImg: json['subImg'],
  mainVideo: (json['mainVideo'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainVideo$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  imgCollection: (json['imgCollection'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  textDetail: json['textDetail'] as String?,
  imgDetail: (json['imgDetail'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  categoryId: (json['categoryId'] as num?)?.toDouble(),
  productOptions: (json['productOptions'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  productAttrs: (json['productAttrs'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  sourcePlatform: json['sourcePlatform'] as String?,
  platformUrl: json['platformUrl'] as String?,
  platformProductId: json['platformProductId'] as String?,
  skuCode: json['skuCode'] as String?,
  sellPriceCur: json['sellPriceCur'] as String?,
  sellPrice: json['sellPrice'] as String?,
  targetSellPrice: json['targetSellPrice'] as String?,
  targetSellCur: json['targetSellCur'] as String?,
  productFlag: json['productFlag'] as String?,
  marketingInfo: json['marketingInfo'] as String?,
  sellQuantity: json['sellQuantity'] as String?,
  tags: (json['tags'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthKolProductGet$Response$Data$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductServiceProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
);

Map<String, dynamic>
_$ProductServiceProductNoAuthKolProductGet$Response$Data$ItemToJson(
  ProductServiceProductNoAuthKolProductGet$Response$Data$Item instance,
) => <String, dynamic>{
  'shopCode': instance.shopCode,
  'productCode': instance.productCode,
  'productName': instance.productName,
  'tenantCode': instance.tenantCode,
  'brandName': instance.brandName,
  'mainImg': instance.mainImg?.map((e) => e.toJson()).toList(),
  'subImg': instance.subImg,
  'mainVideo': instance.mainVideo?.map((e) => e.toJson()).toList(),
  'imgCollection': instance.imgCollection?.map((e) => e.toJson()).toList(),
  'textDetail': instance.textDetail,
  'imgDetail': instance.imgDetail?.map((e) => e.toJson()).toList(),
  'categoryId': instance.categoryId,
  'productOptions': instance.productOptions?.map((e) => e.toJson()).toList(),
  'productAttrs': instance.productAttrs?.map((e) => e.toJson()).toList(),
  'sourcePlatform': instance.sourcePlatform,
  'platformUrl': instance.platformUrl,
  'platformProductId': instance.platformProductId,
  'skuCode': instance.skuCode,
  'sellPriceCur': instance.sellPriceCur,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'targetSellCur': instance.targetSellCur,
  'productFlag': instance.productFlag,
  'marketingInfo': instance.marketingInfo,
  'sellQuantity': instance.sellQuantity,
  'tags': instance.tags?.map((e) => e.toJson()).toList(),
  'premiumBrandInfo': instance.premiumBrandInfo?.toJson(),
  'sellPoints': instance.sellPoints,
};

ProductServiceProductNoAuthPremierProductGet$Response$Data
_$ProductServiceProductNoAuthPremierProductGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthPremierProductGet$Response$Data(
  total: (json['total'] as num?)?.toDouble(),
  pageSize: (json['pageSize'] as num?)?.toDouble(),
  totalPages: (json['totalPages'] as num?)?.toDouble(),
  current: (json['current'] as num?)?.toDouble(),
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductServiceProductNoAuthPremierProductGet$Response$DataToJson(
  ProductServiceProductNoAuthPremierProductGet$Response$Data instance,
) => <String, dynamic>{
  'total': instance.total,
  'pageSize': instance.pageSize,
  'totalPages': instance.totalPages,
  'current': instance.current,
  'records': instance.records?.map((e) => e.toJson()).toList(),
};

ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data
_$ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data(
  timestamp: json['timestamp'] as String?,
  categories: (json['categories'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$DataToJson(
  ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data instance,
) => <String, dynamic>{
  'timestamp': instance.timestamp,
  'categories': instance.categories?.map((e) => e.toJson()).toList(),
};

ProductServiceRecommendNoAuthCategoryPost$Response$Data
_$ProductServiceRecommendNoAuthCategoryPost$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductServiceRecommendNoAuthCategoryPost$Response$Data(
  total: json['total'] as String?,
  pageSize: json['pageSize'] as String?,
  totalPages: json['totalPages'] as String?,
  current: json['current'] as String?,
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductServiceRecommendNoAuthCategoryPost$Response$DataToJson(
  ProductServiceRecommendNoAuthCategoryPost$Response$Data instance,
) => <String, dynamic>{
  'total': instance.total,
  'pageSize': instance.pageSize,
  'totalPages': instance.totalPages,
  'current': instance.current,
  'records': instance.records?.map((e) => e.toJson()).toList(),
};

ProductServiceRecommendNoAuthShopPost$Response$Data
_$ProductServiceRecommendNoAuthShopPost$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductServiceRecommendNoAuthShopPost$Response$Data(
  total: json['total'] as String?,
  pageSize: json['pageSize'] as String?,
  totalPages: json['totalPages'] as String?,
  current: json['current'] as String?,
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductServiceRecommendNoAuthShopPost$Response$DataToJson(
  ProductServiceRecommendNoAuthShopPost$Response$Data instance,
) => <String, dynamic>{
  'total': instance.total,
  'pageSize': instance.pageSize,
  'totalPages': instance.totalPages,
  'current': instance.current,
  'records': instance.records?.map((e) => e.toJson()).toList(),
};

ProductServiceRecommendNoAuthSimilarProductPost$Response$Data
_$ProductServiceRecommendNoAuthSimilarProductPost$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductServiceRecommendNoAuthSimilarProductPost$Response$Data(
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  total: json['total'] as String?,
  pageSize: json['pageSize'] as String?,
  totalPages: json['totalPages'] as String?,
  current: json['current'] as String?,
);

Map<String, dynamic>
_$ProductServiceRecommendNoAuthSimilarProductPost$Response$DataToJson(
  ProductServiceRecommendNoAuthSimilarProductPost$Response$Data instance,
) => <String, dynamic>{
  'records': instance.records?.map((e) => e.toJson()).toList(),
  'total': instance.total,
  'pageSize': instance.pageSize,
  'totalPages': instance.totalPages,
  'current': instance.current,
};

ProductServiceProductReviewNoAuthPageGet$Response$Data$Records$Item
_$ProductServiceProductReviewNoAuthPageGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductReviewNoAuthPageGet$Response$Data$Records$Item(
  id: (json['id'] as num?)?.toDouble(),
  username: json['username'] as String?,
  comment: json['comment'] as String?,
  score: (json['score'] as num?)?.toDouble(),
  images:
      (json['images'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
      [],
  extraComment: json['extraComment'] as String?,
  reviewTime: json['reviewTime'] as String?,
  salesQuantity: (json['salesQuantity'] as num?)?.toDouble(),
);

Map<String, dynamic>
_$ProductServiceProductReviewNoAuthPageGet$Response$Data$Records$ItemToJson(
  ProductServiceProductReviewNoAuthPageGet$Response$Data$Records$Item instance,
) => <String, dynamic>{
  'id': instance.id,
  'username': instance.username,
  'comment': instance.comment,
  'score': instance.score,
  'images': instance.images,
  'extraComment': instance.extraComment,
  'reviewTime': instance.reviewTime,
  'salesQuantity': instance.salesQuantity,
};

ProductServiceProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$Item
_$ProductServiceProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$Item(
      id: (json['id'] as num?)?.toDouble(),
      username: json['username'] as String?,
      comment: json['comment'] as String?,
      score: (json['score'] as num?)?.toDouble(),
      images:
          (json['images'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      extraComment: json['extraComment'] as String?,
      reviewTime: json['reviewTime'] as String?,
      salesQuantity: (json['salesQuantity'] as num?)?.toDouble(),
    );

Map<String, dynamic>
_$ProductServiceProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$ItemToJson(
  ProductServiceProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$Item
  instance,
) => <String, dynamic>{
  'id': instance.id,
  'username': instance.username,
  'comment': instance.comment,
  'score': instance.score,
  'images': instance.images,
  'extraComment': instance.extraComment,
  'reviewTime': instance.reviewTime,
  'salesQuantity': instance.salesQuantity,
};

ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item
_$ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item(
  id: (json['id'] as num?)?.toDouble(),
  parentId: (json['parentId'] as num?)?.toDouble(),
  level: (json['level'] as num?)?.toDouble(),
  showOrder: (json['showOrder'] as num?)?.toDouble(),
  name: json['name'] as String?,
  iconUrl: json['iconUrl'] as String?,
  categoryList: (json['categoryList'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  brands:
      (json['brands'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
      [],
);

Map<String, dynamic>
_$ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$ItemToJson(
  ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item instance,
) => <String, dynamic>{
  'id': instance.id,
  'parentId': instance.parentId,
  'level': instance.level,
  'showOrder': instance.showOrder,
  'name': instance.name,
  'iconUrl': instance.iconUrl,
  'categoryList': instance.categoryList?.map((e) => e.toJson()).toList(),
  'brands': instance.brands,
};

ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$Item
_$ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$Item(
      activityCode: json['activityCode'] as String?,
      title: json['title'] as String?,
      status: json['status'] as String?,
      startTime: (json['startTime'] as num?)?.toDouble(),
      endTime: (json['endTime'] as num?)?.toDouble(),
      names:
          (json['names'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
          [],
    );

Map<String, dynamic>
_$ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$ItemToJson(
  ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$Item
  instance,
) => <String, dynamic>{
  'activityCode': instance.activityCode,
  'title': instance.title,
  'status': instance.status,
  'startTime': instance.startTime,
  'endTime': instance.endTime,
  'names': instance.names,
};

ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item
_$ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item(
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  image: json['image'] == null
      ? null
      : ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Image.fromJson(
          json['image'] as Map<String, dynamic>,
        ),
  skuCode: json['skuCode'] as String?,
  sellPriceCur: json['sellPriceCur'] as String?,
  sellPrice: json['sellPrice'] as String?,
  targetSellPrice: json['targetSellPrice'] as String?,
  targetOriginPrice: json['targetOriginPrice'] as String?,
  targetSellCur: json['targetSellCur'] as String?,
  sellQuantity: json['sellQuantity'] as String?,
  skuCount: (json['skuCount'] as num?)?.toInt(),
  marketingInfo: json['marketingInfo'] as String?,
  tags: (json['tags'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  flashSale: json['flashSale'] == null
      ? null
      : ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSale.fromJson(
          json['flashSale'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$ItemToJson(
  ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item
  instance,
) => <String, dynamic>{
  'productCode': instance.productCode,
  'productName': instance.productName,
  'image': instance.image?.toJson(),
  'skuCode': instance.skuCode,
  'sellPriceCur': instance.sellPriceCur,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'targetOriginPrice': instance.targetOriginPrice,
  'targetSellCur': instance.targetSellCur,
  'sellQuantity': instance.sellQuantity,
  'skuCount': instance.skuCount,
  'marketingInfo': instance.marketingInfo,
  'tags': instance.tags?.map((e) => e.toJson()).toList(),
  'flashSale': instance.flashSale?.toJson(),
};

ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item
_$ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item(
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  image: json['image'] == null
      ? null
      : ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Image.fromJson(
          json['image'] as Map<String, dynamic>,
        ),
  sourcePlatform: json['sourcePlatform'] as String?,
  platformProductId: json['platformProductId'] as String?,
  skuCode: json['skuCode'] as String?,
  sellPriceCur: json['sellPriceCur'] as String?,
  sellPrice: json['sellPrice'] as String?,
  targetSellPrice: json['targetSellPrice'] as String?,
  targetOriginPrice: json['targetOriginPrice'] as String?,
  targetSellCur: json['targetSellCur'] as String?,
  sellQuantity: json['sellQuantity'] as String?,
  skuCount: (json['skuCount'] as num?)?.toInt(),
  marketingInfo: json['marketingInfo'] as String?,
  tags: (json['tags'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  skuSourceCode: json['skuSourceCode'] as String?,
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
);

Map<String, dynamic>
_$ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$ItemToJson(
  ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item
  instance,
) => <String, dynamic>{
  'productCode': instance.productCode,
  'productName': instance.productName,
  'image': instance.image?.toJson(),
  'sourcePlatform': instance.sourcePlatform,
  'platformProductId': instance.platformProductId,
  'skuCode': instance.skuCode,
  'sellPriceCur': instance.sellPriceCur,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'targetOriginPrice': instance.targetOriginPrice,
  'targetSellCur': instance.targetSellCur,
  'sellQuantity': instance.sellQuantity,
  'skuCount': instance.skuCount,
  'marketingInfo': instance.marketingInfo,
  'tags': instance.tags?.map((e) => e.toJson()).toList(),
  'skuSourceCode': instance.skuSourceCode,
  'premiumBrandInfo': instance.premiumBrandInfo?.toJson(),
  'sellPoints': instance.sellPoints,
};

ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$Item
_$ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$Item(
      categoryId: (json['categoryId'] as num?)?.toInt(),
      categoryName: json['categoryName'] as String?,
      count: (json['count'] as num?)?.toInt(),
      categoryImage: json['categoryImage'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$ItemToJson(
  ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$Item
  instance,
) => <String, dynamic>{
  'categoryId': instance.categoryId,
  'categoryName': instance.categoryName,
  'count': instance.count,
  'categoryImage': instance.categoryImage,
};

ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$Item
_$ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$Item(
  sort:
      productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSortNullableFromJson(
        json['sort'],
      ),
  order:
      productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrderNullableFromJson(
        json['order'],
      ),
  label: json['label'] as String?,
);

Map<String, dynamic>
_$ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemToJson(
  ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$Item
  instance,
) => <String, dynamic>{
  'sort':
      productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSortNullableToJson(
        instance.sort,
      ),
  'order':
      productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrderNullableToJson(
        instance.order,
      ),
  'label': instance.label,
};

ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config
_$ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$ConfigFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config(
  list: (json['list'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$ConfigToJson(
  ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config instance,
) => <String, dynamic>{'list': instance.list?.map((e) => e.toJson()).toList()};

ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Image
_$ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$ImageFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Image(
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$ImageToJson(
  ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Image
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$Item
_$ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$Item(
      tagCode: json['tagCode'] as String?,
      tagImg: json['tagImg'] as String?,
      order: (json['order'] as num?)?.toInt(),
      frontShow: (json['frontShow'] as num?)?.toInt(),
    );

Map<String, dynamic>
_$ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$ItemToJson(
  ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$Item
  instance,
) => <String, dynamic>{
  'tagCode': instance.tagCode,
  'tagImg': instance.tagImg,
  'order': instance.order,
  'frontShow': instance.frontShow,
};

ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfo
_$ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfo(
      brandCode: json['brandCode'] as String?,
      brandImg: json['brandImg'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfoToJson(
  ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfo
  instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item
_$ProductServiceProductNoAuthPushProductGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item(
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  image: json['image'] == null
      ? null
      : ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Image.fromJson(
          json['image'] as Map<String, dynamic>,
        ),
  skuCode: json['skuCode'] as String?,
  sellPriceCur: json['sellPriceCur'] as String?,
  sellPrice: json['sellPrice'] as String?,
  targetSellPrice: json['targetSellPrice'] as String?,
  targetSellCur: json['targetSellCur'] as String?,
  sellQuantity: json['sellQuantity'] as String?,
  tags: (json['tags'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
  targetOriginPrice: json['targetOriginPrice'] as String?,
  marketingInfo: json['marketingInfo'] as String?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthPushProductGet$Response$Data$Records$ItemToJson(
  ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item instance,
) => <String, dynamic>{
  'productCode': instance.productCode,
  'productName': instance.productName,
  'image': instance.image?.toJson(),
  'skuCode': instance.skuCode,
  'sellPriceCur': instance.sellPriceCur,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'targetSellCur': instance.targetSellCur,
  'sellQuantity': instance.sellQuantity,
  'tags': instance.tags?.map((e) => e.toJson()).toList(),
  'premiumBrandInfo': instance.premiumBrandInfo?.toJson(),
  'sellPoints': instance.sellPoints,
  'targetOriginPrice': instance.targetOriginPrice,
  'marketingInfo': instance.marketingInfo,
};

ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainImg
_$ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainImgFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainImg(
  width: (json['width'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
  url: json['url'] as String?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainImgToJson(
  ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainImg instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceProductNoAuthSearchGet$Response$Data$Item$SubImg
_$ProductServiceProductNoAuthSearchGet$Response$Data$Item$SubImgFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthSearchGet$Response$Data$Item$SubImg(
  width: (json['width'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
  url: json['url'] as String?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthSearchGet$Response$Data$Item$SubImgToJson(
  ProductServiceProductNoAuthSearchGet$Response$Data$Item$SubImg instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainVideo
_$ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainVideoFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainVideo(
  videoUrl: json['videoUrl'] as String?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainVideoToJson(
  ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainVideo instance,
) => <String, dynamic>{'videoUrl': instance.videoUrl};

ProductServiceProductNoAuthSearchGet$Response$Data$Item$ImgCollection$Item
_$ProductServiceProductNoAuthSearchGet$Response$Data$Item$ImgCollection$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthSearchGet$Response$Data$Item$ImgCollection$Item(
  width: json['width'] as String?,
  height: json['height'] as String?,
  url: json['url'] as String?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthSearchGet$Response$Data$Item$ImgCollection$ItemToJson(
  ProductServiceProductNoAuthSearchGet$Response$Data$Item$ImgCollection$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item
_$ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item(
  name: json['name'] as String?,
  enName: json['enName'] as String?,
  styleType: (json['styleType'] as num?)?.toInt(),
  type: json['type'] as String?,
  optionValues: (json['optionValues'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$ItemToJson(
  ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item
  instance,
) => <String, dynamic>{
  'name': instance.name,
  'enName': instance.enName,
  'styleType': instance.styleType,
  'type': instance.type,
  'optionValues': instance.optionValues?.map((e) => e.toJson()).toList(),
};

ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$Item
_$ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$Item(
  name: json['name'] as String?,
  value: json['value'] as String?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$ItemToJson(
  ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$Item
  instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

ProductServiceProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfo
_$ProductServiceProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfo(
  brandCode: json['brandCode'] as String?,
  brandImg: json['brandImg'] as String?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfoToJson(
  ProductServiceProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfo
  instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item
_$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item(
  shopCode: json['shopCode'] as String?,
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  tenantCode: json['tenantCode'] as String?,
  brandName: json['brandName'] as String?,
  mainImg: (json['mainImg'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  subImg: json['subImg'],
  mainVideo: (json['mainVideo'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  imgCollection: (json['imgCollection'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  textDetail: json['textDetail'],
  imgDetail: (json['imgDetail'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  categoryId: (json['categoryId'] as num?)?.toDouble(),
  productOptions: (json['productOptions'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  productAttrs:
      (json['productAttrs'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
  sourcePlatform: json['sourcePlatform'] as String?,
  platformUrl: json['platformUrl'] as String?,
  platformProductId: json['platformProductId'] as String?,
  skuCode: json['skuCode'] as String?,
  sellPriceCur: json['sellPriceCur'] as String?,
  sellPrice: json['sellPrice'] as String?,
  targetSellPrice: json['targetSellPrice'] as String?,
  targetSellCur: json['targetSellCur'] as String?,
  sellQuantity: json['sellQuantity'] as String?,
  tags: (json['tags'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
);

Map<String, dynamic>
_$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$ItemToJson(
  ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item
  instance,
) => <String, dynamic>{
  'shopCode': instance.shopCode,
  'productCode': instance.productCode,
  'productName': instance.productName,
  'tenantCode': instance.tenantCode,
  'brandName': instance.brandName,
  'mainImg': instance.mainImg?.map((e) => e.toJson()).toList(),
  'subImg': instance.subImg,
  'mainVideo': instance.mainVideo?.map((e) => e.toJson()).toList(),
  'imgCollection': instance.imgCollection?.map((e) => e.toJson()).toList(),
  'textDetail': instance.textDetail,
  'imgDetail': instance.imgDetail?.map((e) => e.toJson()).toList(),
  'categoryId': instance.categoryId,
  'productOptions': instance.productOptions?.map((e) => e.toJson()).toList(),
  'productAttrs': instance.productAttrs,
  'sourcePlatform': instance.sourcePlatform,
  'platformUrl': instance.platformUrl,
  'platformProductId': instance.platformProductId,
  'skuCode': instance.skuCode,
  'sellPriceCur': instance.sellPriceCur,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'targetSellCur': instance.targetSellCur,
  'sellQuantity': instance.sellQuantity,
  'tags': instance.tags?.map((e) => e.toJson()).toList(),
  'premiumBrandInfo': instance.premiumBrandInfo?.toJson(),
  'sellPoints': instance.sellPoints,
};

ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item
_$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item(
  shopCode: json['shopCode'],
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  tenantCode: json['tenantCode'] as String?,
  brandName: json['brandName'],
  mainImg: (json['mainImg'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  subImg: json['subImg'],
  mainVideo:
      (json['mainVideo'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
      [],
  imgCollection: (json['imgCollection'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  textDetail: json['textDetail'],
  imgDetail: (json['imgDetail'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  categoryId: (json['categoryId'] as num?)?.toDouble(),
  productOptions: (json['productOptions'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  productAttrs:
      (json['productAttrs'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
  sourcePlatform: json['sourcePlatform'] as String?,
  platformUrl: json['platformUrl'] as String?,
  platformProductId: json['platformProductId'] as String?,
  skuCode: json['skuCode'] as String?,
  sellPriceCur: json['sellPriceCur'] as String?,
  sellPrice: json['sellPrice'] as String?,
  targetSellPrice: json['targetSellPrice'] as String?,
  targetSellCur: json['targetSellCur'] as String?,
  productFlag: json['productFlag'] as String?,
  marketingInfo: json['marketingInfo'] as String?,
  sellQuantity: json['sellQuantity'] as String?,
  targetOriginPrice: json['targetOriginPrice'] as String?,
  tags: (json['tags'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
);

Map<String, dynamic>
_$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$ItemToJson(
  ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item
  instance,
) => <String, dynamic>{
  'shopCode': instance.shopCode,
  'productCode': instance.productCode,
  'productName': instance.productName,
  'tenantCode': instance.tenantCode,
  'brandName': instance.brandName,
  'mainImg': instance.mainImg?.map((e) => e.toJson()).toList(),
  'subImg': instance.subImg,
  'mainVideo': instance.mainVideo,
  'imgCollection': instance.imgCollection?.map((e) => e.toJson()).toList(),
  'textDetail': instance.textDetail,
  'imgDetail': instance.imgDetail?.map((e) => e.toJson()).toList(),
  'categoryId': instance.categoryId,
  'productOptions': instance.productOptions?.map((e) => e.toJson()).toList(),
  'productAttrs': instance.productAttrs,
  'sourcePlatform': instance.sourcePlatform,
  'platformUrl': instance.platformUrl,
  'platformProductId': instance.platformProductId,
  'skuCode': instance.skuCode,
  'sellPriceCur': instance.sellPriceCur,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'targetSellCur': instance.targetSellCur,
  'productFlag': instance.productFlag,
  'marketingInfo': instance.marketingInfo,
  'sellQuantity': instance.sellQuantity,
  'targetOriginPrice': instance.targetOriginPrice,
  'tags': instance.tags?.map((e) => e.toJson()).toList(),
  'premiumBrandInfo': instance.premiumBrandInfo?.toJson(),
  'sellPoints': instance.sellPoints,
};

ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuImg
_$ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuImgFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuImg(
  width: (json['width'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
  url: json['url'] as String?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuImgToJson(
  ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuImg instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$Item
_$ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$Item(
  name: json['name'] as String?,
  value: json['value'] as String?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$ItemToJson(
  ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$Item
  instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

ProductServiceProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfo
_$ProductServiceProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfoFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfo(
  activityCode: json['activityCode'] as String?,
  activityTitle: json['activityTitle'] as String?,
  startTime: (json['startTime'] as num?)?.toInt(),
  endTime: (json['endTime'] as num?)?.toInt(),
  progressPercent: (json['progressPercent'] as num?)?.toInt(),
  progressText: json['progressText'] as String?,
  marketingIcon: json['marketingIcon'] as String?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfoToJson(
  ProductServiceProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfo
  instance,
) => <String, dynamic>{
  'activityCode': instance.activityCode,
  'activityTitle': instance.activityTitle,
  'startTime': instance.startTime,
  'endTime': instance.endTime,
  'progressPercent': instance.progressPercent,
  'progressText': instance.progressText,
  'marketingIcon': instance.marketingIcon,
};

ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainImg$Item
_$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainImg$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainImg$Item(
  width: (json['width'] as num?)?.toDouble(),
  height: (json['height'] as num?)?.toDouble(),
  url: json['url'] as String?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainImg$ItemToJson(
  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainImg$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainVideo$Item
_$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainVideo$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainVideo$Item(
  videoUrl: json['videoUrl'] as String?,
  vodUrl: json['vodUrl'],
  previewUrl: json['previewUrl'],
  width: json['width'],
  height: json['height'],
);

Map<String, dynamic>
_$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainVideo$ItemToJson(
  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainVideo$Item
  instance,
) => <String, dynamic>{
  'videoUrl': instance.videoUrl,
  'vodUrl': instance.vodUrl,
  'previewUrl': instance.previewUrl,
  'width': instance.width,
  'height': instance.height,
};

ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$Item
_$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$Item(
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$ItemToJson(
  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$Item
_$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$Item(
  width: (json['width'] as num?)?.toDouble(),
  height: (json['height'] as num?)?.toDouble(),
  url: json['url'] as String?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$ItemToJson(
  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item
_$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item(
  name: json['name'] as String?,
  type: (json['type'] as num?)?.toDouble(),
  optionValues: (json['optionValues'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$ItemToJson(
  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item
  instance,
) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'optionValues': instance.optionValues?.map((e) => e.toJson()).toList(),
};

ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$Item
_$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$Item(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$ItemToJson(
  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$Item
  instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item
_$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item(
  images:
      (json['images'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
      [],
  skuOption: json['skuOption'] == null
      ? null
      : ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOption.fromJson(
          json['skuOption'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$ItemToJson(
  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item
  instance,
) => <String, dynamic>{
  'images': instance.images,
  'skuOption': instance.skuOption?.toJson(),
};

ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Tags$Item
_$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Tags$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Tags$Item(
  tagCode: json['tagCode'] as String?,
  tagName: json['tagName'] as String?,
  tagImg: json['tagImg'] as String?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Tags$ItemToJson(
  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Tags$Item instance,
) => <String, dynamic>{
  'tagCode': instance.tagCode,
  'tagName': instance.tagName,
  'tagImg': instance.tagImg,
};

ProductServiceProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfo
_$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfo(
      brandCode: json['brandCode'] as String?,
      brandImg: json['brandImg'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfoToJson(
  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfo
  instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext
_$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ExtFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext(
  sizeHelperOptionName: json['sizeHelperOptionName'] as String?,
  sizeHelperType: (json['sizeHelperType'] as num?)?.toInt(),
  brand: json['brand'] == null
      ? null
      : ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext$Brand.fromJson(
          json['brand'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ExtToJson(
  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext instance,
) => <String, dynamic>{
  'sizeHelperOptionName': instance.sizeHelperOptionName,
  'sizeHelperType': instance.sizeHelperType,
  'brand': instance.brand?.toJson(),
};

ProductServiceProductNoAuthGetProductInfoGet$Response$Data$FlashSale
_$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$FlashSaleFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthGetProductInfoGet$Response$Data$FlashSale(
  activityCode: json['activityCode'] as String?,
  activityTitle: json['activityTitle'] as String?,
  startTime: json['startTime'] as String?,
  endTime: json['endTime'] as String?,
  progressPercent: json['progressPercent'] as String?,
  progressText: json['progressText'] as String?,
  marketingIcon: json['marketingIcon'] as String?,
  discountExpr: json['discountExpr'] as String?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$FlashSaleToJson(
  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$FlashSale instance,
) => <String, dynamic>{
  'activityCode': instance.activityCode,
  'activityTitle': instance.activityTitle,
  'startTime': instance.startTime,
  'endTime': instance.endTime,
  'progressPercent': instance.progressPercent,
  'progressText': instance.progressText,
  'marketingIcon': instance.marketingIcon,
  'discountExpr': instance.discountExpr,
};

ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item
_$ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item(
  id: (json['id'] as num?)?.toDouble(),
  parentId: (json['parentId'] as num?)?.toDouble(),
  level: (json['level'] as num?)?.toDouble(),
  showOrder: (json['showOrder'] as num?)?.toDouble(),
  name: json['name'] as String?,
  iconUrl: json['iconUrl'] as String?,
  categoryList: (json['categoryList'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  brands:
      (json['brands'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
      [],
);

Map<String, dynamic>
_$ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$ItemToJson(
  ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item
  instance,
) => <String, dynamic>{
  'id': instance.id,
  'parentId': instance.parentId,
  'level': instance.level,
  'showOrder': instance.showOrder,
  'name': instance.name,
  'iconUrl': instance.iconUrl,
  'categoryList': instance.categoryList?.map((e) => e.toJson()).toList(),
  'brands': instance.brands,
};

ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Image
_$ProductServiceProductNoAuthHotProductGet$Response$Data$Item$ImageFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Image(
  width: (json['width'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
  url: json['url'] as String?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthHotProductGet$Response$Data$Item$ImageToJson(
  ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Image instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Tags$Item
_$ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Tags$Item(
  tagCode: json['tagCode'] as String?,
  tagImg: json['tagImg'] as String?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Tags$ItemToJson(
  ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Tags$Item
  instance,
) => <String, dynamic>{'tagCode': instance.tagCode, 'tagImg': instance.tagImg};

ProductServiceProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfo
_$ProductServiceProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfo(
      brandCode: json['brandCode'] as String?,
      brandImg: json['brandImg'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfoToJson(
  ProductServiceProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfo
  instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item
_$ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item(
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  image: json['image'] == null
      ? null
      : ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Image.fromJson(
          json['image'] as Map<String, dynamic>,
        ),
  skuCode: json['skuCode'] as String?,
  sellPriceCur: json['sellPriceCur'] as String?,
  sellPrice: json['sellPrice'] as String?,
  targetSellPrice: json['targetSellPrice'] as String?,
  targetSellCur: json['targetSellCur'] as String?,
  sellQuantity: json['sellQuantity'] as String?,
  tags: (json['tags'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
  rate: json['rate'] as String?,
  flashSale: json['flashSale'] == null
      ? null
      : ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSale.fromJson(
          json['flashSale'] as Map<String, dynamic>,
        ),
  targetOriginPrice: json['targetOriginPrice'] as String?,
  marketingInfo: json['marketingInfo'] as String?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$ItemToJson(
  ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item
  instance,
) => <String, dynamic>{
  'productCode': instance.productCode,
  'productName': instance.productName,
  'image': instance.image?.toJson(),
  'skuCode': instance.skuCode,
  'sellPriceCur': instance.sellPriceCur,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'targetSellCur': instance.targetSellCur,
  'sellQuantity': instance.sellQuantity,
  'tags': instance.tags?.map((e) => e.toJson()).toList(),
  'premiumBrandInfo': instance.premiumBrandInfo?.toJson(),
  'sellPoints': instance.sellPoints,
  'rate': instance.rate,
  'flashSale': instance.flashSale?.toJson(),
  'targetOriginPrice': instance.targetOriginPrice,
  'marketingInfo': instance.marketingInfo,
};

ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item
_$ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item(
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  image: json['image'] == null
      ? null
      : ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Image.fromJson(
          json['image'] as Map<String, dynamic>,
        ),
  sourcePlatform: json['sourcePlatform'] as String?,
  platformProductId: json['platformProductId'] as String?,
  skuCode: json['skuCode'] as String?,
  sellPriceCur: json['sellPriceCur'] as String?,
  sellPrice: json['sellPrice'] as String?,
  targetSellPrice: json['targetSellPrice'] as String?,
  targetOriginPrice: json['targetOriginPrice'] as String?,
  targetSellCur: json['targetSellCur'] as String?,
  sellQuantity: json['sellQuantity'] as String?,
  skuCount: (json['skuCount'] as num?)?.toDouble(),
  marketingInfo: json['marketingInfo'] as String?,
  tags: (json['tags'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
  rate: json['rate'] as String?,
  flashSale: json['flashSale'] == null
      ? null
      : ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSale.fromJson(
          json['flashSale'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$ItemToJson(
  ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item
  instance,
) => <String, dynamic>{
  'productCode': instance.productCode,
  'productName': instance.productName,
  'image': instance.image?.toJson(),
  'sourcePlatform': instance.sourcePlatform,
  'platformProductId': instance.platformProductId,
  'skuCode': instance.skuCode,
  'sellPriceCur': instance.sellPriceCur,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'targetOriginPrice': instance.targetOriginPrice,
  'targetSellCur': instance.targetSellCur,
  'sellQuantity': instance.sellQuantity,
  'skuCount': instance.skuCount,
  'marketingInfo': instance.marketingInfo,
  'tags': instance.tags?.map((e) => e.toJson()).toList(),
  'premiumBrandInfo': instance.premiumBrandInfo?.toJson(),
  'sellPoints': instance.sellPoints,
  'rate': instance.rate,
  'flashSale': instance.flashSale?.toJson(),
};

ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$Item
_$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$Item(
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$ItemToJson(
  ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$Item
_$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$Item(
      videoUrl: json['videoUrl'] as String?,
      vodUrl: json['vodUrl'] as String?,
      previewUrl: json['previewUrl'] as String?,
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$ItemToJson(
  ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$Item
  instance,
) => <String, dynamic>{
  'videoUrl': instance.videoUrl,
  'vodUrl': instance.vodUrl,
  'previewUrl': instance.previewUrl,
  'width': instance.width,
  'height': instance.height,
};

ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$Item
_$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$Item(
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$ItemToJson(
  ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$Item
_$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$Item(
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$ItemToJson(
  ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item
_$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item(
  name: json['name'] as String?,
  type: (json['type'] as num?)?.toDouble(),
  optionValues: (json['optionValues'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$ItemToJson(
  ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item
  instance,
) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'optionValues': instance.optionValues?.map((e) => e.toJson()).toList(),
};

ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$Item
_$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$Item(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$ItemToJson(
  ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$Item
  instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$Item
_$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$Item(
      tagCode: json['tagCode'] as String?,
      tagImg: json['tagImg'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$ItemToJson(
  ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$Item
  instance,
) => <String, dynamic>{'tagCode': instance.tagCode, 'tagImg': instance.tagImg};

ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfo
_$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfo(
      brandCode: json['brandCode'] as String?,
      brandImg: json['brandImg'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfoToJson(
  ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfo
  instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item
_$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item(
  shopCode: json['shopCode'],
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  tenantCode: json['tenantCode'] as String?,
  brandName: json['brandName'],
  mainImg: (json['mainImg'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  subImg: json['subImg'],
  mainVideo:
      (json['mainVideo'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
      [],
  imgCollection: (json['imgCollection'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  textDetail: json['textDetail'],
  imgDetail: (json['imgDetail'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  categoryId: (json['categoryId'] as num?)?.toDouble(),
  productOptions: (json['productOptions'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  productAttrs:
      (json['productAttrs'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
  sourcePlatform: json['sourcePlatform'] as String?,
  platformUrl: json['platformUrl'] as String?,
  platformProductId: json['platformProductId'] as String?,
  skuCode: json['skuCode'] as String?,
  sellPriceCur: json['sellPriceCur'] as String?,
  sellPrice: json['sellPrice'] as String?,
  targetSellPrice: json['targetSellPrice'] as String?,
  targetSellCur: json['targetSellCur'] as String?,
  productFlag: json['productFlag'] as String?,
  marketingInfo: json['marketingInfo'] as String?,
  sellQuantity: json['sellQuantity'] as String?,
  targetOriginPrice: json['targetOriginPrice'] as String?,
  tags: (json['tags'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
);

Map<String, dynamic>
_$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$ItemToJson(
  ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item
  instance,
) => <String, dynamic>{
  'shopCode': instance.shopCode,
  'productCode': instance.productCode,
  'productName': instance.productName,
  'tenantCode': instance.tenantCode,
  'brandName': instance.brandName,
  'mainImg': instance.mainImg?.map((e) => e.toJson()).toList(),
  'subImg': instance.subImg,
  'mainVideo': instance.mainVideo,
  'imgCollection': instance.imgCollection?.map((e) => e.toJson()).toList(),
  'textDetail': instance.textDetail,
  'imgDetail': instance.imgDetail?.map((e) => e.toJson()).toList(),
  'categoryId': instance.categoryId,
  'productOptions': instance.productOptions?.map((e) => e.toJson()).toList(),
  'productAttrs': instance.productAttrs,
  'sourcePlatform': instance.sourcePlatform,
  'platformUrl': instance.platformUrl,
  'platformProductId': instance.platformProductId,
  'skuCode': instance.skuCode,
  'sellPriceCur': instance.sellPriceCur,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'targetSellCur': instance.targetSellCur,
  'productFlag': instance.productFlag,
  'marketingInfo': instance.marketingInfo,
  'sellQuantity': instance.sellQuantity,
  'targetOriginPrice': instance.targetOriginPrice,
  'tags': instance.tags?.map((e) => e.toJson()).toList(),
  'premiumBrandInfo': instance.premiumBrandInfo?.toJson(),
  'sellPoints': instance.sellPoints,
};

ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item
_$ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item(
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  image: json['image'] == null
      ? null
      : ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$Image.fromJson(
          json['image'] as Map<String, dynamic>,
        ),
  skuCode: json['skuCode'] as String?,
  sellPriceCur: json['sellPriceCur'] as String?,
  sellPrice: json['sellPrice'] as String?,
  targetSellPrice: json['targetSellPrice'] as String?,
  targetSellCur: json['targetSellCur'] as String?,
  sellQuantity: json['sellQuantity'] as String?,
  marketingInfo: json['marketingInfo'] as String?,
  targetOriginPrice: json['targetOriginPrice'] as String?,
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
);

Map<String, dynamic>
_$ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$ItemToJson(
  ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item instance,
) => <String, dynamic>{
  'productCode': instance.productCode,
  'productName': instance.productName,
  'image': instance.image?.toJson(),
  'skuCode': instance.skuCode,
  'sellPriceCur': instance.sellPriceCur,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'targetSellCur': instance.targetSellCur,
  'sellQuantity': instance.sellQuantity,
  'marketingInfo': instance.marketingInfo,
  'targetOriginPrice': instance.targetOriginPrice,
  'premiumBrandInfo': instance.premiumBrandInfo?.toJson(),
  'sellPoints': instance.sellPoints,
};

ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainImg$Item
_$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainImg$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainImg$Item(
  width: (json['width'] as num?)?.toDouble(),
  height: (json['height'] as num?)?.toDouble(),
  url: json['url'] as String?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainImg$ItemToJson(
  ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainImg$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainVideo$Item
_$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainVideo$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainVideo$Item(
  videoUrl: json['videoUrl'] as String?,
  vodUrl: json['vodUrl'] as String?,
  previewUrl: json['previewUrl'] as String?,
  width: (json['width'] as num?)?.toDouble(),
  height: (json['height'] as num?)?.toDouble(),
);

Map<String, dynamic>
_$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainVideo$ItemToJson(
  ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainVideo$Item
  instance,
) => <String, dynamic>{
  'videoUrl': instance.videoUrl,
  'vodUrl': instance.vodUrl,
  'previewUrl': instance.previewUrl,
  'width': instance.width,
  'height': instance.height,
};

ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$Item
_$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$Item(
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$ItemToJson(
  ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$Item
_$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$Item(
  width: (json['width'] as num?)?.toDouble(),
  height: (json['height'] as num?)?.toDouble(),
  url: json['url'] as String?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$ItemToJson(
  ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item
_$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item(
  name: json['name'] as String?,
  type: (json['type'] as num?)?.toDouble(),
  optionValues: (json['optionValues'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$ItemToJson(
  ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item
  instance,
) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'optionValues': instance.optionValues?.map((e) => e.toJson()).toList(),
};

ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$Item
_$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$Item(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$ItemToJson(
  ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$Item
  instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

ProductServiceProductNoAuthKolProductGet$Response$Data$Item$Tags$Item
_$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthKolProductGet$Response$Data$Item$Tags$Item(
  tagCode: json['tagCode'] as String?,
  tagImg: json['tagImg'] as String?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$Tags$ItemToJson(
  ProductServiceProductNoAuthKolProductGet$Response$Data$Item$Tags$Item
  instance,
) => <String, dynamic>{'tagCode': instance.tagCode, 'tagImg': instance.tagImg};

ProductServiceProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfo
_$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfo(
      brandCode: json['brandCode'] as String?,
      brandImg: json['brandImg'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfoToJson(
  ProductServiceProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfo
  instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item
_$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item(
  shopCode: json['shopCode'],
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  tenantCode: json['tenantCode'] as String?,
  brandName: json['brandName'],
  mainImg: (json['mainImg'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  subImg: json['subImg'],
  mainVideo:
      (json['mainVideo'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
      [],
  imgCollection: (json['imgCollection'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  textDetail: json['textDetail'],
  imgDetail: (json['imgDetail'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  categoryId: (json['categoryId'] as num?)?.toDouble(),
  productOptions: (json['productOptions'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  productAttrs:
      (json['productAttrs'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
  sourcePlatform: json['sourcePlatform'] as String?,
  platformUrl: json['platformUrl'] as String?,
  platformProductId: json['platformProductId'] as String?,
  skuCode: json['skuCode'] as String?,
  sellPriceCur: json['sellPriceCur'] as String?,
  sellPrice: json['sellPrice'] as String?,
  targetSellPrice: json['targetSellPrice'] as String?,
  targetSellCur: json['targetSellCur'] as String?,
  productFlag: json['productFlag'] as String?,
  marketingInfo: json['marketingInfo'] as String?,
  sellQuantity: json['sellQuantity'] as String?,
  targetOriginPrice: json['targetOriginPrice'] as String?,
  tags: (json['tags'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
);

Map<String, dynamic>
_$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$ItemToJson(
  ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item
  instance,
) => <String, dynamic>{
  'shopCode': instance.shopCode,
  'productCode': instance.productCode,
  'productName': instance.productName,
  'tenantCode': instance.tenantCode,
  'brandName': instance.brandName,
  'mainImg': instance.mainImg?.map((e) => e.toJson()).toList(),
  'subImg': instance.subImg,
  'mainVideo': instance.mainVideo,
  'imgCollection': instance.imgCollection?.map((e) => e.toJson()).toList(),
  'textDetail': instance.textDetail,
  'imgDetail': instance.imgDetail?.map((e) => e.toJson()).toList(),
  'categoryId': instance.categoryId,
  'productOptions': instance.productOptions?.map((e) => e.toJson()).toList(),
  'productAttrs': instance.productAttrs,
  'sourcePlatform': instance.sourcePlatform,
  'platformUrl': instance.platformUrl,
  'platformProductId': instance.platformProductId,
  'skuCode': instance.skuCode,
  'sellPriceCur': instance.sellPriceCur,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'targetSellCur': instance.targetSellCur,
  'productFlag': instance.productFlag,
  'marketingInfo': instance.marketingInfo,
  'sellQuantity': instance.sellQuantity,
  'targetOriginPrice': instance.targetOriginPrice,
  'tags': instance.tags?.map((e) => e.toJson()).toList(),
  'premiumBrandInfo': instance.premiumBrandInfo?.toJson(),
  'sellPoints': instance.sellPoints,
};

ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item
_$ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item(
  categoryName: json['categoryName'] as String?,
  productInfos: (json['productInfos'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  recommendationReason: json['recommendationReason'] as String?,
);

Map<String, dynamic>
_$ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$ItemToJson(
  ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item
  instance,
) => <String, dynamic>{
  'categoryName': instance.categoryName,
  'productInfos': instance.productInfos?.map((e) => e.toJson()).toList(),
  'recommendationReason': instance.recommendationReason,
};

ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item
_$ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item(
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  image: json['image'] == null
      ? null
      : ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Image.fromJson(
          json['image'] as Map<String, dynamic>,
        ),
  skuCode: json['skuCode'] as String?,
  sellPriceCur: json['sellPriceCur'] as String?,
  sellPrice: json['sellPrice'] as String?,
  targetSellPrice: json['targetSellPrice'] as String?,
  targetSellCur: json['targetSellCur'] as String?,
  sellQuantity: json['sellQuantity'] as String?,
  skuCount: (json['skuCount'] as num?)?.toInt(),
  tags: (json['tags'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
);

Map<String, dynamic>
_$ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$ItemToJson(
  ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item instance,
) => <String, dynamic>{
  'productCode': instance.productCode,
  'productName': instance.productName,
  'image': instance.image?.toJson(),
  'skuCode': instance.skuCode,
  'sellPriceCur': instance.sellPriceCur,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'targetSellCur': instance.targetSellCur,
  'sellQuantity': instance.sellQuantity,
  'skuCount': instance.skuCount,
  'tags': instance.tags?.map((e) => e.toJson()).toList(),
  'premiumBrandInfo': instance.premiumBrandInfo?.toJson(),
  'sellPoints': instance.sellPoints,
};

ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item
_$ProductServiceRecommendNoAuthShopPost$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item(
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  image: json['image'] == null
      ? null
      : ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Image.fromJson(
          json['image'] as Map<String, dynamic>,
        ),
  skuCode: json['skuCode'] as String?,
  sellPriceCur: json['sellPriceCur'] as String?,
  sellPrice: json['sellPrice'] as String?,
  targetSellPrice: json['targetSellPrice'] as String?,
  targetSellCur: json['targetSellCur'] as String?,
  sellQuantity: json['sellQuantity'] as String?,
  skuCount: (json['skuCount'] as num?)?.toInt(),
  marketingInfo: json['marketingInfo'] as String?,
  targetOriginPrice: json['targetOriginPrice'] as String?,
  tags: (json['tags'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
);

Map<String, dynamic>
_$ProductServiceRecommendNoAuthShopPost$Response$Data$Records$ItemToJson(
  ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item instance,
) => <String, dynamic>{
  'productCode': instance.productCode,
  'productName': instance.productName,
  'image': instance.image?.toJson(),
  'skuCode': instance.skuCode,
  'sellPriceCur': instance.sellPriceCur,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'targetSellCur': instance.targetSellCur,
  'sellQuantity': instance.sellQuantity,
  'skuCount': instance.skuCount,
  'marketingInfo': instance.marketingInfo,
  'targetOriginPrice': instance.targetOriginPrice,
  'tags': instance.tags?.map((e) => e.toJson()).toList(),
  'premiumBrandInfo': instance.premiumBrandInfo?.toJson(),
  'sellPoints': instance.sellPoints,
};

ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item
_$ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item(
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  image: json['image'] == null
      ? null
      : ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Image.fromJson(
          json['image'] as Map<String, dynamic>,
        ),
  skuCode: json['skuCode'] as String?,
  sellPriceCur: json['sellPriceCur'] as String?,
  sellPrice: json['sellPrice'] as String?,
  targetSellPrice: json['targetSellPrice'] as String?,
  targetSellCur: json['targetSellCur'] as String?,
  sellQuantity: json['sellQuantity'] as String?,
  skuCount: (json['skuCount'] as num?)?.toInt(),
  marketingInfo: json['marketingInfo'] as String?,
  targetOriginPrice: json['targetOriginPrice'] as String?,
  tags: (json['tags'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
);

Map<String, dynamic>
_$ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$ItemToJson(
  ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item
  instance,
) => <String, dynamic>{
  'productCode': instance.productCode,
  'productName': instance.productName,
  'image': instance.image?.toJson(),
  'skuCode': instance.skuCode,
  'sellPriceCur': instance.sellPriceCur,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'targetSellCur': instance.targetSellCur,
  'sellQuantity': instance.sellQuantity,
  'skuCount': instance.skuCount,
  'marketingInfo': instance.marketingInfo,
  'targetOriginPrice': instance.targetOriginPrice,
  'tags': instance.tags?.map((e) => e.toJson()).toList(),
  'premiumBrandInfo': instance.premiumBrandInfo?.toJson(),
  'sellPoints': instance.sellPoints,
};

ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item
_$ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item(
  id: (json['id'] as num?)?.toDouble(),
  parentId: (json['parentId'] as num?)?.toDouble(),
  level: (json['level'] as num?)?.toDouble(),
  showOrder: (json['showOrder'] as num?)?.toDouble(),
  name: json['name'] as String?,
  iconUrl: json['iconUrl'] as String?,
  categoryList: (json['categoryList'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  brands:
      (json['brands'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
      [],
);

Map<String, dynamic>
_$ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$ItemToJson(
  ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item
  instance,
) => <String, dynamic>{
  'id': instance.id,
  'parentId': instance.parentId,
  'level': instance.level,
  'showOrder': instance.showOrder,
  'name': instance.name,
  'iconUrl': instance.iconUrl,
  'categoryList': instance.categoryList?.map((e) => e.toJson()).toList(),
  'brands': instance.brands,
};

ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Image
_$ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$ImageFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Image(
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$ImageToJson(
  ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Image
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$Item
_$ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$Item(
      tagCode: json['tagCode'] as String?,
      tagImg: json['tagImg'] as String?,
      order: (json['order'] as num?)?.toInt(),
      frontShow: (json['frontShow'] as num?)?.toInt(),
    );

Map<String, dynamic>
_$ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$ItemToJson(
  ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$Item
  instance,
) => <String, dynamic>{
  'tagCode': instance.tagCode,
  'tagImg': instance.tagImg,
  'order': instance.order,
  'frontShow': instance.frontShow,
};

ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSale
_$ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSaleFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSale(
      activityCode: json['activityCode'] as String?,
      activityTitle: json['activityTitle'] as String?,
      startTime: (json['startTime'] as num?)?.toInt(),
      endTime: (json['endTime'] as num?)?.toInt(),
      progressPercent: (json['progressPercent'] as num?)?.toInt(),
      progressText: json['progressText'] as String?,
      marketingIcon: json['marketingIcon'] as String?,
    );

Map<String, dynamic>
_$ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSaleToJson(
  ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSale
  instance,
) => <String, dynamic>{
  'activityCode': instance.activityCode,
  'activityTitle': instance.activityTitle,
  'startTime': instance.startTime,
  'endTime': instance.endTime,
  'progressPercent': instance.progressPercent,
  'progressText': instance.progressText,
  'marketingIcon': instance.marketingIcon,
};

ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Image
_$ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$ImageFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Image(
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$ImageToJson(
  ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Image
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$Item
_$ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$Item(
      tagCode: json['tagCode'] as String?,
      tagImg: json['tagImg'] as String?,
      order: (json['order'] as num?)?.toInt(),
      frontShow: (json['frontShow'] as num?)?.toInt(),
    );

Map<String, dynamic>
_$ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$ItemToJson(
  ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$Item
  instance,
) => <String, dynamic>{
  'tagCode': instance.tagCode,
  'tagImg': instance.tagImg,
  'order': instance.order,
  'frontShow': instance.frontShow,
};

ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfo
_$ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: json['brandCode'] as String?,
      brandImg: json['brandImg'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfoToJson(
  ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfo
  instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$Item
_$ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$Item(
      img: json['img'] as String?,
      tabNormalColor: json['tabNormalColor'] as String?,
      tabSelectedColor: json['tabSelectedColor'] as String?,
      tabsBackgroundColor: json['tabsBackgroundColor'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$ItemToJson(
  ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$Item
  instance,
) => <String, dynamic>{
  'img': instance.img,
  'tabNormalColor': instance.tabNormalColor,
  'tabSelectedColor': instance.tabSelectedColor,
  'tabsBackgroundColor': instance.tabsBackgroundColor,
};

ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Image
_$ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$ImageFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Image(
  width: (json['width'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
  url: json['url'] as String?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$ImageToJson(
  ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Image
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$Item
_$ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$Item(
      tagCode: json['tagCode'] as String?,
      tagImg: json['tagImg'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$ItemToJson(
  ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$Item
  instance,
) => <String, dynamic>{'tagCode': instance.tagCode, 'tagImg': instance.tagImg};

ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfo
_$ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: json['brandCode'] as String?,
      brandImg: json['brandImg'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfoToJson(
  ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfo
  instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
_$ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item(
      value: json['value'] as String?,
      enValue: json['enValue'] as String?,
      image: json['image'] as String?,
      imageWidth: (json['imageWidth'] as num?)?.toInt(),
      imageHeight: (json['imageHeight'] as num?)?.toInt(),
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemToJson(
  ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
  instance,
) => <String, dynamic>{
  'value': instance.value,
  'enValue': instance.enValue,
  'image': instance.image,
  'imageWidth': instance.imageWidth,
  'imageHeight': instance.imageHeight,
};

ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$Item
_$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$Item(
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$ItemToJson(
  ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$Item
_$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$Item(
      videoUrl: json['videoUrl'] as String?,
      vodUrl: json['vodUrl'],
      previewUrl: json['previewUrl'],
      width: json['width'],
      height: json['height'],
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$ItemToJson(
  ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$Item
  instance,
) => <String, dynamic>{
  'videoUrl': instance.videoUrl,
  'vodUrl': instance.vodUrl,
  'previewUrl': instance.previewUrl,
  'width': instance.width,
  'height': instance.height,
};

ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$Item
_$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$Item(
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$ItemToJson(
  ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$Item
_$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$Item(
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$ItemToJson(
  ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item
_$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item(
  name: json['name'] as String?,
  type: (json['type'] as num?)?.toDouble(),
  optionValues: (json['optionValues'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$ItemToJson(
  ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item
  instance,
) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'optionValues': instance.optionValues?.map((e) => e.toJson()).toList(),
};

ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$Item
_$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$Item(
      tagCode: json['tagCode'] as String?,
      tagImg: json['tagImg'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$ItemToJson(
  ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$Item
  instance,
) => <String, dynamic>{'tagCode': instance.tagCode, 'tagImg': instance.tagImg};

ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfo
_$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: json['brandCode'] as String?,
      brandImg: json['brandImg'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfoToJson(
  ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfo
  instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$Item
_$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$Item(
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$ItemToJson(
  ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$Item
_$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$Item(
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$ItemToJson(
  ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$Item
_$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$Item(
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$ItemToJson(
  ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item
_$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item(
  name: json['name'] as String?,
  type: (json['type'] as num?)?.toDouble(),
  optionValues: (json['optionValues'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$ItemToJson(
  ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item
  instance,
) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'optionValues': instance.optionValues?.map((e) => e.toJson()).toList(),
};

ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$Item
_$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$Item(
      tagCode: json['tagCode'] as String?,
      tagImg: json['tagImg'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$ItemToJson(
  ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$Item
  instance,
) => <String, dynamic>{'tagCode': instance.tagCode, 'tagImg': instance.tagImg};

ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfo
_$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: json['brandCode'] as String?,
      brandImg: json['brandImg'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfoToJson(
  ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfo
  instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$Item
_$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$Item(
      value: json['value'] as String?,
      image: json['image'] as String?,
      imageWidth: json['imageWidth'],
      imageHeight: json['imageHeight'],
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$ItemToJson(
  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$Item
  instance,
) => <String, dynamic>{
  'value': instance.value,
  'image': instance.image,
  'imageWidth': instance.imageWidth,
  'imageHeight': instance.imageHeight,
};

ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOption
_$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOptionFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOption(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOptionToJson(
  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOption
  instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext$Brand
_$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext$BrandFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext$Brand(
  brandTitle: json['brandTitle'] as String?,
  brandName: json['brandName'] as String?,
  background: json['background'] as String?,
  qualityAssured: json['qualityAssured'] as String?,
  qualityAssuredUrl: json['qualityAssuredUrl'] as String?,
  deliverAssured: json['deliverAssured'] as String?,
);

Map<String, dynamic>
_$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext$BrandToJson(
  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext$Brand instance,
) => <String, dynamic>{
  'brandTitle': instance.brandTitle,
  'brandName': instance.brandName,
  'background': instance.background,
  'qualityAssured': instance.qualityAssured,
  'qualityAssuredUrl': instance.qualityAssuredUrl,
  'deliverAssured': instance.deliverAssured,
};

ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$Item
_$ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$Item(
      id: (json['id'] as num?)?.toDouble(),
      parentId: (json['parentId'] as num?)?.toDouble(),
      level: (json['level'] as num?)?.toDouble(),
      showOrder: (json['showOrder'] as num?)?.toDouble(),
      name: json['name'] as String?,
      iconUrl: json['iconUrl'] as String?,
      categoryList:
          (json['categoryList'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      brands:
          (json['brands'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$ItemToJson(
  ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$Item
  instance,
) => <String, dynamic>{
  'id': instance.id,
  'parentId': instance.parentId,
  'level': instance.level,
  'showOrder': instance.showOrder,
  'name': instance.name,
  'iconUrl': instance.iconUrl,
  'categoryList': instance.categoryList,
  'brands': instance.brands,
};

ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Image
_$ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$ImageFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Image(
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$ImageToJson(
  ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Image
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$Item
_$ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$Item(
      tagCode: json['tagCode'] as String?,
      tagImg: json['tagImg'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$ItemToJson(
  ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$Item
  instance,
) => <String, dynamic>{'tagCode': instance.tagCode, 'tagImg': instance.tagImg};

ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfo
_$ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: json['brandCode'] as String?,
      brandImg: json['brandImg'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfoToJson(
  ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfo
  instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSale
_$ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSaleFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSale(
      activityCode: json['activityCode'] as String?,
      activityTitle: json['activityTitle'] as String?,
      startTime: (json['startTime'] as num?)?.toInt(),
      endTime: (json['endTime'] as num?)?.toInt(),
      progressPercent: (json['progressPercent'] as num?)?.toInt(),
      progressText: json['progressText'] as String?,
      marketingIcon: json['marketingIcon'] as String?,
      discountExpr: json['discountExpr'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSaleToJson(
  ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSale
  instance,
) => <String, dynamic>{
  'activityCode': instance.activityCode,
  'activityTitle': instance.activityTitle,
  'startTime': instance.startTime,
  'endTime': instance.endTime,
  'progressPercent': instance.progressPercent,
  'progressText': instance.progressText,
  'marketingIcon': instance.marketingIcon,
  'discountExpr': instance.discountExpr,
};

ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Image
_$ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$ImageFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Image(
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$ImageToJson(
  ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Image
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$Item
_$ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$Item(
      tagCode: json['tagCode'] as String?,
      tagImg: json['tagImg'] as String?,
      order: (json['order'] as num?)?.toDouble(),
      frontShow: (json['frontShow'] as num?)?.toDouble(),
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$ItemToJson(
  ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$Item
  instance,
) => <String, dynamic>{
  'tagCode': instance.tagCode,
  'tagImg': instance.tagImg,
  'order': instance.order,
  'frontShow': instance.frontShow,
};

ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfo
_$ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: json['brandCode'] as String?,
      brandImg: json['brandImg'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfoToJson(
  ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfo
  instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSale
_$ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSaleFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSale(
      activityCode: json['activityCode'] as String?,
      activityTitle: json['activityTitle'] as String?,
      startTime: (json['startTime'] as num?)?.toInt(),
      endTime: (json['endTime'] as num?)?.toInt(),
      progressPercent: (json['progressPercent'] as num?)?.toInt(),
      progressText: json['progressText'] as String?,
      marketingIcon: json['marketingIcon'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSaleToJson(
  ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSale
  instance,
) => <String, dynamic>{
  'activityCode': instance.activityCode,
  'activityTitle': instance.activityTitle,
  'startTime': instance.startTime,
  'endTime': instance.endTime,
  'progressPercent': instance.progressPercent,
  'progressText': instance.progressText,
  'marketingIcon': instance.marketingIcon,
};

ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
_$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item(
      value: json['value'] as String?,
      image: json['image'] as String?,
      imageWidth: (json['imageWidth'] as num?)?.toDouble(),
      imageHeight: (json['imageHeight'] as num?)?.toDouble(),
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemToJson(
  ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
  instance,
) => <String, dynamic>{
  'value': instance.value,
  'image': instance.image,
  'imageWidth': instance.imageWidth,
  'imageHeight': instance.imageHeight,
};

ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$Item
_$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$Item(
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$ItemToJson(
  ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$Item
_$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$Item(
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$ItemToJson(
  ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$Item
_$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$Item(
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$ItemToJson(
  ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item
_$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item(
  name: json['name'] as String?,
  type: (json['type'] as num?)?.toDouble(),
  optionValues: (json['optionValues'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$ItemToJson(
  ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item
  instance,
) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'optionValues': instance.optionValues?.map((e) => e.toJson()).toList(),
};

ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$Item
_$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$Item(
      tagCode: json['tagCode'] as String?,
      tagImg: json['tagImg'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$ItemToJson(
  ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$Item
  instance,
) => <String, dynamic>{'tagCode': instance.tagCode, 'tagImg': instance.tagImg};

ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfo
_$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: json['brandCode'] as String?,
      brandImg: json['brandImg'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfoToJson(
  ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfo
  instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$Image
_$ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$ImageFromJson(
  Map<String, dynamic> json,
) => ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$Image(
  width: (json['width'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
  url: json['url'] as String?,
);

Map<String, dynamic>
_$ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$ImageToJson(
  ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$Image
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfo
_$ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: json['brandCode'] as String?,
      brandImg: json['brandImg'] as String?,
    );

Map<String, dynamic>
_$ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfoToJson(
  ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfo
  instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
_$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item(
      value: json['value'] as String?,
      image: json['image'] as String?,
      imageWidth: (json['imageWidth'] as num?)?.toDouble(),
      imageHeight: (json['imageHeight'] as num?)?.toDouble(),
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemToJson(
  ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
  instance,
) => <String, dynamic>{
  'value': instance.value,
  'image': instance.image,
  'imageWidth': instance.imageWidth,
  'imageHeight': instance.imageHeight,
};

ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$Item
_$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$Item(
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$ItemToJson(
  ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$Item
_$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$Item(
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$ItemToJson(
  ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$Item
_$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$Item(
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$ItemToJson(
  ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item
_$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item(
  name: json['name'] as String?,
  type: (json['type'] as num?)?.toDouble(),
  optionValues: (json['optionValues'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$ItemToJson(
  ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item
  instance,
) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'optionValues': instance.optionValues?.map((e) => e.toJson()).toList(),
};

ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$Item
_$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$Item(
      tagCode: json['tagCode'] as String?,
      tagImg: json['tagImg'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$ItemToJson(
  ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$Item
  instance,
) => <String, dynamic>{'tagCode': instance.tagCode, 'tagImg': instance.tagImg};

ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfo
_$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: json['brandCode'] as String?,
      brandImg: json['brandImg'] as String?,
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfoToJson(
  ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfo
  instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item
_$ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item(
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  image: json['image'] == null
      ? null
      : ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$Image.fromJson(
          json['image'] as Map<String, dynamic>,
        ),
  sourcePlatform: json['sourcePlatform'] as String?,
  platformProductId: json['platformProductId'] as String?,
  skuCode: json['skuCode'] as String?,
  sellPriceCur: json['sellPriceCur'] as String?,
  sellPrice: json['sellPrice'] as String?,
  targetSellPrice: json['targetSellPrice'] as String?,
  targetOriginPrice: json['targetOriginPrice'] as String?,
  targetSellCur: json['targetSellCur'] as String?,
  sellQuantity: json['sellQuantity'] as String?,
  skuCount: (json['skuCount'] as num?)?.toDouble(),
  marketingInfo: json['marketingInfo'] as String?,
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as Object).toList() ?? [],
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$ItemToJson(
  ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item
  instance,
) => <String, dynamic>{
  'productCode': instance.productCode,
  'productName': instance.productName,
  'image': instance.image?.toJson(),
  'sourcePlatform': instance.sourcePlatform,
  'platformProductId': instance.platformProductId,
  'skuCode': instance.skuCode,
  'sellPriceCur': instance.sellPriceCur,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'targetOriginPrice': instance.targetOriginPrice,
  'targetSellCur': instance.targetSellCur,
  'sellQuantity': instance.sellQuantity,
  'skuCount': instance.skuCount,
  'marketingInfo': instance.marketingInfo,
  'tags': instance.tags,
  'premiumBrandInfo': instance.premiumBrandInfo?.toJson(),
};

ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Image
_$ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$ImageFromJson(
  Map<String, dynamic> json,
) => ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Image(
  width: (json['width'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
  url: json['url'] as String?,
);

Map<String, dynamic>
_$ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$ImageToJson(
  ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Image
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$Item
_$ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$Item(
      tagCode: json['tagCode'] as String?,
      tagImg: json['tagImg'] as String?,
    );

Map<String, dynamic>
_$ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$ItemToJson(
  ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$Item
  instance,
) => <String, dynamic>{'tagCode': instance.tagCode, 'tagImg': instance.tagImg};

ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfo
_$ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: json['brandCode'] as String?,
      brandImg: json['brandImg'] as String?,
    );

Map<String, dynamic>
_$ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfoToJson(
  ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfo
  instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Image
_$ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$ImageFromJson(
  Map<String, dynamic> json,
) => ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Image(
  width: (json['width'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
  url: json['url'] as String?,
);

Map<String, dynamic>
_$ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$ImageToJson(
  ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Image
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Tags$Item
_$ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) => ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Tags$Item(
  tagCode: json['tagCode'] as String?,
  tagImg: json['tagImg'] as String?,
);

Map<String, dynamic>
_$ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Tags$ItemToJson(
  ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Tags$Item
  instance,
) => <String, dynamic>{'tagCode': instance.tagCode, 'tagImg': instance.tagImg};

ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfo
_$ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: json['brandCode'] as String?,
      brandImg: json['brandImg'] as String?,
    );

Map<String, dynamic>
_$ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfoToJson(
  ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfo
  instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Image
_$ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$ImageFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Image(
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$ImageToJson(
  ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Image
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$Item
_$ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$Item(
      tagCode: json['tagCode'] as String?,
      tagImg: json['tagImg'] as String?,
    );

Map<String, dynamic>
_$ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$ItemToJson(
  ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$Item
  instance,
) => <String, dynamic>{'tagCode': instance.tagCode, 'tagImg': instance.tagImg};

ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfo
_$ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: json['brandCode'] as String?,
      brandImg: json['brandImg'] as String?,
    );

Map<String, dynamic>
_$ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfoToJson(
  ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfo
  instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item
_$ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item(
      id: (json['id'] as num?)?.toDouble(),
      name: json['name'] as String?,
      iconUrl: json['iconUrl'] as String?,
      parentId: (json['parentId'] as num?)?.toDouble(),
      level: (json['level'] as num?)?.toDouble(),
    );

Map<String, dynamic>
_$ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$ItemToJson(
  ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item
  instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'iconUrl': instance.iconUrl,
  'parentId': instance.parentId,
  'level': instance.level,
};

ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
_$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item(
      value: json['value'] as String?,
      image: json['image'] as String?,
      imageWidth: json['imageWidth'],
      imageHeight: json['imageHeight'],
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemToJson(
  ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
  instance,
) => <String, dynamic>{
  'value': instance.value,
  'image': instance.image,
  'imageWidth': instance.imageWidth,
  'imageHeight': instance.imageHeight,
};

ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
_$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item(
      value: json['value'] as String?,
      image: json['image'],
      imageWidth: json['imageWidth'],
      imageHeight: json['imageHeight'],
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemToJson(
  ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
  instance,
) => <String, dynamic>{
  'value': instance.value,
  'image': instance.image,
  'imageWidth': instance.imageWidth,
  'imageHeight': instance.imageHeight,
};

ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
_$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item(
      value: json['value'] as String?,
      image: json['image'],
      imageWidth: json['imageWidth'],
      imageHeight: json['imageHeight'],
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemToJson(
  ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
  instance,
) => <String, dynamic>{
  'value': instance.value,
  'image': instance.image,
  'imageWidth': instance.imageWidth,
  'imageHeight': instance.imageHeight,
};

ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
_$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item(
      value: json['value'] as String?,
      image: json['image'],
      imageWidth: json['imageWidth'],
      imageHeight: json['imageHeight'],
    );

Map<String, dynamic>
_$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemToJson(
  ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
  instance,
) => <String, dynamic>{
  'value': instance.value,
  'image': instance.image,
  'imageWidth': instance.imageWidth,
  'imageHeight': instance.imageHeight,
};

ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$Image
_$ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$ImageFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$Image(
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$ImageToJson(
  ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$Image
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfo
_$ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) =>
    ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfo(
      brandCode: json['brandCode'] as String?,
      brandImg: json['brandImg'] as String?,
    );

Map<String, dynamic>
_$ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfoToJson(
  ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfo
  instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};
