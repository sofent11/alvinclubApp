// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swaggerApiProduct.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductReviewNoAuthPageGet$Response
_$ProductReviewNoAuthPageGet$ResponseFromJson(Map<String, dynamic> json) =>
    ProductReviewNoAuthPageGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ProductReviewNoAuthPageGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$ProductReviewNoAuthPageGet$ResponseToJson(
  ProductReviewNoAuthPageGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
};

ProductReviewNoAuthSummaryGet$Response
_$ProductReviewNoAuthSummaryGet$ResponseFromJson(Map<String, dynamic> json) =>
    ProductReviewNoAuthSummaryGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ProductReviewNoAuthSummaryGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$ProductReviewNoAuthSummaryGet$ResponseToJson(
  ProductReviewNoAuthSummaryGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
};

CategoryNoAuthTreeGet$Response _$CategoryNoAuthTreeGet$ResponseFromJson(
  Map<String, dynamic> json,
) => CategoryNoAuthTreeGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : CategoryNoAuthTreeGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$CategoryNoAuthTreeGet$ResponseToJson(
  CategoryNoAuthTreeGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

ActivityNoAuthFlashSaleActivityGet$Response
_$ActivityNoAuthFlashSaleActivityGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ActivityNoAuthFlashSaleActivityGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ActivityNoAuthFlashSaleActivityGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$ActivityNoAuthFlashSaleActivityGet$ResponseToJson(
  ActivityNoAuthFlashSaleActivityGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'success': instance.success,
};

ActivityNoAuthFlashSaleActivityProductGet$Response
_$ActivityNoAuthFlashSaleActivityProductGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ActivityNoAuthFlashSaleActivityProductGet$Response(
  code: json['code'] as String,
  message: json['message'] as String,
  data: ActivityNoAuthFlashSaleActivityProductGet$Response$Data.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
  traceId: json['traceId'] as String,
);

Map<String, dynamic> _$ActivityNoAuthFlashSaleActivityProductGet$ResponseToJson(
  ActivityNoAuthFlashSaleActivityProductGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.toJson(),
  'traceId': instance.traceId,
};

ProductPremiumDupeNoAuthPagePost$Response
_$ProductPremiumDupeNoAuthPagePost$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductPremiumDupeNoAuthPagePost$Response(
  code: (json['code'] as num?)?.toInt(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ProductPremiumDupeNoAuthPagePost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$ProductPremiumDupeNoAuthPagePost$ResponseToJson(
  ProductPremiumDupeNoAuthPagePost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
};

ProductPremiumDupeNoAuthMetaGet$Response
_$ProductPremiumDupeNoAuthMetaGet$ResponseFromJson(Map<String, dynamic> json) =>
    ProductPremiumDupeNoAuthMetaGet$Response(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ProductPremiumDupeNoAuthMetaGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: json['traceId'] as String?,
    );

Map<String, dynamic> _$ProductPremiumDupeNoAuthMetaGet$ResponseToJson(
  ProductPremiumDupeNoAuthMetaGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
};

ProductPremiumDupeNoAuthSelectionGet$Response
_$ProductPremiumDupeNoAuthSelectionGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductPremiumDupeNoAuthSelectionGet$Response(
  code: (json['code'] as num?)?.toInt(),
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map(
        (e) => ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$ProductPremiumDupeNoAuthSelectionGet$ResponseToJson(
  ProductPremiumDupeNoAuthSelectionGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'traceId': instance.traceId,
};

ExternalPurchaseRecordPost$Response
_$ExternalPurchaseRecordPost$ResponseFromJson(Map<String, dynamic> json) =>
    ExternalPurchaseRecordPost$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] as bool?,
    );

Map<String, dynamic> _$ExternalPurchaseRecordPost$ResponseToJson(
  ExternalPurchaseRecordPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
};

ProductNoAuthPushProductGet$Response
_$ProductNoAuthPushProductGet$ResponseFromJson(Map<String, dynamic> json) =>
    ProductNoAuthPushProductGet$Response(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      data: ProductNoAuthPushProductGet$Response$Data.fromJson(
        json['data'] as Map<String, dynamic>,
      ),
      traceId: json['traceId'] as String,
    );

Map<String, dynamic> _$ProductNoAuthPushProductGet$ResponseToJson(
  ProductNoAuthPushProductGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.toJson(),
  'traceId': instance.traceId,
};

ProductNoAuthSearchGet$Response _$ProductNoAuthSearchGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthSearchGet$Response(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
  data: (json['data'] as List<dynamic>)
      .map(
        (e) => ProductNoAuthSearchGet$Response$Data$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  traceId: json['traceId'] as String,
);

Map<String, dynamic> _$ProductNoAuthSearchGet$ResponseToJson(
  ProductNoAuthSearchGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.map((e) => e.toJson()).toList(),
  'traceId': instance.traceId,
};

ProductNoAuthCombineSearchGet$Response
_$ProductNoAuthCombineSearchGet$ResponseFromJson(Map<String, dynamic> json) =>
    ProductNoAuthCombineSearchGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ProductNoAuthCombineSearchGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: json['traceId'] as String?,
      placeholder: json['placeholder'],
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$ProductNoAuthCombineSearchGet$ResponseToJson(
  ProductNoAuthCombineSearchGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

ProductNoAuthNewArrivalProductGet$Response
_$ProductNoAuthNewArrivalProductGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthNewArrivalProductGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ProductNoAuthNewArrivalProductGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$ProductNoAuthNewArrivalProductGet$ResponseToJson(
  ProductNoAuthNewArrivalProductGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

ProductNoAuthNewArrivalProductBrandGet$Response
_$ProductNoAuthNewArrivalProductBrandGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthNewArrivalProductBrandGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data:
      (json['data'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$ProductNoAuthNewArrivalProductBrandGet$ResponseToJson(
  ProductNoAuthNewArrivalProductBrandGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

ProductNoAuthSkuListGet$Response _$ProductNoAuthSkuListGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthSkuListGet$Response(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
  data: (json['data'] as List<dynamic>)
      .map(
        (e) => ProductNoAuthSkuListGet$Response$Data$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  traceId: json['traceId'] as String,
);

Map<String, dynamic> _$ProductNoAuthSkuListGet$ResponseToJson(
  ProductNoAuthSkuListGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.map((e) => e.toJson()).toList(),
  'traceId': instance.traceId,
};

ProductNoAuthGetProductInfoGet$Response
_$ProductNoAuthGetProductInfoGet$ResponseFromJson(Map<String, dynamic> json) =>
    ProductNoAuthGetProductInfoGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ProductNoAuthGetProductInfoGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: json['traceId'] as String?,
      placeholder: json['placeholder'],
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$ProductNoAuthGetProductInfoGet$ResponseToJson(
  ProductNoAuthGetProductInfoGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

ProductNoAuthPremierProductCategoryGet$Response
_$ProductNoAuthPremierProductCategoryGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthPremierProductCategoryGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ProductNoAuthPremierProductCategoryGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$ProductNoAuthPremierProductCategoryGet$ResponseToJson(
  ProductNoAuthPremierProductCategoryGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

ProductNoAuthHotProductGet$Response
_$ProductNoAuthHotProductGet$ResponseFromJson(Map<String, dynamic> json) =>
    ProductNoAuthHotProductGet$Response(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map(
            (e) => ProductNoAuthHotProductGet$Response$Data$Item.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
      traceId: json['traceId'] as String,
    );

Map<String, dynamic> _$ProductNoAuthHotProductGet$ResponseToJson(
  ProductNoAuthHotProductGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.map((e) => e.toJson()).toList(),
  'traceId': instance.traceId,
};

ProductNoAuthHotProductV2Get$Response
_$ProductNoAuthHotProductV2Get$ResponseFromJson(Map<String, dynamic> json) =>
    ProductNoAuthHotProductV2Get$Response(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      data: ProductNoAuthHotProductV2Get$Response$Data.fromJson(
        json['data'] as Map<String, dynamic>,
      ),
      traceId: json['traceId'] as String,
    );

Map<String, dynamic> _$ProductNoAuthHotProductV2Get$ResponseToJson(
  ProductNoAuthHotProductV2Get$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.toJson(),
  'traceId': instance.traceId,
};

ProductNoAuthHotProductV3Get$Response
_$ProductNoAuthHotProductV3Get$ResponseFromJson(Map<String, dynamic> json) =>
    ProductNoAuthHotProductV3Get$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ProductNoAuthHotProductV3Get$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: json['traceId'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$ProductNoAuthHotProductV3Get$ResponseToJson(
  ProductNoAuthHotProductV3Get$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'success': instance.success,
};

ProductNoAuthFlashSaleProductGet$Response
_$ProductNoAuthFlashSaleProductGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthFlashSaleProductGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map(
        (e) => ProductNoAuthFlashSaleProductGet$Response$Data$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$ProductNoAuthFlashSaleProductGet$ResponseToJson(
  ProductNoAuthFlashSaleProductGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

ProductNoAuthAlbumProductGet$Response
_$ProductNoAuthAlbumProductGet$ResponseFromJson(Map<String, dynamic> json) =>
    ProductNoAuthAlbumProductGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ProductNoAuthAlbumProductGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: json['traceId'] as String?,
      placeholder: json['placeholder'],
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$ProductNoAuthAlbumProductGet$ResponseToJson(
  ProductNoAuthAlbumProductGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

ShopNoAuthGetThirdShopGet$Response _$ShopNoAuthGetThirdShopGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ShopNoAuthGetThirdShopGet$Response(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
  data: ShopNoAuthGetThirdShopGet$Response$Data.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
  traceId: json['traceId'] as String,
);

Map<String, dynamic> _$ShopNoAuthGetThirdShopGet$ResponseToJson(
  ShopNoAuthGetThirdShopGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.toJson(),
  'traceId': instance.traceId,
};

ProductNoAuthKolProductGet$Response
_$ProductNoAuthKolProductGet$ResponseFromJson(Map<String, dynamic> json) =>
    ProductNoAuthKolProductGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map(
            (e) => ProductNoAuthKolProductGet$Response$Data$Item.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
      traceId: json['traceId'] as String?,
      placeholder: json['placeholder'],
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$ProductNoAuthKolProductGet$ResponseToJson(
  ProductNoAuthKolProductGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

ProductNoAuthPremierProductGet$Response
_$ProductNoAuthPremierProductGet$ResponseFromJson(Map<String, dynamic> json) =>
    ProductNoAuthPremierProductGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ProductNoAuthPremierProductGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: json['traceId'] as String?,
      placeholder: json['placeholder'],
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$ProductNoAuthPremierProductGet$ResponseToJson(
  ProductNoAuthPremierProductGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

ProductNoAuthPremierProductBrandGet$Response
_$ProductNoAuthPremierProductBrandGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthPremierProductBrandGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data:
      (json['data'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$ProductNoAuthPremierProductBrandGet$ResponseToJson(
  ProductNoAuthPremierProductBrandGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

RecommendNoAuthCategoryRecommendationGet$Response
_$RecommendNoAuthCategoryRecommendationGet$ResponseFromJson(
  Map<String, dynamic> json,
) => RecommendNoAuthCategoryRecommendationGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : RecommendNoAuthCategoryRecommendationGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$RecommendNoAuthCategoryRecommendationGet$ResponseToJson(
  RecommendNoAuthCategoryRecommendationGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'success': instance.success,
};

RecommendNoAuthCategoryPost$Response
_$RecommendNoAuthCategoryPost$ResponseFromJson(Map<String, dynamic> json) =>
    RecommendNoAuthCategoryPost$Response(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      data: RecommendNoAuthCategoryPost$Response$Data.fromJson(
        json['data'] as Map<String, dynamic>,
      ),
      traceId: json['traceId'] as String,
    );

Map<String, dynamic> _$RecommendNoAuthCategoryPost$ResponseToJson(
  RecommendNoAuthCategoryPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.toJson(),
  'traceId': instance.traceId,
};

RecommendNoAuthShopPost$Response _$RecommendNoAuthShopPost$ResponseFromJson(
  Map<String, dynamic> json,
) => RecommendNoAuthShopPost$Response(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
  data: RecommendNoAuthShopPost$Response$Data.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
  traceId: json['traceId'] as String,
);

Map<String, dynamic> _$RecommendNoAuthShopPost$ResponseToJson(
  RecommendNoAuthShopPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.toJson(),
  'traceId': instance.traceId,
};

RecommendNoAuthSimilarProductPost$Response
_$RecommendNoAuthSimilarProductPost$ResponseFromJson(
  Map<String, dynamic> json,
) => RecommendNoAuthSimilarProductPost$Response(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
  data: RecommendNoAuthSimilarProductPost$Response$Data.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
  traceId: json['traceId'] as String,
);

Map<String, dynamic> _$RecommendNoAuthSimilarProductPost$ResponseToJson(
  RecommendNoAuthSimilarProductPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.toJson(),
  'traceId': instance.traceId,
};

ProductReviewNoAuthPageGet$Response$Data
_$ProductReviewNoAuthPageGet$Response$DataFromJson(Map<String, dynamic> json) =>
    ProductReviewNoAuthPageGet$Response$Data(
      current: (json['current'] as num?)?.toDouble(),
      size: (json['size'] as num?)?.toDouble(),
      total: (json['total'] as num?)?.toDouble(),
      pages: (json['pages'] as num?)?.toDouble(),
      records: (json['records'] as List<dynamic>?)
          ?.map(
            (e) =>
                ProductReviewNoAuthPageGet$Response$Data$Records$Item.fromJson(
                  e as Map<String, dynamic>,
                ),
          )
          .toList(),
    );

Map<String, dynamic> _$ProductReviewNoAuthPageGet$Response$DataToJson(
  ProductReviewNoAuthPageGet$Response$Data instance,
) => <String, dynamic>{
  'current': instance.current,
  'size': instance.size,
  'total': instance.total,
  'pages': instance.pages,
  'records': instance.records?.map((e) => e.toJson()).toList(),
};

ProductReviewNoAuthSummaryGet$Response$Data
_$ProductReviewNoAuthSummaryGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductReviewNoAuthSummaryGet$Response$Data(
  productCode: json['productCode'] as String?,
  reviewCount: (json['reviewCount'] as num?)?.toDouble(),
  averageScore: (json['averageScore'] as num?)?.toDouble(),
  aiSummary: json['aiSummary'] as String?,
  featuredReviews: (json['featuredReviews'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic> _$ProductReviewNoAuthSummaryGet$Response$DataToJson(
  ProductReviewNoAuthSummaryGet$Response$Data instance,
) => <String, dynamic>{
  'productCode': instance.productCode,
  'reviewCount': instance.reviewCount,
  'averageScore': instance.averageScore,
  'aiSummary': instance.aiSummary,
  'featuredReviews': instance.featuredReviews?.map((e) => e.toJson()).toList(),
};

CategoryNoAuthTreeGet$Response$Data
_$CategoryNoAuthTreeGet$Response$DataFromJson(Map<String, dynamic> json) =>
    CategoryNoAuthTreeGet$Response$Data(
      categoryList: (json['categoryList'] as List<dynamic>?)
          ?.map(
            (e) =>
                CategoryNoAuthTreeGet$Response$Data$CategoryList$Item.fromJson(
                  e as Map<String, dynamic>,
                ),
          )
          .toList(),
    );

Map<String, dynamic> _$CategoryNoAuthTreeGet$Response$DataToJson(
  CategoryNoAuthTreeGet$Response$Data instance,
) => <String, dynamic>{
  'categoryList': instance.categoryList?.map((e) => e.toJson()).toList(),
};

ActivityNoAuthFlashSaleActivityGet$Response$Data
_$ActivityNoAuthFlashSaleActivityGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ActivityNoAuthFlashSaleActivityGet$Response$Data(
  pic: json['pic'] as String?,
  ruleLink: json['ruleLink'] as String?,
  activities: (json['activities'] as List<dynamic>?)
      ?.map(
        (e) =>
            ActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic> _$ActivityNoAuthFlashSaleActivityGet$Response$DataToJson(
  ActivityNoAuthFlashSaleActivityGet$Response$Data instance,
) => <String, dynamic>{
  'pic': instance.pic,
  'ruleLink': instance.ruleLink,
  'activities': instance.activities?.map((e) => e.toJson()).toList(),
};

ActivityNoAuthFlashSaleActivityProductGet$Response$Data
_$ActivityNoAuthFlashSaleActivityProductGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ActivityNoAuthFlashSaleActivityProductGet$Response$Data(
  records: (json['records'] as List<dynamic>)
      .map(
        (e) =>
            ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  total: (json['total'] as num).toInt(),
  pageSize: (json['pageSize'] as num).toInt(),
  totalPages: (json['totalPages'] as num).toInt(),
  current: (json['current'] as num).toInt(),
);

Map<String, dynamic>
_$ActivityNoAuthFlashSaleActivityProductGet$Response$DataToJson(
  ActivityNoAuthFlashSaleActivityProductGet$Response$Data instance,
) => <String, dynamic>{
  'records': instance.records.map((e) => e.toJson()).toList(),
  'total': instance.total,
  'pageSize': instance.pageSize,
  'totalPages': instance.totalPages,
  'current': instance.current,
};

ProductPremiumDupeNoAuthPagePost$Response$Data
_$ProductPremiumDupeNoAuthPagePost$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductPremiumDupeNoAuthPagePost$Response$Data(
  total: (json['total'] as num?)?.toInt(),
  pageSize: (json['pageSize'] as num?)?.toInt(),
  totalPages: (json['totalPages'] as num?)?.toInt(),
  current: (json['current'] as num?)?.toInt(),
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic> _$ProductPremiumDupeNoAuthPagePost$Response$DataToJson(
  ProductPremiumDupeNoAuthPagePost$Response$Data instance,
) => <String, dynamic>{
  'total': instance.total,
  'pageSize': instance.pageSize,
  'totalPages': instance.totalPages,
  'current': instance.current,
  'records': instance.records?.map((e) => e.toJson()).toList(),
};

ProductPremiumDupeNoAuthMetaGet$Response$Data
_$ProductPremiumDupeNoAuthMetaGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductPremiumDupeNoAuthMetaGet$Response$Data(
  categories: (json['categories'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  sorts: (json['sorts'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  config: json['config'] == null
      ? null
      : ProductPremiumDupeNoAuthMetaGet$Response$Data$Config.fromJson(
          json['config'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ProductPremiumDupeNoAuthMetaGet$Response$DataToJson(
  ProductPremiumDupeNoAuthMetaGet$Response$Data instance,
) => <String, dynamic>{
  'categories': instance.categories?.map((e) => e.toJson()).toList(),
  'sorts': instance.sorts?.map((e) => e.toJson()).toList(),
  'config': instance.config?.toJson(),
};

ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item
_$ProductPremiumDupeNoAuthSelectionGet$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item(
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  image: json['image'] == null
      ? null
      : ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Image.fromJson(
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
  sellPrice: (json['sellPrice'] as num?)?.toDouble(),
  targetSellPrice: (json['targetSellPrice'] as num?)?.toDouble(),
  targetOriginPrice: (json['targetOriginPrice'] as num?)?.toDouble(),
  targetSellCur: json['targetSellCur'] as String?,
  sellQuantity: json['sellQuantity'] as String?,
  skuCount: (json['skuCount'] as num?)?.toInt(),
  marketingInfo: json['marketingInfo'] as String?,
  tags: (json['tags'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  skuSourceCode: json['skuSourceCode'] as String?,
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
);

Map<String, dynamic>
_$ProductPremiumDupeNoAuthSelectionGet$Response$Data$ItemToJson(
  ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item instance,
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

ProductNoAuthPushProductGet$Response$Data
_$ProductNoAuthPushProductGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthPushProductGet$Response$Data(
  total: (json['total'] as num).toInt(),
  pageSize: (json['pageSize'] as num).toInt(),
  current: (json['current'] as num).toInt(),
  totalPages: (json['totalPages'] as num).toInt(),
  records: (json['records'] as List<dynamic>)
      .map(
        (e) => ProductNoAuthPushProductGet$Response$Data$Records$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
);

Map<String, dynamic> _$ProductNoAuthPushProductGet$Response$DataToJson(
  ProductNoAuthPushProductGet$Response$Data instance,
) => <String, dynamic>{
  'total': instance.total,
  'pageSize': instance.pageSize,
  'current': instance.current,
  'totalPages': instance.totalPages,
  'records': instance.records.map((e) => e.toJson()).toList(),
};

ProductNoAuthSearchGet$Response$Data$Item
_$ProductNoAuthSearchGet$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthSearchGet$Response$Data$Item(
  shopCode: json['shopCode'] as String,
  productCode: json['productCode'] as String,
  productName: json['productName'] as String,
  tenantCode: json['tenantCode'] as String,
  brandName: json['brandName'] as String,
  mainImg: ProductNoAuthSearchGet$Response$Data$Item$MainImg.fromJson(
    json['mainImg'] as Map<String, dynamic>,
  ),
  subImg: ProductNoAuthSearchGet$Response$Data$Item$SubImg.fromJson(
    json['subImg'] as Map<String, dynamic>,
  ),
  mainVideo: ProductNoAuthSearchGet$Response$Data$Item$MainVideo.fromJson(
    json['mainVideo'] as Map<String, dynamic>,
  ),
  imgCollection: (json['imgCollection'] as List<dynamic>)
      .map(
        (e) =>
            ProductNoAuthSearchGet$Response$Data$Item$ImgCollection$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  textDetail: json['textDetail'] as String,
  categoryId: json['categoryId'] as String,
  productOptions: (json['productOptions'] as List<dynamic>)
      .map(
        (e) =>
            ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  productAttrs: (json['productAttrs'] as List<dynamic>)
      .map(
        (e) =>
            ProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  sourcePlatform: json['sourcePlatform'] as String,
  platformUrl: json['platformUrl'] as String,
  platformProductId: json['platformProductId'] as String,
  skuCode: json['skuCode'] as String,
  sellPriceCur: json['sellPriceCur'] as String,
  sellPrice: json['sellPrice'] as String,
  targetSellPrice: json['targetSellPrice'] as String,
  targetSellCur: json['targetSellCur'] as String,
  marketingInfo: json['marketingInfo'] as String,
  targetOriginPrice: json['targetOriginPrice'] as String,
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
);

Map<String, dynamic> _$ProductNoAuthSearchGet$Response$Data$ItemToJson(
  ProductNoAuthSearchGet$Response$Data$Item instance,
) => <String, dynamic>{
  'shopCode': instance.shopCode,
  'productCode': instance.productCode,
  'productName': instance.productName,
  'tenantCode': instance.tenantCode,
  'brandName': instance.brandName,
  'mainImg': instance.mainImg.toJson(),
  'subImg': instance.subImg.toJson(),
  'mainVideo': instance.mainVideo.toJson(),
  'imgCollection': instance.imgCollection.map((e) => e.toJson()).toList(),
  'textDetail': instance.textDetail,
  'categoryId': instance.categoryId,
  'productOptions': instance.productOptions.map((e) => e.toJson()).toList(),
  'productAttrs': instance.productAttrs.map((e) => e.toJson()).toList(),
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

ProductNoAuthCombineSearchGet$Response$Data
_$ProductNoAuthCombineSearchGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthCombineSearchGet$Response$Data(
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductNoAuthCombineSearchGet$Response$Data$Records$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  total: (json['total'] as num?)?.toDouble(),
  pageSize: (json['pageSize'] as num?)?.toDouble(),
  current: (json['current'] as num?)?.toDouble(),
  totalPages: (json['totalPages'] as num?)?.toDouble(),
);

Map<String, dynamic> _$ProductNoAuthCombineSearchGet$Response$DataToJson(
  ProductNoAuthCombineSearchGet$Response$Data instance,
) => <String, dynamic>{
  'records': instance.records?.map((e) => e.toJson()).toList(),
  'total': instance.total,
  'pageSize': instance.pageSize,
  'current': instance.current,
  'totalPages': instance.totalPages,
};

ProductNoAuthNewArrivalProductGet$Response$Data
_$ProductNoAuthNewArrivalProductGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthNewArrivalProductGet$Response$Data(
  total: (json['total'] as num?)?.toDouble(),
  pageSize: (json['pageSize'] as num?)?.toDouble(),
  totalPages: (json['totalPages'] as num?)?.toDouble(),
  current: (json['current'] as num?)?.toDouble(),
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic> _$ProductNoAuthNewArrivalProductGet$Response$DataToJson(
  ProductNoAuthNewArrivalProductGet$Response$Data instance,
) => <String, dynamic>{
  'total': instance.total,
  'pageSize': instance.pageSize,
  'totalPages': instance.totalPages,
  'current': instance.current,
  'records': instance.records?.map((e) => e.toJson()).toList(),
};

ProductNoAuthSkuListGet$Response$Data$Item
_$ProductNoAuthSkuListGet$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthSkuListGet$Response$Data$Item(
  productCode: json['productCode'] as String,
  skuCode: json['skuCode'] as String,
  tenantCode: json['tenantCode'] as String,
  extUrl: json['extUrl'] as String,
  skuImg: ProductNoAuthSkuListGet$Response$Data$Item$SkuImg.fromJson(
    json['skuImg'] as Map<String, dynamic>,
  ),
  skuOptions: (json['skuOptions'] as List<dynamic>)
      .map(
        (e) =>
            ProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  sellPrice: json['sellPrice'] as String,
  sellCur: json['sellCur'] as String,
  targetSellPrice: json['targetSellPrice'] as String,
  targetSellCur: json['targetSellCur'] as String,
  length: json['length'] as String?,
  width: json['width'] as String?,
  height: json['height'] as String?,
  weight: json['weight'] as String?,
  estimateUnitFreight: json['estimateUnitFreight'] as String?,
  marketingInfo: json['marketingInfo'] as String?,
  targetOriginPrice: json['targetOriginPrice'] as String?,
  skuSourceCode: json['skuSourceCode'] as String,
  flashSaleInfo: json['flashSaleInfo'] == null
      ? null
      : ProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfo.fromJson(
          json['flashSaleInfo'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ProductNoAuthSkuListGet$Response$Data$ItemToJson(
  ProductNoAuthSkuListGet$Response$Data$Item instance,
) => <String, dynamic>{
  'productCode': instance.productCode,
  'skuCode': instance.skuCode,
  'tenantCode': instance.tenantCode,
  'extUrl': instance.extUrl,
  'skuImg': instance.skuImg.toJson(),
  'skuOptions': instance.skuOptions.map((e) => e.toJson()).toList(),
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

ProductNoAuthGetProductInfoGet$Response$Data
_$ProductNoAuthGetProductInfoGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthGetProductInfoGet$Response$Data(
  shopCode: json['shopCode'] as String?,
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  tenantCode: json['tenantCode'] as String?,
  brandName: json['brandName'] as String?,
  mainImg: (json['mainImg'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductNoAuthGetProductInfoGet$Response$Data$MainImg$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  subImg: json['subImg'] as String?,
  mainVideo: (json['mainVideo'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductNoAuthGetProductInfoGet$Response$Data$MainVideo$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  imgCollection: (json['imgCollection'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  textDetail: json['textDetail'] as String?,
  imgDetail: (json['imgDetail'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  categoryId: (json['categoryId'] as num?)?.toDouble(),
  productOptions: (json['productOptions'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  productAttrs: (json['productAttrs'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$Item.fromJson(
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
            ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  tags: (json['tags'] as List<dynamic>?)
      ?.map(
        (e) => ProductNoAuthGetProductInfoGet$Response$Data$Tags$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfo.fromJson(
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
      : ProductNoAuthGetProductInfoGet$Response$Data$Ext.fromJson(
          json['ext'] as Map<String, dynamic>,
        ),
  productFlag: json['productFlag'] as String,
  marketingInfo: json['marketingInfo'] as String,
  targetOriginPrice: json['targetOriginPrice'] as String,
  flashSale: json['flashSale'] == null
      ? null
      : ProductNoAuthGetProductInfoGet$Response$Data$FlashSale.fromJson(
          json['flashSale'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ProductNoAuthGetProductInfoGet$Response$DataToJson(
  ProductNoAuthGetProductInfoGet$Response$Data instance,
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

ProductNoAuthPremierProductCategoryGet$Response$Data
_$ProductNoAuthPremierProductCategoryGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthPremierProductCategoryGet$Response$Data(
  categoryList: (json['categoryList'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductNoAuthPremierProductCategoryGet$Response$DataToJson(
  ProductNoAuthPremierProductCategoryGet$Response$Data instance,
) => <String, dynamic>{
  'categoryList': instance.categoryList?.map((e) => e.toJson()).toList(),
};

ProductNoAuthHotProductGet$Response$Data$Item
_$ProductNoAuthHotProductGet$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthHotProductGet$Response$Data$Item(
  productCode: json['productCode'] as String,
  productName: json['productName'] as String,
  image: ProductNoAuthHotProductGet$Response$Data$Item$Image.fromJson(
    json['image'] as Map<String, dynamic>,
  ),
  skuCode: json['skuCode'] as String,
  sellPriceCur: json['sellPriceCur'] as String,
  sellPrice: json['sellPrice'] as String,
  targetSellPrice: json['targetSellPrice'] as String,
  targetSellCur: json['targetSellCur'] as String,
  sellQuantity: json['sellQuantity'] as String,
  marketingInfo: json['marketingInfo'] as String,
  targetOriginPrice: json['targetOriginPrice'] as String,
  tags: (json['tags'] as List<dynamic>)
      .map(
        (e) => ProductNoAuthHotProductGet$Response$Data$Item$Tags$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
);

Map<String, dynamic> _$ProductNoAuthHotProductGet$Response$Data$ItemToJson(
  ProductNoAuthHotProductGet$Response$Data$Item instance,
) => <String, dynamic>{
  'productCode': instance.productCode,
  'productName': instance.productName,
  'image': instance.image.toJson(),
  'skuCode': instance.skuCode,
  'sellPriceCur': instance.sellPriceCur,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'targetSellCur': instance.targetSellCur,
  'sellQuantity': instance.sellQuantity,
  'marketingInfo': instance.marketingInfo,
  'targetOriginPrice': instance.targetOriginPrice,
  'tags': instance.tags.map((e) => e.toJson()).toList(),
  'premiumBrandInfo': instance.premiumBrandInfo?.toJson(),
  'sellPoints': instance.sellPoints,
};

ProductNoAuthHotProductV2Get$Response$Data
_$ProductNoAuthHotProductV2Get$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthHotProductV2Get$Response$Data(
  total: (json['total'] as num).toInt(),
  pageSize: (json['pageSize'] as num).toInt(),
  current: (json['current'] as num).toInt(),
  totalPages: (json['totalPages'] as num).toInt(),
  records: (json['records'] as List<dynamic>)
      .map(
        (e) => ProductNoAuthHotProductV2Get$Response$Data$Records$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
);

Map<String, dynamic> _$ProductNoAuthHotProductV2Get$Response$DataToJson(
  ProductNoAuthHotProductV2Get$Response$Data instance,
) => <String, dynamic>{
  'total': instance.total,
  'pageSize': instance.pageSize,
  'current': instance.current,
  'totalPages': instance.totalPages,
  'records': instance.records.map((e) => e.toJson()).toList(),
};

ProductNoAuthHotProductV3Get$Response$Data
_$ProductNoAuthHotProductV3Get$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthHotProductV3Get$Response$Data(
  total: (json['total'] as num?)?.toDouble(),
  pageSize: (json['pageSize'] as num?)?.toDouble(),
  totalPages: (json['totalPages'] as num?)?.toDouble(),
  current: (json['current'] as num?)?.toDouble(),
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) => ProductNoAuthHotProductV3Get$Response$Data$Records$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
);

Map<String, dynamic> _$ProductNoAuthHotProductV3Get$Response$DataToJson(
  ProductNoAuthHotProductV3Get$Response$Data instance,
) => <String, dynamic>{
  'total': instance.total,
  'pageSize': instance.pageSize,
  'totalPages': instance.totalPages,
  'current': instance.current,
  'records': instance.records?.map((e) => e.toJson()).toList(),
};

ProductNoAuthFlashSaleProductGet$Response$Data$Item
_$ProductNoAuthFlashSaleProductGet$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthFlashSaleProductGet$Response$Data$Item(
  shopCode: json['shopCode'] as String,
  productCode: json['productCode'] as String,
  productName: json['productName'] as String,
  tenantCode: json['tenantCode'] as String,
  brandName: json['brandName'] as String,
  mainImg: (json['mainImg'] as List<dynamic>)
      .map(
        (e) =>
            ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  subImg: json['subImg'] as Object,
  mainVideo: (json['mainVideo'] as List<dynamic>)
      .map(
        (e) =>
            ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  imgCollection: (json['imgCollection'] as List<dynamic>)
      .map(
        (e) =>
            ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  textDetail: json['textDetail'] as String?,
  imgDetail: (json['imgDetail'] as List<dynamic>)
      .map(
        (e) =>
            ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  categoryId: (json['categoryId'] as num).toDouble(),
  productOptions: (json['productOptions'] as List<dynamic>)
      .map(
        (e) =>
            ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  productAttrs: (json['productAttrs'] as List<dynamic>)
      .map(
        (e) =>
            ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  sourcePlatform: json['sourcePlatform'] as String,
  platformUrl: json['platformUrl'] as String,
  platformProductId: json['platformProductId'] as String,
  skuCode: json['skuCode'] as String,
  sellPriceCur: json['sellPriceCur'] as String,
  sellPrice: json['sellPrice'] as String,
  targetSellPrice: json['targetSellPrice'] as String,
  targetSellCur: json['targetSellCur'] as String,
  productFlag: json['productFlag'] as String,
  marketingInfo: json['marketingInfo'] as String,
  sellQuantity: json['sellQuantity'] as String,
  tags: (json['tags'] as List<dynamic>)
      .map(
        (e) =>
            ProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
);

Map<String, dynamic>
_$ProductNoAuthFlashSaleProductGet$Response$Data$ItemToJson(
  ProductNoAuthFlashSaleProductGet$Response$Data$Item instance,
) => <String, dynamic>{
  'shopCode': instance.shopCode,
  'productCode': instance.productCode,
  'productName': instance.productName,
  'tenantCode': instance.tenantCode,
  'brandName': instance.brandName,
  'mainImg': instance.mainImg.map((e) => e.toJson()).toList(),
  'subImg': instance.subImg,
  'mainVideo': instance.mainVideo.map((e) => e.toJson()).toList(),
  'imgCollection': instance.imgCollection.map((e) => e.toJson()).toList(),
  'textDetail': instance.textDetail,
  'imgDetail': instance.imgDetail.map((e) => e.toJson()).toList(),
  'categoryId': instance.categoryId,
  'productOptions': instance.productOptions.map((e) => e.toJson()).toList(),
  'productAttrs': instance.productAttrs.map((e) => e.toJson()).toList(),
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
  'tags': instance.tags.map((e) => e.toJson()).toList(),
  'premiumBrandInfo': instance.premiumBrandInfo?.toJson(),
  'sellPoints': instance.sellPoints,
};

ProductNoAuthAlbumProductGet$Response$Data
_$ProductNoAuthAlbumProductGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthAlbumProductGet$Response$Data(
  total: (json['total'] as num?)?.toDouble(),
  pageSize: (json['pageSize'] as num?)?.toDouble(),
  totalPages: (json['totalPages'] as num?)?.toDouble(),
  current: (json['current'] as num?)?.toDouble(),
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) => ProductNoAuthAlbumProductGet$Response$Data$Records$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
);

Map<String, dynamic> _$ProductNoAuthAlbumProductGet$Response$DataToJson(
  ProductNoAuthAlbumProductGet$Response$Data instance,
) => <String, dynamic>{
  'total': instance.total,
  'pageSize': instance.pageSize,
  'totalPages': instance.totalPages,
  'current': instance.current,
  'records': instance.records?.map((e) => e.toJson()).toList(),
};

ShopNoAuthGetThirdShopGet$Response$Data
_$ShopNoAuthGetThirdShopGet$Response$DataFromJson(Map<String, dynamic> json) =>
    ShopNoAuthGetThirdShopGet$Response$Data(
      shopCode: json['shopCode'] as String,
      shopName: json['shopName'] as String,
      icon: json['icon'] as String,
      recordSource: (json['recordSource'] as num).toInt(),
      records: (json['records'] as List<dynamic>)
          .map(
            (e) =>
                ShopNoAuthGetThirdShopGet$Response$Data$Records$Item.fromJson(
                  e as Map<String, dynamic>,
                ),
          )
          .toList(),
    );

Map<String, dynamic> _$ShopNoAuthGetThirdShopGet$Response$DataToJson(
  ShopNoAuthGetThirdShopGet$Response$Data instance,
) => <String, dynamic>{
  'shopCode': instance.shopCode,
  'shopName': instance.shopName,
  'icon': instance.icon,
  'recordSource': instance.recordSource,
  'records': instance.records.map((e) => e.toJson()).toList(),
};

ProductNoAuthKolProductGet$Response$Data$Item
_$ProductNoAuthKolProductGet$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthKolProductGet$Response$Data$Item(
  shopCode: json['shopCode'] as String,
  productCode: json['productCode'] as String,
  productName: json['productName'] as String,
  tenantCode: json['tenantCode'] as String,
  brandName: json['brandName'] as String,
  mainImg: (json['mainImg'] as List<dynamic>)
      .map(
        (e) =>
            ProductNoAuthKolProductGet$Response$Data$Item$MainImg$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  subImg: json['subImg'] as Object,
  mainVideo: (json['mainVideo'] as List<dynamic>)
      .map(
        (e) =>
            ProductNoAuthKolProductGet$Response$Data$Item$MainVideo$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  imgCollection: (json['imgCollection'] as List<dynamic>)
      .map(
        (e) =>
            ProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  textDetail: json['textDetail'] as String?,
  imgDetail: (json['imgDetail'] as List<dynamic>)
      .map(
        (e) =>
            ProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  categoryId: (json['categoryId'] as num).toDouble(),
  productOptions: (json['productOptions'] as List<dynamic>)
      .map(
        (e) =>
            ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  productAttrs: (json['productAttrs'] as List<dynamic>)
      .map(
        (e) =>
            ProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  sourcePlatform: json['sourcePlatform'] as String,
  platformUrl: json['platformUrl'] as String,
  platformProductId: json['platformProductId'] as String,
  skuCode: json['skuCode'] as String,
  sellPriceCur: json['sellPriceCur'] as String,
  sellPrice: json['sellPrice'] as String,
  targetSellPrice: json['targetSellPrice'] as String,
  targetSellCur: json['targetSellCur'] as String,
  productFlag: json['productFlag'] as String,
  marketingInfo: json['marketingInfo'] as String,
  sellQuantity: json['sellQuantity'] as String,
  tags: (json['tags'] as List<dynamic>)
      .map(
        (e) => ProductNoAuthKolProductGet$Response$Data$Item$Tags$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
);

Map<String, dynamic> _$ProductNoAuthKolProductGet$Response$Data$ItemToJson(
  ProductNoAuthKolProductGet$Response$Data$Item instance,
) => <String, dynamic>{
  'shopCode': instance.shopCode,
  'productCode': instance.productCode,
  'productName': instance.productName,
  'tenantCode': instance.tenantCode,
  'brandName': instance.brandName,
  'mainImg': instance.mainImg.map((e) => e.toJson()).toList(),
  'subImg': instance.subImg,
  'mainVideo': instance.mainVideo.map((e) => e.toJson()).toList(),
  'imgCollection': instance.imgCollection.map((e) => e.toJson()).toList(),
  'textDetail': instance.textDetail,
  'imgDetail': instance.imgDetail.map((e) => e.toJson()).toList(),
  'categoryId': instance.categoryId,
  'productOptions': instance.productOptions.map((e) => e.toJson()).toList(),
  'productAttrs': instance.productAttrs.map((e) => e.toJson()).toList(),
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
  'tags': instance.tags.map((e) => e.toJson()).toList(),
  'premiumBrandInfo': instance.premiumBrandInfo?.toJson(),
  'sellPoints': instance.sellPoints,
};

ProductNoAuthPremierProductGet$Response$Data
_$ProductNoAuthPremierProductGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthPremierProductGet$Response$Data(
  total: (json['total'] as num?)?.toDouble(),
  pageSize: (json['pageSize'] as num?)?.toDouble(),
  totalPages: (json['totalPages'] as num?)?.toDouble(),
  current: (json['current'] as num?)?.toDouble(),
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductNoAuthPremierProductGet$Response$Data$Records$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic> _$ProductNoAuthPremierProductGet$Response$DataToJson(
  ProductNoAuthPremierProductGet$Response$Data instance,
) => <String, dynamic>{
  'total': instance.total,
  'pageSize': instance.pageSize,
  'totalPages': instance.totalPages,
  'current': instance.current,
  'records': instance.records?.map((e) => e.toJson()).toList(),
};

RecommendNoAuthCategoryRecommendationGet$Response$Data
_$RecommendNoAuthCategoryRecommendationGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => RecommendNoAuthCategoryRecommendationGet$Response$Data(
  timestamp: json['timestamp'] as String?,
  categories: (json['categories'] as List<dynamic>?)
      ?.map(
        (e) =>
            RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$RecommendNoAuthCategoryRecommendationGet$Response$DataToJson(
  RecommendNoAuthCategoryRecommendationGet$Response$Data instance,
) => <String, dynamic>{
  'timestamp': instance.timestamp,
  'categories': instance.categories?.map((e) => e.toJson()).toList(),
};

RecommendNoAuthCategoryPost$Response$Data
_$RecommendNoAuthCategoryPost$Response$DataFromJson(
  Map<String, dynamic> json,
) => RecommendNoAuthCategoryPost$Response$Data(
  total: json['total'] as String,
  pageSize: json['pageSize'] as String,
  totalPages: json['totalPages'] as String,
  current: json['current'] as String,
  records: (json['records'] as List<dynamic>)
      .map(
        (e) => RecommendNoAuthCategoryPost$Response$Data$Records$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
);

Map<String, dynamic> _$RecommendNoAuthCategoryPost$Response$DataToJson(
  RecommendNoAuthCategoryPost$Response$Data instance,
) => <String, dynamic>{
  'total': instance.total,
  'pageSize': instance.pageSize,
  'totalPages': instance.totalPages,
  'current': instance.current,
  'records': instance.records.map((e) => e.toJson()).toList(),
};

RecommendNoAuthShopPost$Response$Data
_$RecommendNoAuthShopPost$Response$DataFromJson(Map<String, dynamic> json) =>
    RecommendNoAuthShopPost$Response$Data(
      total: json['total'] as String,
      pageSize: json['pageSize'] as String,
      totalPages: json['totalPages'] as String,
      current: json['current'] as String,
      records: (json['records'] as List<dynamic>)
          .map(
            (e) => RecommendNoAuthShopPost$Response$Data$Records$Item.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    );

Map<String, dynamic> _$RecommendNoAuthShopPost$Response$DataToJson(
  RecommendNoAuthShopPost$Response$Data instance,
) => <String, dynamic>{
  'total': instance.total,
  'pageSize': instance.pageSize,
  'totalPages': instance.totalPages,
  'current': instance.current,
  'records': instance.records.map((e) => e.toJson()).toList(),
};

RecommendNoAuthSimilarProductPost$Response$Data
_$RecommendNoAuthSimilarProductPost$Response$DataFromJson(
  Map<String, dynamic> json,
) => RecommendNoAuthSimilarProductPost$Response$Data(
  records: (json['records'] as List<dynamic>)
      .map(
        (e) =>
            RecommendNoAuthSimilarProductPost$Response$Data$Records$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  total: json['total'] as String,
  pageSize: json['pageSize'] as String,
  totalPages: json['totalPages'] as String,
  current: json['current'] as String,
);

Map<String, dynamic> _$RecommendNoAuthSimilarProductPost$Response$DataToJson(
  RecommendNoAuthSimilarProductPost$Response$Data instance,
) => <String, dynamic>{
  'records': instance.records.map((e) => e.toJson()).toList(),
  'total': instance.total,
  'pageSize': instance.pageSize,
  'totalPages': instance.totalPages,
  'current': instance.current,
};

ProductReviewNoAuthPageGet$Response$Data$Records$Item
_$ProductReviewNoAuthPageGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => ProductReviewNoAuthPageGet$Response$Data$Records$Item(
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
_$ProductReviewNoAuthPageGet$Response$Data$Records$ItemToJson(
  ProductReviewNoAuthPageGet$Response$Data$Records$Item instance,
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

ProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$Item
_$ProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$ItemFromJson(
  Map<String, dynamic> json,
) => ProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$Item(
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
_$ProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$ItemToJson(
  ProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$Item instance,
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

CategoryNoAuthTreeGet$Response$Data$CategoryList$Item
_$CategoryNoAuthTreeGet$Response$Data$CategoryList$ItemFromJson(
  Map<String, dynamic> json,
) => CategoryNoAuthTreeGet$Response$Data$CategoryList$Item(
  id: (json['id'] as num).toDouble(),
  parentId: (json['parentId'] as num).toDouble(),
  level: (json['level'] as num).toDouble(),
  showOrder: (json['showOrder'] as num).toDouble(),
  name: json['name'] as String,
  iconUrl: json['iconUrl'] as String,
  categoryList: (json['categoryList'] as List<dynamic>)
      .map(
        (e) =>
            CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  brands:
      (json['brands'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
      [],
);

Map<String, dynamic>
_$CategoryNoAuthTreeGet$Response$Data$CategoryList$ItemToJson(
  CategoryNoAuthTreeGet$Response$Data$CategoryList$Item instance,
) => <String, dynamic>{
  'id': instance.id,
  'parentId': instance.parentId,
  'level': instance.level,
  'showOrder': instance.showOrder,
  'name': instance.name,
  'iconUrl': instance.iconUrl,
  'categoryList': instance.categoryList.map((e) => e.toJson()).toList(),
  'brands': instance.brands,
};

ActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$Item
_$ActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$ItemFromJson(
  Map<String, dynamic> json,
) => ActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$Item(
  activityCode: json['activityCode'] as String?,
  title: json['title'] as String?,
  status: json['status'] as String?,
  startTime: (json['startTime'] as num?)?.toDouble(),
  endTime: (json['endTime'] as num?)?.toDouble(),
  names:
      (json['names'] as List<dynamic>?)?.map((e) => e as Object).toList() ?? [],
);

Map<String, dynamic>
_$ActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$ItemToJson(
  ActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$Item instance,
) => <String, dynamic>{
  'activityCode': instance.activityCode,
  'title': instance.title,
  'status': instance.status,
  'startTime': instance.startTime,
  'endTime': instance.endTime,
  'names': instance.names,
};

ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item
_$ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item(
  productCode: json['productCode'] as String,
  productName: json['productName'] as String,
  image:
      ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Image.fromJson(
        json['image'] as Map<String, dynamic>,
      ),
  skuCode: json['skuCode'] as String,
  sellPriceCur: json['sellPriceCur'] as String,
  sellPrice: json['sellPrice'] as String,
  targetSellPrice: json['targetSellPrice'] as String,
  targetOriginPrice: json['targetOriginPrice'] as String,
  targetSellCur: json['targetSellCur'] as String,
  sellQuantity: json['sellQuantity'] as String,
  skuCount: (json['skuCount'] as num).toInt(),
  marketingInfo: json['marketingInfo'] as String,
  tags: (json['tags'] as List<dynamic>)
      .map(
        (e) =>
            ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  flashSale:
      ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSale.fromJson(
        json['flashSale'] as Map<String, dynamic>,
      ),
);

Map<String, dynamic>
_$ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$ItemToJson(
  ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item instance,
) => <String, dynamic>{
  'productCode': instance.productCode,
  'productName': instance.productName,
  'image': instance.image.toJson(),
  'skuCode': instance.skuCode,
  'sellPriceCur': instance.sellPriceCur,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'targetOriginPrice': instance.targetOriginPrice,
  'targetSellCur': instance.targetSellCur,
  'sellQuantity': instance.sellQuantity,
  'skuCount': instance.skuCount,
  'marketingInfo': instance.marketingInfo,
  'tags': instance.tags.map((e) => e.toJson()).toList(),
  'flashSale': instance.flashSale.toJson(),
};

ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item
_$ProductPremiumDupeNoAuthPagePost$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item(
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  image: json['image'] == null
      ? null
      : ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Image.fromJson(
          json['image'] as Map<String, dynamic>,
        ),
  sourcePlatform: json['sourcePlatform'] as String?,
  platformProductId: json['platformProductId'] as String?,
  skuCode: json['skuCode'] as String?,
  sellPriceCur: json['sellPriceCur'] as String?,
  sellPrice: (json['sellPrice'] as num?)?.toDouble(),
  targetSellPrice: (json['targetSellPrice'] as num?)?.toDouble(),
  targetOriginPrice: (json['targetOriginPrice'] as num?)?.toDouble(),
  targetSellCur: json['targetSellCur'] as String?,
  sellQuantity: json['sellQuantity'] as String?,
  skuCount: (json['skuCount'] as num?)?.toInt(),
  marketingInfo: json['marketingInfo'] as String?,
  tags: (json['tags'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  skuSourceCode: json['skuSourceCode'] as String?,
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
);

Map<String, dynamic>
_$ProductPremiumDupeNoAuthPagePost$Response$Data$Records$ItemToJson(
  ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item instance,
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

ProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$Item
_$ProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$ItemFromJson(
  Map<String, dynamic> json,
) => ProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$Item(
  categoryId: (json['categoryId'] as num?)?.toInt(),
  categoryName: json['categoryName'] as String?,
  count: (json['count'] as num?)?.toInt(),
  categoryImage: json['categoryImage'] as String?,
);

Map<String, dynamic>
_$ProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$ItemToJson(
  ProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$Item instance,
) => <String, dynamic>{
  'categoryId': instance.categoryId,
  'categoryName': instance.categoryName,
  'count': instance.count,
  'categoryImage': instance.categoryImage,
};

ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$Item
_$ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemFromJson(
  Map<String, dynamic> json,
) => ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$Item(
  sort:
      productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSortNullableFromJson(
        json['sort'],
      ),
  order:
      productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrderNullableFromJson(
        json['order'],
      ),
  label: json['label'] as String?,
);

Map<String, dynamic>
_$ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemToJson(
  ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$Item instance,
) => <String, dynamic>{
  'sort':
      productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSortNullableToJson(
        instance.sort,
      ),
  'order':
      productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrderNullableToJson(
        instance.order,
      ),
  'label': instance.label,
};

ProductPremiumDupeNoAuthMetaGet$Response$Data$Config
_$ProductPremiumDupeNoAuthMetaGet$Response$Data$ConfigFromJson(
  Map<String, dynamic> json,
) => ProductPremiumDupeNoAuthMetaGet$Response$Data$Config(
  list: (json['list'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductPremiumDupeNoAuthMetaGet$Response$Data$ConfigToJson(
  ProductPremiumDupeNoAuthMetaGet$Response$Data$Config instance,
) => <String, dynamic>{'list': instance.list?.map((e) => e.toJson()).toList()};

ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Image
_$ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$ImageFromJson(
  Map<String, dynamic> json,
) => ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Image(
  width: (json['width'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
  url: json['url'] as String?,
);

Map<String, dynamic>
_$ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$ImageToJson(
  ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Image instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$Item
_$ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) => ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$Item(
  tagCode: json['tagCode'] as String?,
  tagImg: json['tagImg'] as String?,
  order: (json['order'] as num?)?.toInt(),
  frontShow: (json['frontShow'] as num?)?.toInt(),
);

Map<String, dynamic>
_$ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$ItemToJson(
  ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$Item instance,
) => <String, dynamic>{
  'tagCode': instance.tagCode,
  'tagImg': instance.tagImg,
  'order': instance.order,
  'frontShow': instance.frontShow,
};

ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfo
_$ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) => ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfo(
  brandCode: json['brandCode'] as String?,
  brandImg: json['brandImg'] as String?,
);

Map<String, dynamic>
_$ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfoToJson(
  ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfo
  instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

ProductNoAuthPushProductGet$Response$Data$Records$Item
_$ProductNoAuthPushProductGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthPushProductGet$Response$Data$Records$Item(
  productCode: json['productCode'] as String,
  productName: json['productName'] as String,
  image: ProductNoAuthPushProductGet$Response$Data$Records$Item$Image.fromJson(
    json['image'] as Map<String, dynamic>,
  ),
  skuCode: json['skuCode'] as String,
  sellPriceCur: json['sellPriceCur'] as String,
  sellPrice: json['sellPrice'] as String,
  targetSellPrice: json['targetSellPrice'] as String,
  targetSellCur: json['targetSellCur'] as String,
  sellQuantity: json['sellQuantity'] as String,
  tags: (json['tags'] as List<dynamic>)
      .map(
        (e) =>
            ProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
  targetOriginPrice: json['targetOriginPrice'] as String,
  marketingInfo: json['marketingInfo'] as String,
);

Map<String, dynamic>
_$ProductNoAuthPushProductGet$Response$Data$Records$ItemToJson(
  ProductNoAuthPushProductGet$Response$Data$Records$Item instance,
) => <String, dynamic>{
  'productCode': instance.productCode,
  'productName': instance.productName,
  'image': instance.image.toJson(),
  'skuCode': instance.skuCode,
  'sellPriceCur': instance.sellPriceCur,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'targetSellCur': instance.targetSellCur,
  'sellQuantity': instance.sellQuantity,
  'tags': instance.tags.map((e) => e.toJson()).toList(),
  'premiumBrandInfo': instance.premiumBrandInfo?.toJson(),
  'sellPoints': instance.sellPoints,
  'targetOriginPrice': instance.targetOriginPrice,
  'marketingInfo': instance.marketingInfo,
};

ProductNoAuthSearchGet$Response$Data$Item$MainImg
_$ProductNoAuthSearchGet$Response$Data$Item$MainImgFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthSearchGet$Response$Data$Item$MainImg(
  width: (json['width'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  url: json['url'] as String,
);

Map<String, dynamic> _$ProductNoAuthSearchGet$Response$Data$Item$MainImgToJson(
  ProductNoAuthSearchGet$Response$Data$Item$MainImg instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductNoAuthSearchGet$Response$Data$Item$SubImg
_$ProductNoAuthSearchGet$Response$Data$Item$SubImgFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthSearchGet$Response$Data$Item$SubImg(
  width: (json['width'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  url: json['url'] as String,
);

Map<String, dynamic> _$ProductNoAuthSearchGet$Response$Data$Item$SubImgToJson(
  ProductNoAuthSearchGet$Response$Data$Item$SubImg instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductNoAuthSearchGet$Response$Data$Item$MainVideo
_$ProductNoAuthSearchGet$Response$Data$Item$MainVideoFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthSearchGet$Response$Data$Item$MainVideo(
  videoUrl: json['videoUrl'] as String,
);

Map<String, dynamic>
_$ProductNoAuthSearchGet$Response$Data$Item$MainVideoToJson(
  ProductNoAuthSearchGet$Response$Data$Item$MainVideo instance,
) => <String, dynamic>{'videoUrl': instance.videoUrl};

ProductNoAuthSearchGet$Response$Data$Item$ImgCollection$Item
_$ProductNoAuthSearchGet$Response$Data$Item$ImgCollection$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthSearchGet$Response$Data$Item$ImgCollection$Item(
  width: json['width'] as String,
  height: json['height'] as String,
  url: json['url'] as String,
);

Map<String, dynamic>
_$ProductNoAuthSearchGet$Response$Data$Item$ImgCollection$ItemToJson(
  ProductNoAuthSearchGet$Response$Data$Item$ImgCollection$Item instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item
_$ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item(
  name: json['name'] as String,
  enName: json['enName'] as String,
  styleType: (json['styleType'] as num).toInt(),
  type: json['type'] as String,
  optionValues: (json['optionValues'] as List<dynamic>)
      .map(
        (e) =>
            ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$ItemToJson(
  ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item instance,
) => <String, dynamic>{
  'name': instance.name,
  'enName': instance.enName,
  'styleType': instance.styleType,
  'type': instance.type,
  'optionValues': instance.optionValues.map((e) => e.toJson()).toList(),
};

ProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$Item
_$ProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$Item(
  name: json['name'] as String,
  value: json['value'] as String,
);

Map<String, dynamic>
_$ProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$ItemToJson(
  ProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$Item instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

ProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfo
_$ProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfo(
  brandCode: json['brandCode'] as String?,
  brandImg: json['brandImg'] as String?,
);

Map<String, dynamic>
_$ProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfoToJson(
  ProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfo instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

ProductNoAuthCombineSearchGet$Response$Data$Records$Item
_$ProductNoAuthCombineSearchGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthCombineSearchGet$Response$Data$Records$Item(
  shopCode: json['shopCode'] as String,
  productCode: json['productCode'] as String,
  productName: json['productName'] as String,
  tenantCode: json['tenantCode'] as String,
  brandName: json['brandName'] as String?,
  mainImg: (json['mainImg'] as List<dynamic>)
      .map(
        (e) =>
            ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  subImg: json['subImg'] as Object,
  mainVideo: (json['mainVideo'] as List<dynamic>)
      .map(
        (e) =>
            ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  imgCollection: (json['imgCollection'] as List<dynamic>)
      .map(
        (e) =>
            ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  textDetail: json['textDetail'] as Object,
  imgDetail: (json['imgDetail'] as List<dynamic>)
      .map(
        (e) =>
            ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  categoryId: (json['categoryId'] as num).toDouble(),
  productOptions: (json['productOptions'] as List<dynamic>)
      .map(
        (e) =>
            ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  productAttrs:
      (json['productAttrs'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
  sourcePlatform: json['sourcePlatform'] as String,
  platformUrl: json['platformUrl'] as String,
  platformProductId: json['platformProductId'] as String,
  skuCode: json['skuCode'] as String,
  sellPriceCur: json['sellPriceCur'] as String,
  sellPrice: json['sellPrice'] as String,
  targetSellPrice: json['targetSellPrice'] as String,
  targetSellCur: json['targetSellCur'] as String,
  sellQuantity: json['sellQuantity'] as String,
  tags: (json['tags'] as List<dynamic>)
      .map(
        (e) =>
            ProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
);

Map<String, dynamic>
_$ProductNoAuthCombineSearchGet$Response$Data$Records$ItemToJson(
  ProductNoAuthCombineSearchGet$Response$Data$Records$Item instance,
) => <String, dynamic>{
  'shopCode': instance.shopCode,
  'productCode': instance.productCode,
  'productName': instance.productName,
  'tenantCode': instance.tenantCode,
  'brandName': instance.brandName,
  'mainImg': instance.mainImg.map((e) => e.toJson()).toList(),
  'subImg': instance.subImg,
  'mainVideo': instance.mainVideo.map((e) => e.toJson()).toList(),
  'imgCollection': instance.imgCollection.map((e) => e.toJson()).toList(),
  'textDetail': instance.textDetail,
  'imgDetail': instance.imgDetail.map((e) => e.toJson()).toList(),
  'categoryId': instance.categoryId,
  'productOptions': instance.productOptions.map((e) => e.toJson()).toList(),
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
  'tags': instance.tags.map((e) => e.toJson()).toList(),
  'premiumBrandInfo': instance.premiumBrandInfo?.toJson(),
  'sellPoints': instance.sellPoints,
};

ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item
_$ProductNoAuthNewArrivalProductGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item(
  shopCode: json['shopCode'],
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  tenantCode: json['tenantCode'] as String?,
  brandName: json['brandName'],
  mainImg: (json['mainImg'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$Item.fromJson(
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
            ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  textDetail: json['textDetail'],
  imgDetail: (json['imgDetail'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  categoryId: (json['categoryId'] as num?)?.toDouble(),
  productOptions: (json['productOptions'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item.fromJson(
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
            ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
);

Map<String, dynamic>
_$ProductNoAuthNewArrivalProductGet$Response$Data$Records$ItemToJson(
  ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item instance,
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

ProductNoAuthSkuListGet$Response$Data$Item$SkuImg
_$ProductNoAuthSkuListGet$Response$Data$Item$SkuImgFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthSkuListGet$Response$Data$Item$SkuImg(
  width: (json['width'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  url: json['url'] as String,
);

Map<String, dynamic> _$ProductNoAuthSkuListGet$Response$Data$Item$SkuImgToJson(
  ProductNoAuthSkuListGet$Response$Data$Item$SkuImg instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$Item
_$ProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$Item(
  name: json['name'] as String,
  value: json['value'] as String,
);

Map<String, dynamic>
_$ProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$ItemToJson(
  ProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$Item instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

ProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfo
_$ProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfoFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfo(
  activityCode: json['activityCode'] as String,
  activityTitle: json['activityTitle'] as String,
  startTime: (json['startTime'] as num).toInt(),
  endTime: (json['endTime'] as num).toInt(),
  progressPercent: (json['progressPercent'] as num).toInt(),
  progressText: json['progressText'] as String,
  marketingIcon: json['marketingIcon'] as String,
);

Map<String, dynamic>
_$ProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfoToJson(
  ProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfo instance,
) => <String, dynamic>{
  'activityCode': instance.activityCode,
  'activityTitle': instance.activityTitle,
  'startTime': instance.startTime,
  'endTime': instance.endTime,
  'progressPercent': instance.progressPercent,
  'progressText': instance.progressText,
  'marketingIcon': instance.marketingIcon,
};

ProductNoAuthGetProductInfoGet$Response$Data$MainImg$Item
_$ProductNoAuthGetProductInfoGet$Response$Data$MainImg$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthGetProductInfoGet$Response$Data$MainImg$Item(
  width: (json['width'] as num?)?.toDouble(),
  height: (json['height'] as num?)?.toDouble(),
  url: json['url'] as String?,
);

Map<String, dynamic>
_$ProductNoAuthGetProductInfoGet$Response$Data$MainImg$ItemToJson(
  ProductNoAuthGetProductInfoGet$Response$Data$MainImg$Item instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductNoAuthGetProductInfoGet$Response$Data$MainVideo$Item
_$ProductNoAuthGetProductInfoGet$Response$Data$MainVideo$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthGetProductInfoGet$Response$Data$MainVideo$Item(
  videoUrl: json['videoUrl'] as String?,
  vodUrl: json['vodUrl'],
  previewUrl: json['previewUrl'],
  width: json['width'],
  height: json['height'],
);

Map<String, dynamic>
_$ProductNoAuthGetProductInfoGet$Response$Data$MainVideo$ItemToJson(
  ProductNoAuthGetProductInfoGet$Response$Data$MainVideo$Item instance,
) => <String, dynamic>{
  'videoUrl': instance.videoUrl,
  'vodUrl': instance.vodUrl,
  'previewUrl': instance.previewUrl,
  'width': instance.width,
  'height': instance.height,
};

ProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$Item
_$ProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$Item(
  width: (json['width'] as num).toDouble(),
  height: (json['height'] as num).toDouble(),
  url: json['url'] as String,
);

Map<String, dynamic>
_$ProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$ItemToJson(
  ProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$Item instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$Item
_$ProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$Item(
  width: (json['width'] as num).toDouble(),
  height: (json['height'] as num).toDouble(),
  url: json['url'] as String,
);

Map<String, dynamic>
_$ProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$ItemToJson(
  ProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$Item instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item
_$ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item(
  name: json['name'] as String,
  type: (json['type'] as num).toDouble(),
  optionValues: (json['optionValues'] as List<dynamic>)
      .map(
        (e) =>
            ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$ItemToJson(
  ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item instance,
) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'optionValues': instance.optionValues.map((e) => e.toJson()).toList(),
};

ProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$Item
_$ProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$Item(
  name: json['name'] as String,
  value: json['value'] as String,
);

Map<String, dynamic>
_$ProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$ItemToJson(
  ProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$Item instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item
_$ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item(
  images:
      (json['images'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
      [],
  skuOption: json['skuOption'] == null
      ? null
      : ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOption.fromJson(
          json['skuOption'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$ItemToJson(
  ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item instance,
) => <String, dynamic>{
  'images': instance.images,
  'skuOption': instance.skuOption?.toJson(),
};

ProductNoAuthGetProductInfoGet$Response$Data$Tags$Item
_$ProductNoAuthGetProductInfoGet$Response$Data$Tags$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthGetProductInfoGet$Response$Data$Tags$Item(
  tagCode: json['tagCode'] as String,
  tagName: json['tagName'] as String,
  tagImg: json['tagImg'] as String,
);

Map<String, dynamic>
_$ProductNoAuthGetProductInfoGet$Response$Data$Tags$ItemToJson(
  ProductNoAuthGetProductInfoGet$Response$Data$Tags$Item instance,
) => <String, dynamic>{
  'tagCode': instance.tagCode,
  'tagName': instance.tagName,
  'tagImg': instance.tagImg,
};

ProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfo
_$ProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfo(
  brandCode: json['brandCode'] as String?,
  brandImg: json['brandImg'] as String?,
);

Map<String, dynamic>
_$ProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfoToJson(
  ProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfo instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

ProductNoAuthGetProductInfoGet$Response$Data$Ext
_$ProductNoAuthGetProductInfoGet$Response$Data$ExtFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthGetProductInfoGet$Response$Data$Ext(
  sizeHelperOptionName: json['sizeHelperOptionName'] as String,
  sizeHelperType: (json['sizeHelperType'] as num).toInt(),
  brand: json['brand'] == null
      ? null
      : ProductNoAuthGetProductInfoGet$Response$Data$Ext$Brand.fromJson(
          json['brand'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ProductNoAuthGetProductInfoGet$Response$Data$ExtToJson(
  ProductNoAuthGetProductInfoGet$Response$Data$Ext instance,
) => <String, dynamic>{
  'sizeHelperOptionName': instance.sizeHelperOptionName,
  'sizeHelperType': instance.sizeHelperType,
  'brand': instance.brand?.toJson(),
};

ProductNoAuthGetProductInfoGet$Response$Data$FlashSale
_$ProductNoAuthGetProductInfoGet$Response$Data$FlashSaleFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthGetProductInfoGet$Response$Data$FlashSale(
  activityCode: json['activityCode'] as String,
  activityTitle: json['activityTitle'] as String,
  startTime: json['startTime'] as String,
  endTime: json['endTime'] as String,
  progressPercent: json['progressPercent'] as String,
  progressText: json['progressText'] as String,
  marketingIcon: json['marketingIcon'] as String,
  discountExpr: json['discountExpr'] as String,
);

Map<String, dynamic>
_$ProductNoAuthGetProductInfoGet$Response$Data$FlashSaleToJson(
  ProductNoAuthGetProductInfoGet$Response$Data$FlashSale instance,
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

ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item
_$ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item(
  id: (json['id'] as num).toDouble(),
  parentId: (json['parentId'] as num).toDouble(),
  level: (json['level'] as num).toDouble(),
  showOrder: (json['showOrder'] as num).toDouble(),
  name: json['name'] as String,
  iconUrl: json['iconUrl'] as String,
  categoryList: (json['categoryList'] as List<dynamic>)
      .map(
        (e) =>
            ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  brands:
      (json['brands'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
      [],
);

Map<String, dynamic>
_$ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$ItemToJson(
  ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item
  instance,
) => <String, dynamic>{
  'id': instance.id,
  'parentId': instance.parentId,
  'level': instance.level,
  'showOrder': instance.showOrder,
  'name': instance.name,
  'iconUrl': instance.iconUrl,
  'categoryList': instance.categoryList.map((e) => e.toJson()).toList(),
  'brands': instance.brands,
};

ProductNoAuthHotProductGet$Response$Data$Item$Image
_$ProductNoAuthHotProductGet$Response$Data$Item$ImageFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthHotProductGet$Response$Data$Item$Image(
  width: (json['width'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  url: json['url'] as String,
);

Map<String, dynamic>
_$ProductNoAuthHotProductGet$Response$Data$Item$ImageToJson(
  ProductNoAuthHotProductGet$Response$Data$Item$Image instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductNoAuthHotProductGet$Response$Data$Item$Tags$Item
_$ProductNoAuthHotProductGet$Response$Data$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthHotProductGet$Response$Data$Item$Tags$Item(
  tagCode: json['tagCode'] as String?,
  tagImg: json['tagImg'] as String?,
);

Map<String, dynamic>
_$ProductNoAuthHotProductGet$Response$Data$Item$Tags$ItemToJson(
  ProductNoAuthHotProductGet$Response$Data$Item$Tags$Item instance,
) => <String, dynamic>{'tagCode': instance.tagCode, 'tagImg': instance.tagImg};

ProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfo
_$ProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfo(
  brandCode: json['brandCode'] as String?,
  brandImg: json['brandImg'] as String?,
);

Map<String, dynamic>
_$ProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfoToJson(
  ProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfo instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

ProductNoAuthHotProductV2Get$Response$Data$Records$Item
_$ProductNoAuthHotProductV2Get$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthHotProductV2Get$Response$Data$Records$Item(
  productCode: json['productCode'] as String,
  productName: json['productName'] as String,
  image: ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Image.fromJson(
    json['image'] as Map<String, dynamic>,
  ),
  skuCode: json['skuCode'] as String,
  sellPriceCur: json['sellPriceCur'] as String,
  sellPrice: json['sellPrice'] as String,
  targetSellPrice: json['targetSellPrice'] as String,
  targetSellCur: json['targetSellCur'] as String,
  sellQuantity: json['sellQuantity'] as String,
  tags: (json['tags'] as List<dynamic>)
      .map(
        (e) =>
            ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
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
      : ProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSale.fromJson(
          json['flashSale'] as Map<String, dynamic>,
        ),
  targetOriginPrice: json['targetOriginPrice'] as String?,
  marketingInfo: json['marketingInfo'] as String?,
);

Map<String, dynamic>
_$ProductNoAuthHotProductV2Get$Response$Data$Records$ItemToJson(
  ProductNoAuthHotProductV2Get$Response$Data$Records$Item instance,
) => <String, dynamic>{
  'productCode': instance.productCode,
  'productName': instance.productName,
  'image': instance.image.toJson(),
  'skuCode': instance.skuCode,
  'sellPriceCur': instance.sellPriceCur,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'targetSellCur': instance.targetSellCur,
  'sellQuantity': instance.sellQuantity,
  'tags': instance.tags.map((e) => e.toJson()).toList(),
  'premiumBrandInfo': instance.premiumBrandInfo?.toJson(),
  'sellPoints': instance.sellPoints,
  'rate': instance.rate,
  'flashSale': instance.flashSale?.toJson(),
  'targetOriginPrice': instance.targetOriginPrice,
  'marketingInfo': instance.marketingInfo,
};

ProductNoAuthHotProductV3Get$Response$Data$Records$Item
_$ProductNoAuthHotProductV3Get$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthHotProductV3Get$Response$Data$Records$Item(
  productCode: json['productCode'] as String,
  productName: json['productName'] as String,
  image: ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Image.fromJson(
    json['image'] as Map<String, dynamic>,
  ),
  sourcePlatform: json['sourcePlatform'] as String,
  platformProductId: json['platformProductId'] as String,
  skuCode: json['skuCode'] as String,
  sellPriceCur: json['sellPriceCur'] as String,
  sellPrice: json['sellPrice'] as String,
  targetSellPrice: json['targetSellPrice'] as String,
  targetOriginPrice: json['targetOriginPrice'] as String,
  targetSellCur: json['targetSellCur'] as String,
  sellQuantity: json['sellQuantity'] as String,
  skuCount: (json['skuCount'] as num).toDouble(),
  marketingInfo: json['marketingInfo'] as String,
  tags: (json['tags'] as List<dynamic>)
      .map(
        (e) =>
            ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
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
      : ProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSale.fromJson(
          json['flashSale'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$ProductNoAuthHotProductV3Get$Response$Data$Records$ItemToJson(
  ProductNoAuthHotProductV3Get$Response$Data$Records$Item instance,
) => <String, dynamic>{
  'productCode': instance.productCode,
  'productName': instance.productName,
  'image': instance.image.toJson(),
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
  'tags': instance.tags.map((e) => e.toJson()).toList(),
  'premiumBrandInfo': instance.premiumBrandInfo?.toJson(),
  'sellPoints': instance.sellPoints,
  'rate': instance.rate,
  'flashSale': instance.flashSale?.toJson(),
};

ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$Item
_$ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$Item(
  width: (json['width'] as num).toDouble(),
  height: (json['height'] as num).toDouble(),
  url: json['url'] as String,
);

Map<String, dynamic>
_$ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$ItemToJson(
  ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$Item instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$Item
_$ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$Item(
  videoUrl: json['videoUrl'] as String,
  vodUrl: json['vodUrl'] as String,
  previewUrl: json['previewUrl'] as String,
  width: (json['width'] as num).toDouble(),
  height: (json['height'] as num).toDouble(),
);

Map<String, dynamic>
_$ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$ItemToJson(
  ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$Item instance,
) => <String, dynamic>{
  'videoUrl': instance.videoUrl,
  'vodUrl': instance.vodUrl,
  'previewUrl': instance.previewUrl,
  'width': instance.width,
  'height': instance.height,
};

ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$Item
_$ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$Item(
  width: (json['width'] as num).toDouble(),
  height: (json['height'] as num).toDouble(),
  url: json['url'] as String,
);

Map<String, dynamic>
_$ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$ItemToJson(
  ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$Item
_$ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$Item(
  width: (json['width'] as num).toDouble(),
  height: (json['height'] as num).toDouble(),
  url: json['url'] as String,
);

Map<String, dynamic>
_$ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$ItemToJson(
  ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$Item instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item
_$ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item(
  name: json['name'] as String,
  type: (json['type'] as num).toDouble(),
  optionValues: (json['optionValues'] as List<dynamic>)
      .map(
        (e) =>
            ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$ItemToJson(
  ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item
  instance,
) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'optionValues': instance.optionValues.map((e) => e.toJson()).toList(),
};

ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$Item
_$ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$Item(
  name: json['name'] as String,
  value: json['value'] as String,
);

Map<String, dynamic>
_$ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$ItemToJson(
  ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$Item
  instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

ProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$Item
_$ProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$Item(
  tagCode: json['tagCode'] as String?,
  tagImg: json['tagImg'] as String?,
);

Map<String, dynamic>
_$ProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$ItemToJson(
  ProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$Item instance,
) => <String, dynamic>{'tagCode': instance.tagCode, 'tagImg': instance.tagImg};

ProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfo
_$ProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfo(
  brandCode: json['brandCode'] as String?,
  brandImg: json['brandImg'] as String?,
);

Map<String, dynamic>
_$ProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfoToJson(
  ProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfo instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

ProductNoAuthAlbumProductGet$Response$Data$Records$Item
_$ProductNoAuthAlbumProductGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthAlbumProductGet$Response$Data$Records$Item(
  shopCode: json['shopCode'],
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  tenantCode: json['tenantCode'] as String?,
  brandName: json['brandName'],
  mainImg: (json['mainImg'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$Item.fromJson(
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
            ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  textDetail: json['textDetail'],
  imgDetail: (json['imgDetail'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  categoryId: (json['categoryId'] as num?)?.toDouble(),
  productOptions: (json['productOptions'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item.fromJson(
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
            ProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
);

Map<String, dynamic>
_$ProductNoAuthAlbumProductGet$Response$Data$Records$ItemToJson(
  ProductNoAuthAlbumProductGet$Response$Data$Records$Item instance,
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

ShopNoAuthGetThirdShopGet$Response$Data$Records$Item
_$ShopNoAuthGetThirdShopGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => ShopNoAuthGetThirdShopGet$Response$Data$Records$Item(
  productCode: json['productCode'] as String,
  productName: json['productName'] as String,
  image: ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$Image.fromJson(
    json['image'] as Map<String, dynamic>,
  ),
  skuCode: json['skuCode'] as String,
  sellPriceCur: json['sellPriceCur'] as String,
  sellPrice: json['sellPrice'] as String,
  targetSellPrice: json['targetSellPrice'] as String,
  targetSellCur: json['targetSellCur'] as String,
  sellQuantity: json['sellQuantity'] as String,
  marketingInfo: json['marketingInfo'] as String,
  targetOriginPrice: json['targetOriginPrice'] as String,
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
);

Map<String, dynamic>
_$ShopNoAuthGetThirdShopGet$Response$Data$Records$ItemToJson(
  ShopNoAuthGetThirdShopGet$Response$Data$Records$Item instance,
) => <String, dynamic>{
  'productCode': instance.productCode,
  'productName': instance.productName,
  'image': instance.image.toJson(),
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

ProductNoAuthKolProductGet$Response$Data$Item$MainImg$Item
_$ProductNoAuthKolProductGet$Response$Data$Item$MainImg$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthKolProductGet$Response$Data$Item$MainImg$Item(
  width: (json['width'] as num).toDouble(),
  height: (json['height'] as num).toDouble(),
  url: json['url'] as String,
);

Map<String, dynamic>
_$ProductNoAuthKolProductGet$Response$Data$Item$MainImg$ItemToJson(
  ProductNoAuthKolProductGet$Response$Data$Item$MainImg$Item instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductNoAuthKolProductGet$Response$Data$Item$MainVideo$Item
_$ProductNoAuthKolProductGet$Response$Data$Item$MainVideo$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthKolProductGet$Response$Data$Item$MainVideo$Item(
  videoUrl: json['videoUrl'] as String,
  vodUrl: json['vodUrl'] as String,
  previewUrl: json['previewUrl'] as String,
  width: (json['width'] as num).toDouble(),
  height: (json['height'] as num).toDouble(),
);

Map<String, dynamic>
_$ProductNoAuthKolProductGet$Response$Data$Item$MainVideo$ItemToJson(
  ProductNoAuthKolProductGet$Response$Data$Item$MainVideo$Item instance,
) => <String, dynamic>{
  'videoUrl': instance.videoUrl,
  'vodUrl': instance.vodUrl,
  'previewUrl': instance.previewUrl,
  'width': instance.width,
  'height': instance.height,
};

ProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$Item
_$ProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$Item(
  width: (json['width'] as num).toDouble(),
  height: (json['height'] as num).toDouble(),
  url: json['url'] as String,
);

Map<String, dynamic>
_$ProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$ItemToJson(
  ProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$Item instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$Item
_$ProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$Item(
  width: (json['width'] as num).toDouble(),
  height: (json['height'] as num).toDouble(),
  url: json['url'] as String,
);

Map<String, dynamic>
_$ProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$ItemToJson(
  ProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$Item instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item
_$ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item(
  name: json['name'] as String,
  type: (json['type'] as num).toDouble(),
  optionValues: (json['optionValues'] as List<dynamic>)
      .map(
        (e) =>
            ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$ItemToJson(
  ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item instance,
) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'optionValues': instance.optionValues.map((e) => e.toJson()).toList(),
};

ProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$Item
_$ProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$Item(
  name: json['name'] as String,
  value: json['value'] as String,
);

Map<String, dynamic>
_$ProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$ItemToJson(
  ProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$Item instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

ProductNoAuthKolProductGet$Response$Data$Item$Tags$Item
_$ProductNoAuthKolProductGet$Response$Data$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthKolProductGet$Response$Data$Item$Tags$Item(
  tagCode: json['tagCode'] as String?,
  tagImg: json['tagImg'] as String?,
);

Map<String, dynamic>
_$ProductNoAuthKolProductGet$Response$Data$Item$Tags$ItemToJson(
  ProductNoAuthKolProductGet$Response$Data$Item$Tags$Item instance,
) => <String, dynamic>{'tagCode': instance.tagCode, 'tagImg': instance.tagImg};

ProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfo
_$ProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfo(
  brandCode: json['brandCode'] as String?,
  brandImg: json['brandImg'] as String?,
);

Map<String, dynamic>
_$ProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfoToJson(
  ProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfo instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

ProductNoAuthPremierProductGet$Response$Data$Records$Item
_$ProductNoAuthPremierProductGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthPremierProductGet$Response$Data$Records$Item(
  shopCode: json['shopCode'],
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  tenantCode: json['tenantCode'] as String?,
  brandName: json['brandName'],
  mainImg: (json['mainImg'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$Item.fromJson(
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
            ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  textDetail: json['textDetail'],
  imgDetail: (json['imgDetail'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  categoryId: (json['categoryId'] as num?)?.toDouble(),
  productOptions: (json['productOptions'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item.fromJson(
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
            ProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : ProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
);

Map<String, dynamic>
_$ProductNoAuthPremierProductGet$Response$Data$Records$ItemToJson(
  ProductNoAuthPremierProductGet$Response$Data$Records$Item instance,
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

RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item
_$RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$ItemFromJson(
  Map<String, dynamic> json,
) => RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item(
  categoryName: json['categoryName'] as String,
  productInfos: (json['productInfos'] as List<dynamic>)
      .map(
        (e) =>
            RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  recommendationReason: json['recommendationReason'] as String,
);

Map<String, dynamic>
_$RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$ItemToJson(
  RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item
  instance,
) => <String, dynamic>{
  'categoryName': instance.categoryName,
  'productInfos': instance.productInfos.map((e) => e.toJson()).toList(),
  'recommendationReason': instance.recommendationReason,
};

RecommendNoAuthCategoryPost$Response$Data$Records$Item
_$RecommendNoAuthCategoryPost$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => RecommendNoAuthCategoryPost$Response$Data$Records$Item(
  productCode: json['productCode'] as String,
  productName: json['productName'] as String,
  image: RecommendNoAuthCategoryPost$Response$Data$Records$Item$Image.fromJson(
    json['image'] as Map<String, dynamic>,
  ),
  skuCode: json['skuCode'] as String,
  sellPriceCur: json['sellPriceCur'] as String,
  sellPrice: json['sellPrice'] as String,
  targetSellPrice: json['targetSellPrice'] as String,
  targetSellCur: json['targetSellCur'] as String,
  sellQuantity: json['sellQuantity'] as String,
  skuCount: (json['skuCount'] as num).toInt(),
  tags: (json['tags'] as List<dynamic>)
      .map(
        (e) =>
            RecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : RecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
);

Map<String, dynamic>
_$RecommendNoAuthCategoryPost$Response$Data$Records$ItemToJson(
  RecommendNoAuthCategoryPost$Response$Data$Records$Item instance,
) => <String, dynamic>{
  'productCode': instance.productCode,
  'productName': instance.productName,
  'image': instance.image.toJson(),
  'skuCode': instance.skuCode,
  'sellPriceCur': instance.sellPriceCur,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'targetSellCur': instance.targetSellCur,
  'sellQuantity': instance.sellQuantity,
  'skuCount': instance.skuCount,
  'tags': instance.tags.map((e) => e.toJson()).toList(),
  'premiumBrandInfo': instance.premiumBrandInfo?.toJson(),
  'sellPoints': instance.sellPoints,
};

RecommendNoAuthShopPost$Response$Data$Records$Item
_$RecommendNoAuthShopPost$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => RecommendNoAuthShopPost$Response$Data$Records$Item(
  productCode: json['productCode'] as String,
  productName: json['productName'] as String,
  image: RecommendNoAuthShopPost$Response$Data$Records$Item$Image.fromJson(
    json['image'] as Map<String, dynamic>,
  ),
  skuCode: json['skuCode'] as String,
  sellPriceCur: json['sellPriceCur'] as String,
  sellPrice: json['sellPrice'] as String,
  targetSellPrice: json['targetSellPrice'] as String,
  targetSellCur: json['targetSellCur'] as String,
  sellQuantity: json['sellQuantity'] as String,
  skuCount: (json['skuCount'] as num).toInt(),
  marketingInfo: json['marketingInfo'] as String,
  targetOriginPrice: json['targetOriginPrice'] as String,
  tags: (json['tags'] as List<dynamic>)
      .map(
        (e) =>
            RecommendNoAuthShopPost$Response$Data$Records$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : RecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
);

Map<String, dynamic> _$RecommendNoAuthShopPost$Response$Data$Records$ItemToJson(
  RecommendNoAuthShopPost$Response$Data$Records$Item instance,
) => <String, dynamic>{
  'productCode': instance.productCode,
  'productName': instance.productName,
  'image': instance.image.toJson(),
  'skuCode': instance.skuCode,
  'sellPriceCur': instance.sellPriceCur,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'targetSellCur': instance.targetSellCur,
  'sellQuantity': instance.sellQuantity,
  'skuCount': instance.skuCount,
  'marketingInfo': instance.marketingInfo,
  'targetOriginPrice': instance.targetOriginPrice,
  'tags': instance.tags.map((e) => e.toJson()).toList(),
  'premiumBrandInfo': instance.premiumBrandInfo?.toJson(),
  'sellPoints': instance.sellPoints,
};

RecommendNoAuthSimilarProductPost$Response$Data$Records$Item
_$RecommendNoAuthSimilarProductPost$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => RecommendNoAuthSimilarProductPost$Response$Data$Records$Item(
  productCode: json['productCode'] as String,
  productName: json['productName'] as String,
  image:
      RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Image.fromJson(
        json['image'] as Map<String, dynamic>,
      ),
  skuCode: json['skuCode'] as String,
  sellPriceCur: json['sellPriceCur'] as String,
  sellPrice: json['sellPrice'] as String,
  targetSellPrice: json['targetSellPrice'] as String,
  targetSellCur: json['targetSellCur'] as String,
  sellQuantity: json['sellQuantity'] as String,
  skuCount: (json['skuCount'] as num).toInt(),
  marketingInfo: json['marketingInfo'] as String,
  targetOriginPrice: json['targetOriginPrice'] as String,
  tags: (json['tags'] as List<dynamic>)
      .map(
        (e) =>
            RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
  sellPoints:
      (json['sellPoints'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
);

Map<String, dynamic>
_$RecommendNoAuthSimilarProductPost$Response$Data$Records$ItemToJson(
  RecommendNoAuthSimilarProductPost$Response$Data$Records$Item instance,
) => <String, dynamic>{
  'productCode': instance.productCode,
  'productName': instance.productName,
  'image': instance.image.toJson(),
  'skuCode': instance.skuCode,
  'sellPriceCur': instance.sellPriceCur,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'targetSellCur': instance.targetSellCur,
  'sellQuantity': instance.sellQuantity,
  'skuCount': instance.skuCount,
  'marketingInfo': instance.marketingInfo,
  'targetOriginPrice': instance.targetOriginPrice,
  'tags': instance.tags.map((e) => e.toJson()).toList(),
  'premiumBrandInfo': instance.premiumBrandInfo?.toJson(),
  'sellPoints': instance.sellPoints,
};

CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item
_$CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$ItemFromJson(
  Map<String, dynamic> json,
) => CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item(
  id: (json['id'] as num).toDouble(),
  parentId: (json['parentId'] as num).toDouble(),
  level: (json['level'] as num).toDouble(),
  showOrder: (json['showOrder'] as num).toDouble(),
  name: json['name'] as String,
  iconUrl: json['iconUrl'] as String,
  categoryList: (json['categoryList'] as List<dynamic>)
      .map(
        (e) =>
            CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  brands:
      (json['brands'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
      [],
);

Map<String, dynamic>
_$CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$ItemToJson(
  CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item
  instance,
) => <String, dynamic>{
  'id': instance.id,
  'parentId': instance.parentId,
  'level': instance.level,
  'showOrder': instance.showOrder,
  'name': instance.name,
  'iconUrl': instance.iconUrl,
  'categoryList': instance.categoryList.map((e) => e.toJson()).toList(),
  'brands': instance.brands,
};

ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Image
_$ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$ImageFromJson(
  Map<String, dynamic> json,
) => ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Image(
  width: (json['width'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  url: json['url'] as String,
);

Map<String, dynamic>
_$ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$ImageToJson(
  ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Image
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$Item
_$ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$Item(
      tagCode: json['tagCode'] as String,
      tagImg: json['tagImg'] as String,
      order: (json['order'] as num).toInt(),
      frontShow: (json['frontShow'] as num).toInt(),
    );

Map<String, dynamic>
_$ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$ItemToJson(
  ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$Item
  instance,
) => <String, dynamic>{
  'tagCode': instance.tagCode,
  'tagImg': instance.tagImg,
  'order': instance.order,
  'frontShow': instance.frontShow,
};

ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSale
_$ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSaleFromJson(
  Map<String, dynamic> json,
) =>
    ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSale(
      activityCode: json['activityCode'] as String?,
      activityTitle: json['activityTitle'] as String?,
      startTime: (json['startTime'] as num?)?.toInt(),
      endTime: (json['endTime'] as num?)?.toInt(),
      progressPercent: (json['progressPercent'] as num?)?.toInt(),
      progressText: json['progressText'] as String?,
      marketingIcon: json['marketingIcon'] as String?,
    );

Map<String, dynamic>
_$ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSaleToJson(
  ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSale
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

ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Image
_$ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$ImageFromJson(
  Map<String, dynamic> json,
) => ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Image(
  width: (json['width'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
  url: json['url'] as String?,
);

Map<String, dynamic>
_$ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$ImageToJson(
  ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Image instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$Item
_$ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) => ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$Item(
  tagCode: json['tagCode'] as String?,
  tagImg: json['tagImg'] as String?,
  order: (json['order'] as num?)?.toInt(),
  frontShow: (json['frontShow'] as num?)?.toInt(),
);

Map<String, dynamic>
_$ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$ItemToJson(
  ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$Item
  instance,
) => <String, dynamic>{
  'tagCode': instance.tagCode,
  'tagImg': instance.tagImg,
  'order': instance.order,
  'frontShow': instance.frontShow,
};

ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfo
_$ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) =>
    ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: json['brandCode'] as String?,
      brandImg: json['brandImg'] as String?,
    );

Map<String, dynamic>
_$ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfoToJson(
  ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfo
  instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

ProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$Item
_$ProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$ItemFromJson(
  Map<String, dynamic> json,
) => ProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$Item(
  img: json['img'] as String?,
  tabNormalColor: json['tabNormalColor'] as String?,
  tabSelectedColor: json['tabSelectedColor'] as String?,
  tabsBackgroundColor: json['tabsBackgroundColor'] as String?,
);

Map<String, dynamic>
_$ProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$ItemToJson(
  ProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$Item instance,
) => <String, dynamic>{
  'img': instance.img,
  'tabNormalColor': instance.tabNormalColor,
  'tabSelectedColor': instance.tabSelectedColor,
  'tabsBackgroundColor': instance.tabsBackgroundColor,
};

ProductNoAuthPushProductGet$Response$Data$Records$Item$Image
_$ProductNoAuthPushProductGet$Response$Data$Records$Item$ImageFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthPushProductGet$Response$Data$Records$Item$Image(
  width: (json['width'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  url: json['url'] as String,
);

Map<String, dynamic>
_$ProductNoAuthPushProductGet$Response$Data$Records$Item$ImageToJson(
  ProductNoAuthPushProductGet$Response$Data$Records$Item$Image instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$Item
_$ProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$Item(
  tagCode: json['tagCode'] as String?,
  tagImg: json['tagImg'] as String?,
);

Map<String, dynamic>
_$ProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$ItemToJson(
  ProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$Item instance,
) => <String, dynamic>{'tagCode': instance.tagCode, 'tagImg': instance.tagImg};

ProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfo
_$ProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfo(
  brandCode: json['brandCode'] as String?,
  brandImg: json['brandImg'] as String?,
);

Map<String, dynamic>
_$ProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfoToJson(
  ProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfo
  instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
_$ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item(
      value: json['value'] as String,
      enValue: json['enValue'] as String,
      image: json['image'] as String,
      imageWidth: (json['imageWidth'] as num).toInt(),
      imageHeight: (json['imageHeight'] as num).toInt(),
    );

Map<String, dynamic>
_$ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemToJson(
  ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
  instance,
) => <String, dynamic>{
  'value': instance.value,
  'enValue': instance.enValue,
  'image': instance.image,
  'imageWidth': instance.imageWidth,
  'imageHeight': instance.imageHeight,
};

ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$Item
_$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$Item(
  width: (json['width'] as num).toDouble(),
  height: (json['height'] as num).toDouble(),
  url: json['url'] as String,
);

Map<String, dynamic>
_$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$ItemToJson(
  ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$Item
_$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$Item(
  videoUrl: json['videoUrl'] as String?,
  vodUrl: json['vodUrl'],
  previewUrl: json['previewUrl'],
  width: json['width'],
  height: json['height'],
);

Map<String, dynamic>
_$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$ItemToJson(
  ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$Item
  instance,
) => <String, dynamic>{
  'videoUrl': instance.videoUrl,
  'vodUrl': instance.vodUrl,
  'previewUrl': instance.previewUrl,
  'width': instance.width,
  'height': instance.height,
};

ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$Item
_$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$Item(
      width: (json['width'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      url: json['url'] as String,
    );

Map<String, dynamic>
_$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$ItemToJson(
  ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$Item
_$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$Item(
  width: (json['width'] as num).toDouble(),
  height: (json['height'] as num).toDouble(),
  url: json['url'] as String,
);

Map<String, dynamic>
_$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$ItemToJson(
  ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item
_$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item(
  name: json['name'] as String,
  type: (json['type'] as num).toDouble(),
  optionValues: (json['optionValues'] as List<dynamic>)
      .map(
        (e) =>
            ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$ItemToJson(
  ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item
  instance,
) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'optionValues': instance.optionValues.map((e) => e.toJson()).toList(),
};

ProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$Item
_$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$Item(
  tagCode: json['tagCode'] as String?,
  tagImg: json['tagImg'] as String?,
);

Map<String, dynamic>
_$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$ItemToJson(
  ProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$Item instance,
) => <String, dynamic>{'tagCode': instance.tagCode, 'tagImg': instance.tagImg};

ProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfo
_$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfo(
  brandCode: json['brandCode'] as String?,
  brandImg: json['brandImg'] as String?,
);

Map<String, dynamic>
_$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfoToJson(
  ProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfo
  instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$Item
_$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$Item(
  width: (json['width'] as num?)?.toDouble(),
  height: (json['height'] as num?)?.toDouble(),
  url: json['url'] as String?,
);

Map<String, dynamic>
_$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$ItemToJson(
  ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$Item
_$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$Item(
      width: (json['width'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      url: json['url'] as String,
    );

Map<String, dynamic>
_$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$ItemToJson(
  ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$Item
_$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$Item(
      width: (json['width'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      url: json['url'] as String,
    );

Map<String, dynamic>
_$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$ItemToJson(
  ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item
_$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item(
  name: json['name'] as String?,
  type: (json['type'] as num?)?.toDouble(),
  optionValues: (json['optionValues'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$ItemToJson(
  ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item
  instance,
) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'optionValues': instance.optionValues?.map((e) => e.toJson()).toList(),
};

ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$Item
_$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$Item(
  tagCode: json['tagCode'] as String?,
  tagImg: json['tagImg'] as String?,
);

Map<String, dynamic>
_$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$ItemToJson(
  ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$Item
  instance,
) => <String, dynamic>{'tagCode': instance.tagCode, 'tagImg': instance.tagImg};

ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfo
_$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) =>
    ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: json['brandCode'] as String?,
      brandImg: json['brandImg'] as String?,
    );

Map<String, dynamic>
_$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfoToJson(
  ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfo
  instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$Item
_$ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$Item(
      value: json['value'] as String,
      image: json['image'] as String?,
      imageWidth: json['imageWidth'] as Object,
      imageHeight: json['imageHeight'] as Object,
    );

Map<String, dynamic>
_$ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$ItemToJson(
  ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$Item
  instance,
) => <String, dynamic>{
  'value': instance.value,
  'image': instance.image,
  'imageWidth': instance.imageWidth,
  'imageHeight': instance.imageHeight,
};

ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOption
_$ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOptionFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOption(
  name: json['name'] as String?,
  value: json['value'] as String?,
);

Map<String, dynamic>
_$ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOptionToJson(
  ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOption
  instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

ProductNoAuthGetProductInfoGet$Response$Data$Ext$Brand
_$ProductNoAuthGetProductInfoGet$Response$Data$Ext$BrandFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthGetProductInfoGet$Response$Data$Ext$Brand(
  brandTitle: json['brandTitle'] as String,
  brandName: json['brandName'] as String,
  background: json['background'] as String,
  qualityAssured: json['qualityAssured'] as String,
  qualityAssuredUrl: json['qualityAssuredUrl'] as String,
  deliverAssured: json['deliverAssured'] as String,
);

Map<String, dynamic>
_$ProductNoAuthGetProductInfoGet$Response$Data$Ext$BrandToJson(
  ProductNoAuthGetProductInfoGet$Response$Data$Ext$Brand instance,
) => <String, dynamic>{
  'brandTitle': instance.brandTitle,
  'brandName': instance.brandName,
  'background': instance.background,
  'qualityAssured': instance.qualityAssured,
  'qualityAssuredUrl': instance.qualityAssuredUrl,
  'deliverAssured': instance.deliverAssured,
};

ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$Item
_$ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$Item(
      id: (json['id'] as num).toDouble(),
      parentId: (json['parentId'] as num).toDouble(),
      level: (json['level'] as num).toDouble(),
      showOrder: (json['showOrder'] as num).toDouble(),
      name: json['name'] as String,
      iconUrl: json['iconUrl'] as String,
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
_$ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$ItemToJson(
  ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$Item
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

ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Image
_$ProductNoAuthHotProductV2Get$Response$Data$Records$Item$ImageFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Image(
  width: (json['width'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  url: json['url'] as String,
);

Map<String, dynamic>
_$ProductNoAuthHotProductV2Get$Response$Data$Records$Item$ImageToJson(
  ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Image instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$Item
_$ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$Item(
  tagCode: json['tagCode'] as String?,
  tagImg: json['tagImg'] as String?,
);

Map<String, dynamic>
_$ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$ItemToJson(
  ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$Item instance,
) => <String, dynamic>{'tagCode': instance.tagCode, 'tagImg': instance.tagImg};

ProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfo
_$ProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfo(
  brandCode: json['brandCode'] as String?,
  brandImg: json['brandImg'] as String?,
);

Map<String, dynamic>
_$ProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfoToJson(
  ProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfo
  instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

ProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSale
_$ProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSaleFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSale(
  activityCode: json['activityCode'] as String,
  activityTitle: json['activityTitle'] as String,
  startTime: (json['startTime'] as num).toInt(),
  endTime: (json['endTime'] as num).toInt(),
  progressPercent: (json['progressPercent'] as num).toInt(),
  progressText: json['progressText'] as String,
  marketingIcon: json['marketingIcon'] as String,
  discountExpr: json['discountExpr'] as String,
);

Map<String, dynamic>
_$ProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSaleToJson(
  ProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSale instance,
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

ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Image
_$ProductNoAuthHotProductV3Get$Response$Data$Records$Item$ImageFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Image(
  width: (json['width'] as num?)?.toDouble(),
  height: (json['height'] as num?)?.toDouble(),
  url: json['url'] as String?,
);

Map<String, dynamic>
_$ProductNoAuthHotProductV3Get$Response$Data$Records$Item$ImageToJson(
  ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Image instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$Item
_$ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$Item(
  tagCode: json['tagCode'] as String,
  tagImg: json['tagImg'] as String,
  order: (json['order'] as num).toDouble(),
  frontShow: (json['frontShow'] as num).toDouble(),
);

Map<String, dynamic>
_$ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$ItemToJson(
  ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$Item instance,
) => <String, dynamic>{
  'tagCode': instance.tagCode,
  'tagImg': instance.tagImg,
  'order': instance.order,
  'frontShow': instance.frontShow,
};

ProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfo
_$ProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfo(
  brandCode: json['brandCode'] as String?,
  brandImg: json['brandImg'] as String?,
);

Map<String, dynamic>
_$ProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfoToJson(
  ProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfo
  instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

ProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSale
_$ProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSaleFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSale(
  activityCode: json['activityCode'] as String,
  activityTitle: json['activityTitle'] as String,
  startTime: (json['startTime'] as num).toInt(),
  endTime: (json['endTime'] as num).toInt(),
  progressPercent: (json['progressPercent'] as num).toInt(),
  progressText: json['progressText'] as String,
  marketingIcon: json['marketingIcon'] as String,
);

Map<String, dynamic>
_$ProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSaleToJson(
  ProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSale instance,
) => <String, dynamic>{
  'activityCode': instance.activityCode,
  'activityTitle': instance.activityTitle,
  'startTime': instance.startTime,
  'endTime': instance.endTime,
  'progressPercent': instance.progressPercent,
  'progressText': instance.progressText,
  'marketingIcon': instance.marketingIcon,
};

ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
_$ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item(
      value: json['value'] as String,
      image: json['image'] as String?,
      imageWidth: (json['imageWidth'] as num?)?.toDouble(),
      imageHeight: (json['imageHeight'] as num?)?.toDouble(),
    );

Map<String, dynamic>
_$ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemToJson(
  ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
  instance,
) => <String, dynamic>{
  'value': instance.value,
  'image': instance.image,
  'imageWidth': instance.imageWidth,
  'imageHeight': instance.imageHeight,
};

ProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$Item
_$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$Item(
  width: (json['width'] as num?)?.toDouble(),
  height: (json['height'] as num?)?.toDouble(),
  url: json['url'] as String?,
);

Map<String, dynamic>
_$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$ItemToJson(
  ProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$Item instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$Item
_$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$Item(
  width: (json['width'] as num).toDouble(),
  height: (json['height'] as num).toDouble(),
  url: json['url'] as String,
);

Map<String, dynamic>
_$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$ItemToJson(
  ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$Item
_$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$Item(
  width: (json['width'] as num).toDouble(),
  height: (json['height'] as num).toDouble(),
  url: json['url'] as String,
);

Map<String, dynamic>
_$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$ItemToJson(
  ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item
_$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item(
  name: json['name'] as String?,
  type: (json['type'] as num?)?.toDouble(),
  optionValues: (json['optionValues'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$ItemToJson(
  ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item
  instance,
) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'optionValues': instance.optionValues?.map((e) => e.toJson()).toList(),
};

ProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$Item
_$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$Item(
  tagCode: json['tagCode'] as String?,
  tagImg: json['tagImg'] as String?,
);

Map<String, dynamic>
_$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$ItemToJson(
  ProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$Item instance,
) => <String, dynamic>{'tagCode': instance.tagCode, 'tagImg': instance.tagImg};

ProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfo
_$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfo(
  brandCode: json['brandCode'] as String?,
  brandImg: json['brandImg'] as String?,
);

Map<String, dynamic>
_$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfoToJson(
  ProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfo
  instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$Image
_$ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$ImageFromJson(
  Map<String, dynamic> json,
) => ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$Image(
  width: (json['width'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  url: json['url'] as String,
);

Map<String, dynamic>
_$ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$ImageToJson(
  ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$Image instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfo
_$ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) => ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfo(
  brandCode: json['brandCode'] as String?,
  brandImg: json['brandImg'] as String?,
);

Map<String, dynamic>
_$ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfoToJson(
  ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfo
  instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
_$ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item(
      value: json['value'] as String,
      image: json['image'] as String?,
      imageWidth: (json['imageWidth'] as num?)?.toDouble(),
      imageHeight: (json['imageHeight'] as num?)?.toDouble(),
    );

Map<String, dynamic>
_$ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemToJson(
  ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
  instance,
) => <String, dynamic>{
  'value': instance.value,
  'image': instance.image,
  'imageWidth': instance.imageWidth,
  'imageHeight': instance.imageHeight,
};

ProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$Item
_$ProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$Item(
  width: (json['width'] as num?)?.toDouble(),
  height: (json['height'] as num?)?.toDouble(),
  url: json['url'] as String?,
);

Map<String, dynamic>
_$ProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$ItemToJson(
  ProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$Item
_$ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$Item(
      width: (json['width'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      url: json['url'] as String,
    );

Map<String, dynamic>
_$ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$ItemToJson(
  ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$Item
_$ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$Item(
  width: (json['width'] as num).toDouble(),
  height: (json['height'] as num).toDouble(),
  url: json['url'] as String,
);

Map<String, dynamic>
_$ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$ItemToJson(
  ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item
_$ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item(
  name: json['name'] as String?,
  type: (json['type'] as num?)?.toDouble(),
  optionValues: (json['optionValues'] as List<dynamic>?)
      ?.map(
        (e) =>
            ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$ItemToJson(
  ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item
  instance,
) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'optionValues': instance.optionValues?.map((e) => e.toJson()).toList(),
};

ProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$Item
_$ProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$Item(
  tagCode: json['tagCode'] as String?,
  tagImg: json['tagImg'] as String?,
);

Map<String, dynamic>
_$ProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$ItemToJson(
  ProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$Item instance,
) => <String, dynamic>{'tagCode': instance.tagCode, 'tagImg': instance.tagImg};

ProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfo
_$ProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) => ProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfo(
  brandCode: json['brandCode'] as String?,
  brandImg: json['brandImg'] as String?,
);

Map<String, dynamic>
_$ProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfoToJson(
  ProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfo
  instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item
_$RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$ItemFromJson(
  Map<String, dynamic> json,
) => RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item(
  productCode: json['productCode'] as String,
  productName: json['productName'] as String,
  image:
      RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$Image.fromJson(
        json['image'] as Map<String, dynamic>,
      ),
  sourcePlatform: json['sourcePlatform'] as String,
  platformProductId: json['platformProductId'] as String,
  skuCode: json['skuCode'] as String,
  sellPriceCur: json['sellPriceCur'] as String,
  sellPrice: json['sellPrice'] as String,
  targetSellPrice: json['targetSellPrice'] as String,
  targetOriginPrice: json['targetOriginPrice'] as String,
  targetSellCur: json['targetSellCur'] as String,
  sellQuantity: json['sellQuantity'] as String,
  skuCount: (json['skuCount'] as num).toDouble(),
  marketingInfo: json['marketingInfo'] as String,
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as Object).toList() ?? [],
  premiumBrandInfo: json['premiumBrandInfo'] == null
      ? null
      : RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfo.fromJson(
          json['premiumBrandInfo'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$ItemToJson(
  RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item
  instance,
) => <String, dynamic>{
  'productCode': instance.productCode,
  'productName': instance.productName,
  'image': instance.image.toJson(),
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

RecommendNoAuthCategoryPost$Response$Data$Records$Item$Image
_$RecommendNoAuthCategoryPost$Response$Data$Records$Item$ImageFromJson(
  Map<String, dynamic> json,
) => RecommendNoAuthCategoryPost$Response$Data$Records$Item$Image(
  width: (json['width'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  url: json['url'] as String,
);

Map<String, dynamic>
_$RecommendNoAuthCategoryPost$Response$Data$Records$Item$ImageToJson(
  RecommendNoAuthCategoryPost$Response$Data$Records$Item$Image instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

RecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$Item
_$RecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) => RecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$Item(
  tagCode: json['tagCode'] as String?,
  tagImg: json['tagImg'] as String?,
);

Map<String, dynamic>
_$RecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$ItemToJson(
  RecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$Item instance,
) => <String, dynamic>{'tagCode': instance.tagCode, 'tagImg': instance.tagImg};

RecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfo
_$RecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) => RecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfo(
  brandCode: json['brandCode'] as String?,
  brandImg: json['brandImg'] as String?,
);

Map<String, dynamic>
_$RecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfoToJson(
  RecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfo
  instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

RecommendNoAuthShopPost$Response$Data$Records$Item$Image
_$RecommendNoAuthShopPost$Response$Data$Records$Item$ImageFromJson(
  Map<String, dynamic> json,
) => RecommendNoAuthShopPost$Response$Data$Records$Item$Image(
  width: (json['width'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  url: json['url'] as String,
);

Map<String, dynamic>
_$RecommendNoAuthShopPost$Response$Data$Records$Item$ImageToJson(
  RecommendNoAuthShopPost$Response$Data$Records$Item$Image instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

RecommendNoAuthShopPost$Response$Data$Records$Item$Tags$Item
_$RecommendNoAuthShopPost$Response$Data$Records$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) => RecommendNoAuthShopPost$Response$Data$Records$Item$Tags$Item(
  tagCode: json['tagCode'] as String?,
  tagImg: json['tagImg'] as String?,
);

Map<String, dynamic>
_$RecommendNoAuthShopPost$Response$Data$Records$Item$Tags$ItemToJson(
  RecommendNoAuthShopPost$Response$Data$Records$Item$Tags$Item instance,
) => <String, dynamic>{'tagCode': instance.tagCode, 'tagImg': instance.tagImg};

RecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfo
_$RecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) => RecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfo(
  brandCode: json['brandCode'] as String?,
  brandImg: json['brandImg'] as String?,
);

Map<String, dynamic>
_$RecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfoToJson(
  RecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfo instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Image
_$RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$ImageFromJson(
  Map<String, dynamic> json,
) => RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Image(
  width: (json['width'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  url: json['url'] as String,
);

Map<String, dynamic>
_$RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$ImageToJson(
  RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Image instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$Item
_$RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) => RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$Item(
  tagCode: json['tagCode'] as String?,
  tagImg: json['tagImg'] as String?,
);

Map<String, dynamic>
_$RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$ItemToJson(
  RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$Item
  instance,
) => <String, dynamic>{'tagCode': instance.tagCode, 'tagImg': instance.tagImg};

RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfo
_$RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) =>
    RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: json['brandCode'] as String?,
      brandImg: json['brandImg'] as String?,
    );

Map<String, dynamic>
_$RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfoToJson(
  RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfo
  instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};

CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item
_$CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$ItemFromJson(
  Map<String, dynamic> json,
) =>
    CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item(
      id: (json['id'] as num).toDouble(),
      name: json['name'] as String,
      iconUrl: json['iconUrl'] as String,
      parentId: (json['parentId'] as num).toDouble(),
      level: (json['level'] as num).toDouble(),
    );

Map<String, dynamic>
_$CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$ItemToJson(
  CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item
  instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'iconUrl': instance.iconUrl,
  'parentId': instance.parentId,
  'level': instance.level,
};

ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
_$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item(
      value: json['value'] as String,
      image: json['image'] as String?,
      imageWidth: json['imageWidth'] as Object,
      imageHeight: json['imageHeight'] as Object,
    );

Map<String, dynamic>
_$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemToJson(
  ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
  instance,
) => <String, dynamic>{
  'value': instance.value,
  'image': instance.image,
  'imageWidth': instance.imageWidth,
  'imageHeight': instance.imageHeight,
};

ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
_$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item(
      value: json['value'] as String,
      image: json['image'] as Object,
      imageWidth: json['imageWidth'] as Object,
      imageHeight: json['imageHeight'] as Object,
    );

Map<String, dynamic>
_$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemToJson(
  ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
  instance,
) => <String, dynamic>{
  'value': instance.value,
  'image': instance.image,
  'imageWidth': instance.imageWidth,
  'imageHeight': instance.imageHeight,
};

ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
_$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item(
      value: json['value'] as String,
      image: json['image'] as Object,
      imageWidth: json['imageWidth'] as Object,
      imageHeight: json['imageHeight'] as Object,
    );

Map<String, dynamic>
_$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemToJson(
  ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
  instance,
) => <String, dynamic>{
  'value': instance.value,
  'image': instance.image,
  'imageWidth': instance.imageWidth,
  'imageHeight': instance.imageHeight,
};

ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
_$ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item(
      value: json['value'] as String,
      image: json['image'] as Object,
      imageWidth: json['imageWidth'] as Object,
      imageHeight: json['imageHeight'] as Object,
    );

Map<String, dynamic>
_$ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemToJson(
  ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
  instance,
) => <String, dynamic>{
  'value': instance.value,
  'image': instance.image,
  'imageWidth': instance.imageWidth,
  'imageHeight': instance.imageHeight,
};

RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$Image
_$RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$ImageFromJson(
  Map<String, dynamic> json,
) =>
    RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$Image(
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$ImageToJson(
  RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$Image
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfo
_$RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfoFromJson(
  Map<String, dynamic> json,
) =>
    RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfo(
      brandCode: json['brandCode'] as String?,
      brandImg: json['brandImg'] as String?,
    );

Map<String, dynamic>
_$RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfoToJson(
  RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfo
  instance,
) => <String, dynamic>{
  'brandCode': instance.brandCode,
  'brandImg': instance.brandImg,
};
