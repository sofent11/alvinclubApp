// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'swaggerApiProduct.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$SwaggerApiProduct extends SwaggerApiProduct {
  _$SwaggerApiProduct([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = SwaggerApiProduct;

  @override
  Future<Response<ProductReviewNoAuthPageGet$Response>>
  _productReviewNoAuthPageGet({
    required String? productCode,
    required String? current,
    required String? size,
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '分页拉取商品评论',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["商品评论"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/product-review/no-auth/page');
    final Map<String, dynamic> $params = <String, dynamic>{
      'productCode': productCode,
      'current': current,
      'size': size,
    };
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
      ProductReviewNoAuthPageGet$Response,
      ProductReviewNoAuthPageGet$Response
    >($request);
  }

  @override
  Future<Response<ProductReviewNoAuthSummaryGet$Response>>
  _productReviewNoAuthSummaryGet({
    required String? productCode,
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '拉取商品精选评论',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["商品评论"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/product-review/no-auth/summary');
    final Map<String, dynamic> $params = <String, dynamic>{
      'productCode': productCode,
    };
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
      ProductReviewNoAuthSummaryGet$Response,
      ProductReviewNoAuthSummaryGet$Response
    >($request);
  }

  @override
  Future<Response<CategoryNoAuthTreeGet$Response>> _categoryNoAuthTreeGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '查询商品品类',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["分类"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/category/no-auth/tree');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client
        .send<CategoryNoAuthTreeGet$Response, CategoryNoAuthTreeGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<ActivityNoAuthFlashSaleActivityGet$Response>>
  _activityNoAuthFlashSaleActivityGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '查询FlashSale活动列表',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["FlashSale"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/activity/no-auth/flash-sale-activity');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      ActivityNoAuthFlashSaleActivityGet$Response,
      ActivityNoAuthFlashSaleActivityGet$Response
    >($request);
  }

  @override
  Future<Response<ActivityNoAuthFlashSaleActivityProductGet$Response>>
  _activityNoAuthFlashSaleActivityProductGet({
    required String? activityCode,
    required String? name,
    String? current,
    String? size,
    String? productCode,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '查询FlashSale活动商品',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["FlashSale"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/activity/no-auth/flash-sale-activity/product');
    final Map<String, dynamic> $params = <String, dynamic>{
      'activityCode': activityCode,
      'name': name,
      'current': current,
      'size': size,
      'productCode': productCode,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      ActivityNoAuthFlashSaleActivityProductGet$Response,
      ActivityNoAuthFlashSaleActivityProductGet$Response
    >($request);
  }

  @override
  Future<Response<ProductPremiumDupeNoAuthPagePost$Response>>
  _productPremiumDupeNoAuthPagePost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '分页获取大牌平替商品列表，支持按分类过滤和多种排序方式。无需登录认证。',
      summary: '分页查询大牌平替商品',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["大牌平替"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/product/premium-dupe/no-auth/page');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductPremiumDupeNoAuthPagePost$Response,
      ProductPremiumDupeNoAuthPagePost$Response
    >($request);
  }

  @override
  Future<Response<ProductPremiumDupeNoAuthMetaGet$Response>>
  _productPremiumDupeNoAuthMetaGet({
    String? raw,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '获取大牌平替模块的元数据信息，包括可用分类列表和排序选项。无需登录认证。',
      summary: '获取大牌平替元数据',
      operationId: '',
      consumes: ["text/plain"],
      produces: [],
      security: [],
      tags: ["大牌平替"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/product/premium-dupe/no-auth/meta');
    final $body = raw;
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductPremiumDupeNoAuthMetaGet$Response,
      ProductPremiumDupeNoAuthMetaGet$Response
    >($request);
  }

  @override
  Future<Response<ProductPremiumDupeNoAuthSelectionGet$Response>>
  _productPremiumDupeNoAuthSelectionGet({
    String? deviceId,
    String? raw,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '获取大牌平替精选推荐商品列表，可根据设备ID进行个性化推荐。无需登录认证。',
      summary: '获取精选推荐商品',
      operationId: '',
      consumes: ["text/plain"],
      produces: [],
      security: [],
      tags: ["大牌平替"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/product/premium-dupe/no-auth/selection');
    final Map<String, dynamic> $params = <String, dynamic>{
      'deviceId': deviceId,
    };
    final $body = raw;
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductPremiumDupeNoAuthSelectionGet$Response,
      ProductPremiumDupeNoAuthSelectionGet$Response
    >($request);
  }

  @override
  Future<Response<ExternalPurchaseRecordPost$Response>>
  _externalPurchaseRecordPost({
    List<Object>? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '导入外部购物记录',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["外部信息"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/external-purchase-record');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      ExternalPurchaseRecordPost$Response,
      ExternalPurchaseRecordPost$Response
    >($request);
  }

  @override
  Future<Response<ProductNoAuthPushProductGet$Response>>
  _productNoAuthPushProductGet({
    String? current,
    String? size,
    required String? productCode,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '推送同类目商品(默认:热门商品)',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["公共分类"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/product/no-auth/pushProduct');
    final Map<String, dynamic> $params = <String, dynamic>{
      'current': current,
      'size': size,
      'productCode': productCode,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductNoAuthPushProductGet$Response,
      ProductNoAuthPushProductGet$Response
    >($request);
  }

  @override
  Future<Response<ProductNoAuthSearchGet$Response>> _productNoAuthSearchGet({
    required String? query,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '搜索商品或提交URL',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["公共分类"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/product/no-auth/search');
    final Map<String, dynamic> $params = <String, dynamic>{'query': query};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client
        .send<ProductNoAuthSearchGet$Response, ProductNoAuthSearchGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<ProductNoAuthCombineSearchGet$Response>>
  _productNoAuthCombineSearchGet({
    String? referer,
    String? currency,
    String? query,
    String? current,
    String? pageSize,
    String? imageUrl,
    required String? filterProductType,
    String? productCodes,
    String? searchExternal,
    String? minPriceBegin,
    String? minPriceEnd,
    String? shouldTranslate,
    String? excludeKeywords,
    String? categoryId,
    String? categoryIds,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '搜索商品接口',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["公共分类"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/product/no-auth/combineSearch');
    final Map<String, dynamic> $params = <String, dynamic>{
      'query': query,
      'current': current,
      'pageSize': pageSize,
      'imageUrl': imageUrl,
      'filterProductType': filterProductType,
      'productCodes': productCodes,
      'searchExternal': searchExternal,
      'minPriceBegin': minPriceBegin,
      'minPriceEnd': minPriceEnd,
      'shouldTranslate': shouldTranslate,
      'excludeKeywords': excludeKeywords,
      'category_id': categoryId,
      'category_ids': categoryIds,
    };
    final Map<String, String> $headers = {
      if (referer != null) 'referer': referer,
      if (currency != null) 'currency': currency,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductNoAuthCombineSearchGet$Response,
      ProductNoAuthCombineSearchGet$Response
    >($request);
  }

  @override
  Future<Response<ProductNoAuthNewArrivalProductGet$Response>>
  _productNoAuthNewArrivalProductGet({
    required String? pageNum,
    required String? pageSize,
    String? brandName,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '新品专区商品',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["公共分类"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/product/no-auth/newArrivalProduct');
    final Map<String, dynamic> $params = <String, dynamic>{
      'pageNum': pageNum,
      'pageSize': pageSize,
      'brandName': brandName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductNoAuthNewArrivalProductGet$Response,
      ProductNoAuthNewArrivalProductGet$Response
    >($request);
  }

  @override
  Future<Response<ProductNoAuthNewArrivalProductBrandGet$Response>>
  _productNoAuthNewArrivalProductBrandGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '新品专区商品品牌',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["公共分类"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/product/no-auth/newArrivalProductBrand');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductNoAuthNewArrivalProductBrandGet$Response,
      ProductNoAuthNewArrivalProductBrandGet$Response
    >($request);
  }

  @override
  Future<Response<ProductNoAuthSkuListGet$Response>> _productNoAuthSkuListGet({
    String? productCode,
    String? platformProductId,
    String? sourcePlatform,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '查询SKU列表',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["公共分类"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/product/no-auth/skuList');
    final Map<String, dynamic> $params = <String, dynamic>{
      'productCode': productCode,
      'platformProductId': platformProductId,
      'sourcePlatform': sourcePlatform,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductNoAuthSkuListGet$Response,
      ProductNoAuthSkuListGet$Response
    >($request);
  }

  @override
  Future<Response<ProductNoAuthGetProductInfoGet$Response>>
  _productNoAuthGetProductInfoGet({
    String? productCode,
    String? sourcePlatform,
    String? platformProductId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '查询商品详情',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["公共分类"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/product/no-auth/getProductInfo');
    final Map<String, dynamic> $params = <String, dynamic>{
      'productCode': productCode,
      'sourcePlatform': sourcePlatform,
      'platformProductId': platformProductId,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductNoAuthGetProductInfoGet$Response,
      ProductNoAuthGetProductInfoGet$Response
    >($request);
  }

  @override
  Future<Response<ProductNoAuthPremierProductCategoryGet$Response>>
  _productNoAuthPremierProductCategoryGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '查询首选商品品类',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["公共分类"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/product/no-auth/premierProductCategory');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductNoAuthPremierProductCategoryGet$Response,
      ProductNoAuthPremierProductCategoryGet$Response
    >($request);
  }

  @override
  Future<Response<ProductNoAuthHotProductGet$Response>>
  _productNoAuthHotProductGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '热门商品',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["公共分类"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/product/no-auth/hotProduct');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductNoAuthHotProductGet$Response,
      ProductNoAuthHotProductGet$Response
    >($request);
  }

  @override
  Future<Response<ProductNoAuthHotProductV2Get$Response>>
  _productNoAuthHotProductV2Get({
    String? current,
    String? size,
    String? productCode,
    String? categoryId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '热门商品-V2',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["公共分类"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/product/no-auth/hotProduct/v2');
    final Map<String, dynamic> $params = <String, dynamic>{
      'current': current,
      'size': size,
      'productCode': productCode,
      'categoryId': categoryId,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductNoAuthHotProductV2Get$Response,
      ProductNoAuthHotProductV2Get$Response
    >($request);
  }

  @override
  Future<Response<ProductNoAuthHotProductV3Get$Response>>
  _productNoAuthHotProductV3Get({
    String? current,
    String? size,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '热门商品-V3',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["公共分类"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/product/no-auth/hotProduct/v3');
    final Map<String, dynamic> $params = <String, dynamic>{
      'current': current,
      'size': size,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductNoAuthHotProductV3Get$Response,
      ProductNoAuthHotProductV3Get$Response
    >($request);
  }

  @override
  Future<Response<ProductNoAuthFlashSaleProductGet$Response>>
  _productNoAuthFlashSaleProductGet({
    String? current,
    String? size,
    String? productCode,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '特价商品',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["公共分类"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/product/no-auth/flashSaleProduct');
    final Map<String, dynamic> $params = <String, dynamic>{
      'current': current,
      'size': size,
      'productCode': productCode,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductNoAuthFlashSaleProductGet$Response,
      ProductNoAuthFlashSaleProductGet$Response
    >($request);
  }

  @override
  Future<Response<ProductNoAuthAlbumProductGet$Response>>
  _productNoAuthAlbumProductGet({
    required String? pageNum,
    required String? pageSize,
    required String? albumCode,
    String? productName,
    String? productCode,
    String? imageUrl,
    String? categoryId,
    String? minPrice,
    String? maxPrice,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '相册商品',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["公共分类"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/product/no-auth/albumProduct');
    final Map<String, dynamic> $params = <String, dynamic>{
      'pageNum': pageNum,
      'pageSize': pageSize,
      'albumCode': albumCode,
      'productName': productName,
      'productCode': productCode,
      'imageUrl': imageUrl,
      'categoryId': categoryId,
      'minPrice': minPrice,
      'maxPrice': maxPrice,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductNoAuthAlbumProductGet$Response,
      ProductNoAuthAlbumProductGet$Response
    >($request);
  }

  @override
  Future<Response<ShopNoAuthGetThirdShopGet$Response>>
  _shopNoAuthGetThirdShopGet({
    required String? shopCode,
    required String? sourcePlatform,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '第三方店铺信息和TopN商品',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["公共分类"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/shop/no-auth/getThirdShop');
    final Map<String, dynamic> $params = <String, dynamic>{
      'shopCode': shopCode,
      'sourcePlatform': sourcePlatform,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      ShopNoAuthGetThirdShopGet$Response,
      ShopNoAuthGetThirdShopGet$Response
    >($request);
  }

  @override
  Future<Response<ProductNoAuthKolProductGet$Response>>
  _productNoAuthKolProductGet({
    required String? code,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '红人商品',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["公共分类"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/product/no-auth/kolProduct');
    final Map<String, dynamic> $params = <String, dynamic>{'code': code};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductNoAuthKolProductGet$Response,
      ProductNoAuthKolProductGet$Response
    >($request);
  }

  @override
  Future<Response<ProductNoAuthPremierProductGet$Response>>
  _productNoAuthPremierProductGet({
    required String? pageNum,
    required String? pageSize,
    String? brandName,
    String? categoryId,
    String? productCode,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '首选商品',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["公共分类"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/product/no-auth/premierProduct');
    final Map<String, dynamic> $params = <String, dynamic>{
      'pageNum': pageNum,
      'pageSize': pageSize,
      'brandName': brandName,
      'categoryId': categoryId,
      'productCode': productCode,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductNoAuthPremierProductGet$Response,
      ProductNoAuthPremierProductGet$Response
    >($request);
  }

  @override
  Future<Response<ProductNoAuthPremierProductBrandGet$Response>>
  _productNoAuthPremierProductBrandGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '首选商品品牌',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["公共分类"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/product/no-auth/premierProductBrand');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductNoAuthPremierProductBrandGet$Response,
      ProductNoAuthPremierProductBrandGet$Response
    >($request);
  }

  @override
  Future<Response<RecommendNoAuthCategoryRecommendationGet$Response>>
  _recommendNoAuthCategoryRecommendationGet({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '分类热门商品推荐',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["推荐feeds"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/recommend/no-auth/categoryRecommendation');
    final $body = root;
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      RecommendNoAuthCategoryRecommendationGet$Response,
      RecommendNoAuthCategoryRecommendationGet$Response
    >($request);
  }

  @override
  Future<Response<RecommendNoAuthCategoryPost$Response>>
  _recommendNoAuthCategoryPost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '分类页商品',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["推荐feeds"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/recommend/no-auth/category');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      RecommendNoAuthCategoryPost$Response,
      RecommendNoAuthCategoryPost$Response
    >($request);
  }

  @override
  Future<Response<RecommendNoAuthShopPost$Response>> _recommendNoAuthShopPost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '店铺页商品',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["推荐feeds"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/recommend/no-auth/shop');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      RecommendNoAuthShopPost$Response,
      RecommendNoAuthShopPost$Response
    >($request);
  }

  @override
  Future<Response<RecommendNoAuthSimilarProductPost$Response>>
  _recommendNoAuthSimilarProductPost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '相关商品【后续可能会有换一批之类，用分页接口】',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["推荐feeds"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/recommend/no-auth/similarProduct');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      RecommendNoAuthSimilarProductPost$Response,
      RecommendNoAuthSimilarProductPost$Response
    >($request);
  }
}
