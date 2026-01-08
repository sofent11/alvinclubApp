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
  Future<Response<ProductServiceProductReviewNoAuthPageGet$Response>>
  _productServiceProductReviewNoAuthPageGet({
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
    final Uri $url = Uri.parse('/product-service/product-review/no-auth/page');
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
      ProductServiceProductReviewNoAuthPageGet$Response,
      ProductServiceProductReviewNoAuthPageGet$Response
    >($request);
  }

  @override
  Future<Response<ProductServiceProductReviewNoAuthSummaryGet$Response>>
  _productServiceProductReviewNoAuthSummaryGet({
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
    final Uri $url = Uri.parse(
      '/product-service/product-review/no-auth/summary',
    );
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
      ProductServiceProductReviewNoAuthSummaryGet$Response,
      ProductServiceProductReviewNoAuthSummaryGet$Response
    >($request);
  }

  @override
  Future<Response<ProductServiceCategoryNoAuthTreeGet$Response>>
  _productServiceCategoryNoAuthTreeGet({
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
    final Uri $url = Uri.parse('/product-service/category/no-auth/tree');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductServiceCategoryNoAuthTreeGet$Response,
      ProductServiceCategoryNoAuthTreeGet$Response
    >($request);
  }

  @override
  Future<Response<ProductServiceActivityNoAuthFlashSaleActivityGet$Response>>
  _productServiceActivityNoAuthFlashSaleActivityGet({
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
    final Uri $url = Uri.parse(
      '/product-service/activity/no-auth/flash-sale-activity',
    );
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductServiceActivityNoAuthFlashSaleActivityGet$Response,
      ProductServiceActivityNoAuthFlashSaleActivityGet$Response
    >($request);
  }

  @override
  Future<
    Response<ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response>
  >
  _productServiceActivityNoAuthFlashSaleActivityProductGet({
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
    final Uri $url = Uri.parse(
      '/product-service/activity/no-auth/flash-sale-activity/product',
    );
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
      ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response,
      ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response
    >($request);
  }

  @override
  Future<Response<ProductServiceProductPremiumDupeNoAuthPagePost$Response>>
  _productServiceProductPremiumDupeNoAuthPagePost({
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
    final Uri $url = Uri.parse(
      '/product-service/product/premium-dupe/no-auth/page',
    );
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductServiceProductPremiumDupeNoAuthPagePost$Response,
      ProductServiceProductPremiumDupeNoAuthPagePost$Response
    >($request);
  }

  @override
  Future<Response<ProductServiceProductPremiumDupeNoAuthMetaGet$Response>>
  _productServiceProductPremiumDupeNoAuthMetaGet({
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
    final Uri $url = Uri.parse(
      '/product-service/product/premium-dupe/no-auth/meta',
    );
    final $body = raw;
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductServiceProductPremiumDupeNoAuthMetaGet$Response,
      ProductServiceProductPremiumDupeNoAuthMetaGet$Response
    >($request);
  }

  @override
  Future<Response<ProductServiceProductPremiumDupeNoAuthSelectionGet$Response>>
  _productServiceProductPremiumDupeNoAuthSelectionGet({
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
    final Uri $url = Uri.parse(
      '/product-service/product/premium-dupe/no-auth/selection',
    );
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
      ProductServiceProductPremiumDupeNoAuthSelectionGet$Response,
      ProductServiceProductPremiumDupeNoAuthSelectionGet$Response
    >($request);
  }

  @override
  Future<Response<ProductServiceExternalPurchaseRecordPost$Response>>
  _productServiceExternalPurchaseRecordPost({
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
    final Uri $url = Uri.parse('/product-service/external-purchase-record');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductServiceExternalPurchaseRecordPost$Response,
      ProductServiceExternalPurchaseRecordPost$Response
    >($request);
  }

  @override
  Future<Response<ProductServiceProductNoAuthPushProductGet$Response>>
  _productServiceProductNoAuthPushProductGet({
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
    final Uri $url = Uri.parse('/product-service/product/no-auth/pushProduct');
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
      ProductServiceProductNoAuthPushProductGet$Response,
      ProductServiceProductNoAuthPushProductGet$Response
    >($request);
  }

  @override
  Future<Response<ProductServiceProductNoAuthSearchGet$Response>>
  _productServiceProductNoAuthSearchGet({
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
    final Uri $url = Uri.parse('/product-service/product/no-auth/search');
    final Map<String, dynamic> $params = <String, dynamic>{'query': query};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductServiceProductNoAuthSearchGet$Response,
      ProductServiceProductNoAuthSearchGet$Response
    >($request);
  }

  @override
  Future<Response<ProductServiceProductNoAuthCombineSearchGet$Response>>
  _productServiceProductNoAuthCombineSearchGet({
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
    final Uri $url = Uri.parse(
      '/product-service/product/no-auth/combineSearch',
    );
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
      ProductServiceProductNoAuthCombineSearchGet$Response,
      ProductServiceProductNoAuthCombineSearchGet$Response
    >($request);
  }

  @override
  Future<Response<ProductServiceProductNoAuthNewArrivalProductGet$Response>>
  _productServiceProductNoAuthNewArrivalProductGet({
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
    final Uri $url = Uri.parse(
      '/product-service/product/no-auth/newArrivalProduct',
    );
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
      ProductServiceProductNoAuthNewArrivalProductGet$Response,
      ProductServiceProductNoAuthNewArrivalProductGet$Response
    >($request);
  }

  @override
  Future<
    Response<ProductServiceProductNoAuthNewArrivalProductBrandGet$Response>
  >
  _productServiceProductNoAuthNewArrivalProductBrandGet({
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
    final Uri $url = Uri.parse(
      '/product-service/product/no-auth/newArrivalProductBrand',
    );
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductServiceProductNoAuthNewArrivalProductBrandGet$Response,
      ProductServiceProductNoAuthNewArrivalProductBrandGet$Response
    >($request);
  }

  @override
  Future<Response<ProductServiceProductNoAuthSkuListGet$Response>>
  _productServiceProductNoAuthSkuListGet({
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
    final Uri $url = Uri.parse('/product-service/product/no-auth/skuList');
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
      ProductServiceProductNoAuthSkuListGet$Response,
      ProductServiceProductNoAuthSkuListGet$Response
    >($request);
  }

  @override
  Future<Response<ProductServiceProductNoAuthGetProductInfoGet$Response>>
  _productServiceProductNoAuthGetProductInfoGet({
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
    final Uri $url = Uri.parse(
      '/product-service/product/no-auth/getProductInfo',
    );
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
      ProductServiceProductNoAuthGetProductInfoGet$Response,
      ProductServiceProductNoAuthGetProductInfoGet$Response
    >($request);
  }

  @override
  Future<
    Response<ProductServiceProductNoAuthPremierProductCategoryGet$Response>
  >
  _productServiceProductNoAuthPremierProductCategoryGet({
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
    final Uri $url = Uri.parse(
      '/product-service/product/no-auth/premierProductCategory',
    );
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductServiceProductNoAuthPremierProductCategoryGet$Response,
      ProductServiceProductNoAuthPremierProductCategoryGet$Response
    >($request);
  }

  @override
  Future<Response<ProductServiceProductNoAuthHotProductGet$Response>>
  _productServiceProductNoAuthHotProductGet({
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
    final Uri $url = Uri.parse('/product-service/product/no-auth/hotProduct');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductServiceProductNoAuthHotProductGet$Response,
      ProductServiceProductNoAuthHotProductGet$Response
    >($request);
  }

  @override
  Future<Response<ProductServiceProductNoAuthHotProductV2Get$Response>>
  _productServiceProductNoAuthHotProductV2Get({
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
    final Uri $url = Uri.parse(
      '/product-service/product/no-auth/hotProduct/v2',
    );
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
      ProductServiceProductNoAuthHotProductV2Get$Response,
      ProductServiceProductNoAuthHotProductV2Get$Response
    >($request);
  }

  @override
  Future<Response<ProductServiceProductNoAuthHotProductV3Get$Response>>
  _productServiceProductNoAuthHotProductV3Get({
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
    final Uri $url = Uri.parse(
      '/product-service/product/no-auth/hotProduct/v3',
    );
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
      ProductServiceProductNoAuthHotProductV3Get$Response,
      ProductServiceProductNoAuthHotProductV3Get$Response
    >($request);
  }

  @override
  Future<Response<ProductServiceProductNoAuthFlashSaleProductGet$Response>>
  _productServiceProductNoAuthFlashSaleProductGet({
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
    final Uri $url = Uri.parse(
      '/product-service/product/no-auth/flashSaleProduct',
    );
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
      ProductServiceProductNoAuthFlashSaleProductGet$Response,
      ProductServiceProductNoAuthFlashSaleProductGet$Response
    >($request);
  }

  @override
  Future<Response<ProductServiceProductNoAuthAlbumProductGet$Response>>
  _productServiceProductNoAuthAlbumProductGet({
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
    final Uri $url = Uri.parse('/product-service/product/no-auth/albumProduct');
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
      ProductServiceProductNoAuthAlbumProductGet$Response,
      ProductServiceProductNoAuthAlbumProductGet$Response
    >($request);
  }

  @override
  Future<Response<ProductServiceShopNoAuthGetThirdShopGet$Response>>
  _productServiceShopNoAuthGetThirdShopGet({
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
    final Uri $url = Uri.parse('/product-service/shop/no-auth/getThirdShop');
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
      ProductServiceShopNoAuthGetThirdShopGet$Response,
      ProductServiceShopNoAuthGetThirdShopGet$Response
    >($request);
  }

  @override
  Future<Response<ProductServiceProductNoAuthKolProductGet$Response>>
  _productServiceProductNoAuthKolProductGet({
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
    final Uri $url = Uri.parse('/product-service/product/no-auth/kolProduct');
    final Map<String, dynamic> $params = <String, dynamic>{'code': code};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductServiceProductNoAuthKolProductGet$Response,
      ProductServiceProductNoAuthKolProductGet$Response
    >($request);
  }

  @override
  Future<Response<ProductServiceProductNoAuthPremierProductGet$Response>>
  _productServiceProductNoAuthPremierProductGet({
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
    final Uri $url = Uri.parse(
      '/product-service/product/no-auth/premierProduct',
    );
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
      ProductServiceProductNoAuthPremierProductGet$Response,
      ProductServiceProductNoAuthPremierProductGet$Response
    >($request);
  }

  @override
  Future<Response<ProductServiceProductNoAuthPremierProductBrandGet$Response>>
  _productServiceProductNoAuthPremierProductBrandGet({
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
    final Uri $url = Uri.parse(
      '/product-service/product/no-auth/premierProductBrand',
    );
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductServiceProductNoAuthPremierProductBrandGet$Response,
      ProductServiceProductNoAuthPremierProductBrandGet$Response
    >($request);
  }

  @override
  Future<
    Response<ProductServiceRecommendNoAuthCategoryRecommendationGet$Response>
  >
  _productServiceRecommendNoAuthCategoryRecommendationGet({
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
    final Uri $url = Uri.parse(
      '/product-service/recommend/no-auth/categoryRecommendation',
    );
    final $body = root;
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductServiceRecommendNoAuthCategoryRecommendationGet$Response,
      ProductServiceRecommendNoAuthCategoryRecommendationGet$Response
    >($request);
  }

  @override
  Future<Response<ProductServiceRecommendNoAuthCategoryPost$Response>>
  _productServiceRecommendNoAuthCategoryPost({
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
    final Uri $url = Uri.parse('/product-service/recommend/no-auth/category');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductServiceRecommendNoAuthCategoryPost$Response,
      ProductServiceRecommendNoAuthCategoryPost$Response
    >($request);
  }

  @override
  Future<Response<ProductServiceRecommendNoAuthShopPost$Response>>
  _productServiceRecommendNoAuthShopPost({
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
    final Uri $url = Uri.parse('/product-service/recommend/no-auth/shop');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductServiceRecommendNoAuthShopPost$Response,
      ProductServiceRecommendNoAuthShopPost$Response
    >($request);
  }

  @override
  Future<Response<ProductServiceRecommendNoAuthSimilarProductPost$Response>>
  _productServiceRecommendNoAuthSimilarProductPost({
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
    final Uri $url = Uri.parse(
      '/product-service/recommend/no-auth/similarProduct',
    );
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      ProductServiceRecommendNoAuthSimilarProductPost$Response,
      ProductServiceRecommendNoAuthSimilarProductPost$Response
    >($request);
  }
}
