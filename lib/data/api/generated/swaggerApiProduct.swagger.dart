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
import 'swaggerApiProduct.enums.swagger.dart' as enums;
import 'swaggerApiProduct.metadata.swagger.dart';
export 'swaggerApiProduct.enums.swagger.dart';

part 'swaggerApiProduct.swagger.chopper.dart';
part 'swaggerApiProduct.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class SwaggerApiProduct extends ChopperService {
  static SwaggerApiProduct create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    ErrorConverter? errorConverter,
    Converter? converter,
    Uri? baseUrl,
    List<Interceptor>? interceptors,
  }) {
    if (client != null) {
      return _$SwaggerApiProduct(client);
    }

    final newClient = ChopperClient(
      services: [_$SwaggerApiProduct()],
      converter: converter ?? $JsonSerializableConverter(),
      interceptors: interceptors ?? [],
      client: httpClient,
      authenticator: authenticator,
      errorConverter: errorConverter,
      baseUrl: baseUrl ?? Uri.parse('http:///product-service'),
    );
    return _$SwaggerApiProduct(newClient);
  }

  ///分页拉取商品评论
  ///@param productCode
  ///@param current
  ///@param size
  ///@param root
  Future<chopper.Response<ProductReviewNoAuthPageGet$Response>>
  productReviewNoAuthPageGet({
    required String? productCode,
    required String? current,
    required String? size,
    Object? root,
  }) {
    generatedMapping.putIfAbsent(
      ProductReviewNoAuthPageGet$Response,
      () => ProductReviewNoAuthPageGet$Response.fromJsonFactory,
    );

    return _productReviewNoAuthPageGet(
      productCode: productCode,
      current: current,
      size: size,
      root: root,
    );
  }

  ///分页拉取商品评论
  ///@param productCode
  ///@param current
  ///@param size
  ///@param root
  @GET(path: '/product-review/no-auth/page')
  Future<chopper.Response<ProductReviewNoAuthPageGet$Response>>
  _productReviewNoAuthPageGet({
    @Query('productCode') required String? productCode,
    @Query('current') required String? current,
    @Query('size') required String? size,
    @Body() Object? root,
    @chopper.Tag()
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
  });

  ///拉取商品精选评论
  ///@param productCode
  ///@param root
  Future<chopper.Response<ProductReviewNoAuthSummaryGet$Response>>
  productReviewNoAuthSummaryGet({required String? productCode, Object? root}) {
    generatedMapping.putIfAbsent(
      ProductReviewNoAuthSummaryGet$Response,
      () => ProductReviewNoAuthSummaryGet$Response.fromJsonFactory,
    );

    return _productReviewNoAuthSummaryGet(productCode: productCode, root: root);
  }

  ///拉取商品精选评论
  ///@param productCode
  ///@param root
  @GET(path: '/product-review/no-auth/summary')
  Future<chopper.Response<ProductReviewNoAuthSummaryGet$Response>>
  _productReviewNoAuthSummaryGet({
    @Query('productCode') required String? productCode,
    @Body() Object? root,
    @chopper.Tag()
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
  });

  ///查询商品品类
  Future<chopper.Response<CategoryNoAuthTreeGet$Response>>
  categoryNoAuthTreeGet() {
    generatedMapping.putIfAbsent(
      CategoryNoAuthTreeGet$Response,
      () => CategoryNoAuthTreeGet$Response.fromJsonFactory,
    );

    return _categoryNoAuthTreeGet();
  }

  ///查询商品品类
  @GET(path: '/category/no-auth/tree')
  Future<chopper.Response<CategoryNoAuthTreeGet$Response>>
  _categoryNoAuthTreeGet({
    @chopper.Tag()
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
  });

  ///查询FlashSale活动列表
  Future<chopper.Response<ActivityNoAuthFlashSaleActivityGet$Response>>
  activityNoAuthFlashSaleActivityGet() {
    generatedMapping.putIfAbsent(
      ActivityNoAuthFlashSaleActivityGet$Response,
      () => ActivityNoAuthFlashSaleActivityGet$Response.fromJsonFactory,
    );

    return _activityNoAuthFlashSaleActivityGet();
  }

  ///查询FlashSale活动列表
  @GET(path: '/activity/no-auth/flash-sale-activity')
  Future<chopper.Response<ActivityNoAuthFlashSaleActivityGet$Response>>
  _activityNoAuthFlashSaleActivityGet({
    @chopper.Tag()
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
  });

  ///查询FlashSale活动商品
  ///@param activityCode
  ///@param name 按分类名称拉取商品， 不传为所有
  ///@param current 默认第1页
  ///@param size 默认20条
  ///@param productCode 置顶商品
  Future<chopper.Response<ActivityNoAuthFlashSaleActivityProductGet$Response>>
  activityNoAuthFlashSaleActivityProductGet({
    required String? activityCode,
    required String? name,
    String? current,
    String? size,
    String? productCode,
  }) {
    generatedMapping.putIfAbsent(
      ActivityNoAuthFlashSaleActivityProductGet$Response,
      () => ActivityNoAuthFlashSaleActivityProductGet$Response.fromJsonFactory,
    );

    return _activityNoAuthFlashSaleActivityProductGet(
      activityCode: activityCode,
      name: name,
      current: current,
      size: size,
      productCode: productCode,
    );
  }

  ///查询FlashSale活动商品
  ///@param activityCode
  ///@param name 按分类名称拉取商品， 不传为所有
  ///@param current 默认第1页
  ///@param size 默认20条
  ///@param productCode 置顶商品
  @GET(path: '/activity/no-auth/flash-sale-activity/product')
  Future<chopper.Response<ActivityNoAuthFlashSaleActivityProductGet$Response>>
  _activityNoAuthFlashSaleActivityProductGet({
    @Query('activityCode') required String? activityCode,
    @Query('name') required String? name,
    @Query('current') String? current,
    @Query('size') String? size,
    @Query('productCode') String? productCode,
    @chopper.Tag()
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
  });

  ///分页查询大牌平替商品
  ///@param root 大牌平替商品分页查询请求
  Future<chopper.Response<ProductPremiumDupeNoAuthPagePost$Response>>
  productPremiumDupeNoAuthPagePost({Object? root}) {
    generatedMapping.putIfAbsent(
      ProductPremiumDupeNoAuthPagePost$Response,
      () => ProductPremiumDupeNoAuthPagePost$Response.fromJsonFactory,
    );

    return _productPremiumDupeNoAuthPagePost(root: root);
  }

  ///分页查询大牌平替商品
  ///@param root 大牌平替商品分页查询请求
  @POST(path: '/product/premium-dupe/no-auth/page')
  Future<chopper.Response<ProductPremiumDupeNoAuthPagePost$Response>>
  _productPremiumDupeNoAuthPagePost({
    @Body() Object? root,
    @chopper.Tag()
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
  });

  ///获取大牌平替元数据
  ///@param raw raw paramter
  Future<chopper.Response<ProductPremiumDupeNoAuthMetaGet$Response>>
  productPremiumDupeNoAuthMetaGet({String? raw}) {
    generatedMapping.putIfAbsent(
      ProductPremiumDupeNoAuthMetaGet$Response,
      () => ProductPremiumDupeNoAuthMetaGet$Response.fromJsonFactory,
    );

    return _productPremiumDupeNoAuthMetaGet(raw: raw);
  }

  ///获取大牌平替元数据
  ///@param raw raw paramter
  @GET(path: '/product/premium-dupe/no-auth/meta')
  Future<chopper.Response<ProductPremiumDupeNoAuthMetaGet$Response>>
  _productPremiumDupeNoAuthMetaGet({
    @Body() String? raw,
    @chopper.Tag()
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
  });

  ///获取精选推荐商品
  ///@param deviceId 设备ID，用于个性化推荐
  ///@param raw raw paramter
  Future<chopper.Response<ProductPremiumDupeNoAuthSelectionGet$Response>>
  productPremiumDupeNoAuthSelectionGet({String? deviceId, String? raw}) {
    generatedMapping.putIfAbsent(
      ProductPremiumDupeNoAuthSelectionGet$Response,
      () => ProductPremiumDupeNoAuthSelectionGet$Response.fromJsonFactory,
    );

    return _productPremiumDupeNoAuthSelectionGet(deviceId: deviceId, raw: raw);
  }

  ///获取精选推荐商品
  ///@param deviceId 设备ID，用于个性化推荐
  ///@param raw raw paramter
  @GET(path: '/product/premium-dupe/no-auth/selection')
  Future<chopper.Response<ProductPremiumDupeNoAuthSelectionGet$Response>>
  _productPremiumDupeNoAuthSelectionGet({
    @Query('deviceId') String? deviceId,
    @Body() String? raw,
    @chopper.Tag()
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
  });

  ///导入外部购物记录
  ///@param root
  Future<chopper.Response<ExternalPurchaseRecordPost$Response>>
  externalPurchaseRecordPost({List<Object>? root}) {
    generatedMapping.putIfAbsent(
      ExternalPurchaseRecordPost$Response,
      () => ExternalPurchaseRecordPost$Response.fromJsonFactory,
    );

    return _externalPurchaseRecordPost(root: root);
  }

  ///导入外部购物记录
  ///@param root
  @POST(path: '/external-purchase-record')
  Future<chopper.Response<ExternalPurchaseRecordPost$Response>>
  _externalPurchaseRecordPost({
    @Body() List<Object>? root,
    @chopper.Tag()
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
  });

  ///推送同类目商品(默认:热门商品)
  ///@param current 当前页码，默认为1
  ///@param size 分页大小，默认为10
  ///@param productCode
  Future<chopper.Response<ProductNoAuthPushProductGet$Response>>
  productNoAuthPushProductGet({
    String? current,
    String? size,
    required String? productCode,
  }) {
    generatedMapping.putIfAbsent(
      ProductNoAuthPushProductGet$Response,
      () => ProductNoAuthPushProductGet$Response.fromJsonFactory,
    );

    return _productNoAuthPushProductGet(
      current: current,
      size: size,
      productCode: productCode,
    );
  }

  ///推送同类目商品(默认:热门商品)
  ///@param current 当前页码，默认为1
  ///@param size 分页大小，默认为10
  ///@param productCode
  @GET(path: '/product/no-auth/pushProduct')
  Future<chopper.Response<ProductNoAuthPushProductGet$Response>>
  _productNoAuthPushProductGet({
    @Query('current') String? current,
    @Query('size') String? size,
    @Query('productCode') required String? productCode,
    @chopper.Tag()
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
  });

  ///搜索商品或提交URL
  ///@param query 电商商品URL 或商品搜索关键词
  Future<chopper.Response<ProductNoAuthSearchGet$Response>>
  productNoAuthSearchGet({required String? query}) {
    generatedMapping.putIfAbsent(
      ProductNoAuthSearchGet$Response,
      () => ProductNoAuthSearchGet$Response.fromJsonFactory,
    );

    return _productNoAuthSearchGet(query: query);
  }

  ///搜索商品或提交URL
  ///@param query 电商商品URL 或商品搜索关键词
  @GET(path: '/product/no-auth/search')
  Future<chopper.Response<ProductNoAuthSearchGet$Response>>
  _productNoAuthSearchGet({
    @Query('query') required String? query,
    @chopper.Tag()
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
  });

  ///搜索商品接口
  ///@param referer referer (Only:https://www.cn2u.ai/)
  ///@param currency currency (Only:USD)
  ///@param query 电商商品URL 或商品搜索关键词
  ///@param current 当前页
  ///@param pageSize 分页大小
  ///@param imageUrl 商品图片
  ///@param filterProductType 1 普货 2 敏货
  ///@param productCodes
  ///@param searchExternal query为搜索关键词，库内无商品时，是否搜索淘宝商品，默认为true
  ///@param minPriceBegin 价格范围区间开始值,会转为CNY搜索， 货币参考Header说明
  ///@param minPriceEnd 价格范围区间结束值，会转为CNY搜索，货币参考Header说明
  ///@param shouldTranslate query进行open search查询 是否需要翻译为中文,默认为true [目前测试环境走DB搜索 忽略该参数作用]
  ///@param excludeKeywords 从query中排除包含特定关键词的结果
  ///@param category_id 分类ID
  ///@param category_ids 分类ID列表
  Future<chopper.Response<ProductNoAuthCombineSearchGet$Response>>
  productNoAuthCombineSearchGet({
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
  }) {
    generatedMapping.putIfAbsent(
      ProductNoAuthCombineSearchGet$Response,
      () => ProductNoAuthCombineSearchGet$Response.fromJsonFactory,
    );

    return _productNoAuthCombineSearchGet(
      referer: referer?.toString(),
      currency: currency?.toString(),
      query: query,
      current: current,
      pageSize: pageSize,
      imageUrl: imageUrl,
      filterProductType: filterProductType,
      productCodes: productCodes,
      searchExternal: searchExternal,
      minPriceBegin: minPriceBegin,
      minPriceEnd: minPriceEnd,
      shouldTranslate: shouldTranslate,
      excludeKeywords: excludeKeywords,
      categoryId: categoryId,
      categoryIds: categoryIds,
    );
  }

  ///搜索商品接口
  ///@param referer referer (Only:https://www.cn2u.ai/)
  ///@param currency currency (Only:USD)
  ///@param query 电商商品URL 或商品搜索关键词
  ///@param current 当前页
  ///@param pageSize 分页大小
  ///@param imageUrl 商品图片
  ///@param filterProductType 1 普货 2 敏货
  ///@param productCodes
  ///@param searchExternal query为搜索关键词，库内无商品时，是否搜索淘宝商品，默认为true
  ///@param minPriceBegin 价格范围区间开始值,会转为CNY搜索， 货币参考Header说明
  ///@param minPriceEnd 价格范围区间结束值，会转为CNY搜索，货币参考Header说明
  ///@param shouldTranslate query进行open search查询 是否需要翻译为中文,默认为true [目前测试环境走DB搜索 忽略该参数作用]
  ///@param excludeKeywords 从query中排除包含特定关键词的结果
  ///@param category_id 分类ID
  ///@param category_ids 分类ID列表
  @GET(path: '/product/no-auth/combineSearch')
  Future<chopper.Response<ProductNoAuthCombineSearchGet$Response>>
  _productNoAuthCombineSearchGet({
    @Header('referer') String? referer,
    @Header('currency') String? currency,
    @Query('query') String? query,
    @Query('current') String? current,
    @Query('pageSize') String? pageSize,
    @Query('imageUrl') String? imageUrl,
    @Query('filterProductType') required String? filterProductType,
    @Query('productCodes') String? productCodes,
    @Query('searchExternal') String? searchExternal,
    @Query('minPriceBegin') String? minPriceBegin,
    @Query('minPriceEnd') String? minPriceEnd,
    @Query('shouldTranslate') String? shouldTranslate,
    @Query('excludeKeywords') String? excludeKeywords,
    @Query('category_id') String? categoryId,
    @Query('category_ids') String? categoryIds,
    @chopper.Tag()
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
  });

  ///新品专区商品
  ///@param pageNum
  ///@param pageSize
  ///@param brandName
  Future<chopper.Response<ProductNoAuthNewArrivalProductGet$Response>>
  productNoAuthNewArrivalProductGet({
    required String? pageNum,
    required String? pageSize,
    String? brandName,
  }) {
    generatedMapping.putIfAbsent(
      ProductNoAuthNewArrivalProductGet$Response,
      () => ProductNoAuthNewArrivalProductGet$Response.fromJsonFactory,
    );

    return _productNoAuthNewArrivalProductGet(
      pageNum: pageNum,
      pageSize: pageSize,
      brandName: brandName,
    );
  }

  ///新品专区商品
  ///@param pageNum
  ///@param pageSize
  ///@param brandName
  @GET(path: '/product/no-auth/newArrivalProduct')
  Future<chopper.Response<ProductNoAuthNewArrivalProductGet$Response>>
  _productNoAuthNewArrivalProductGet({
    @Query('pageNum') required String? pageNum,
    @Query('pageSize') required String? pageSize,
    @Query('brandName') String? brandName,
    @chopper.Tag()
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
  });

  ///新品专区商品品牌
  Future<chopper.Response<ProductNoAuthNewArrivalProductBrandGet$Response>>
  productNoAuthNewArrivalProductBrandGet() {
    generatedMapping.putIfAbsent(
      ProductNoAuthNewArrivalProductBrandGet$Response,
      () => ProductNoAuthNewArrivalProductBrandGet$Response.fromJsonFactory,
    );

    return _productNoAuthNewArrivalProductBrandGet();
  }

  ///新品专区商品品牌
  @GET(path: '/product/no-auth/newArrivalProductBrand')
  Future<chopper.Response<ProductNoAuthNewArrivalProductBrandGet$Response>>
  _productNoAuthNewArrivalProductBrandGet({
    @chopper.Tag()
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
  });

  ///查询SKU列表
  ///@param productCode
  ///@param platformProductId
  ///@param sourcePlatform
  Future<chopper.Response<ProductNoAuthSkuListGet$Response>>
  productNoAuthSkuListGet({
    String? productCode,
    String? platformProductId,
    String? sourcePlatform,
  }) {
    generatedMapping.putIfAbsent(
      ProductNoAuthSkuListGet$Response,
      () => ProductNoAuthSkuListGet$Response.fromJsonFactory,
    );

    return _productNoAuthSkuListGet(
      productCode: productCode,
      platformProductId: platformProductId,
      sourcePlatform: sourcePlatform,
    );
  }

  ///查询SKU列表
  ///@param productCode
  ///@param platformProductId
  ///@param sourcePlatform
  @GET(path: '/product/no-auth/skuList')
  Future<chopper.Response<ProductNoAuthSkuListGet$Response>>
  _productNoAuthSkuListGet({
    @Query('productCode') String? productCode,
    @Query('platformProductId') String? platformProductId,
    @Query('sourcePlatform') String? sourcePlatform,
    @chopper.Tag()
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
  });

  ///查询商品详情
  ///@param productCode productCode  或 (sourcePlatform,platformProductId)  ，优先用productCode，productCode为空则用sourcePlatform和platformProductId组合
  ///@param sourcePlatform 平台： 枚举值为：taobao、 tmall、 weidian、 1688  不区分大小写
  ///@param platformProductId 平台商品ID
  Future<chopper.Response<ProductNoAuthGetProductInfoGet$Response>>
  productNoAuthGetProductInfoGet({
    String? productCode,
    String? sourcePlatform,
    String? platformProductId,
  }) {
    generatedMapping.putIfAbsent(
      ProductNoAuthGetProductInfoGet$Response,
      () => ProductNoAuthGetProductInfoGet$Response.fromJsonFactory,
    );

    return _productNoAuthGetProductInfoGet(
      productCode: productCode,
      sourcePlatform: sourcePlatform,
      platformProductId: platformProductId,
    );
  }

  ///查询商品详情
  ///@param productCode productCode  或 (sourcePlatform,platformProductId)  ，优先用productCode，productCode为空则用sourcePlatform和platformProductId组合
  ///@param sourcePlatform 平台： 枚举值为：taobao、 tmall、 weidian、 1688  不区分大小写
  ///@param platformProductId 平台商品ID
  @GET(path: '/product/no-auth/getProductInfo')
  Future<chopper.Response<ProductNoAuthGetProductInfoGet$Response>>
  _productNoAuthGetProductInfoGet({
    @Query('productCode') String? productCode,
    @Query('sourcePlatform') String? sourcePlatform,
    @Query('platformProductId') String? platformProductId,
    @chopper.Tag()
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
  });

  ///查询首选商品品类
  Future<chopper.Response<ProductNoAuthPremierProductCategoryGet$Response>>
  productNoAuthPremierProductCategoryGet() {
    generatedMapping.putIfAbsent(
      ProductNoAuthPremierProductCategoryGet$Response,
      () => ProductNoAuthPremierProductCategoryGet$Response.fromJsonFactory,
    );

    return _productNoAuthPremierProductCategoryGet();
  }

  ///查询首选商品品类
  @GET(path: '/product/no-auth/premierProductCategory')
  Future<chopper.Response<ProductNoAuthPremierProductCategoryGet$Response>>
  _productNoAuthPremierProductCategoryGet({
    @chopper.Tag()
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
  });

  ///热门商品
  Future<chopper.Response<ProductNoAuthHotProductGet$Response>>
  productNoAuthHotProductGet() {
    generatedMapping.putIfAbsent(
      ProductNoAuthHotProductGet$Response,
      () => ProductNoAuthHotProductGet$Response.fromJsonFactory,
    );

    return _productNoAuthHotProductGet();
  }

  ///热门商品
  @GET(path: '/product/no-auth/hotProduct')
  Future<chopper.Response<ProductNoAuthHotProductGet$Response>>
  _productNoAuthHotProductGet({
    @chopper.Tag()
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
  });

  ///热门商品-V2
  ///@param current 当前页码，默认为1
  ///@param size 分页大小，默认为10
  ///@param productCode
  ///@param categoryId 分类 ID
  Future<chopper.Response<ProductNoAuthHotProductV2Get$Response>>
  productNoAuthHotProductV2Get({
    String? current,
    String? size,
    String? productCode,
    String? categoryId,
  }) {
    generatedMapping.putIfAbsent(
      ProductNoAuthHotProductV2Get$Response,
      () => ProductNoAuthHotProductV2Get$Response.fromJsonFactory,
    );

    return _productNoAuthHotProductV2Get(
      current: current,
      size: size,
      productCode: productCode,
      categoryId: categoryId,
    );
  }

  ///热门商品-V2
  ///@param current 当前页码，默认为1
  ///@param size 分页大小，默认为10
  ///@param productCode
  ///@param categoryId 分类 ID
  @GET(path: '/product/no-auth/hotProduct/v2')
  Future<chopper.Response<ProductNoAuthHotProductV2Get$Response>>
  _productNoAuthHotProductV2Get({
    @Query('current') String? current,
    @Query('size') String? size,
    @Query('productCode') String? productCode,
    @Query('categoryId') String? categoryId,
    @chopper.Tag()
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
  });

  ///热门商品-V3
  ///@param current 当前页码，默认为1
  ///@param size 分页大小，默认为10
  Future<chopper.Response<ProductNoAuthHotProductV3Get$Response>>
  productNoAuthHotProductV3Get({String? current, String? size}) {
    generatedMapping.putIfAbsent(
      ProductNoAuthHotProductV3Get$Response,
      () => ProductNoAuthHotProductV3Get$Response.fromJsonFactory,
    );

    return _productNoAuthHotProductV3Get(current: current, size: size);
  }

  ///热门商品-V3
  ///@param current 当前页码，默认为1
  ///@param size 分页大小，默认为10
  @GET(path: '/product/no-auth/hotProduct/v3')
  Future<chopper.Response<ProductNoAuthHotProductV3Get$Response>>
  _productNoAuthHotProductV3Get({
    @Query('current') String? current,
    @Query('size') String? size,
    @chopper.Tag()
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
  });

  ///特价商品
  ///@param current
  ///@param size
  ///@param productCode
  Future<chopper.Response<ProductNoAuthFlashSaleProductGet$Response>>
  productNoAuthFlashSaleProductGet({
    String? current,
    String? size,
    String? productCode,
  }) {
    generatedMapping.putIfAbsent(
      ProductNoAuthFlashSaleProductGet$Response,
      () => ProductNoAuthFlashSaleProductGet$Response.fromJsonFactory,
    );

    return _productNoAuthFlashSaleProductGet(
      current: current,
      size: size,
      productCode: productCode,
    );
  }

  ///特价商品
  ///@param current
  ///@param size
  ///@param productCode
  @GET(path: '/product/no-auth/flashSaleProduct')
  Future<chopper.Response<ProductNoAuthFlashSaleProductGet$Response>>
  _productNoAuthFlashSaleProductGet({
    @Query('current') String? current,
    @Query('size') String? size,
    @Query('productCode') String? productCode,
    @chopper.Tag()
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
  });

  ///相册商品
  ///@param pageNum
  ///@param pageSize
  ///@param albumCode
  ///@param productName
  ///@param productCode
  ///@param imageUrl 图片
  ///@param categoryId
  ///@param minPrice
  ///@param maxPrice
  Future<chopper.Response<ProductNoAuthAlbumProductGet$Response>>
  productNoAuthAlbumProductGet({
    required String? pageNum,
    required String? pageSize,
    required String? albumCode,
    String? productName,
    String? productCode,
    String? imageUrl,
    String? categoryId,
    String? minPrice,
    String? maxPrice,
  }) {
    generatedMapping.putIfAbsent(
      ProductNoAuthAlbumProductGet$Response,
      () => ProductNoAuthAlbumProductGet$Response.fromJsonFactory,
    );

    return _productNoAuthAlbumProductGet(
      pageNum: pageNum,
      pageSize: pageSize,
      albumCode: albumCode,
      productName: productName,
      productCode: productCode,
      imageUrl: imageUrl,
      categoryId: categoryId,
      minPrice: minPrice,
      maxPrice: maxPrice,
    );
  }

  ///相册商品
  ///@param pageNum
  ///@param pageSize
  ///@param albumCode
  ///@param productName
  ///@param productCode
  ///@param imageUrl 图片
  ///@param categoryId
  ///@param minPrice
  ///@param maxPrice
  @GET(path: '/product/no-auth/albumProduct')
  Future<chopper.Response<ProductNoAuthAlbumProductGet$Response>>
  _productNoAuthAlbumProductGet({
    @Query('pageNum') required String? pageNum,
    @Query('pageSize') required String? pageSize,
    @Query('albumCode') required String? albumCode,
    @Query('productName') String? productName,
    @Query('productCode') String? productCode,
    @Query('imageUrl') String? imageUrl,
    @Query('categoryId') String? categoryId,
    @Query('minPrice') String? minPrice,
    @Query('maxPrice') String? maxPrice,
    @chopper.Tag()
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
  });

  ///第三方店铺信息和TopN商品
  ///@param shopCode
  ///@param sourcePlatform 来源平台
  Future<chopper.Response<ShopNoAuthGetThirdShopGet$Response>>
  shopNoAuthGetThirdShopGet({
    required String? shopCode,
    required String? sourcePlatform,
  }) {
    generatedMapping.putIfAbsent(
      ShopNoAuthGetThirdShopGet$Response,
      () => ShopNoAuthGetThirdShopGet$Response.fromJsonFactory,
    );

    return _shopNoAuthGetThirdShopGet(
      shopCode: shopCode,
      sourcePlatform: sourcePlatform,
    );
  }

  ///第三方店铺信息和TopN商品
  ///@param shopCode
  ///@param sourcePlatform 来源平台
  @GET(path: '/shop/no-auth/getThirdShop')
  Future<chopper.Response<ShopNoAuthGetThirdShopGet$Response>>
  _shopNoAuthGetThirdShopGet({
    @Query('shopCode') required String? shopCode,
    @Query('sourcePlatform') required String? sourcePlatform,
    @chopper.Tag()
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
  });

  ///红人商品
  ///@param code
  Future<chopper.Response<ProductNoAuthKolProductGet$Response>>
  productNoAuthKolProductGet({required String? code}) {
    generatedMapping.putIfAbsent(
      ProductNoAuthKolProductGet$Response,
      () => ProductNoAuthKolProductGet$Response.fromJsonFactory,
    );

    return _productNoAuthKolProductGet(code: code);
  }

  ///红人商品
  ///@param code
  @GET(path: '/product/no-auth/kolProduct')
  Future<chopper.Response<ProductNoAuthKolProductGet$Response>>
  _productNoAuthKolProductGet({
    @Query('code') required String? code,
    @chopper.Tag()
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
  });

  ///首选商品
  ///@param pageNum
  ///@param pageSize
  ///@param brandName
  ///@param categoryId
  ///@param productCode
  Future<chopper.Response<ProductNoAuthPremierProductGet$Response>>
  productNoAuthPremierProductGet({
    required String? pageNum,
    required String? pageSize,
    String? brandName,
    String? categoryId,
    String? productCode,
  }) {
    generatedMapping.putIfAbsent(
      ProductNoAuthPremierProductGet$Response,
      () => ProductNoAuthPremierProductGet$Response.fromJsonFactory,
    );

    return _productNoAuthPremierProductGet(
      pageNum: pageNum,
      pageSize: pageSize,
      brandName: brandName,
      categoryId: categoryId,
      productCode: productCode,
    );
  }

  ///首选商品
  ///@param pageNum
  ///@param pageSize
  ///@param brandName
  ///@param categoryId
  ///@param productCode
  @GET(path: '/product/no-auth/premierProduct')
  Future<chopper.Response<ProductNoAuthPremierProductGet$Response>>
  _productNoAuthPremierProductGet({
    @Query('pageNum') required String? pageNum,
    @Query('pageSize') required String? pageSize,
    @Query('brandName') String? brandName,
    @Query('categoryId') String? categoryId,
    @Query('productCode') String? productCode,
    @chopper.Tag()
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
  });

  ///首选商品品牌
  Future<chopper.Response<ProductNoAuthPremierProductBrandGet$Response>>
  productNoAuthPremierProductBrandGet() {
    generatedMapping.putIfAbsent(
      ProductNoAuthPremierProductBrandGet$Response,
      () => ProductNoAuthPremierProductBrandGet$Response.fromJsonFactory,
    );

    return _productNoAuthPremierProductBrandGet();
  }

  ///首选商品品牌
  @GET(path: '/product/no-auth/premierProductBrand')
  Future<chopper.Response<ProductNoAuthPremierProductBrandGet$Response>>
  _productNoAuthPremierProductBrandGet({
    @chopper.Tag()
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
  });

  ///分类热门商品推荐
  ///@param root
  Future<chopper.Response<RecommendNoAuthCategoryRecommendationGet$Response>>
  recommendNoAuthCategoryRecommendationGet({Object? root}) {
    generatedMapping.putIfAbsent(
      RecommendNoAuthCategoryRecommendationGet$Response,
      () => RecommendNoAuthCategoryRecommendationGet$Response.fromJsonFactory,
    );

    return _recommendNoAuthCategoryRecommendationGet(root: root);
  }

  ///分类热门商品推荐
  ///@param root
  @GET(path: '/recommend/no-auth/categoryRecommendation')
  Future<chopper.Response<RecommendNoAuthCategoryRecommendationGet$Response>>
  _recommendNoAuthCategoryRecommendationGet({
    @Body() Object? root,
    @chopper.Tag()
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
  });

  ///分类页商品
  ///@param root
  Future<chopper.Response<RecommendNoAuthCategoryPost$Response>>
  recommendNoAuthCategoryPost({Object? root}) {
    generatedMapping.putIfAbsent(
      RecommendNoAuthCategoryPost$Response,
      () => RecommendNoAuthCategoryPost$Response.fromJsonFactory,
    );

    return _recommendNoAuthCategoryPost(root: root);
  }

  ///分类页商品
  ///@param root
  @POST(path: '/recommend/no-auth/category')
  Future<chopper.Response<RecommendNoAuthCategoryPost$Response>>
  _recommendNoAuthCategoryPost({
    @Body() Object? root,
    @chopper.Tag()
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
  });

  ///店铺页商品
  ///@param root
  Future<chopper.Response<RecommendNoAuthShopPost$Response>>
  recommendNoAuthShopPost({Object? root}) {
    generatedMapping.putIfAbsent(
      RecommendNoAuthShopPost$Response,
      () => RecommendNoAuthShopPost$Response.fromJsonFactory,
    );

    return _recommendNoAuthShopPost(root: root);
  }

  ///店铺页商品
  ///@param root
  @POST(path: '/recommend/no-auth/shop')
  Future<chopper.Response<RecommendNoAuthShopPost$Response>>
  _recommendNoAuthShopPost({
    @Body() Object? root,
    @chopper.Tag()
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
  });

  ///相关商品【后续可能会有换一批之类，用分页接口】
  ///@param root
  Future<chopper.Response<RecommendNoAuthSimilarProductPost$Response>>
  recommendNoAuthSimilarProductPost({Object? root}) {
    generatedMapping.putIfAbsent(
      RecommendNoAuthSimilarProductPost$Response,
      () => RecommendNoAuthSimilarProductPost$Response.fromJsonFactory,
    );

    return _recommendNoAuthSimilarProductPost(root: root);
  }

  ///相关商品【后续可能会有换一批之类，用分页接口】
  ///@param root
  @POST(path: '/recommend/no-auth/similarProduct')
  Future<chopper.Response<RecommendNoAuthSimilarProductPost$Response>>
  _recommendNoAuthSimilarProductPost({
    @Body() Object? root,
    @chopper.Tag()
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
  });
}

@JsonSerializable(explicitToJson: true)
class ProductReviewNoAuthPageGet$Response {
  const ProductReviewNoAuthPageGet$Response({
    this.code,
    this.message,
    this.data,
  });

  factory ProductReviewNoAuthPageGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductReviewNoAuthPageGet$ResponseFromJson(json);

  static const toJsonFactory = _$ProductReviewNoAuthPageGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductReviewNoAuthPageGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final ProductReviewNoAuthPageGet$Response$Data? data;
  static const fromJsonFactory = _$ProductReviewNoAuthPageGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductReviewNoAuthPageGet$Response &&
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

extension $ProductReviewNoAuthPageGet$ResponseExtension
    on ProductReviewNoAuthPageGet$Response {
  ProductReviewNoAuthPageGet$Response copyWith({
    double? code,
    String? message,
    ProductReviewNoAuthPageGet$Response$Data? data,
  }) {
    return ProductReviewNoAuthPageGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

  ProductReviewNoAuthPageGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<ProductReviewNoAuthPageGet$Response$Data?>? data,
  }) {
    return ProductReviewNoAuthPageGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductReviewNoAuthSummaryGet$Response {
  const ProductReviewNoAuthSummaryGet$Response({
    this.code,
    this.message,
    this.data,
  });

  factory ProductReviewNoAuthSummaryGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductReviewNoAuthSummaryGet$ResponseFromJson(json);

  static const toJsonFactory = _$ProductReviewNoAuthSummaryGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductReviewNoAuthSummaryGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final ProductReviewNoAuthSummaryGet$Response$Data? data;
  static const fromJsonFactory =
      _$ProductReviewNoAuthSummaryGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductReviewNoAuthSummaryGet$Response &&
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

extension $ProductReviewNoAuthSummaryGet$ResponseExtension
    on ProductReviewNoAuthSummaryGet$Response {
  ProductReviewNoAuthSummaryGet$Response copyWith({
    double? code,
    String? message,
    ProductReviewNoAuthSummaryGet$Response$Data? data,
  }) {
    return ProductReviewNoAuthSummaryGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

  ProductReviewNoAuthSummaryGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<ProductReviewNoAuthSummaryGet$Response$Data?>? data,
  }) {
    return ProductReviewNoAuthSummaryGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CategoryNoAuthTreeGet$Response {
  const CategoryNoAuthTreeGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory CategoryNoAuthTreeGet$Response.fromJson(Map<String, dynamic> json) =>
      _$CategoryNoAuthTreeGet$ResponseFromJson(json);

  static const toJsonFactory = _$CategoryNoAuthTreeGet$ResponseToJson;
  Map<String, dynamic> toJson() => _$CategoryNoAuthTreeGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final CategoryNoAuthTreeGet$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$CategoryNoAuthTreeGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CategoryNoAuthTreeGet$Response &&
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

extension $CategoryNoAuthTreeGet$ResponseExtension
    on CategoryNoAuthTreeGet$Response {
  CategoryNoAuthTreeGet$Response copyWith({
    double? code,
    String? message,
    CategoryNoAuthTreeGet$Response$Data? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return CategoryNoAuthTreeGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  CategoryNoAuthTreeGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<CategoryNoAuthTreeGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return CategoryNoAuthTreeGet$Response(
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
class ActivityNoAuthFlashSaleActivityGet$Response {
  const ActivityNoAuthFlashSaleActivityGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.success,
  });

  factory ActivityNoAuthFlashSaleActivityGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ActivityNoAuthFlashSaleActivityGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$ActivityNoAuthFlashSaleActivityGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ActivityNoAuthFlashSaleActivityGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final ActivityNoAuthFlashSaleActivityGet$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory =
      _$ActivityNoAuthFlashSaleActivityGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ActivityNoAuthFlashSaleActivityGet$Response &&
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

extension $ActivityNoAuthFlashSaleActivityGet$ResponseExtension
    on ActivityNoAuthFlashSaleActivityGet$Response {
  ActivityNoAuthFlashSaleActivityGet$Response copyWith({
    double? code,
    String? message,
    ActivityNoAuthFlashSaleActivityGet$Response$Data? data,
    String? traceId,
    bool? success,
  }) {
    return ActivityNoAuthFlashSaleActivityGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      success: success ?? this.success,
    );
  }

  ActivityNoAuthFlashSaleActivityGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<ActivityNoAuthFlashSaleActivityGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<bool?>? success,
  }) {
    return ActivityNoAuthFlashSaleActivityGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ActivityNoAuthFlashSaleActivityProductGet$Response {
  const ActivityNoAuthFlashSaleActivityProductGet$Response({
    required this.code,
    required this.message,
    required this.data,
    required this.traceId,
  });

  factory ActivityNoAuthFlashSaleActivityProductGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ActivityNoAuthFlashSaleActivityProductGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$ActivityNoAuthFlashSaleActivityProductGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ActivityNoAuthFlashSaleActivityProductGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final String code;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final ActivityNoAuthFlashSaleActivityProductGet$Response$Data data;
  @JsonKey(name: 'traceId')
  final String traceId;
  static const fromJsonFactory =
      _$ActivityNoAuthFlashSaleActivityProductGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ActivityNoAuthFlashSaleActivityProductGet$Response &&
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
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $ActivityNoAuthFlashSaleActivityProductGet$ResponseExtension
    on ActivityNoAuthFlashSaleActivityProductGet$Response {
  ActivityNoAuthFlashSaleActivityProductGet$Response copyWith({
    String? code,
    String? message,
    ActivityNoAuthFlashSaleActivityProductGet$Response$Data? data,
    String? traceId,
  }) {
    return ActivityNoAuthFlashSaleActivityProductGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
    );
  }

  ActivityNoAuthFlashSaleActivityProductGet$Response copyWithWrapped({
    Wrapped<String>? code,
    Wrapped<String>? message,
    Wrapped<ActivityNoAuthFlashSaleActivityProductGet$Response$Data>? data,
    Wrapped<String>? traceId,
  }) {
    return ActivityNoAuthFlashSaleActivityProductGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductPremiumDupeNoAuthPagePost$Response {
  const ProductPremiumDupeNoAuthPagePost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
  });

  factory ProductPremiumDupeNoAuthPagePost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductPremiumDupeNoAuthPagePost$ResponseFromJson(json);

  static const toJsonFactory =
      _$ProductPremiumDupeNoAuthPagePost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductPremiumDupeNoAuthPagePost$ResponseToJson(this);

  @JsonKey(name: 'code')
  final int? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final ProductPremiumDupeNoAuthPagePost$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  static const fromJsonFactory =
      _$ProductPremiumDupeNoAuthPagePost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductPremiumDupeNoAuthPagePost$Response &&
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
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $ProductPremiumDupeNoAuthPagePost$ResponseExtension
    on ProductPremiumDupeNoAuthPagePost$Response {
  ProductPremiumDupeNoAuthPagePost$Response copyWith({
    int? code,
    String? message,
    ProductPremiumDupeNoAuthPagePost$Response$Data? data,
    String? traceId,
  }) {
    return ProductPremiumDupeNoAuthPagePost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
    );
  }

  ProductPremiumDupeNoAuthPagePost$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<ProductPremiumDupeNoAuthPagePost$Response$Data?>? data,
    Wrapped<String?>? traceId,
  }) {
    return ProductPremiumDupeNoAuthPagePost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductPremiumDupeNoAuthMetaGet$Response {
  const ProductPremiumDupeNoAuthMetaGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
  });

  factory ProductPremiumDupeNoAuthMetaGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductPremiumDupeNoAuthMetaGet$ResponseFromJson(json);

  static const toJsonFactory = _$ProductPremiumDupeNoAuthMetaGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductPremiumDupeNoAuthMetaGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final int? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final ProductPremiumDupeNoAuthMetaGet$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  static const fromJsonFactory =
      _$ProductPremiumDupeNoAuthMetaGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductPremiumDupeNoAuthMetaGet$Response &&
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
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $ProductPremiumDupeNoAuthMetaGet$ResponseExtension
    on ProductPremiumDupeNoAuthMetaGet$Response {
  ProductPremiumDupeNoAuthMetaGet$Response copyWith({
    int? code,
    String? message,
    ProductPremiumDupeNoAuthMetaGet$Response$Data? data,
    String? traceId,
  }) {
    return ProductPremiumDupeNoAuthMetaGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
    );
  }

  ProductPremiumDupeNoAuthMetaGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<ProductPremiumDupeNoAuthMetaGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
  }) {
    return ProductPremiumDupeNoAuthMetaGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductPremiumDupeNoAuthSelectionGet$Response {
  const ProductPremiumDupeNoAuthSelectionGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
  });

  factory ProductPremiumDupeNoAuthSelectionGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductPremiumDupeNoAuthSelectionGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$ProductPremiumDupeNoAuthSelectionGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductPremiumDupeNoAuthSelectionGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final int? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final List<ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item>? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  static const fromJsonFactory =
      _$ProductPremiumDupeNoAuthSelectionGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductPremiumDupeNoAuthSelectionGet$Response &&
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
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $ProductPremiumDupeNoAuthSelectionGet$ResponseExtension
    on ProductPremiumDupeNoAuthSelectionGet$Response {
  ProductPremiumDupeNoAuthSelectionGet$Response copyWith({
    int? code,
    String? message,
    List<ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item>? data,
    String? traceId,
  }) {
    return ProductPremiumDupeNoAuthSelectionGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
    );
  }

  ProductPremiumDupeNoAuthSelectionGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<List<ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item>?>?
    data,
    Wrapped<String?>? traceId,
  }) {
    return ProductPremiumDupeNoAuthSelectionGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ExternalPurchaseRecordPost$Response {
  const ExternalPurchaseRecordPost$Response({
    this.code,
    this.message,
    this.data,
  });

  factory ExternalPurchaseRecordPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ExternalPurchaseRecordPost$ResponseFromJson(json);

  static const toJsonFactory = _$ExternalPurchaseRecordPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ExternalPurchaseRecordPost$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final bool? data;
  static const fromJsonFactory = _$ExternalPurchaseRecordPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ExternalPurchaseRecordPost$Response &&
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

extension $ExternalPurchaseRecordPost$ResponseExtension
    on ExternalPurchaseRecordPost$Response {
  ExternalPurchaseRecordPost$Response copyWith({
    double? code,
    String? message,
    bool? data,
  }) {
    return ExternalPurchaseRecordPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

  ExternalPurchaseRecordPost$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<bool?>? data,
  }) {
    return ExternalPurchaseRecordPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthPushProductGet$Response {
  const ProductNoAuthPushProductGet$Response({
    required this.code,
    required this.message,
    required this.data,
    required this.traceId,
  });

  factory ProductNoAuthPushProductGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthPushProductGet$ResponseFromJson(json);

  static const toJsonFactory = _$ProductNoAuthPushProductGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthPushProductGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final int code;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final ProductNoAuthPushProductGet$Response$Data data;
  @JsonKey(name: 'traceId')
  final String traceId;
  static const fromJsonFactory = _$ProductNoAuthPushProductGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthPushProductGet$Response &&
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
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthPushProductGet$ResponseExtension
    on ProductNoAuthPushProductGet$Response {
  ProductNoAuthPushProductGet$Response copyWith({
    int? code,
    String? message,
    ProductNoAuthPushProductGet$Response$Data? data,
    String? traceId,
  }) {
    return ProductNoAuthPushProductGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
    );
  }

  ProductNoAuthPushProductGet$Response copyWithWrapped({
    Wrapped<int>? code,
    Wrapped<String>? message,
    Wrapped<ProductNoAuthPushProductGet$Response$Data>? data,
    Wrapped<String>? traceId,
  }) {
    return ProductNoAuthPushProductGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthSearchGet$Response {
  const ProductNoAuthSearchGet$Response({
    required this.code,
    required this.message,
    required this.data,
    required this.traceId,
  });

  factory ProductNoAuthSearchGet$Response.fromJson(Map<String, dynamic> json) =>
      _$ProductNoAuthSearchGet$ResponseFromJson(json);

  static const toJsonFactory = _$ProductNoAuthSearchGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthSearchGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final int code;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final List<ProductNoAuthSearchGet$Response$Data$Item> data;
  @JsonKey(name: 'traceId')
  final String traceId;
  static const fromJsonFactory = _$ProductNoAuthSearchGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthSearchGet$Response &&
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
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthSearchGet$ResponseExtension
    on ProductNoAuthSearchGet$Response {
  ProductNoAuthSearchGet$Response copyWith({
    int? code,
    String? message,
    List<ProductNoAuthSearchGet$Response$Data$Item>? data,
    String? traceId,
  }) {
    return ProductNoAuthSearchGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
    );
  }

  ProductNoAuthSearchGet$Response copyWithWrapped({
    Wrapped<int>? code,
    Wrapped<String>? message,
    Wrapped<List<ProductNoAuthSearchGet$Response$Data$Item>>? data,
    Wrapped<String>? traceId,
  }) {
    return ProductNoAuthSearchGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthCombineSearchGet$Response {
  const ProductNoAuthCombineSearchGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory ProductNoAuthCombineSearchGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthCombineSearchGet$ResponseFromJson(json);

  static const toJsonFactory = _$ProductNoAuthCombineSearchGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthCombineSearchGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final ProductNoAuthCombineSearchGet$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory =
      _$ProductNoAuthCombineSearchGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthCombineSearchGet$Response &&
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

extension $ProductNoAuthCombineSearchGet$ResponseExtension
    on ProductNoAuthCombineSearchGet$Response {
  ProductNoAuthCombineSearchGet$Response copyWith({
    double? code,
    String? message,
    ProductNoAuthCombineSearchGet$Response$Data? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return ProductNoAuthCombineSearchGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  ProductNoAuthCombineSearchGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<ProductNoAuthCombineSearchGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return ProductNoAuthCombineSearchGet$Response(
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
class ProductNoAuthNewArrivalProductGet$Response {
  const ProductNoAuthNewArrivalProductGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory ProductNoAuthNewArrivalProductGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthNewArrivalProductGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthNewArrivalProductGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthNewArrivalProductGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final ProductNoAuthNewArrivalProductGet$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory =
      _$ProductNoAuthNewArrivalProductGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthNewArrivalProductGet$Response &&
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

extension $ProductNoAuthNewArrivalProductGet$ResponseExtension
    on ProductNoAuthNewArrivalProductGet$Response {
  ProductNoAuthNewArrivalProductGet$Response copyWith({
    double? code,
    String? message,
    ProductNoAuthNewArrivalProductGet$Response$Data? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return ProductNoAuthNewArrivalProductGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  ProductNoAuthNewArrivalProductGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<ProductNoAuthNewArrivalProductGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return ProductNoAuthNewArrivalProductGet$Response(
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
class ProductNoAuthNewArrivalProductBrandGet$Response {
  const ProductNoAuthNewArrivalProductBrandGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory ProductNoAuthNewArrivalProductBrandGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthNewArrivalProductBrandGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthNewArrivalProductBrandGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthNewArrivalProductBrandGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data', defaultValue: <String>[])
  final List<String>? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory =
      _$ProductNoAuthNewArrivalProductBrandGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthNewArrivalProductBrandGet$Response &&
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

extension $ProductNoAuthNewArrivalProductBrandGet$ResponseExtension
    on ProductNoAuthNewArrivalProductBrandGet$Response {
  ProductNoAuthNewArrivalProductBrandGet$Response copyWith({
    double? code,
    String? message,
    List<String>? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return ProductNoAuthNewArrivalProductBrandGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  ProductNoAuthNewArrivalProductBrandGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<List<String>?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return ProductNoAuthNewArrivalProductBrandGet$Response(
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
class ProductNoAuthSkuListGet$Response {
  const ProductNoAuthSkuListGet$Response({
    required this.code,
    required this.message,
    required this.data,
    required this.traceId,
  });

  factory ProductNoAuthSkuListGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthSkuListGet$ResponseFromJson(json);

  static const toJsonFactory = _$ProductNoAuthSkuListGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthSkuListGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final int code;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final List<ProductNoAuthSkuListGet$Response$Data$Item> data;
  @JsonKey(name: 'traceId')
  final String traceId;
  static const fromJsonFactory = _$ProductNoAuthSkuListGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthSkuListGet$Response &&
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
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthSkuListGet$ResponseExtension
    on ProductNoAuthSkuListGet$Response {
  ProductNoAuthSkuListGet$Response copyWith({
    int? code,
    String? message,
    List<ProductNoAuthSkuListGet$Response$Data$Item>? data,
    String? traceId,
  }) {
    return ProductNoAuthSkuListGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
    );
  }

  ProductNoAuthSkuListGet$Response copyWithWrapped({
    Wrapped<int>? code,
    Wrapped<String>? message,
    Wrapped<List<ProductNoAuthSkuListGet$Response$Data$Item>>? data,
    Wrapped<String>? traceId,
  }) {
    return ProductNoAuthSkuListGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthGetProductInfoGet$Response {
  const ProductNoAuthGetProductInfoGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory ProductNoAuthGetProductInfoGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthGetProductInfoGet$ResponseFromJson(json);

  static const toJsonFactory = _$ProductNoAuthGetProductInfoGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthGetProductInfoGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final ProductNoAuthGetProductInfoGet$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory =
      _$ProductNoAuthGetProductInfoGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthGetProductInfoGet$Response &&
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

extension $ProductNoAuthGetProductInfoGet$ResponseExtension
    on ProductNoAuthGetProductInfoGet$Response {
  ProductNoAuthGetProductInfoGet$Response copyWith({
    double? code,
    String? message,
    ProductNoAuthGetProductInfoGet$Response$Data? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return ProductNoAuthGetProductInfoGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  ProductNoAuthGetProductInfoGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<ProductNoAuthGetProductInfoGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return ProductNoAuthGetProductInfoGet$Response(
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
class ProductNoAuthPremierProductCategoryGet$Response {
  const ProductNoAuthPremierProductCategoryGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory ProductNoAuthPremierProductCategoryGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthPremierProductCategoryGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthPremierProductCategoryGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthPremierProductCategoryGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final ProductNoAuthPremierProductCategoryGet$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory =
      _$ProductNoAuthPremierProductCategoryGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthPremierProductCategoryGet$Response &&
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

extension $ProductNoAuthPremierProductCategoryGet$ResponseExtension
    on ProductNoAuthPremierProductCategoryGet$Response {
  ProductNoAuthPremierProductCategoryGet$Response copyWith({
    double? code,
    String? message,
    ProductNoAuthPremierProductCategoryGet$Response$Data? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return ProductNoAuthPremierProductCategoryGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  ProductNoAuthPremierProductCategoryGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<ProductNoAuthPremierProductCategoryGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return ProductNoAuthPremierProductCategoryGet$Response(
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
class ProductNoAuthHotProductGet$Response {
  const ProductNoAuthHotProductGet$Response({
    required this.code,
    required this.message,
    required this.data,
    required this.traceId,
  });

  factory ProductNoAuthHotProductGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthHotProductGet$ResponseFromJson(json);

  static const toJsonFactory = _$ProductNoAuthHotProductGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthHotProductGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final int code;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final List<ProductNoAuthHotProductGet$Response$Data$Item> data;
  @JsonKey(name: 'traceId')
  final String traceId;
  static const fromJsonFactory = _$ProductNoAuthHotProductGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthHotProductGet$Response &&
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
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthHotProductGet$ResponseExtension
    on ProductNoAuthHotProductGet$Response {
  ProductNoAuthHotProductGet$Response copyWith({
    int? code,
    String? message,
    List<ProductNoAuthHotProductGet$Response$Data$Item>? data,
    String? traceId,
  }) {
    return ProductNoAuthHotProductGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
    );
  }

  ProductNoAuthHotProductGet$Response copyWithWrapped({
    Wrapped<int>? code,
    Wrapped<String>? message,
    Wrapped<List<ProductNoAuthHotProductGet$Response$Data$Item>>? data,
    Wrapped<String>? traceId,
  }) {
    return ProductNoAuthHotProductGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthHotProductV2Get$Response {
  const ProductNoAuthHotProductV2Get$Response({
    required this.code,
    required this.message,
    required this.data,
    required this.traceId,
  });

  factory ProductNoAuthHotProductV2Get$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthHotProductV2Get$ResponseFromJson(json);

  static const toJsonFactory = _$ProductNoAuthHotProductV2Get$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthHotProductV2Get$ResponseToJson(this);

  @JsonKey(name: 'code')
  final int code;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final ProductNoAuthHotProductV2Get$Response$Data data;
  @JsonKey(name: 'traceId')
  final String traceId;
  static const fromJsonFactory =
      _$ProductNoAuthHotProductV2Get$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthHotProductV2Get$Response &&
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
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthHotProductV2Get$ResponseExtension
    on ProductNoAuthHotProductV2Get$Response {
  ProductNoAuthHotProductV2Get$Response copyWith({
    int? code,
    String? message,
    ProductNoAuthHotProductV2Get$Response$Data? data,
    String? traceId,
  }) {
    return ProductNoAuthHotProductV2Get$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
    );
  }

  ProductNoAuthHotProductV2Get$Response copyWithWrapped({
    Wrapped<int>? code,
    Wrapped<String>? message,
    Wrapped<ProductNoAuthHotProductV2Get$Response$Data>? data,
    Wrapped<String>? traceId,
  }) {
    return ProductNoAuthHotProductV2Get$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthHotProductV3Get$Response {
  const ProductNoAuthHotProductV3Get$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.success,
  });

  factory ProductNoAuthHotProductV3Get$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthHotProductV3Get$ResponseFromJson(json);

  static const toJsonFactory = _$ProductNoAuthHotProductV3Get$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthHotProductV3Get$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final ProductNoAuthHotProductV3Get$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory =
      _$ProductNoAuthHotProductV3Get$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthHotProductV3Get$Response &&
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

extension $ProductNoAuthHotProductV3Get$ResponseExtension
    on ProductNoAuthHotProductV3Get$Response {
  ProductNoAuthHotProductV3Get$Response copyWith({
    double? code,
    String? message,
    ProductNoAuthHotProductV3Get$Response$Data? data,
    String? traceId,
    bool? success,
  }) {
    return ProductNoAuthHotProductV3Get$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      success: success ?? this.success,
    );
  }

  ProductNoAuthHotProductV3Get$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<ProductNoAuthHotProductV3Get$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<bool?>? success,
  }) {
    return ProductNoAuthHotProductV3Get$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthFlashSaleProductGet$Response {
  const ProductNoAuthFlashSaleProductGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory ProductNoAuthFlashSaleProductGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthFlashSaleProductGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthFlashSaleProductGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthFlashSaleProductGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final List<ProductNoAuthFlashSaleProductGet$Response$Data$Item>? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory =
      _$ProductNoAuthFlashSaleProductGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthFlashSaleProductGet$Response &&
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

extension $ProductNoAuthFlashSaleProductGet$ResponseExtension
    on ProductNoAuthFlashSaleProductGet$Response {
  ProductNoAuthFlashSaleProductGet$Response copyWith({
    double? code,
    String? message,
    List<ProductNoAuthFlashSaleProductGet$Response$Data$Item>? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return ProductNoAuthFlashSaleProductGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  ProductNoAuthFlashSaleProductGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<List<ProductNoAuthFlashSaleProductGet$Response$Data$Item>?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return ProductNoAuthFlashSaleProductGet$Response(
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
class ProductNoAuthAlbumProductGet$Response {
  const ProductNoAuthAlbumProductGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory ProductNoAuthAlbumProductGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthAlbumProductGet$ResponseFromJson(json);

  static const toJsonFactory = _$ProductNoAuthAlbumProductGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthAlbumProductGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final ProductNoAuthAlbumProductGet$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory =
      _$ProductNoAuthAlbumProductGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthAlbumProductGet$Response &&
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

extension $ProductNoAuthAlbumProductGet$ResponseExtension
    on ProductNoAuthAlbumProductGet$Response {
  ProductNoAuthAlbumProductGet$Response copyWith({
    double? code,
    String? message,
    ProductNoAuthAlbumProductGet$Response$Data? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return ProductNoAuthAlbumProductGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  ProductNoAuthAlbumProductGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<ProductNoAuthAlbumProductGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return ProductNoAuthAlbumProductGet$Response(
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
class ShopNoAuthGetThirdShopGet$Response {
  const ShopNoAuthGetThirdShopGet$Response({
    required this.code,
    required this.message,
    required this.data,
    required this.traceId,
  });

  factory ShopNoAuthGetThirdShopGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ShopNoAuthGetThirdShopGet$ResponseFromJson(json);

  static const toJsonFactory = _$ShopNoAuthGetThirdShopGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ShopNoAuthGetThirdShopGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final int code;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final ShopNoAuthGetThirdShopGet$Response$Data data;
  @JsonKey(name: 'traceId')
  final String traceId;
  static const fromJsonFactory = _$ShopNoAuthGetThirdShopGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ShopNoAuthGetThirdShopGet$Response &&
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
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $ShopNoAuthGetThirdShopGet$ResponseExtension
    on ShopNoAuthGetThirdShopGet$Response {
  ShopNoAuthGetThirdShopGet$Response copyWith({
    int? code,
    String? message,
    ShopNoAuthGetThirdShopGet$Response$Data? data,
    String? traceId,
  }) {
    return ShopNoAuthGetThirdShopGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
    );
  }

  ShopNoAuthGetThirdShopGet$Response copyWithWrapped({
    Wrapped<int>? code,
    Wrapped<String>? message,
    Wrapped<ShopNoAuthGetThirdShopGet$Response$Data>? data,
    Wrapped<String>? traceId,
  }) {
    return ShopNoAuthGetThirdShopGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthKolProductGet$Response {
  const ProductNoAuthKolProductGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory ProductNoAuthKolProductGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthKolProductGet$ResponseFromJson(json);

  static const toJsonFactory = _$ProductNoAuthKolProductGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthKolProductGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final List<ProductNoAuthKolProductGet$Response$Data$Item>? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$ProductNoAuthKolProductGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthKolProductGet$Response &&
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

extension $ProductNoAuthKolProductGet$ResponseExtension
    on ProductNoAuthKolProductGet$Response {
  ProductNoAuthKolProductGet$Response copyWith({
    double? code,
    String? message,
    List<ProductNoAuthKolProductGet$Response$Data$Item>? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return ProductNoAuthKolProductGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  ProductNoAuthKolProductGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<List<ProductNoAuthKolProductGet$Response$Data$Item>?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return ProductNoAuthKolProductGet$Response(
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
class ProductNoAuthPremierProductGet$Response {
  const ProductNoAuthPremierProductGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory ProductNoAuthPremierProductGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthPremierProductGet$ResponseFromJson(json);

  static const toJsonFactory = _$ProductNoAuthPremierProductGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthPremierProductGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final ProductNoAuthPremierProductGet$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory =
      _$ProductNoAuthPremierProductGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthPremierProductGet$Response &&
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

extension $ProductNoAuthPremierProductGet$ResponseExtension
    on ProductNoAuthPremierProductGet$Response {
  ProductNoAuthPremierProductGet$Response copyWith({
    double? code,
    String? message,
    ProductNoAuthPremierProductGet$Response$Data? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return ProductNoAuthPremierProductGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  ProductNoAuthPremierProductGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<ProductNoAuthPremierProductGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return ProductNoAuthPremierProductGet$Response(
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
class ProductNoAuthPremierProductBrandGet$Response {
  const ProductNoAuthPremierProductBrandGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory ProductNoAuthPremierProductBrandGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthPremierProductBrandGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthPremierProductBrandGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthPremierProductBrandGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data', defaultValue: <String>[])
  final List<String>? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory =
      _$ProductNoAuthPremierProductBrandGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthPremierProductBrandGet$Response &&
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

extension $ProductNoAuthPremierProductBrandGet$ResponseExtension
    on ProductNoAuthPremierProductBrandGet$Response {
  ProductNoAuthPremierProductBrandGet$Response copyWith({
    double? code,
    String? message,
    List<String>? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return ProductNoAuthPremierProductBrandGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  ProductNoAuthPremierProductBrandGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<List<String>?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return ProductNoAuthPremierProductBrandGet$Response(
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
class RecommendNoAuthCategoryRecommendationGet$Response {
  const RecommendNoAuthCategoryRecommendationGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.success,
  });

  factory RecommendNoAuthCategoryRecommendationGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$RecommendNoAuthCategoryRecommendationGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$RecommendNoAuthCategoryRecommendationGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$RecommendNoAuthCategoryRecommendationGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final RecommendNoAuthCategoryRecommendationGet$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory =
      _$RecommendNoAuthCategoryRecommendationGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RecommendNoAuthCategoryRecommendationGet$Response &&
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

extension $RecommendNoAuthCategoryRecommendationGet$ResponseExtension
    on RecommendNoAuthCategoryRecommendationGet$Response {
  RecommendNoAuthCategoryRecommendationGet$Response copyWith({
    double? code,
    String? message,
    RecommendNoAuthCategoryRecommendationGet$Response$Data? data,
    String? traceId,
    bool? success,
  }) {
    return RecommendNoAuthCategoryRecommendationGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      success: success ?? this.success,
    );
  }

  RecommendNoAuthCategoryRecommendationGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<RecommendNoAuthCategoryRecommendationGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<bool?>? success,
  }) {
    return RecommendNoAuthCategoryRecommendationGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RecommendNoAuthCategoryPost$Response {
  const RecommendNoAuthCategoryPost$Response({
    required this.code,
    required this.message,
    required this.data,
    required this.traceId,
  });

  factory RecommendNoAuthCategoryPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$RecommendNoAuthCategoryPost$ResponseFromJson(json);

  static const toJsonFactory = _$RecommendNoAuthCategoryPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$RecommendNoAuthCategoryPost$ResponseToJson(this);

  @JsonKey(name: 'code')
  final int code;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final RecommendNoAuthCategoryPost$Response$Data data;
  @JsonKey(name: 'traceId')
  final String traceId;
  static const fromJsonFactory = _$RecommendNoAuthCategoryPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RecommendNoAuthCategoryPost$Response &&
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
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $RecommendNoAuthCategoryPost$ResponseExtension
    on RecommendNoAuthCategoryPost$Response {
  RecommendNoAuthCategoryPost$Response copyWith({
    int? code,
    String? message,
    RecommendNoAuthCategoryPost$Response$Data? data,
    String? traceId,
  }) {
    return RecommendNoAuthCategoryPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
    );
  }

  RecommendNoAuthCategoryPost$Response copyWithWrapped({
    Wrapped<int>? code,
    Wrapped<String>? message,
    Wrapped<RecommendNoAuthCategoryPost$Response$Data>? data,
    Wrapped<String>? traceId,
  }) {
    return RecommendNoAuthCategoryPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RecommendNoAuthShopPost$Response {
  const RecommendNoAuthShopPost$Response({
    required this.code,
    required this.message,
    required this.data,
    required this.traceId,
  });

  factory RecommendNoAuthShopPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$RecommendNoAuthShopPost$ResponseFromJson(json);

  static const toJsonFactory = _$RecommendNoAuthShopPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$RecommendNoAuthShopPost$ResponseToJson(this);

  @JsonKey(name: 'code')
  final int code;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final RecommendNoAuthShopPost$Response$Data data;
  @JsonKey(name: 'traceId')
  final String traceId;
  static const fromJsonFactory = _$RecommendNoAuthShopPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RecommendNoAuthShopPost$Response &&
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
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $RecommendNoAuthShopPost$ResponseExtension
    on RecommendNoAuthShopPost$Response {
  RecommendNoAuthShopPost$Response copyWith({
    int? code,
    String? message,
    RecommendNoAuthShopPost$Response$Data? data,
    String? traceId,
  }) {
    return RecommendNoAuthShopPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
    );
  }

  RecommendNoAuthShopPost$Response copyWithWrapped({
    Wrapped<int>? code,
    Wrapped<String>? message,
    Wrapped<RecommendNoAuthShopPost$Response$Data>? data,
    Wrapped<String>? traceId,
  }) {
    return RecommendNoAuthShopPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RecommendNoAuthSimilarProductPost$Response {
  const RecommendNoAuthSimilarProductPost$Response({
    required this.code,
    required this.message,
    required this.data,
    required this.traceId,
  });

  factory RecommendNoAuthSimilarProductPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$RecommendNoAuthSimilarProductPost$ResponseFromJson(json);

  static const toJsonFactory =
      _$RecommendNoAuthSimilarProductPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$RecommendNoAuthSimilarProductPost$ResponseToJson(this);

  @JsonKey(name: 'code')
  final int code;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final RecommendNoAuthSimilarProductPost$Response$Data data;
  @JsonKey(name: 'traceId')
  final String traceId;
  static const fromJsonFactory =
      _$RecommendNoAuthSimilarProductPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RecommendNoAuthSimilarProductPost$Response &&
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
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $RecommendNoAuthSimilarProductPost$ResponseExtension
    on RecommendNoAuthSimilarProductPost$Response {
  RecommendNoAuthSimilarProductPost$Response copyWith({
    int? code,
    String? message,
    RecommendNoAuthSimilarProductPost$Response$Data? data,
    String? traceId,
  }) {
    return RecommendNoAuthSimilarProductPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
    );
  }

  RecommendNoAuthSimilarProductPost$Response copyWithWrapped({
    Wrapped<int>? code,
    Wrapped<String>? message,
    Wrapped<RecommendNoAuthSimilarProductPost$Response$Data>? data,
    Wrapped<String>? traceId,
  }) {
    return RecommendNoAuthSimilarProductPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductReviewNoAuthPageGet$Response$Data {
  const ProductReviewNoAuthPageGet$Response$Data({
    this.current,
    this.size,
    this.total,
    this.pages,
    this.records,
  });

  factory ProductReviewNoAuthPageGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductReviewNoAuthPageGet$Response$DataFromJson(json);

  static const toJsonFactory = _$ProductReviewNoAuthPageGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductReviewNoAuthPageGet$Response$DataToJson(this);

  @JsonKey(name: 'current')
  final double? current;
  @JsonKey(name: 'size')
  final double? size;
  @JsonKey(name: 'total')
  final double? total;
  @JsonKey(name: 'pages')
  final double? pages;
  @JsonKey(name: 'records')
  final List<ProductReviewNoAuthPageGet$Response$Data$Records$Item>? records;
  static const fromJsonFactory =
      _$ProductReviewNoAuthPageGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductReviewNoAuthPageGet$Response$Data &&
            (identical(other.current, current) ||
                const DeepCollectionEquality().equals(
                  other.current,
                  current,
                )) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.pages, pages) ||
                const DeepCollectionEquality().equals(other.pages, pages)) &&
            (identical(other.records, records) ||
                const DeepCollectionEquality().equals(other.records, records)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(current) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(pages) ^
      const DeepCollectionEquality().hash(records) ^
      runtimeType.hashCode;
}

extension $ProductReviewNoAuthPageGet$Response$DataExtension
    on ProductReviewNoAuthPageGet$Response$Data {
  ProductReviewNoAuthPageGet$Response$Data copyWith({
    double? current,
    double? size,
    double? total,
    double? pages,
    List<ProductReviewNoAuthPageGet$Response$Data$Records$Item>? records,
  }) {
    return ProductReviewNoAuthPageGet$Response$Data(
      current: current ?? this.current,
      size: size ?? this.size,
      total: total ?? this.total,
      pages: pages ?? this.pages,
      records: records ?? this.records,
    );
  }

  ProductReviewNoAuthPageGet$Response$Data copyWithWrapped({
    Wrapped<double?>? current,
    Wrapped<double?>? size,
    Wrapped<double?>? total,
    Wrapped<double?>? pages,
    Wrapped<List<ProductReviewNoAuthPageGet$Response$Data$Records$Item>?>?
    records,
  }) {
    return ProductReviewNoAuthPageGet$Response$Data(
      current: (current != null ? current.value : this.current),
      size: (size != null ? size.value : this.size),
      total: (total != null ? total.value : this.total),
      pages: (pages != null ? pages.value : this.pages),
      records: (records != null ? records.value : this.records),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductReviewNoAuthSummaryGet$Response$Data {
  const ProductReviewNoAuthSummaryGet$Response$Data({
    this.productCode,
    this.reviewCount,
    this.averageScore,
    this.aiSummary,
    this.featuredReviews,
  });

  factory ProductReviewNoAuthSummaryGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductReviewNoAuthSummaryGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$ProductReviewNoAuthSummaryGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductReviewNoAuthSummaryGet$Response$DataToJson(this);

  @JsonKey(name: 'productCode')
  final String? productCode;
  @JsonKey(name: 'reviewCount')
  final double? reviewCount;
  @JsonKey(name: 'averageScore')
  final double? averageScore;
  @JsonKey(name: 'aiSummary')
  final String? aiSummary;
  @JsonKey(name: 'featuredReviews')
  final List<ProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$Item>?
  featuredReviews;
  static const fromJsonFactory =
      _$ProductReviewNoAuthSummaryGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductReviewNoAuthSummaryGet$Response$Data &&
            (identical(other.productCode, productCode) ||
                const DeepCollectionEquality().equals(
                  other.productCode,
                  productCode,
                )) &&
            (identical(other.reviewCount, reviewCount) ||
                const DeepCollectionEquality().equals(
                  other.reviewCount,
                  reviewCount,
                )) &&
            (identical(other.averageScore, averageScore) ||
                const DeepCollectionEquality().equals(
                  other.averageScore,
                  averageScore,
                )) &&
            (identical(other.aiSummary, aiSummary) ||
                const DeepCollectionEquality().equals(
                  other.aiSummary,
                  aiSummary,
                )) &&
            (identical(other.featuredReviews, featuredReviews) ||
                const DeepCollectionEquality().equals(
                  other.featuredReviews,
                  featuredReviews,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(productCode) ^
      const DeepCollectionEquality().hash(reviewCount) ^
      const DeepCollectionEquality().hash(averageScore) ^
      const DeepCollectionEquality().hash(aiSummary) ^
      const DeepCollectionEquality().hash(featuredReviews) ^
      runtimeType.hashCode;
}

extension $ProductReviewNoAuthSummaryGet$Response$DataExtension
    on ProductReviewNoAuthSummaryGet$Response$Data {
  ProductReviewNoAuthSummaryGet$Response$Data copyWith({
    String? productCode,
    double? reviewCount,
    double? averageScore,
    String? aiSummary,
    List<ProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$Item>?
    featuredReviews,
  }) {
    return ProductReviewNoAuthSummaryGet$Response$Data(
      productCode: productCode ?? this.productCode,
      reviewCount: reviewCount ?? this.reviewCount,
      averageScore: averageScore ?? this.averageScore,
      aiSummary: aiSummary ?? this.aiSummary,
      featuredReviews: featuredReviews ?? this.featuredReviews,
    );
  }

  ProductReviewNoAuthSummaryGet$Response$Data copyWithWrapped({
    Wrapped<String?>? productCode,
    Wrapped<double?>? reviewCount,
    Wrapped<double?>? averageScore,
    Wrapped<String?>? aiSummary,
    Wrapped<
      List<ProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$Item>?
    >?
    featuredReviews,
  }) {
    return ProductReviewNoAuthSummaryGet$Response$Data(
      productCode: (productCode != null ? productCode.value : this.productCode),
      reviewCount: (reviewCount != null ? reviewCount.value : this.reviewCount),
      averageScore: (averageScore != null
          ? averageScore.value
          : this.averageScore),
      aiSummary: (aiSummary != null ? aiSummary.value : this.aiSummary),
      featuredReviews: (featuredReviews != null
          ? featuredReviews.value
          : this.featuredReviews),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CategoryNoAuthTreeGet$Response$Data {
  const CategoryNoAuthTreeGet$Response$Data({this.categoryList});

  factory CategoryNoAuthTreeGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$CategoryNoAuthTreeGet$Response$DataFromJson(json);

  static const toJsonFactory = _$CategoryNoAuthTreeGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$CategoryNoAuthTreeGet$Response$DataToJson(this);

  @JsonKey(name: 'categoryList')
  final List<CategoryNoAuthTreeGet$Response$Data$CategoryList$Item>?
  categoryList;
  static const fromJsonFactory = _$CategoryNoAuthTreeGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CategoryNoAuthTreeGet$Response$Data &&
            (identical(other.categoryList, categoryList) ||
                const DeepCollectionEquality().equals(
                  other.categoryList,
                  categoryList,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(categoryList) ^ runtimeType.hashCode;
}

extension $CategoryNoAuthTreeGet$Response$DataExtension
    on CategoryNoAuthTreeGet$Response$Data {
  CategoryNoAuthTreeGet$Response$Data copyWith({
    List<CategoryNoAuthTreeGet$Response$Data$CategoryList$Item>? categoryList,
  }) {
    return CategoryNoAuthTreeGet$Response$Data(
      categoryList: categoryList ?? this.categoryList,
    );
  }

  CategoryNoAuthTreeGet$Response$Data copyWithWrapped({
    Wrapped<List<CategoryNoAuthTreeGet$Response$Data$CategoryList$Item>?>?
    categoryList,
  }) {
    return CategoryNoAuthTreeGet$Response$Data(
      categoryList: (categoryList != null
          ? categoryList.value
          : this.categoryList),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ActivityNoAuthFlashSaleActivityGet$Response$Data {
  const ActivityNoAuthFlashSaleActivityGet$Response$Data({
    this.pic,
    this.ruleLink,
    this.activities,
  });

  factory ActivityNoAuthFlashSaleActivityGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$ActivityNoAuthFlashSaleActivityGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$ActivityNoAuthFlashSaleActivityGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ActivityNoAuthFlashSaleActivityGet$Response$DataToJson(this);

  @JsonKey(name: 'pic')
  final String? pic;
  @JsonKey(name: 'ruleLink')
  final String? ruleLink;
  @JsonKey(name: 'activities')
  final List<ActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$Item>?
  activities;
  static const fromJsonFactory =
      _$ActivityNoAuthFlashSaleActivityGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ActivityNoAuthFlashSaleActivityGet$Response$Data &&
            (identical(other.pic, pic) ||
                const DeepCollectionEquality().equals(other.pic, pic)) &&
            (identical(other.ruleLink, ruleLink) ||
                const DeepCollectionEquality().equals(
                  other.ruleLink,
                  ruleLink,
                )) &&
            (identical(other.activities, activities) ||
                const DeepCollectionEquality().equals(
                  other.activities,
                  activities,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pic) ^
      const DeepCollectionEquality().hash(ruleLink) ^
      const DeepCollectionEquality().hash(activities) ^
      runtimeType.hashCode;
}

extension $ActivityNoAuthFlashSaleActivityGet$Response$DataExtension
    on ActivityNoAuthFlashSaleActivityGet$Response$Data {
  ActivityNoAuthFlashSaleActivityGet$Response$Data copyWith({
    String? pic,
    String? ruleLink,
    List<ActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$Item>?
    activities,
  }) {
    return ActivityNoAuthFlashSaleActivityGet$Response$Data(
      pic: pic ?? this.pic,
      ruleLink: ruleLink ?? this.ruleLink,
      activities: activities ?? this.activities,
    );
  }

  ActivityNoAuthFlashSaleActivityGet$Response$Data copyWithWrapped({
    Wrapped<String?>? pic,
    Wrapped<String?>? ruleLink,
    Wrapped<
      List<ActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$Item>?
    >?
    activities,
  }) {
    return ActivityNoAuthFlashSaleActivityGet$Response$Data(
      pic: (pic != null ? pic.value : this.pic),
      ruleLink: (ruleLink != null ? ruleLink.value : this.ruleLink),
      activities: (activities != null ? activities.value : this.activities),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ActivityNoAuthFlashSaleActivityProductGet$Response$Data {
  const ActivityNoAuthFlashSaleActivityProductGet$Response$Data({
    required this.records,
    required this.total,
    required this.pageSize,
    required this.totalPages,
    required this.current,
  });

  factory ActivityNoAuthFlashSaleActivityProductGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$ActivityNoAuthFlashSaleActivityProductGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$ActivityNoAuthFlashSaleActivityProductGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ActivityNoAuthFlashSaleActivityProductGet$Response$DataToJson(this);

  @JsonKey(name: 'records')
  final List<
    ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item
  >
  records;
  @JsonKey(name: 'total')
  final int total;
  @JsonKey(name: 'pageSize')
  final int pageSize;
  @JsonKey(name: 'totalPages')
  final int totalPages;
  @JsonKey(name: 'current')
  final int current;
  static const fromJsonFactory =
      _$ActivityNoAuthFlashSaleActivityProductGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ActivityNoAuthFlashSaleActivityProductGet$Response$Data &&
            (identical(other.records, records) ||
                const DeepCollectionEquality().equals(
                  other.records,
                  records,
                )) &&
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
                const DeepCollectionEquality().equals(other.current, current)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(records) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(current) ^
      runtimeType.hashCode;
}

extension $ActivityNoAuthFlashSaleActivityProductGet$Response$DataExtension
    on ActivityNoAuthFlashSaleActivityProductGet$Response$Data {
  ActivityNoAuthFlashSaleActivityProductGet$Response$Data copyWith({
    List<ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item>?
    records,
    int? total,
    int? pageSize,
    int? totalPages,
    int? current,
  }) {
    return ActivityNoAuthFlashSaleActivityProductGet$Response$Data(
      records: records ?? this.records,
      total: total ?? this.total,
      pageSize: pageSize ?? this.pageSize,
      totalPages: totalPages ?? this.totalPages,
      current: current ?? this.current,
    );
  }

  ActivityNoAuthFlashSaleActivityProductGet$Response$Data copyWithWrapped({
    Wrapped<
      List<ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item>
    >?
    records,
    Wrapped<int>? total,
    Wrapped<int>? pageSize,
    Wrapped<int>? totalPages,
    Wrapped<int>? current,
  }) {
    return ActivityNoAuthFlashSaleActivityProductGet$Response$Data(
      records: (records != null ? records.value : this.records),
      total: (total != null ? total.value : this.total),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      totalPages: (totalPages != null ? totalPages.value : this.totalPages),
      current: (current != null ? current.value : this.current),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductPremiumDupeNoAuthPagePost$Response$Data {
  const ProductPremiumDupeNoAuthPagePost$Response$Data({
    this.total,
    this.pageSize,
    this.totalPages,
    this.current,
    this.records,
  });

  factory ProductPremiumDupeNoAuthPagePost$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductPremiumDupeNoAuthPagePost$Response$DataFromJson(json);

  static const toJsonFactory =
      _$ProductPremiumDupeNoAuthPagePost$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductPremiumDupeNoAuthPagePost$Response$DataToJson(this);

  @JsonKey(name: 'total')
  final int? total;
  @JsonKey(name: 'pageSize')
  final int? pageSize;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'current')
  final int? current;
  @JsonKey(name: 'records')
  final List<ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item>?
  records;
  static const fromJsonFactory =
      _$ProductPremiumDupeNoAuthPagePost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductPremiumDupeNoAuthPagePost$Response$Data &&
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

extension $ProductPremiumDupeNoAuthPagePost$Response$DataExtension
    on ProductPremiumDupeNoAuthPagePost$Response$Data {
  ProductPremiumDupeNoAuthPagePost$Response$Data copyWith({
    int? total,
    int? pageSize,
    int? totalPages,
    int? current,
    List<ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item>? records,
  }) {
    return ProductPremiumDupeNoAuthPagePost$Response$Data(
      total: total ?? this.total,
      pageSize: pageSize ?? this.pageSize,
      totalPages: totalPages ?? this.totalPages,
      current: current ?? this.current,
      records: records ?? this.records,
    );
  }

  ProductPremiumDupeNoAuthPagePost$Response$Data copyWithWrapped({
    Wrapped<int?>? total,
    Wrapped<int?>? pageSize,
    Wrapped<int?>? totalPages,
    Wrapped<int?>? current,
    Wrapped<List<ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item>?>?
    records,
  }) {
    return ProductPremiumDupeNoAuthPagePost$Response$Data(
      total: (total != null ? total.value : this.total),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      totalPages: (totalPages != null ? totalPages.value : this.totalPages),
      current: (current != null ? current.value : this.current),
      records: (records != null ? records.value : this.records),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductPremiumDupeNoAuthMetaGet$Response$Data {
  const ProductPremiumDupeNoAuthMetaGet$Response$Data({
    this.categories,
    this.sorts,
    this.config,
  });

  factory ProductPremiumDupeNoAuthMetaGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductPremiumDupeNoAuthMetaGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$ProductPremiumDupeNoAuthMetaGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductPremiumDupeNoAuthMetaGet$Response$DataToJson(this);

  @JsonKey(name: 'categories')
  final List<ProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$Item>?
  categories;
  @JsonKey(name: 'sorts')
  final List<ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$Item>? sorts;
  @JsonKey(name: 'config')
  final ProductPremiumDupeNoAuthMetaGet$Response$Data$Config? config;
  static const fromJsonFactory =
      _$ProductPremiumDupeNoAuthMetaGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductPremiumDupeNoAuthMetaGet$Response$Data &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality().equals(
                  other.categories,
                  categories,
                )) &&
            (identical(other.sorts, sorts) ||
                const DeepCollectionEquality().equals(other.sorts, sorts)) &&
            (identical(other.config, config) ||
                const DeepCollectionEquality().equals(other.config, config)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(sorts) ^
      const DeepCollectionEquality().hash(config) ^
      runtimeType.hashCode;
}

extension $ProductPremiumDupeNoAuthMetaGet$Response$DataExtension
    on ProductPremiumDupeNoAuthMetaGet$Response$Data {
  ProductPremiumDupeNoAuthMetaGet$Response$Data copyWith({
    List<ProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$Item>?
    categories,
    List<ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$Item>? sorts,
    ProductPremiumDupeNoAuthMetaGet$Response$Data$Config? config,
  }) {
    return ProductPremiumDupeNoAuthMetaGet$Response$Data(
      categories: categories ?? this.categories,
      sorts: sorts ?? this.sorts,
      config: config ?? this.config,
    );
  }

  ProductPremiumDupeNoAuthMetaGet$Response$Data copyWithWrapped({
    Wrapped<
      List<ProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$Item>?
    >?
    categories,
    Wrapped<List<ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$Item>?>?
    sorts,
    Wrapped<ProductPremiumDupeNoAuthMetaGet$Response$Data$Config?>? config,
  }) {
    return ProductPremiumDupeNoAuthMetaGet$Response$Data(
      categories: (categories != null ? categories.value : this.categories),
      sorts: (sorts != null ? sorts.value : this.sorts),
      config: (config != null ? config.value : this.config),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item {
  const ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item({
    this.productCode,
    this.productName,
    this.image,
    this.sourcePlatform,
    this.platformProductId,
    this.categoryTree,
    this.skuCode,
    this.sellPriceCur,
    this.sellPrice,
    this.targetSellPrice,
    this.targetOriginPrice,
    this.targetSellCur,
    this.sellQuantity,
    this.skuCount,
    this.marketingInfo,
    this.tags,
    this.skuSourceCode,
    this.premiumBrandInfo,
    this.sellPoints,
  });

  factory ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductPremiumDupeNoAuthSelectionGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$ProductPremiumDupeNoAuthSelectionGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductPremiumDupeNoAuthSelectionGet$Response$Data$ItemToJson(this);

  @JsonKey(name: 'productCode')
  final String? productCode;
  @JsonKey(name: 'productName')
  final String? productName;
  @JsonKey(name: 'image')
  final ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Image? image;
  @JsonKey(name: 'sourcePlatform')
  final String? sourcePlatform;
  @JsonKey(name: 'platformProductId')
  final String? platformProductId;
  @JsonKey(name: 'categoryTree', defaultValue: <Object>[])
  final List<Object>? categoryTree;
  @JsonKey(name: 'skuCode')
  final String? skuCode;
  @JsonKey(name: 'sellPriceCur')
  final String? sellPriceCur;
  @JsonKey(name: 'sellPrice')
  final double? sellPrice;
  @JsonKey(name: 'targetSellPrice')
  final double? targetSellPrice;
  @JsonKey(name: 'targetOriginPrice')
  final double? targetOriginPrice;
  @JsonKey(name: 'targetSellCur')
  final String? targetSellCur;
  @JsonKey(name: 'sellQuantity')
  final String? sellQuantity;
  @JsonKey(name: 'skuCount')
  final int? skuCount;
  @JsonKey(name: 'marketingInfo')
  final String? marketingInfo;
  @JsonKey(name: 'tags')
  final List<ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$Item>?
  tags;
  @JsonKey(name: 'skuSourceCode')
  final String? skuSourceCode;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  static const fromJsonFactory =
      _$ProductPremiumDupeNoAuthSelectionGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item &&
            (identical(other.productCode, productCode) ||
                const DeepCollectionEquality().equals(
                  other.productCode,
                  productCode,
                )) &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality().equals(
                  other.productName,
                  productName,
                )) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.sourcePlatform, sourcePlatform) ||
                const DeepCollectionEquality().equals(
                  other.sourcePlatform,
                  sourcePlatform,
                )) &&
            (identical(other.platformProductId, platformProductId) ||
                const DeepCollectionEquality().equals(
                  other.platformProductId,
                  platformProductId,
                )) &&
            (identical(other.categoryTree, categoryTree) ||
                const DeepCollectionEquality().equals(
                  other.categoryTree,
                  categoryTree,
                )) &&
            (identical(other.skuCode, skuCode) ||
                const DeepCollectionEquality().equals(
                  other.skuCode,
                  skuCode,
                )) &&
            (identical(other.sellPriceCur, sellPriceCur) ||
                const DeepCollectionEquality().equals(
                  other.sellPriceCur,
                  sellPriceCur,
                )) &&
            (identical(other.sellPrice, sellPrice) ||
                const DeepCollectionEquality().equals(
                  other.sellPrice,
                  sellPrice,
                )) &&
            (identical(other.targetSellPrice, targetSellPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetSellPrice,
                  targetSellPrice,
                )) &&
            (identical(other.targetOriginPrice, targetOriginPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetOriginPrice,
                  targetOriginPrice,
                )) &&
            (identical(other.targetSellCur, targetSellCur) ||
                const DeepCollectionEquality().equals(
                  other.targetSellCur,
                  targetSellCur,
                )) &&
            (identical(other.sellQuantity, sellQuantity) ||
                const DeepCollectionEquality().equals(
                  other.sellQuantity,
                  sellQuantity,
                )) &&
            (identical(other.skuCount, skuCount) ||
                const DeepCollectionEquality().equals(
                  other.skuCount,
                  skuCount,
                )) &&
            (identical(other.marketingInfo, marketingInfo) ||
                const DeepCollectionEquality().equals(
                  other.marketingInfo,
                  marketingInfo,
                )) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.skuSourceCode, skuSourceCode) ||
                const DeepCollectionEquality().equals(
                  other.skuSourceCode,
                  skuSourceCode,
                )) &&
            (identical(other.premiumBrandInfo, premiumBrandInfo) ||
                const DeepCollectionEquality().equals(
                  other.premiumBrandInfo,
                  premiumBrandInfo,
                )) &&
            (identical(other.sellPoints, sellPoints) ||
                const DeepCollectionEquality().equals(
                  other.sellPoints,
                  sellPoints,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(productCode) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(sourcePlatform) ^
      const DeepCollectionEquality().hash(platformProductId) ^
      const DeepCollectionEquality().hash(categoryTree) ^
      const DeepCollectionEquality().hash(skuCode) ^
      const DeepCollectionEquality().hash(sellPriceCur) ^
      const DeepCollectionEquality().hash(sellPrice) ^
      const DeepCollectionEquality().hash(targetSellPrice) ^
      const DeepCollectionEquality().hash(targetOriginPrice) ^
      const DeepCollectionEquality().hash(targetSellCur) ^
      const DeepCollectionEquality().hash(sellQuantity) ^
      const DeepCollectionEquality().hash(skuCount) ^
      const DeepCollectionEquality().hash(marketingInfo) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(skuSourceCode) ^
      const DeepCollectionEquality().hash(premiumBrandInfo) ^
      const DeepCollectionEquality().hash(sellPoints) ^
      runtimeType.hashCode;
}

extension $ProductPremiumDupeNoAuthSelectionGet$Response$Data$ItemExtension
    on ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item {
  ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item copyWith({
    String? productCode,
    String? productName,
    ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Image? image,
    String? sourcePlatform,
    String? platformProductId,
    List<Object>? categoryTree,
    String? skuCode,
    String? sellPriceCur,
    double? sellPrice,
    double? targetSellPrice,
    double? targetOriginPrice,
    String? targetSellCur,
    String? sellQuantity,
    int? skuCount,
    String? marketingInfo,
    List<ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$Item>?
    tags,
    String? skuSourceCode,
    ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
  }) {
    return ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item(
      productCode: productCode ?? this.productCode,
      productName: productName ?? this.productName,
      image: image ?? this.image,
      sourcePlatform: sourcePlatform ?? this.sourcePlatform,
      platformProductId: platformProductId ?? this.platformProductId,
      categoryTree: categoryTree ?? this.categoryTree,
      skuCode: skuCode ?? this.skuCode,
      sellPriceCur: sellPriceCur ?? this.sellPriceCur,
      sellPrice: sellPrice ?? this.sellPrice,
      targetSellPrice: targetSellPrice ?? this.targetSellPrice,
      targetOriginPrice: targetOriginPrice ?? this.targetOriginPrice,
      targetSellCur: targetSellCur ?? this.targetSellCur,
      sellQuantity: sellQuantity ?? this.sellQuantity,
      skuCount: skuCount ?? this.skuCount,
      marketingInfo: marketingInfo ?? this.marketingInfo,
      tags: tags ?? this.tags,
      skuSourceCode: skuSourceCode ?? this.skuSourceCode,
      premiumBrandInfo: premiumBrandInfo ?? this.premiumBrandInfo,
      sellPoints: sellPoints ?? this.sellPoints,
    );
  }

  ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item copyWithWrapped({
    Wrapped<String?>? productCode,
    Wrapped<String?>? productName,
    Wrapped<ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Image?>?
    image,
    Wrapped<String?>? sourcePlatform,
    Wrapped<String?>? platformProductId,
    Wrapped<List<Object>?>? categoryTree,
    Wrapped<String?>? skuCode,
    Wrapped<String?>? sellPriceCur,
    Wrapped<double?>? sellPrice,
    Wrapped<double?>? targetSellPrice,
    Wrapped<double?>? targetOriginPrice,
    Wrapped<String?>? targetSellCur,
    Wrapped<String?>? sellQuantity,
    Wrapped<int?>? skuCount,
    Wrapped<String?>? marketingInfo,
    Wrapped<
      List<ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$Item>?
    >?
    tags,
    Wrapped<String?>? skuSourceCode,
    Wrapped<
      ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
  }) {
    return ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item(
      productCode: (productCode != null ? productCode.value : this.productCode),
      productName: (productName != null ? productName.value : this.productName),
      image: (image != null ? image.value : this.image),
      sourcePlatform: (sourcePlatform != null
          ? sourcePlatform.value
          : this.sourcePlatform),
      platformProductId: (platformProductId != null
          ? platformProductId.value
          : this.platformProductId),
      categoryTree: (categoryTree != null
          ? categoryTree.value
          : this.categoryTree),
      skuCode: (skuCode != null ? skuCode.value : this.skuCode),
      sellPriceCur: (sellPriceCur != null
          ? sellPriceCur.value
          : this.sellPriceCur),
      sellPrice: (sellPrice != null ? sellPrice.value : this.sellPrice),
      targetSellPrice: (targetSellPrice != null
          ? targetSellPrice.value
          : this.targetSellPrice),
      targetOriginPrice: (targetOriginPrice != null
          ? targetOriginPrice.value
          : this.targetOriginPrice),
      targetSellCur: (targetSellCur != null
          ? targetSellCur.value
          : this.targetSellCur),
      sellQuantity: (sellQuantity != null
          ? sellQuantity.value
          : this.sellQuantity),
      skuCount: (skuCount != null ? skuCount.value : this.skuCount),
      marketingInfo: (marketingInfo != null
          ? marketingInfo.value
          : this.marketingInfo),
      tags: (tags != null ? tags.value : this.tags),
      skuSourceCode: (skuSourceCode != null
          ? skuSourceCode.value
          : this.skuSourceCode),
      premiumBrandInfo: (premiumBrandInfo != null
          ? premiumBrandInfo.value
          : this.premiumBrandInfo),
      sellPoints: (sellPoints != null ? sellPoints.value : this.sellPoints),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthPushProductGet$Response$Data {
  const ProductNoAuthPushProductGet$Response$Data({
    required this.total,
    required this.pageSize,
    required this.current,
    required this.totalPages,
    required this.records,
  });

  factory ProductNoAuthPushProductGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthPushProductGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthPushProductGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthPushProductGet$Response$DataToJson(this);

  @JsonKey(name: 'total')
  final int total;
  @JsonKey(name: 'pageSize')
  final int pageSize;
  @JsonKey(name: 'current')
  final int current;
  @JsonKey(name: 'totalPages')
  final int totalPages;
  @JsonKey(name: 'records')
  final List<ProductNoAuthPushProductGet$Response$Data$Records$Item> records;
  static const fromJsonFactory =
      _$ProductNoAuthPushProductGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthPushProductGet$Response$Data &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality().equals(
                  other.pageSize,
                  pageSize,
                )) &&
            (identical(other.current, current) ||
                const DeepCollectionEquality().equals(
                  other.current,
                  current,
                )) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality().equals(
                  other.totalPages,
                  totalPages,
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
      const DeepCollectionEquality().hash(current) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(records) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthPushProductGet$Response$DataExtension
    on ProductNoAuthPushProductGet$Response$Data {
  ProductNoAuthPushProductGet$Response$Data copyWith({
    int? total,
    int? pageSize,
    int? current,
    int? totalPages,
    List<ProductNoAuthPushProductGet$Response$Data$Records$Item>? records,
  }) {
    return ProductNoAuthPushProductGet$Response$Data(
      total: total ?? this.total,
      pageSize: pageSize ?? this.pageSize,
      current: current ?? this.current,
      totalPages: totalPages ?? this.totalPages,
      records: records ?? this.records,
    );
  }

  ProductNoAuthPushProductGet$Response$Data copyWithWrapped({
    Wrapped<int>? total,
    Wrapped<int>? pageSize,
    Wrapped<int>? current,
    Wrapped<int>? totalPages,
    Wrapped<List<ProductNoAuthPushProductGet$Response$Data$Records$Item>>?
    records,
  }) {
    return ProductNoAuthPushProductGet$Response$Data(
      total: (total != null ? total.value : this.total),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      current: (current != null ? current.value : this.current),
      totalPages: (totalPages != null ? totalPages.value : this.totalPages),
      records: (records != null ? records.value : this.records),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthSearchGet$Response$Data$Item {
  const ProductNoAuthSearchGet$Response$Data$Item({
    required this.shopCode,
    required this.productCode,
    required this.productName,
    required this.tenantCode,
    required this.brandName,
    required this.mainImg,
    required this.subImg,
    required this.mainVideo,
    required this.imgCollection,
    required this.textDetail,
    required this.categoryId,
    required this.productOptions,
    required this.productAttrs,
    required this.sourcePlatform,
    required this.platformUrl,
    required this.platformProductId,
    required this.skuCode,
    required this.sellPriceCur,
    required this.sellPrice,
    required this.targetSellPrice,
    required this.targetSellCur,
    required this.marketingInfo,
    required this.targetOriginPrice,
    this.premiumBrandInfo,
    required this.sellPoints,
  });

  factory ProductNoAuthSearchGet$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthSearchGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthSearchGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthSearchGet$Response$Data$ItemToJson(this);

  @JsonKey(name: 'shopCode')
  final String shopCode;
  @JsonKey(name: 'productCode')
  final String productCode;
  @JsonKey(name: 'productName')
  final String productName;
  @JsonKey(name: 'tenantCode')
  final String tenantCode;
  @JsonKey(name: 'brandName')
  final String brandName;
  @JsonKey(name: 'mainImg')
  final ProductNoAuthSearchGet$Response$Data$Item$MainImg mainImg;
  @JsonKey(name: 'subImg')
  final ProductNoAuthSearchGet$Response$Data$Item$SubImg subImg;
  @JsonKey(name: 'mainVideo')
  final ProductNoAuthSearchGet$Response$Data$Item$MainVideo mainVideo;
  @JsonKey(name: 'imgCollection')
  final List<ProductNoAuthSearchGet$Response$Data$Item$ImgCollection$Item>
  imgCollection;
  @JsonKey(name: 'textDetail')
  final String textDetail;
  @JsonKey(name: 'categoryId')
  final String categoryId;
  @JsonKey(name: 'productOptions')
  final List<ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item>
  productOptions;
  @JsonKey(name: 'productAttrs')
  final List<ProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$Item>
  productAttrs;
  @JsonKey(name: 'sourcePlatform')
  final String sourcePlatform;
  @JsonKey(name: 'platformUrl')
  final String platformUrl;
  @JsonKey(name: 'platformProductId')
  final String platformProductId;
  @JsonKey(name: 'skuCode')
  final String skuCode;
  @JsonKey(name: 'sellPriceCur')
  final String sellPriceCur;
  @JsonKey(name: 'sellPrice')
  final String sellPrice;
  @JsonKey(name: 'targetSellPrice')
  final String targetSellPrice;
  @JsonKey(name: 'targetSellCur')
  final String targetSellCur;
  @JsonKey(name: 'marketingInfo')
  final String marketingInfo;
  @JsonKey(name: 'targetOriginPrice')
  final String targetOriginPrice;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object> sellPoints;
  static const fromJsonFactory =
      _$ProductNoAuthSearchGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthSearchGet$Response$Data$Item &&
            (identical(other.shopCode, shopCode) ||
                const DeepCollectionEquality().equals(
                  other.shopCode,
                  shopCode,
                )) &&
            (identical(other.productCode, productCode) ||
                const DeepCollectionEquality().equals(
                  other.productCode,
                  productCode,
                )) &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality().equals(
                  other.productName,
                  productName,
                )) &&
            (identical(other.tenantCode, tenantCode) ||
                const DeepCollectionEquality().equals(
                  other.tenantCode,
                  tenantCode,
                )) &&
            (identical(other.brandName, brandName) ||
                const DeepCollectionEquality().equals(
                  other.brandName,
                  brandName,
                )) &&
            (identical(other.mainImg, mainImg) ||
                const DeepCollectionEquality().equals(
                  other.mainImg,
                  mainImg,
                )) &&
            (identical(other.subImg, subImg) ||
                const DeepCollectionEquality().equals(other.subImg, subImg)) &&
            (identical(other.mainVideo, mainVideo) ||
                const DeepCollectionEquality().equals(
                  other.mainVideo,
                  mainVideo,
                )) &&
            (identical(other.imgCollection, imgCollection) ||
                const DeepCollectionEquality().equals(
                  other.imgCollection,
                  imgCollection,
                )) &&
            (identical(other.textDetail, textDetail) ||
                const DeepCollectionEquality().equals(
                  other.textDetail,
                  textDetail,
                )) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality().equals(
                  other.categoryId,
                  categoryId,
                )) &&
            (identical(other.productOptions, productOptions) ||
                const DeepCollectionEquality().equals(
                  other.productOptions,
                  productOptions,
                )) &&
            (identical(other.productAttrs, productAttrs) ||
                const DeepCollectionEquality().equals(
                  other.productAttrs,
                  productAttrs,
                )) &&
            (identical(other.sourcePlatform, sourcePlatform) ||
                const DeepCollectionEquality().equals(
                  other.sourcePlatform,
                  sourcePlatform,
                )) &&
            (identical(other.platformUrl, platformUrl) ||
                const DeepCollectionEquality().equals(
                  other.platformUrl,
                  platformUrl,
                )) &&
            (identical(other.platformProductId, platformProductId) ||
                const DeepCollectionEquality().equals(
                  other.platformProductId,
                  platformProductId,
                )) &&
            (identical(other.skuCode, skuCode) ||
                const DeepCollectionEquality().equals(
                  other.skuCode,
                  skuCode,
                )) &&
            (identical(other.sellPriceCur, sellPriceCur) ||
                const DeepCollectionEquality().equals(
                  other.sellPriceCur,
                  sellPriceCur,
                )) &&
            (identical(other.sellPrice, sellPrice) ||
                const DeepCollectionEquality().equals(
                  other.sellPrice,
                  sellPrice,
                )) &&
            (identical(other.targetSellPrice, targetSellPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetSellPrice,
                  targetSellPrice,
                )) &&
            (identical(other.targetSellCur, targetSellCur) ||
                const DeepCollectionEquality().equals(
                  other.targetSellCur,
                  targetSellCur,
                )) &&
            (identical(other.marketingInfo, marketingInfo) ||
                const DeepCollectionEquality().equals(
                  other.marketingInfo,
                  marketingInfo,
                )) &&
            (identical(other.targetOriginPrice, targetOriginPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetOriginPrice,
                  targetOriginPrice,
                )) &&
            (identical(other.premiumBrandInfo, premiumBrandInfo) ||
                const DeepCollectionEquality().equals(
                  other.premiumBrandInfo,
                  premiumBrandInfo,
                )) &&
            (identical(other.sellPoints, sellPoints) ||
                const DeepCollectionEquality().equals(
                  other.sellPoints,
                  sellPoints,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(shopCode) ^
      const DeepCollectionEquality().hash(productCode) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(tenantCode) ^
      const DeepCollectionEquality().hash(brandName) ^
      const DeepCollectionEquality().hash(mainImg) ^
      const DeepCollectionEquality().hash(subImg) ^
      const DeepCollectionEquality().hash(mainVideo) ^
      const DeepCollectionEquality().hash(imgCollection) ^
      const DeepCollectionEquality().hash(textDetail) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(productOptions) ^
      const DeepCollectionEquality().hash(productAttrs) ^
      const DeepCollectionEquality().hash(sourcePlatform) ^
      const DeepCollectionEquality().hash(platformUrl) ^
      const DeepCollectionEquality().hash(platformProductId) ^
      const DeepCollectionEquality().hash(skuCode) ^
      const DeepCollectionEquality().hash(sellPriceCur) ^
      const DeepCollectionEquality().hash(sellPrice) ^
      const DeepCollectionEquality().hash(targetSellPrice) ^
      const DeepCollectionEquality().hash(targetSellCur) ^
      const DeepCollectionEquality().hash(marketingInfo) ^
      const DeepCollectionEquality().hash(targetOriginPrice) ^
      const DeepCollectionEquality().hash(premiumBrandInfo) ^
      const DeepCollectionEquality().hash(sellPoints) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthSearchGet$Response$Data$ItemExtension
    on ProductNoAuthSearchGet$Response$Data$Item {
  ProductNoAuthSearchGet$Response$Data$Item copyWith({
    String? shopCode,
    String? productCode,
    String? productName,
    String? tenantCode,
    String? brandName,
    ProductNoAuthSearchGet$Response$Data$Item$MainImg? mainImg,
    ProductNoAuthSearchGet$Response$Data$Item$SubImg? subImg,
    ProductNoAuthSearchGet$Response$Data$Item$MainVideo? mainVideo,
    List<ProductNoAuthSearchGet$Response$Data$Item$ImgCollection$Item>?
    imgCollection,
    String? textDetail,
    String? categoryId,
    List<ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item>?
    productOptions,
    List<ProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$Item>?
    productAttrs,
    String? sourcePlatform,
    String? platformUrl,
    String? platformProductId,
    String? skuCode,
    String? sellPriceCur,
    String? sellPrice,
    String? targetSellPrice,
    String? targetSellCur,
    String? marketingInfo,
    String? targetOriginPrice,
    ProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
  }) {
    return ProductNoAuthSearchGet$Response$Data$Item(
      shopCode: shopCode ?? this.shopCode,
      productCode: productCode ?? this.productCode,
      productName: productName ?? this.productName,
      tenantCode: tenantCode ?? this.tenantCode,
      brandName: brandName ?? this.brandName,
      mainImg: mainImg ?? this.mainImg,
      subImg: subImg ?? this.subImg,
      mainVideo: mainVideo ?? this.mainVideo,
      imgCollection: imgCollection ?? this.imgCollection,
      textDetail: textDetail ?? this.textDetail,
      categoryId: categoryId ?? this.categoryId,
      productOptions: productOptions ?? this.productOptions,
      productAttrs: productAttrs ?? this.productAttrs,
      sourcePlatform: sourcePlatform ?? this.sourcePlatform,
      platformUrl: platformUrl ?? this.platformUrl,
      platformProductId: platformProductId ?? this.platformProductId,
      skuCode: skuCode ?? this.skuCode,
      sellPriceCur: sellPriceCur ?? this.sellPriceCur,
      sellPrice: sellPrice ?? this.sellPrice,
      targetSellPrice: targetSellPrice ?? this.targetSellPrice,
      targetSellCur: targetSellCur ?? this.targetSellCur,
      marketingInfo: marketingInfo ?? this.marketingInfo,
      targetOriginPrice: targetOriginPrice ?? this.targetOriginPrice,
      premiumBrandInfo: premiumBrandInfo ?? this.premiumBrandInfo,
      sellPoints: sellPoints ?? this.sellPoints,
    );
  }

  ProductNoAuthSearchGet$Response$Data$Item copyWithWrapped({
    Wrapped<String>? shopCode,
    Wrapped<String>? productCode,
    Wrapped<String>? productName,
    Wrapped<String>? tenantCode,
    Wrapped<String>? brandName,
    Wrapped<ProductNoAuthSearchGet$Response$Data$Item$MainImg>? mainImg,
    Wrapped<ProductNoAuthSearchGet$Response$Data$Item$SubImg>? subImg,
    Wrapped<ProductNoAuthSearchGet$Response$Data$Item$MainVideo>? mainVideo,
    Wrapped<List<ProductNoAuthSearchGet$Response$Data$Item$ImgCollection$Item>>?
    imgCollection,
    Wrapped<String>? textDetail,
    Wrapped<String>? categoryId,
    Wrapped<
      List<ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item>
    >?
    productOptions,
    Wrapped<List<ProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$Item>>?
    productAttrs,
    Wrapped<String>? sourcePlatform,
    Wrapped<String>? platformUrl,
    Wrapped<String>? platformProductId,
    Wrapped<String>? skuCode,
    Wrapped<String>? sellPriceCur,
    Wrapped<String>? sellPrice,
    Wrapped<String>? targetSellPrice,
    Wrapped<String>? targetSellCur,
    Wrapped<String>? marketingInfo,
    Wrapped<String>? targetOriginPrice,
    Wrapped<ProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfo?>?
    premiumBrandInfo,
    Wrapped<List<Object>>? sellPoints,
  }) {
    return ProductNoAuthSearchGet$Response$Data$Item(
      shopCode: (shopCode != null ? shopCode.value : this.shopCode),
      productCode: (productCode != null ? productCode.value : this.productCode),
      productName: (productName != null ? productName.value : this.productName),
      tenantCode: (tenantCode != null ? tenantCode.value : this.tenantCode),
      brandName: (brandName != null ? brandName.value : this.brandName),
      mainImg: (mainImg != null ? mainImg.value : this.mainImg),
      subImg: (subImg != null ? subImg.value : this.subImg),
      mainVideo: (mainVideo != null ? mainVideo.value : this.mainVideo),
      imgCollection: (imgCollection != null
          ? imgCollection.value
          : this.imgCollection),
      textDetail: (textDetail != null ? textDetail.value : this.textDetail),
      categoryId: (categoryId != null ? categoryId.value : this.categoryId),
      productOptions: (productOptions != null
          ? productOptions.value
          : this.productOptions),
      productAttrs: (productAttrs != null
          ? productAttrs.value
          : this.productAttrs),
      sourcePlatform: (sourcePlatform != null
          ? sourcePlatform.value
          : this.sourcePlatform),
      platformUrl: (platformUrl != null ? platformUrl.value : this.platformUrl),
      platformProductId: (platformProductId != null
          ? platformProductId.value
          : this.platformProductId),
      skuCode: (skuCode != null ? skuCode.value : this.skuCode),
      sellPriceCur: (sellPriceCur != null
          ? sellPriceCur.value
          : this.sellPriceCur),
      sellPrice: (sellPrice != null ? sellPrice.value : this.sellPrice),
      targetSellPrice: (targetSellPrice != null
          ? targetSellPrice.value
          : this.targetSellPrice),
      targetSellCur: (targetSellCur != null
          ? targetSellCur.value
          : this.targetSellCur),
      marketingInfo: (marketingInfo != null
          ? marketingInfo.value
          : this.marketingInfo),
      targetOriginPrice: (targetOriginPrice != null
          ? targetOriginPrice.value
          : this.targetOriginPrice),
      premiumBrandInfo: (premiumBrandInfo != null
          ? premiumBrandInfo.value
          : this.premiumBrandInfo),
      sellPoints: (sellPoints != null ? sellPoints.value : this.sellPoints),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthCombineSearchGet$Response$Data {
  const ProductNoAuthCombineSearchGet$Response$Data({
    this.records,
    this.total,
    this.pageSize,
    this.current,
    this.totalPages,
  });

  factory ProductNoAuthCombineSearchGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthCombineSearchGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthCombineSearchGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthCombineSearchGet$Response$DataToJson(this);

  @JsonKey(name: 'records')
  final List<ProductNoAuthCombineSearchGet$Response$Data$Records$Item>? records;
  @JsonKey(name: 'total')
  final double? total;
  @JsonKey(name: 'pageSize')
  final double? pageSize;
  @JsonKey(name: 'current')
  final double? current;
  @JsonKey(name: 'totalPages')
  final double? totalPages;
  static const fromJsonFactory =
      _$ProductNoAuthCombineSearchGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthCombineSearchGet$Response$Data &&
            (identical(other.records, records) ||
                const DeepCollectionEquality().equals(
                  other.records,
                  records,
                )) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality().equals(
                  other.pageSize,
                  pageSize,
                )) &&
            (identical(other.current, current) ||
                const DeepCollectionEquality().equals(
                  other.current,
                  current,
                )) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality().equals(
                  other.totalPages,
                  totalPages,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(records) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(current) ^
      const DeepCollectionEquality().hash(totalPages) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthCombineSearchGet$Response$DataExtension
    on ProductNoAuthCombineSearchGet$Response$Data {
  ProductNoAuthCombineSearchGet$Response$Data copyWith({
    List<ProductNoAuthCombineSearchGet$Response$Data$Records$Item>? records,
    double? total,
    double? pageSize,
    double? current,
    double? totalPages,
  }) {
    return ProductNoAuthCombineSearchGet$Response$Data(
      records: records ?? this.records,
      total: total ?? this.total,
      pageSize: pageSize ?? this.pageSize,
      current: current ?? this.current,
      totalPages: totalPages ?? this.totalPages,
    );
  }

  ProductNoAuthCombineSearchGet$Response$Data copyWithWrapped({
    Wrapped<List<ProductNoAuthCombineSearchGet$Response$Data$Records$Item>?>?
    records,
    Wrapped<double?>? total,
    Wrapped<double?>? pageSize,
    Wrapped<double?>? current,
    Wrapped<double?>? totalPages,
  }) {
    return ProductNoAuthCombineSearchGet$Response$Data(
      records: (records != null ? records.value : this.records),
      total: (total != null ? total.value : this.total),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      current: (current != null ? current.value : this.current),
      totalPages: (totalPages != null ? totalPages.value : this.totalPages),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthNewArrivalProductGet$Response$Data {
  const ProductNoAuthNewArrivalProductGet$Response$Data({
    this.total,
    this.pageSize,
    this.totalPages,
    this.current,
    this.records,
  });

  factory ProductNoAuthNewArrivalProductGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthNewArrivalProductGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthNewArrivalProductGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthNewArrivalProductGet$Response$DataToJson(this);

  @JsonKey(name: 'total')
  final double? total;
  @JsonKey(name: 'pageSize')
  final double? pageSize;
  @JsonKey(name: 'totalPages')
  final double? totalPages;
  @JsonKey(name: 'current')
  final double? current;
  @JsonKey(name: 'records')
  final List<ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item>?
  records;
  static const fromJsonFactory =
      _$ProductNoAuthNewArrivalProductGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthNewArrivalProductGet$Response$Data &&
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

extension $ProductNoAuthNewArrivalProductGet$Response$DataExtension
    on ProductNoAuthNewArrivalProductGet$Response$Data {
  ProductNoAuthNewArrivalProductGet$Response$Data copyWith({
    double? total,
    double? pageSize,
    double? totalPages,
    double? current,
    List<ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item>? records,
  }) {
    return ProductNoAuthNewArrivalProductGet$Response$Data(
      total: total ?? this.total,
      pageSize: pageSize ?? this.pageSize,
      totalPages: totalPages ?? this.totalPages,
      current: current ?? this.current,
      records: records ?? this.records,
    );
  }

  ProductNoAuthNewArrivalProductGet$Response$Data copyWithWrapped({
    Wrapped<double?>? total,
    Wrapped<double?>? pageSize,
    Wrapped<double?>? totalPages,
    Wrapped<double?>? current,
    Wrapped<
      List<ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item>?
    >?
    records,
  }) {
    return ProductNoAuthNewArrivalProductGet$Response$Data(
      total: (total != null ? total.value : this.total),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      totalPages: (totalPages != null ? totalPages.value : this.totalPages),
      current: (current != null ? current.value : this.current),
      records: (records != null ? records.value : this.records),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthSkuListGet$Response$Data$Item {
  const ProductNoAuthSkuListGet$Response$Data$Item({
    required this.productCode,
    required this.skuCode,
    required this.tenantCode,
    required this.extUrl,
    required this.skuImg,
    required this.skuOptions,
    required this.sellPrice,
    required this.sellCur,
    required this.targetSellPrice,
    required this.targetSellCur,
    this.length,
    this.width,
    this.height,
    this.weight,
    this.estimateUnitFreight,
    this.marketingInfo,
    this.targetOriginPrice,
    required this.skuSourceCode,
    this.flashSaleInfo,
  });

  factory ProductNoAuthSkuListGet$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthSkuListGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthSkuListGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthSkuListGet$Response$Data$ItemToJson(this);

  @JsonKey(name: 'productCode')
  final String productCode;
  @JsonKey(name: 'skuCode')
  final String skuCode;
  @JsonKey(name: 'tenantCode')
  final String tenantCode;
  @JsonKey(name: 'extUrl')
  final String extUrl;
  @JsonKey(name: 'skuImg')
  final ProductNoAuthSkuListGet$Response$Data$Item$SkuImg skuImg;
  @JsonKey(name: 'skuOptions')
  final List<ProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$Item>
  skuOptions;
  @JsonKey(name: 'sellPrice')
  final String sellPrice;
  @JsonKey(name: 'sellCur')
  final String sellCur;
  @JsonKey(name: 'targetSellPrice')
  final String targetSellPrice;
  @JsonKey(name: 'targetSellCur')
  final String targetSellCur;
  @JsonKey(name: 'length')
  final String? length;
  @JsonKey(name: 'width')
  final String? width;
  @JsonKey(name: 'height')
  final String? height;
  @JsonKey(name: 'weight')
  final String? weight;
  @JsonKey(name: 'estimateUnitFreight')
  final String? estimateUnitFreight;
  @JsonKey(name: 'marketingInfo')
  final String? marketingInfo;
  @JsonKey(name: 'targetOriginPrice')
  final String? targetOriginPrice;
  @JsonKey(name: 'skuSourceCode')
  final String skuSourceCode;
  @JsonKey(name: 'flashSaleInfo')
  final ProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfo? flashSaleInfo;
  static const fromJsonFactory =
      _$ProductNoAuthSkuListGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthSkuListGet$Response$Data$Item &&
            (identical(other.productCode, productCode) ||
                const DeepCollectionEquality().equals(
                  other.productCode,
                  productCode,
                )) &&
            (identical(other.skuCode, skuCode) ||
                const DeepCollectionEquality().equals(
                  other.skuCode,
                  skuCode,
                )) &&
            (identical(other.tenantCode, tenantCode) ||
                const DeepCollectionEquality().equals(
                  other.tenantCode,
                  tenantCode,
                )) &&
            (identical(other.extUrl, extUrl) ||
                const DeepCollectionEquality().equals(other.extUrl, extUrl)) &&
            (identical(other.skuImg, skuImg) ||
                const DeepCollectionEquality().equals(other.skuImg, skuImg)) &&
            (identical(other.skuOptions, skuOptions) ||
                const DeepCollectionEquality().equals(
                  other.skuOptions,
                  skuOptions,
                )) &&
            (identical(other.sellPrice, sellPrice) ||
                const DeepCollectionEquality().equals(
                  other.sellPrice,
                  sellPrice,
                )) &&
            (identical(other.sellCur, sellCur) ||
                const DeepCollectionEquality().equals(
                  other.sellCur,
                  sellCur,
                )) &&
            (identical(other.targetSellPrice, targetSellPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetSellPrice,
                  targetSellPrice,
                )) &&
            (identical(other.targetSellCur, targetSellCur) ||
                const DeepCollectionEquality().equals(
                  other.targetSellCur,
                  targetSellCur,
                )) &&
            (identical(other.length, length) ||
                const DeepCollectionEquality().equals(other.length, length)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.estimateUnitFreight, estimateUnitFreight) ||
                const DeepCollectionEquality().equals(
                  other.estimateUnitFreight,
                  estimateUnitFreight,
                )) &&
            (identical(other.marketingInfo, marketingInfo) ||
                const DeepCollectionEquality().equals(
                  other.marketingInfo,
                  marketingInfo,
                )) &&
            (identical(other.targetOriginPrice, targetOriginPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetOriginPrice,
                  targetOriginPrice,
                )) &&
            (identical(other.skuSourceCode, skuSourceCode) ||
                const DeepCollectionEquality().equals(
                  other.skuSourceCode,
                  skuSourceCode,
                )) &&
            (identical(other.flashSaleInfo, flashSaleInfo) ||
                const DeepCollectionEquality().equals(
                  other.flashSaleInfo,
                  flashSaleInfo,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(productCode) ^
      const DeepCollectionEquality().hash(skuCode) ^
      const DeepCollectionEquality().hash(tenantCode) ^
      const DeepCollectionEquality().hash(extUrl) ^
      const DeepCollectionEquality().hash(skuImg) ^
      const DeepCollectionEquality().hash(skuOptions) ^
      const DeepCollectionEquality().hash(sellPrice) ^
      const DeepCollectionEquality().hash(sellCur) ^
      const DeepCollectionEquality().hash(targetSellPrice) ^
      const DeepCollectionEquality().hash(targetSellCur) ^
      const DeepCollectionEquality().hash(length) ^
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(estimateUnitFreight) ^
      const DeepCollectionEquality().hash(marketingInfo) ^
      const DeepCollectionEquality().hash(targetOriginPrice) ^
      const DeepCollectionEquality().hash(skuSourceCode) ^
      const DeepCollectionEquality().hash(flashSaleInfo) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthSkuListGet$Response$Data$ItemExtension
    on ProductNoAuthSkuListGet$Response$Data$Item {
  ProductNoAuthSkuListGet$Response$Data$Item copyWith({
    String? productCode,
    String? skuCode,
    String? tenantCode,
    String? extUrl,
    ProductNoAuthSkuListGet$Response$Data$Item$SkuImg? skuImg,
    List<ProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$Item>?
    skuOptions,
    String? sellPrice,
    String? sellCur,
    String? targetSellPrice,
    String? targetSellCur,
    String? length,
    String? width,
    String? height,
    String? weight,
    String? estimateUnitFreight,
    String? marketingInfo,
    String? targetOriginPrice,
    String? skuSourceCode,
    ProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfo? flashSaleInfo,
  }) {
    return ProductNoAuthSkuListGet$Response$Data$Item(
      productCode: productCode ?? this.productCode,
      skuCode: skuCode ?? this.skuCode,
      tenantCode: tenantCode ?? this.tenantCode,
      extUrl: extUrl ?? this.extUrl,
      skuImg: skuImg ?? this.skuImg,
      skuOptions: skuOptions ?? this.skuOptions,
      sellPrice: sellPrice ?? this.sellPrice,
      sellCur: sellCur ?? this.sellCur,
      targetSellPrice: targetSellPrice ?? this.targetSellPrice,
      targetSellCur: targetSellCur ?? this.targetSellCur,
      length: length ?? this.length,
      width: width ?? this.width,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      estimateUnitFreight: estimateUnitFreight ?? this.estimateUnitFreight,
      marketingInfo: marketingInfo ?? this.marketingInfo,
      targetOriginPrice: targetOriginPrice ?? this.targetOriginPrice,
      skuSourceCode: skuSourceCode ?? this.skuSourceCode,
      flashSaleInfo: flashSaleInfo ?? this.flashSaleInfo,
    );
  }

  ProductNoAuthSkuListGet$Response$Data$Item copyWithWrapped({
    Wrapped<String>? productCode,
    Wrapped<String>? skuCode,
    Wrapped<String>? tenantCode,
    Wrapped<String>? extUrl,
    Wrapped<ProductNoAuthSkuListGet$Response$Data$Item$SkuImg>? skuImg,
    Wrapped<List<ProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$Item>>?
    skuOptions,
    Wrapped<String>? sellPrice,
    Wrapped<String>? sellCur,
    Wrapped<String>? targetSellPrice,
    Wrapped<String>? targetSellCur,
    Wrapped<String?>? length,
    Wrapped<String?>? width,
    Wrapped<String?>? height,
    Wrapped<String?>? weight,
    Wrapped<String?>? estimateUnitFreight,
    Wrapped<String?>? marketingInfo,
    Wrapped<String?>? targetOriginPrice,
    Wrapped<String>? skuSourceCode,
    Wrapped<ProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfo?>?
    flashSaleInfo,
  }) {
    return ProductNoAuthSkuListGet$Response$Data$Item(
      productCode: (productCode != null ? productCode.value : this.productCode),
      skuCode: (skuCode != null ? skuCode.value : this.skuCode),
      tenantCode: (tenantCode != null ? tenantCode.value : this.tenantCode),
      extUrl: (extUrl != null ? extUrl.value : this.extUrl),
      skuImg: (skuImg != null ? skuImg.value : this.skuImg),
      skuOptions: (skuOptions != null ? skuOptions.value : this.skuOptions),
      sellPrice: (sellPrice != null ? sellPrice.value : this.sellPrice),
      sellCur: (sellCur != null ? sellCur.value : this.sellCur),
      targetSellPrice: (targetSellPrice != null
          ? targetSellPrice.value
          : this.targetSellPrice),
      targetSellCur: (targetSellCur != null
          ? targetSellCur.value
          : this.targetSellCur),
      length: (length != null ? length.value : this.length),
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      weight: (weight != null ? weight.value : this.weight),
      estimateUnitFreight: (estimateUnitFreight != null
          ? estimateUnitFreight.value
          : this.estimateUnitFreight),
      marketingInfo: (marketingInfo != null
          ? marketingInfo.value
          : this.marketingInfo),
      targetOriginPrice: (targetOriginPrice != null
          ? targetOriginPrice.value
          : this.targetOriginPrice),
      skuSourceCode: (skuSourceCode != null
          ? skuSourceCode.value
          : this.skuSourceCode),
      flashSaleInfo: (flashSaleInfo != null
          ? flashSaleInfo.value
          : this.flashSaleInfo),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthGetProductInfoGet$Response$Data {
  const ProductNoAuthGetProductInfoGet$Response$Data({
    this.shopCode,
    this.productCode,
    this.productName,
    this.tenantCode,
    this.brandName,
    this.mainImg,
    this.subImg,
    this.mainVideo,
    this.imgCollection,
    this.textDetail,
    this.imgDetail,
    this.categoryId,
    this.productOptions,
    this.productAttrs,
    this.sourcePlatform,
    this.platformUrl,
    this.platformProductId,
    this.skuCode,
    this.sellPriceCur,
    this.sellPrice,
    this.targetSellPrice,
    this.targetSellCur,
    this.sellQuantity,
    this.inspectImages,
    this.tags,
    this.premiumBrandInfo,
    this.sellPoints,
    required this.categoryTree,
    this.ext,
    required this.productFlag,
    required this.marketingInfo,
    required this.targetOriginPrice,
    this.flashSale,
  });

  factory ProductNoAuthGetProductInfoGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthGetProductInfoGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthGetProductInfoGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthGetProductInfoGet$Response$DataToJson(this);

  @JsonKey(name: 'shopCode')
  final String? shopCode;
  @JsonKey(name: 'productCode')
  final String? productCode;
  @JsonKey(name: 'productName')
  final String? productName;
  @JsonKey(name: 'tenantCode')
  final String? tenantCode;
  @JsonKey(name: 'brandName')
  final String? brandName;
  @JsonKey(name: 'mainImg')
  final List<ProductNoAuthGetProductInfoGet$Response$Data$MainImg$Item>?
  mainImg;
  @JsonKey(name: 'subImg')
  final String? subImg;
  @JsonKey(name: 'mainVideo')
  final List<ProductNoAuthGetProductInfoGet$Response$Data$MainVideo$Item>?
  mainVideo;
  @JsonKey(name: 'imgCollection')
  final List<ProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$Item>?
  imgCollection;
  @JsonKey(name: 'textDetail')
  final String? textDetail;
  @JsonKey(name: 'imgDetail')
  final List<ProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$Item>?
  imgDetail;
  @JsonKey(name: 'categoryId')
  final double? categoryId;
  @JsonKey(name: 'productOptions')
  final List<ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item>?
  productOptions;
  @JsonKey(name: 'productAttrs')
  final List<ProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$Item>?
  productAttrs;
  @JsonKey(name: 'sourcePlatform')
  final String? sourcePlatform;
  @JsonKey(name: 'platformUrl')
  final String? platformUrl;
  @JsonKey(name: 'platformProductId')
  final String? platformProductId;
  @JsonKey(name: 'skuCode')
  final String? skuCode;
  @JsonKey(name: 'sellPriceCur')
  final String? sellPriceCur;
  @JsonKey(name: 'sellPrice')
  final String? sellPrice;
  @JsonKey(name: 'targetSellPrice')
  final String? targetSellPrice;
  @JsonKey(name: 'targetSellCur')
  final String? targetSellCur;
  @JsonKey(name: 'sellQuantity')
  final String? sellQuantity;
  @JsonKey(name: 'inspectImages')
  final List<ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item>?
  inspectImages;
  @JsonKey(name: 'tags')
  final List<ProductNoAuthGetProductInfoGet$Response$Data$Tags$Item>? tags;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <String>[])
  final List<String>? sellPoints;
  @JsonKey(name: 'categoryTree', defaultValue: <double>[])
  final List<double> categoryTree;
  @JsonKey(name: 'ext')
  final ProductNoAuthGetProductInfoGet$Response$Data$Ext? ext;
  @JsonKey(name: 'productFlag')
  final String productFlag;
  @JsonKey(name: 'marketingInfo')
  final String marketingInfo;
  @JsonKey(name: 'targetOriginPrice')
  final String targetOriginPrice;
  @JsonKey(name: 'flashSale')
  final ProductNoAuthGetProductInfoGet$Response$Data$FlashSale? flashSale;
  static const fromJsonFactory =
      _$ProductNoAuthGetProductInfoGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthGetProductInfoGet$Response$Data &&
            (identical(other.shopCode, shopCode) ||
                const DeepCollectionEquality().equals(
                  other.shopCode,
                  shopCode,
                )) &&
            (identical(other.productCode, productCode) ||
                const DeepCollectionEquality().equals(
                  other.productCode,
                  productCode,
                )) &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality().equals(
                  other.productName,
                  productName,
                )) &&
            (identical(other.tenantCode, tenantCode) ||
                const DeepCollectionEquality().equals(
                  other.tenantCode,
                  tenantCode,
                )) &&
            (identical(other.brandName, brandName) ||
                const DeepCollectionEquality().equals(
                  other.brandName,
                  brandName,
                )) &&
            (identical(other.mainImg, mainImg) ||
                const DeepCollectionEquality().equals(
                  other.mainImg,
                  mainImg,
                )) &&
            (identical(other.subImg, subImg) ||
                const DeepCollectionEquality().equals(other.subImg, subImg)) &&
            (identical(other.mainVideo, mainVideo) ||
                const DeepCollectionEquality().equals(
                  other.mainVideo,
                  mainVideo,
                )) &&
            (identical(other.imgCollection, imgCollection) ||
                const DeepCollectionEquality().equals(
                  other.imgCollection,
                  imgCollection,
                )) &&
            (identical(other.textDetail, textDetail) ||
                const DeepCollectionEquality().equals(
                  other.textDetail,
                  textDetail,
                )) &&
            (identical(other.imgDetail, imgDetail) ||
                const DeepCollectionEquality().equals(
                  other.imgDetail,
                  imgDetail,
                )) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality().equals(
                  other.categoryId,
                  categoryId,
                )) &&
            (identical(other.productOptions, productOptions) ||
                const DeepCollectionEquality().equals(
                  other.productOptions,
                  productOptions,
                )) &&
            (identical(other.productAttrs, productAttrs) ||
                const DeepCollectionEquality().equals(
                  other.productAttrs,
                  productAttrs,
                )) &&
            (identical(other.sourcePlatform, sourcePlatform) ||
                const DeepCollectionEquality().equals(
                  other.sourcePlatform,
                  sourcePlatform,
                )) &&
            (identical(other.platformUrl, platformUrl) ||
                const DeepCollectionEquality().equals(
                  other.platformUrl,
                  platformUrl,
                )) &&
            (identical(other.platformProductId, platformProductId) ||
                const DeepCollectionEquality().equals(
                  other.platformProductId,
                  platformProductId,
                )) &&
            (identical(other.skuCode, skuCode) ||
                const DeepCollectionEquality().equals(
                  other.skuCode,
                  skuCode,
                )) &&
            (identical(other.sellPriceCur, sellPriceCur) ||
                const DeepCollectionEquality().equals(
                  other.sellPriceCur,
                  sellPriceCur,
                )) &&
            (identical(other.sellPrice, sellPrice) ||
                const DeepCollectionEquality().equals(
                  other.sellPrice,
                  sellPrice,
                )) &&
            (identical(other.targetSellPrice, targetSellPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetSellPrice,
                  targetSellPrice,
                )) &&
            (identical(other.targetSellCur, targetSellCur) ||
                const DeepCollectionEquality().equals(
                  other.targetSellCur,
                  targetSellCur,
                )) &&
            (identical(other.sellQuantity, sellQuantity) ||
                const DeepCollectionEquality().equals(
                  other.sellQuantity,
                  sellQuantity,
                )) &&
            (identical(other.inspectImages, inspectImages) ||
                const DeepCollectionEquality().equals(
                  other.inspectImages,
                  inspectImages,
                )) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.premiumBrandInfo, premiumBrandInfo) ||
                const DeepCollectionEquality().equals(
                  other.premiumBrandInfo,
                  premiumBrandInfo,
                )) &&
            (identical(other.sellPoints, sellPoints) ||
                const DeepCollectionEquality().equals(
                  other.sellPoints,
                  sellPoints,
                )) &&
            (identical(other.categoryTree, categoryTree) ||
                const DeepCollectionEquality().equals(
                  other.categoryTree,
                  categoryTree,
                )) &&
            (identical(other.ext, ext) ||
                const DeepCollectionEquality().equals(other.ext, ext)) &&
            (identical(other.productFlag, productFlag) ||
                const DeepCollectionEquality().equals(
                  other.productFlag,
                  productFlag,
                )) &&
            (identical(other.marketingInfo, marketingInfo) ||
                const DeepCollectionEquality().equals(
                  other.marketingInfo,
                  marketingInfo,
                )) &&
            (identical(other.targetOriginPrice, targetOriginPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetOriginPrice,
                  targetOriginPrice,
                )) &&
            (identical(other.flashSale, flashSale) ||
                const DeepCollectionEquality().equals(
                  other.flashSale,
                  flashSale,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(shopCode) ^
      const DeepCollectionEquality().hash(productCode) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(tenantCode) ^
      const DeepCollectionEquality().hash(brandName) ^
      const DeepCollectionEquality().hash(mainImg) ^
      const DeepCollectionEquality().hash(subImg) ^
      const DeepCollectionEquality().hash(mainVideo) ^
      const DeepCollectionEquality().hash(imgCollection) ^
      const DeepCollectionEquality().hash(textDetail) ^
      const DeepCollectionEquality().hash(imgDetail) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(productOptions) ^
      const DeepCollectionEquality().hash(productAttrs) ^
      const DeepCollectionEquality().hash(sourcePlatform) ^
      const DeepCollectionEquality().hash(platformUrl) ^
      const DeepCollectionEquality().hash(platformProductId) ^
      const DeepCollectionEquality().hash(skuCode) ^
      const DeepCollectionEquality().hash(sellPriceCur) ^
      const DeepCollectionEquality().hash(sellPrice) ^
      const DeepCollectionEquality().hash(targetSellPrice) ^
      const DeepCollectionEquality().hash(targetSellCur) ^
      const DeepCollectionEquality().hash(sellQuantity) ^
      const DeepCollectionEquality().hash(inspectImages) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(premiumBrandInfo) ^
      const DeepCollectionEquality().hash(sellPoints) ^
      const DeepCollectionEquality().hash(categoryTree) ^
      const DeepCollectionEquality().hash(ext) ^
      const DeepCollectionEquality().hash(productFlag) ^
      const DeepCollectionEquality().hash(marketingInfo) ^
      const DeepCollectionEquality().hash(targetOriginPrice) ^
      const DeepCollectionEquality().hash(flashSale) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthGetProductInfoGet$Response$DataExtension
    on ProductNoAuthGetProductInfoGet$Response$Data {
  ProductNoAuthGetProductInfoGet$Response$Data copyWith({
    String? shopCode,
    String? productCode,
    String? productName,
    String? tenantCode,
    String? brandName,
    List<ProductNoAuthGetProductInfoGet$Response$Data$MainImg$Item>? mainImg,
    String? subImg,
    List<ProductNoAuthGetProductInfoGet$Response$Data$MainVideo$Item>?
    mainVideo,
    List<ProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$Item>?
    imgCollection,
    String? textDetail,
    List<ProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$Item>?
    imgDetail,
    double? categoryId,
    List<ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item>?
    productOptions,
    List<ProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$Item>?
    productAttrs,
    String? sourcePlatform,
    String? platformUrl,
    String? platformProductId,
    String? skuCode,
    String? sellPriceCur,
    String? sellPrice,
    String? targetSellPrice,
    String? targetSellCur,
    String? sellQuantity,
    List<ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item>?
    inspectImages,
    List<ProductNoAuthGetProductInfoGet$Response$Data$Tags$Item>? tags,
    ProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfo?
    premiumBrandInfo,
    List<String>? sellPoints,
    List<double>? categoryTree,
    ProductNoAuthGetProductInfoGet$Response$Data$Ext? ext,
    String? productFlag,
    String? marketingInfo,
    String? targetOriginPrice,
    ProductNoAuthGetProductInfoGet$Response$Data$FlashSale? flashSale,
  }) {
    return ProductNoAuthGetProductInfoGet$Response$Data(
      shopCode: shopCode ?? this.shopCode,
      productCode: productCode ?? this.productCode,
      productName: productName ?? this.productName,
      tenantCode: tenantCode ?? this.tenantCode,
      brandName: brandName ?? this.brandName,
      mainImg: mainImg ?? this.mainImg,
      subImg: subImg ?? this.subImg,
      mainVideo: mainVideo ?? this.mainVideo,
      imgCollection: imgCollection ?? this.imgCollection,
      textDetail: textDetail ?? this.textDetail,
      imgDetail: imgDetail ?? this.imgDetail,
      categoryId: categoryId ?? this.categoryId,
      productOptions: productOptions ?? this.productOptions,
      productAttrs: productAttrs ?? this.productAttrs,
      sourcePlatform: sourcePlatform ?? this.sourcePlatform,
      platformUrl: platformUrl ?? this.platformUrl,
      platformProductId: platformProductId ?? this.platformProductId,
      skuCode: skuCode ?? this.skuCode,
      sellPriceCur: sellPriceCur ?? this.sellPriceCur,
      sellPrice: sellPrice ?? this.sellPrice,
      targetSellPrice: targetSellPrice ?? this.targetSellPrice,
      targetSellCur: targetSellCur ?? this.targetSellCur,
      sellQuantity: sellQuantity ?? this.sellQuantity,
      inspectImages: inspectImages ?? this.inspectImages,
      tags: tags ?? this.tags,
      premiumBrandInfo: premiumBrandInfo ?? this.premiumBrandInfo,
      sellPoints: sellPoints ?? this.sellPoints,
      categoryTree: categoryTree ?? this.categoryTree,
      ext: ext ?? this.ext,
      productFlag: productFlag ?? this.productFlag,
      marketingInfo: marketingInfo ?? this.marketingInfo,
      targetOriginPrice: targetOriginPrice ?? this.targetOriginPrice,
      flashSale: flashSale ?? this.flashSale,
    );
  }

  ProductNoAuthGetProductInfoGet$Response$Data copyWithWrapped({
    Wrapped<String?>? shopCode,
    Wrapped<String?>? productCode,
    Wrapped<String?>? productName,
    Wrapped<String?>? tenantCode,
    Wrapped<String?>? brandName,
    Wrapped<List<ProductNoAuthGetProductInfoGet$Response$Data$MainImg$Item>?>?
    mainImg,
    Wrapped<String?>? subImg,
    Wrapped<List<ProductNoAuthGetProductInfoGet$Response$Data$MainVideo$Item>?>?
    mainVideo,
    Wrapped<
      List<ProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$Item>?
    >?
    imgCollection,
    Wrapped<String?>? textDetail,
    Wrapped<List<ProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$Item>?>?
    imgDetail,
    Wrapped<double?>? categoryId,
    Wrapped<
      List<ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item>?
    >?
    productOptions,
    Wrapped<
      List<ProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$Item>?
    >?
    productAttrs,
    Wrapped<String?>? sourcePlatform,
    Wrapped<String?>? platformUrl,
    Wrapped<String?>? platformProductId,
    Wrapped<String?>? skuCode,
    Wrapped<String?>? sellPriceCur,
    Wrapped<String?>? sellPrice,
    Wrapped<String?>? targetSellPrice,
    Wrapped<String?>? targetSellCur,
    Wrapped<String?>? sellQuantity,
    Wrapped<
      List<ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item>?
    >?
    inspectImages,
    Wrapped<List<ProductNoAuthGetProductInfoGet$Response$Data$Tags$Item>?>?
    tags,
    Wrapped<ProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfo?>?
    premiumBrandInfo,
    Wrapped<List<String>?>? sellPoints,
    Wrapped<List<double>>? categoryTree,
    Wrapped<ProductNoAuthGetProductInfoGet$Response$Data$Ext?>? ext,
    Wrapped<String>? productFlag,
    Wrapped<String>? marketingInfo,
    Wrapped<String>? targetOriginPrice,
    Wrapped<ProductNoAuthGetProductInfoGet$Response$Data$FlashSale?>? flashSale,
  }) {
    return ProductNoAuthGetProductInfoGet$Response$Data(
      shopCode: (shopCode != null ? shopCode.value : this.shopCode),
      productCode: (productCode != null ? productCode.value : this.productCode),
      productName: (productName != null ? productName.value : this.productName),
      tenantCode: (tenantCode != null ? tenantCode.value : this.tenantCode),
      brandName: (brandName != null ? brandName.value : this.brandName),
      mainImg: (mainImg != null ? mainImg.value : this.mainImg),
      subImg: (subImg != null ? subImg.value : this.subImg),
      mainVideo: (mainVideo != null ? mainVideo.value : this.mainVideo),
      imgCollection: (imgCollection != null
          ? imgCollection.value
          : this.imgCollection),
      textDetail: (textDetail != null ? textDetail.value : this.textDetail),
      imgDetail: (imgDetail != null ? imgDetail.value : this.imgDetail),
      categoryId: (categoryId != null ? categoryId.value : this.categoryId),
      productOptions: (productOptions != null
          ? productOptions.value
          : this.productOptions),
      productAttrs: (productAttrs != null
          ? productAttrs.value
          : this.productAttrs),
      sourcePlatform: (sourcePlatform != null
          ? sourcePlatform.value
          : this.sourcePlatform),
      platformUrl: (platformUrl != null ? platformUrl.value : this.platformUrl),
      platformProductId: (platformProductId != null
          ? platformProductId.value
          : this.platformProductId),
      skuCode: (skuCode != null ? skuCode.value : this.skuCode),
      sellPriceCur: (sellPriceCur != null
          ? sellPriceCur.value
          : this.sellPriceCur),
      sellPrice: (sellPrice != null ? sellPrice.value : this.sellPrice),
      targetSellPrice: (targetSellPrice != null
          ? targetSellPrice.value
          : this.targetSellPrice),
      targetSellCur: (targetSellCur != null
          ? targetSellCur.value
          : this.targetSellCur),
      sellQuantity: (sellQuantity != null
          ? sellQuantity.value
          : this.sellQuantity),
      inspectImages: (inspectImages != null
          ? inspectImages.value
          : this.inspectImages),
      tags: (tags != null ? tags.value : this.tags),
      premiumBrandInfo: (premiumBrandInfo != null
          ? premiumBrandInfo.value
          : this.premiumBrandInfo),
      sellPoints: (sellPoints != null ? sellPoints.value : this.sellPoints),
      categoryTree: (categoryTree != null
          ? categoryTree.value
          : this.categoryTree),
      ext: (ext != null ? ext.value : this.ext),
      productFlag: (productFlag != null ? productFlag.value : this.productFlag),
      marketingInfo: (marketingInfo != null
          ? marketingInfo.value
          : this.marketingInfo),
      targetOriginPrice: (targetOriginPrice != null
          ? targetOriginPrice.value
          : this.targetOriginPrice),
      flashSale: (flashSale != null ? flashSale.value : this.flashSale),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthPremierProductCategoryGet$Response$Data {
  const ProductNoAuthPremierProductCategoryGet$Response$Data({
    this.categoryList,
  });

  factory ProductNoAuthPremierProductCategoryGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthPremierProductCategoryGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthPremierProductCategoryGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthPremierProductCategoryGet$Response$DataToJson(this);

  @JsonKey(name: 'categoryList')
  final List<
    ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item
  >?
  categoryList;
  static const fromJsonFactory =
      _$ProductNoAuthPremierProductCategoryGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthPremierProductCategoryGet$Response$Data &&
            (identical(other.categoryList, categoryList) ||
                const DeepCollectionEquality().equals(
                  other.categoryList,
                  categoryList,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(categoryList) ^ runtimeType.hashCode;
}

extension $ProductNoAuthPremierProductCategoryGet$Response$DataExtension
    on ProductNoAuthPremierProductCategoryGet$Response$Data {
  ProductNoAuthPremierProductCategoryGet$Response$Data copyWith({
    List<
      ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item
    >?
    categoryList,
  }) {
    return ProductNoAuthPremierProductCategoryGet$Response$Data(
      categoryList: categoryList ?? this.categoryList,
    );
  }

  ProductNoAuthPremierProductCategoryGet$Response$Data copyWithWrapped({
    Wrapped<
      List<
        ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item
      >?
    >?
    categoryList,
  }) {
    return ProductNoAuthPremierProductCategoryGet$Response$Data(
      categoryList: (categoryList != null
          ? categoryList.value
          : this.categoryList),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthHotProductGet$Response$Data$Item {
  const ProductNoAuthHotProductGet$Response$Data$Item({
    required this.productCode,
    required this.productName,
    required this.image,
    required this.skuCode,
    required this.sellPriceCur,
    required this.sellPrice,
    required this.targetSellPrice,
    required this.targetSellCur,
    required this.sellQuantity,
    required this.marketingInfo,
    required this.targetOriginPrice,
    required this.tags,
    this.premiumBrandInfo,
    this.sellPoints,
  });

  factory ProductNoAuthHotProductGet$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthHotProductGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthHotProductGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthHotProductGet$Response$Data$ItemToJson(this);

  @JsonKey(name: 'productCode')
  final String productCode;
  @JsonKey(name: 'productName')
  final String productName;
  @JsonKey(name: 'image')
  final ProductNoAuthHotProductGet$Response$Data$Item$Image image;
  @JsonKey(name: 'skuCode')
  final String skuCode;
  @JsonKey(name: 'sellPriceCur')
  final String sellPriceCur;
  @JsonKey(name: 'sellPrice')
  final String sellPrice;
  @JsonKey(name: 'targetSellPrice')
  final String targetSellPrice;
  @JsonKey(name: 'targetSellCur')
  final String targetSellCur;
  @JsonKey(name: 'sellQuantity')
  final String sellQuantity;
  @JsonKey(name: 'marketingInfo')
  final String marketingInfo;
  @JsonKey(name: 'targetOriginPrice')
  final String targetOriginPrice;
  @JsonKey(name: 'tags')
  final List<ProductNoAuthHotProductGet$Response$Data$Item$Tags$Item> tags;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  static const fromJsonFactory =
      _$ProductNoAuthHotProductGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthHotProductGet$Response$Data$Item &&
            (identical(other.productCode, productCode) ||
                const DeepCollectionEquality().equals(
                  other.productCode,
                  productCode,
                )) &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality().equals(
                  other.productName,
                  productName,
                )) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.skuCode, skuCode) ||
                const DeepCollectionEquality().equals(
                  other.skuCode,
                  skuCode,
                )) &&
            (identical(other.sellPriceCur, sellPriceCur) ||
                const DeepCollectionEquality().equals(
                  other.sellPriceCur,
                  sellPriceCur,
                )) &&
            (identical(other.sellPrice, sellPrice) ||
                const DeepCollectionEquality().equals(
                  other.sellPrice,
                  sellPrice,
                )) &&
            (identical(other.targetSellPrice, targetSellPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetSellPrice,
                  targetSellPrice,
                )) &&
            (identical(other.targetSellCur, targetSellCur) ||
                const DeepCollectionEquality().equals(
                  other.targetSellCur,
                  targetSellCur,
                )) &&
            (identical(other.sellQuantity, sellQuantity) ||
                const DeepCollectionEquality().equals(
                  other.sellQuantity,
                  sellQuantity,
                )) &&
            (identical(other.marketingInfo, marketingInfo) ||
                const DeepCollectionEquality().equals(
                  other.marketingInfo,
                  marketingInfo,
                )) &&
            (identical(other.targetOriginPrice, targetOriginPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetOriginPrice,
                  targetOriginPrice,
                )) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.premiumBrandInfo, premiumBrandInfo) ||
                const DeepCollectionEquality().equals(
                  other.premiumBrandInfo,
                  premiumBrandInfo,
                )) &&
            (identical(other.sellPoints, sellPoints) ||
                const DeepCollectionEquality().equals(
                  other.sellPoints,
                  sellPoints,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(productCode) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(skuCode) ^
      const DeepCollectionEquality().hash(sellPriceCur) ^
      const DeepCollectionEquality().hash(sellPrice) ^
      const DeepCollectionEquality().hash(targetSellPrice) ^
      const DeepCollectionEquality().hash(targetSellCur) ^
      const DeepCollectionEquality().hash(sellQuantity) ^
      const DeepCollectionEquality().hash(marketingInfo) ^
      const DeepCollectionEquality().hash(targetOriginPrice) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(premiumBrandInfo) ^
      const DeepCollectionEquality().hash(sellPoints) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthHotProductGet$Response$Data$ItemExtension
    on ProductNoAuthHotProductGet$Response$Data$Item {
  ProductNoAuthHotProductGet$Response$Data$Item copyWith({
    String? productCode,
    String? productName,
    ProductNoAuthHotProductGet$Response$Data$Item$Image? image,
    String? skuCode,
    String? sellPriceCur,
    String? sellPrice,
    String? targetSellPrice,
    String? targetSellCur,
    String? sellQuantity,
    String? marketingInfo,
    String? targetOriginPrice,
    List<ProductNoAuthHotProductGet$Response$Data$Item$Tags$Item>? tags,
    ProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
  }) {
    return ProductNoAuthHotProductGet$Response$Data$Item(
      productCode: productCode ?? this.productCode,
      productName: productName ?? this.productName,
      image: image ?? this.image,
      skuCode: skuCode ?? this.skuCode,
      sellPriceCur: sellPriceCur ?? this.sellPriceCur,
      sellPrice: sellPrice ?? this.sellPrice,
      targetSellPrice: targetSellPrice ?? this.targetSellPrice,
      targetSellCur: targetSellCur ?? this.targetSellCur,
      sellQuantity: sellQuantity ?? this.sellQuantity,
      marketingInfo: marketingInfo ?? this.marketingInfo,
      targetOriginPrice: targetOriginPrice ?? this.targetOriginPrice,
      tags: tags ?? this.tags,
      premiumBrandInfo: premiumBrandInfo ?? this.premiumBrandInfo,
      sellPoints: sellPoints ?? this.sellPoints,
    );
  }

  ProductNoAuthHotProductGet$Response$Data$Item copyWithWrapped({
    Wrapped<String>? productCode,
    Wrapped<String>? productName,
    Wrapped<ProductNoAuthHotProductGet$Response$Data$Item$Image>? image,
    Wrapped<String>? skuCode,
    Wrapped<String>? sellPriceCur,
    Wrapped<String>? sellPrice,
    Wrapped<String>? targetSellPrice,
    Wrapped<String>? targetSellCur,
    Wrapped<String>? sellQuantity,
    Wrapped<String>? marketingInfo,
    Wrapped<String>? targetOriginPrice,
    Wrapped<List<ProductNoAuthHotProductGet$Response$Data$Item$Tags$Item>>?
    tags,
    Wrapped<ProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfo?>?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
  }) {
    return ProductNoAuthHotProductGet$Response$Data$Item(
      productCode: (productCode != null ? productCode.value : this.productCode),
      productName: (productName != null ? productName.value : this.productName),
      image: (image != null ? image.value : this.image),
      skuCode: (skuCode != null ? skuCode.value : this.skuCode),
      sellPriceCur: (sellPriceCur != null
          ? sellPriceCur.value
          : this.sellPriceCur),
      sellPrice: (sellPrice != null ? sellPrice.value : this.sellPrice),
      targetSellPrice: (targetSellPrice != null
          ? targetSellPrice.value
          : this.targetSellPrice),
      targetSellCur: (targetSellCur != null
          ? targetSellCur.value
          : this.targetSellCur),
      sellQuantity: (sellQuantity != null
          ? sellQuantity.value
          : this.sellQuantity),
      marketingInfo: (marketingInfo != null
          ? marketingInfo.value
          : this.marketingInfo),
      targetOriginPrice: (targetOriginPrice != null
          ? targetOriginPrice.value
          : this.targetOriginPrice),
      tags: (tags != null ? tags.value : this.tags),
      premiumBrandInfo: (premiumBrandInfo != null
          ? premiumBrandInfo.value
          : this.premiumBrandInfo),
      sellPoints: (sellPoints != null ? sellPoints.value : this.sellPoints),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthHotProductV2Get$Response$Data {
  const ProductNoAuthHotProductV2Get$Response$Data({
    required this.total,
    required this.pageSize,
    required this.current,
    required this.totalPages,
    required this.records,
  });

  factory ProductNoAuthHotProductV2Get$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthHotProductV2Get$Response$DataFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthHotProductV2Get$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthHotProductV2Get$Response$DataToJson(this);

  @JsonKey(name: 'total')
  final int total;
  @JsonKey(name: 'pageSize')
  final int pageSize;
  @JsonKey(name: 'current')
  final int current;
  @JsonKey(name: 'totalPages')
  final int totalPages;
  @JsonKey(name: 'records')
  final List<ProductNoAuthHotProductV2Get$Response$Data$Records$Item> records;
  static const fromJsonFactory =
      _$ProductNoAuthHotProductV2Get$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthHotProductV2Get$Response$Data &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality().equals(
                  other.pageSize,
                  pageSize,
                )) &&
            (identical(other.current, current) ||
                const DeepCollectionEquality().equals(
                  other.current,
                  current,
                )) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality().equals(
                  other.totalPages,
                  totalPages,
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
      const DeepCollectionEquality().hash(current) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(records) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthHotProductV2Get$Response$DataExtension
    on ProductNoAuthHotProductV2Get$Response$Data {
  ProductNoAuthHotProductV2Get$Response$Data copyWith({
    int? total,
    int? pageSize,
    int? current,
    int? totalPages,
    List<ProductNoAuthHotProductV2Get$Response$Data$Records$Item>? records,
  }) {
    return ProductNoAuthHotProductV2Get$Response$Data(
      total: total ?? this.total,
      pageSize: pageSize ?? this.pageSize,
      current: current ?? this.current,
      totalPages: totalPages ?? this.totalPages,
      records: records ?? this.records,
    );
  }

  ProductNoAuthHotProductV2Get$Response$Data copyWithWrapped({
    Wrapped<int>? total,
    Wrapped<int>? pageSize,
    Wrapped<int>? current,
    Wrapped<int>? totalPages,
    Wrapped<List<ProductNoAuthHotProductV2Get$Response$Data$Records$Item>>?
    records,
  }) {
    return ProductNoAuthHotProductV2Get$Response$Data(
      total: (total != null ? total.value : this.total),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      current: (current != null ? current.value : this.current),
      totalPages: (totalPages != null ? totalPages.value : this.totalPages),
      records: (records != null ? records.value : this.records),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthHotProductV3Get$Response$Data {
  const ProductNoAuthHotProductV3Get$Response$Data({
    this.total,
    this.pageSize,
    this.totalPages,
    this.current,
    this.records,
  });

  factory ProductNoAuthHotProductV3Get$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthHotProductV3Get$Response$DataFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthHotProductV3Get$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthHotProductV3Get$Response$DataToJson(this);

  @JsonKey(name: 'total')
  final double? total;
  @JsonKey(name: 'pageSize')
  final double? pageSize;
  @JsonKey(name: 'totalPages')
  final double? totalPages;
  @JsonKey(name: 'current')
  final double? current;
  @JsonKey(name: 'records')
  final List<ProductNoAuthHotProductV3Get$Response$Data$Records$Item>? records;
  static const fromJsonFactory =
      _$ProductNoAuthHotProductV3Get$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthHotProductV3Get$Response$Data &&
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

extension $ProductNoAuthHotProductV3Get$Response$DataExtension
    on ProductNoAuthHotProductV3Get$Response$Data {
  ProductNoAuthHotProductV3Get$Response$Data copyWith({
    double? total,
    double? pageSize,
    double? totalPages,
    double? current,
    List<ProductNoAuthHotProductV3Get$Response$Data$Records$Item>? records,
  }) {
    return ProductNoAuthHotProductV3Get$Response$Data(
      total: total ?? this.total,
      pageSize: pageSize ?? this.pageSize,
      totalPages: totalPages ?? this.totalPages,
      current: current ?? this.current,
      records: records ?? this.records,
    );
  }

  ProductNoAuthHotProductV3Get$Response$Data copyWithWrapped({
    Wrapped<double?>? total,
    Wrapped<double?>? pageSize,
    Wrapped<double?>? totalPages,
    Wrapped<double?>? current,
    Wrapped<List<ProductNoAuthHotProductV3Get$Response$Data$Records$Item>?>?
    records,
  }) {
    return ProductNoAuthHotProductV3Get$Response$Data(
      total: (total != null ? total.value : this.total),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      totalPages: (totalPages != null ? totalPages.value : this.totalPages),
      current: (current != null ? current.value : this.current),
      records: (records != null ? records.value : this.records),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthFlashSaleProductGet$Response$Data$Item {
  const ProductNoAuthFlashSaleProductGet$Response$Data$Item({
    required this.shopCode,
    required this.productCode,
    required this.productName,
    required this.tenantCode,
    required this.brandName,
    required this.mainImg,
    required this.subImg,
    required this.mainVideo,
    required this.imgCollection,
    this.textDetail,
    required this.imgDetail,
    required this.categoryId,
    required this.productOptions,
    required this.productAttrs,
    required this.sourcePlatform,
    required this.platformUrl,
    required this.platformProductId,
    required this.skuCode,
    required this.sellPriceCur,
    required this.sellPrice,
    required this.targetSellPrice,
    required this.targetSellCur,
    required this.productFlag,
    required this.marketingInfo,
    required this.sellQuantity,
    required this.tags,
    this.premiumBrandInfo,
    this.sellPoints,
  });

  factory ProductNoAuthFlashSaleProductGet$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthFlashSaleProductGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthFlashSaleProductGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthFlashSaleProductGet$Response$Data$ItemToJson(this);

  @JsonKey(name: 'shopCode')
  final String shopCode;
  @JsonKey(name: 'productCode')
  final String productCode;
  @JsonKey(name: 'productName')
  final String productName;
  @JsonKey(name: 'tenantCode')
  final String tenantCode;
  @JsonKey(name: 'brandName')
  final String brandName;
  @JsonKey(name: 'mainImg')
  final List<ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$Item>
  mainImg;
  @JsonKey(name: 'subImg')
  final Object subImg;
  @JsonKey(name: 'mainVideo')
  final List<ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$Item>
  mainVideo;
  @JsonKey(name: 'imgCollection')
  final List<
    ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$Item
  >
  imgCollection;
  @JsonKey(name: 'textDetail')
  final String? textDetail;
  @JsonKey(name: 'imgDetail')
  final List<ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$Item>
  imgDetail;
  @JsonKey(name: 'categoryId')
  final double categoryId;
  @JsonKey(name: 'productOptions')
  final List<
    ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item
  >
  productOptions;
  @JsonKey(name: 'productAttrs')
  final List<
    ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$Item
  >
  productAttrs;
  @JsonKey(name: 'sourcePlatform')
  final String sourcePlatform;
  @JsonKey(name: 'platformUrl')
  final String platformUrl;
  @JsonKey(name: 'platformProductId')
  final String platformProductId;
  @JsonKey(name: 'skuCode')
  final String skuCode;
  @JsonKey(name: 'sellPriceCur')
  final String sellPriceCur;
  @JsonKey(name: 'sellPrice')
  final String sellPrice;
  @JsonKey(name: 'targetSellPrice')
  final String targetSellPrice;
  @JsonKey(name: 'targetSellCur')
  final String targetSellCur;
  @JsonKey(name: 'productFlag')
  final String productFlag;
  @JsonKey(name: 'marketingInfo')
  final String marketingInfo;
  @JsonKey(name: 'sellQuantity')
  final String sellQuantity;
  @JsonKey(name: 'tags')
  final List<ProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$Item>
  tags;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  static const fromJsonFactory =
      _$ProductNoAuthFlashSaleProductGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthFlashSaleProductGet$Response$Data$Item &&
            (identical(other.shopCode, shopCode) ||
                const DeepCollectionEquality().equals(
                  other.shopCode,
                  shopCode,
                )) &&
            (identical(other.productCode, productCode) ||
                const DeepCollectionEquality().equals(
                  other.productCode,
                  productCode,
                )) &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality().equals(
                  other.productName,
                  productName,
                )) &&
            (identical(other.tenantCode, tenantCode) ||
                const DeepCollectionEquality().equals(
                  other.tenantCode,
                  tenantCode,
                )) &&
            (identical(other.brandName, brandName) ||
                const DeepCollectionEquality().equals(
                  other.brandName,
                  brandName,
                )) &&
            (identical(other.mainImg, mainImg) ||
                const DeepCollectionEquality().equals(
                  other.mainImg,
                  mainImg,
                )) &&
            (identical(other.subImg, subImg) ||
                const DeepCollectionEquality().equals(other.subImg, subImg)) &&
            (identical(other.mainVideo, mainVideo) ||
                const DeepCollectionEquality().equals(
                  other.mainVideo,
                  mainVideo,
                )) &&
            (identical(other.imgCollection, imgCollection) ||
                const DeepCollectionEquality().equals(
                  other.imgCollection,
                  imgCollection,
                )) &&
            (identical(other.textDetail, textDetail) ||
                const DeepCollectionEquality().equals(
                  other.textDetail,
                  textDetail,
                )) &&
            (identical(other.imgDetail, imgDetail) ||
                const DeepCollectionEquality().equals(
                  other.imgDetail,
                  imgDetail,
                )) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality().equals(
                  other.categoryId,
                  categoryId,
                )) &&
            (identical(other.productOptions, productOptions) ||
                const DeepCollectionEquality().equals(
                  other.productOptions,
                  productOptions,
                )) &&
            (identical(other.productAttrs, productAttrs) ||
                const DeepCollectionEquality().equals(
                  other.productAttrs,
                  productAttrs,
                )) &&
            (identical(other.sourcePlatform, sourcePlatform) ||
                const DeepCollectionEquality().equals(
                  other.sourcePlatform,
                  sourcePlatform,
                )) &&
            (identical(other.platformUrl, platformUrl) ||
                const DeepCollectionEquality().equals(
                  other.platformUrl,
                  platformUrl,
                )) &&
            (identical(other.platformProductId, platformProductId) ||
                const DeepCollectionEquality().equals(
                  other.platformProductId,
                  platformProductId,
                )) &&
            (identical(other.skuCode, skuCode) ||
                const DeepCollectionEquality().equals(
                  other.skuCode,
                  skuCode,
                )) &&
            (identical(other.sellPriceCur, sellPriceCur) ||
                const DeepCollectionEquality().equals(
                  other.sellPriceCur,
                  sellPriceCur,
                )) &&
            (identical(other.sellPrice, sellPrice) ||
                const DeepCollectionEquality().equals(
                  other.sellPrice,
                  sellPrice,
                )) &&
            (identical(other.targetSellPrice, targetSellPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetSellPrice,
                  targetSellPrice,
                )) &&
            (identical(other.targetSellCur, targetSellCur) ||
                const DeepCollectionEquality().equals(
                  other.targetSellCur,
                  targetSellCur,
                )) &&
            (identical(other.productFlag, productFlag) ||
                const DeepCollectionEquality().equals(
                  other.productFlag,
                  productFlag,
                )) &&
            (identical(other.marketingInfo, marketingInfo) ||
                const DeepCollectionEquality().equals(
                  other.marketingInfo,
                  marketingInfo,
                )) &&
            (identical(other.sellQuantity, sellQuantity) ||
                const DeepCollectionEquality().equals(
                  other.sellQuantity,
                  sellQuantity,
                )) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.premiumBrandInfo, premiumBrandInfo) ||
                const DeepCollectionEquality().equals(
                  other.premiumBrandInfo,
                  premiumBrandInfo,
                )) &&
            (identical(other.sellPoints, sellPoints) ||
                const DeepCollectionEquality().equals(
                  other.sellPoints,
                  sellPoints,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(shopCode) ^
      const DeepCollectionEquality().hash(productCode) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(tenantCode) ^
      const DeepCollectionEquality().hash(brandName) ^
      const DeepCollectionEquality().hash(mainImg) ^
      const DeepCollectionEquality().hash(subImg) ^
      const DeepCollectionEquality().hash(mainVideo) ^
      const DeepCollectionEquality().hash(imgCollection) ^
      const DeepCollectionEquality().hash(textDetail) ^
      const DeepCollectionEquality().hash(imgDetail) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(productOptions) ^
      const DeepCollectionEquality().hash(productAttrs) ^
      const DeepCollectionEquality().hash(sourcePlatform) ^
      const DeepCollectionEquality().hash(platformUrl) ^
      const DeepCollectionEquality().hash(platformProductId) ^
      const DeepCollectionEquality().hash(skuCode) ^
      const DeepCollectionEquality().hash(sellPriceCur) ^
      const DeepCollectionEquality().hash(sellPrice) ^
      const DeepCollectionEquality().hash(targetSellPrice) ^
      const DeepCollectionEquality().hash(targetSellCur) ^
      const DeepCollectionEquality().hash(productFlag) ^
      const DeepCollectionEquality().hash(marketingInfo) ^
      const DeepCollectionEquality().hash(sellQuantity) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(premiumBrandInfo) ^
      const DeepCollectionEquality().hash(sellPoints) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthFlashSaleProductGet$Response$Data$ItemExtension
    on ProductNoAuthFlashSaleProductGet$Response$Data$Item {
  ProductNoAuthFlashSaleProductGet$Response$Data$Item copyWith({
    String? shopCode,
    String? productCode,
    String? productName,
    String? tenantCode,
    String? brandName,
    List<ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$Item>?
    mainImg,
    Object? subImg,
    List<ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$Item>?
    mainVideo,
    List<
      ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$Item
    >?
    imgCollection,
    String? textDetail,
    List<ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$Item>?
    imgDetail,
    double? categoryId,
    List<
      ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item
    >?
    productOptions,
    List<ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$Item>?
    productAttrs,
    String? sourcePlatform,
    String? platformUrl,
    String? platformProductId,
    String? skuCode,
    String? sellPriceCur,
    String? sellPrice,
    String? targetSellPrice,
    String? targetSellCur,
    String? productFlag,
    String? marketingInfo,
    String? sellQuantity,
    List<ProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$Item>? tags,
    ProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
  }) {
    return ProductNoAuthFlashSaleProductGet$Response$Data$Item(
      shopCode: shopCode ?? this.shopCode,
      productCode: productCode ?? this.productCode,
      productName: productName ?? this.productName,
      tenantCode: tenantCode ?? this.tenantCode,
      brandName: brandName ?? this.brandName,
      mainImg: mainImg ?? this.mainImg,
      subImg: subImg ?? this.subImg,
      mainVideo: mainVideo ?? this.mainVideo,
      imgCollection: imgCollection ?? this.imgCollection,
      textDetail: textDetail ?? this.textDetail,
      imgDetail: imgDetail ?? this.imgDetail,
      categoryId: categoryId ?? this.categoryId,
      productOptions: productOptions ?? this.productOptions,
      productAttrs: productAttrs ?? this.productAttrs,
      sourcePlatform: sourcePlatform ?? this.sourcePlatform,
      platformUrl: platformUrl ?? this.platformUrl,
      platformProductId: platformProductId ?? this.platformProductId,
      skuCode: skuCode ?? this.skuCode,
      sellPriceCur: sellPriceCur ?? this.sellPriceCur,
      sellPrice: sellPrice ?? this.sellPrice,
      targetSellPrice: targetSellPrice ?? this.targetSellPrice,
      targetSellCur: targetSellCur ?? this.targetSellCur,
      productFlag: productFlag ?? this.productFlag,
      marketingInfo: marketingInfo ?? this.marketingInfo,
      sellQuantity: sellQuantity ?? this.sellQuantity,
      tags: tags ?? this.tags,
      premiumBrandInfo: premiumBrandInfo ?? this.premiumBrandInfo,
      sellPoints: sellPoints ?? this.sellPoints,
    );
  }

  ProductNoAuthFlashSaleProductGet$Response$Data$Item copyWithWrapped({
    Wrapped<String>? shopCode,
    Wrapped<String>? productCode,
    Wrapped<String>? productName,
    Wrapped<String>? tenantCode,
    Wrapped<String>? brandName,
    Wrapped<
      List<ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$Item>
    >?
    mainImg,
    Wrapped<Object>? subImg,
    Wrapped<
      List<ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$Item>
    >?
    mainVideo,
    Wrapped<
      List<
        ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$Item
      >
    >?
    imgCollection,
    Wrapped<String?>? textDetail,
    Wrapped<
      List<ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$Item>
    >?
    imgDetail,
    Wrapped<double>? categoryId,
    Wrapped<
      List<
        ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item
      >
    >?
    productOptions,
    Wrapped<
      List<
        ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$Item
      >
    >?
    productAttrs,
    Wrapped<String>? sourcePlatform,
    Wrapped<String>? platformUrl,
    Wrapped<String>? platformProductId,
    Wrapped<String>? skuCode,
    Wrapped<String>? sellPriceCur,
    Wrapped<String>? sellPrice,
    Wrapped<String>? targetSellPrice,
    Wrapped<String>? targetSellCur,
    Wrapped<String>? productFlag,
    Wrapped<String>? marketingInfo,
    Wrapped<String>? sellQuantity,
    Wrapped<
      List<ProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$Item>
    >?
    tags,
    Wrapped<
      ProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
  }) {
    return ProductNoAuthFlashSaleProductGet$Response$Data$Item(
      shopCode: (shopCode != null ? shopCode.value : this.shopCode),
      productCode: (productCode != null ? productCode.value : this.productCode),
      productName: (productName != null ? productName.value : this.productName),
      tenantCode: (tenantCode != null ? tenantCode.value : this.tenantCode),
      brandName: (brandName != null ? brandName.value : this.brandName),
      mainImg: (mainImg != null ? mainImg.value : this.mainImg),
      subImg: (subImg != null ? subImg.value : this.subImg),
      mainVideo: (mainVideo != null ? mainVideo.value : this.mainVideo),
      imgCollection: (imgCollection != null
          ? imgCollection.value
          : this.imgCollection),
      textDetail: (textDetail != null ? textDetail.value : this.textDetail),
      imgDetail: (imgDetail != null ? imgDetail.value : this.imgDetail),
      categoryId: (categoryId != null ? categoryId.value : this.categoryId),
      productOptions: (productOptions != null
          ? productOptions.value
          : this.productOptions),
      productAttrs: (productAttrs != null
          ? productAttrs.value
          : this.productAttrs),
      sourcePlatform: (sourcePlatform != null
          ? sourcePlatform.value
          : this.sourcePlatform),
      platformUrl: (platformUrl != null ? platformUrl.value : this.platformUrl),
      platformProductId: (platformProductId != null
          ? platformProductId.value
          : this.platformProductId),
      skuCode: (skuCode != null ? skuCode.value : this.skuCode),
      sellPriceCur: (sellPriceCur != null
          ? sellPriceCur.value
          : this.sellPriceCur),
      sellPrice: (sellPrice != null ? sellPrice.value : this.sellPrice),
      targetSellPrice: (targetSellPrice != null
          ? targetSellPrice.value
          : this.targetSellPrice),
      targetSellCur: (targetSellCur != null
          ? targetSellCur.value
          : this.targetSellCur),
      productFlag: (productFlag != null ? productFlag.value : this.productFlag),
      marketingInfo: (marketingInfo != null
          ? marketingInfo.value
          : this.marketingInfo),
      sellQuantity: (sellQuantity != null
          ? sellQuantity.value
          : this.sellQuantity),
      tags: (tags != null ? tags.value : this.tags),
      premiumBrandInfo: (premiumBrandInfo != null
          ? premiumBrandInfo.value
          : this.premiumBrandInfo),
      sellPoints: (sellPoints != null ? sellPoints.value : this.sellPoints),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthAlbumProductGet$Response$Data {
  const ProductNoAuthAlbumProductGet$Response$Data({
    this.total,
    this.pageSize,
    this.totalPages,
    this.current,
    this.records,
  });

  factory ProductNoAuthAlbumProductGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthAlbumProductGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthAlbumProductGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthAlbumProductGet$Response$DataToJson(this);

  @JsonKey(name: 'total')
  final double? total;
  @JsonKey(name: 'pageSize')
  final double? pageSize;
  @JsonKey(name: 'totalPages')
  final double? totalPages;
  @JsonKey(name: 'current')
  final double? current;
  @JsonKey(name: 'records')
  final List<ProductNoAuthAlbumProductGet$Response$Data$Records$Item>? records;
  static const fromJsonFactory =
      _$ProductNoAuthAlbumProductGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthAlbumProductGet$Response$Data &&
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

extension $ProductNoAuthAlbumProductGet$Response$DataExtension
    on ProductNoAuthAlbumProductGet$Response$Data {
  ProductNoAuthAlbumProductGet$Response$Data copyWith({
    double? total,
    double? pageSize,
    double? totalPages,
    double? current,
    List<ProductNoAuthAlbumProductGet$Response$Data$Records$Item>? records,
  }) {
    return ProductNoAuthAlbumProductGet$Response$Data(
      total: total ?? this.total,
      pageSize: pageSize ?? this.pageSize,
      totalPages: totalPages ?? this.totalPages,
      current: current ?? this.current,
      records: records ?? this.records,
    );
  }

  ProductNoAuthAlbumProductGet$Response$Data copyWithWrapped({
    Wrapped<double?>? total,
    Wrapped<double?>? pageSize,
    Wrapped<double?>? totalPages,
    Wrapped<double?>? current,
    Wrapped<List<ProductNoAuthAlbumProductGet$Response$Data$Records$Item>?>?
    records,
  }) {
    return ProductNoAuthAlbumProductGet$Response$Data(
      total: (total != null ? total.value : this.total),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      totalPages: (totalPages != null ? totalPages.value : this.totalPages),
      current: (current != null ? current.value : this.current),
      records: (records != null ? records.value : this.records),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ShopNoAuthGetThirdShopGet$Response$Data {
  const ShopNoAuthGetThirdShopGet$Response$Data({
    required this.shopCode,
    required this.shopName,
    required this.icon,
    required this.recordSource,
    required this.records,
  });

  factory ShopNoAuthGetThirdShopGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$ShopNoAuthGetThirdShopGet$Response$DataFromJson(json);

  static const toJsonFactory = _$ShopNoAuthGetThirdShopGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ShopNoAuthGetThirdShopGet$Response$DataToJson(this);

  @JsonKey(name: 'shopCode')
  final String shopCode;
  @JsonKey(name: 'shopName')
  final String shopName;
  @JsonKey(name: 'icon')
  final String icon;
  @JsonKey(name: 'recordSource')
  final int recordSource;
  @JsonKey(name: 'records')
  final List<ShopNoAuthGetThirdShopGet$Response$Data$Records$Item> records;
  static const fromJsonFactory =
      _$ShopNoAuthGetThirdShopGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ShopNoAuthGetThirdShopGet$Response$Data &&
            (identical(other.shopCode, shopCode) ||
                const DeepCollectionEquality().equals(
                  other.shopCode,
                  shopCode,
                )) &&
            (identical(other.shopName, shopName) ||
                const DeepCollectionEquality().equals(
                  other.shopName,
                  shopName,
                )) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.recordSource, recordSource) ||
                const DeepCollectionEquality().equals(
                  other.recordSource,
                  recordSource,
                )) &&
            (identical(other.records, records) ||
                const DeepCollectionEquality().equals(other.records, records)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(shopCode) ^
      const DeepCollectionEquality().hash(shopName) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(recordSource) ^
      const DeepCollectionEquality().hash(records) ^
      runtimeType.hashCode;
}

extension $ShopNoAuthGetThirdShopGet$Response$DataExtension
    on ShopNoAuthGetThirdShopGet$Response$Data {
  ShopNoAuthGetThirdShopGet$Response$Data copyWith({
    String? shopCode,
    String? shopName,
    String? icon,
    int? recordSource,
    List<ShopNoAuthGetThirdShopGet$Response$Data$Records$Item>? records,
  }) {
    return ShopNoAuthGetThirdShopGet$Response$Data(
      shopCode: shopCode ?? this.shopCode,
      shopName: shopName ?? this.shopName,
      icon: icon ?? this.icon,
      recordSource: recordSource ?? this.recordSource,
      records: records ?? this.records,
    );
  }

  ShopNoAuthGetThirdShopGet$Response$Data copyWithWrapped({
    Wrapped<String>? shopCode,
    Wrapped<String>? shopName,
    Wrapped<String>? icon,
    Wrapped<int>? recordSource,
    Wrapped<List<ShopNoAuthGetThirdShopGet$Response$Data$Records$Item>>?
    records,
  }) {
    return ShopNoAuthGetThirdShopGet$Response$Data(
      shopCode: (shopCode != null ? shopCode.value : this.shopCode),
      shopName: (shopName != null ? shopName.value : this.shopName),
      icon: (icon != null ? icon.value : this.icon),
      recordSource: (recordSource != null
          ? recordSource.value
          : this.recordSource),
      records: (records != null ? records.value : this.records),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthKolProductGet$Response$Data$Item {
  const ProductNoAuthKolProductGet$Response$Data$Item({
    required this.shopCode,
    required this.productCode,
    required this.productName,
    required this.tenantCode,
    required this.brandName,
    required this.mainImg,
    required this.subImg,
    required this.mainVideo,
    required this.imgCollection,
    this.textDetail,
    required this.imgDetail,
    required this.categoryId,
    required this.productOptions,
    required this.productAttrs,
    required this.sourcePlatform,
    required this.platformUrl,
    required this.platformProductId,
    required this.skuCode,
    required this.sellPriceCur,
    required this.sellPrice,
    required this.targetSellPrice,
    required this.targetSellCur,
    required this.productFlag,
    required this.marketingInfo,
    required this.sellQuantity,
    required this.tags,
    this.premiumBrandInfo,
    this.sellPoints,
  });

  factory ProductNoAuthKolProductGet$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthKolProductGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthKolProductGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthKolProductGet$Response$Data$ItemToJson(this);

  @JsonKey(name: 'shopCode')
  final String shopCode;
  @JsonKey(name: 'productCode')
  final String productCode;
  @JsonKey(name: 'productName')
  final String productName;
  @JsonKey(name: 'tenantCode')
  final String tenantCode;
  @JsonKey(name: 'brandName')
  final String brandName;
  @JsonKey(name: 'mainImg')
  final List<ProductNoAuthKolProductGet$Response$Data$Item$MainImg$Item>
  mainImg;
  @JsonKey(name: 'subImg')
  final Object subImg;
  @JsonKey(name: 'mainVideo')
  final List<ProductNoAuthKolProductGet$Response$Data$Item$MainVideo$Item>
  mainVideo;
  @JsonKey(name: 'imgCollection')
  final List<ProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$Item>
  imgCollection;
  @JsonKey(name: 'textDetail')
  final String? textDetail;
  @JsonKey(name: 'imgDetail')
  final List<ProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$Item>
  imgDetail;
  @JsonKey(name: 'categoryId')
  final double categoryId;
  @JsonKey(name: 'productOptions')
  final List<ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item>
  productOptions;
  @JsonKey(name: 'productAttrs')
  final List<ProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$Item>
  productAttrs;
  @JsonKey(name: 'sourcePlatform')
  final String sourcePlatform;
  @JsonKey(name: 'platformUrl')
  final String platformUrl;
  @JsonKey(name: 'platformProductId')
  final String platformProductId;
  @JsonKey(name: 'skuCode')
  final String skuCode;
  @JsonKey(name: 'sellPriceCur')
  final String sellPriceCur;
  @JsonKey(name: 'sellPrice')
  final String sellPrice;
  @JsonKey(name: 'targetSellPrice')
  final String targetSellPrice;
  @JsonKey(name: 'targetSellCur')
  final String targetSellCur;
  @JsonKey(name: 'productFlag')
  final String productFlag;
  @JsonKey(name: 'marketingInfo')
  final String marketingInfo;
  @JsonKey(name: 'sellQuantity')
  final String sellQuantity;
  @JsonKey(name: 'tags')
  final List<ProductNoAuthKolProductGet$Response$Data$Item$Tags$Item> tags;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  static const fromJsonFactory =
      _$ProductNoAuthKolProductGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthKolProductGet$Response$Data$Item &&
            (identical(other.shopCode, shopCode) ||
                const DeepCollectionEquality().equals(
                  other.shopCode,
                  shopCode,
                )) &&
            (identical(other.productCode, productCode) ||
                const DeepCollectionEquality().equals(
                  other.productCode,
                  productCode,
                )) &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality().equals(
                  other.productName,
                  productName,
                )) &&
            (identical(other.tenantCode, tenantCode) ||
                const DeepCollectionEquality().equals(
                  other.tenantCode,
                  tenantCode,
                )) &&
            (identical(other.brandName, brandName) ||
                const DeepCollectionEquality().equals(
                  other.brandName,
                  brandName,
                )) &&
            (identical(other.mainImg, mainImg) ||
                const DeepCollectionEquality().equals(
                  other.mainImg,
                  mainImg,
                )) &&
            (identical(other.subImg, subImg) ||
                const DeepCollectionEquality().equals(other.subImg, subImg)) &&
            (identical(other.mainVideo, mainVideo) ||
                const DeepCollectionEquality().equals(
                  other.mainVideo,
                  mainVideo,
                )) &&
            (identical(other.imgCollection, imgCollection) ||
                const DeepCollectionEquality().equals(
                  other.imgCollection,
                  imgCollection,
                )) &&
            (identical(other.textDetail, textDetail) ||
                const DeepCollectionEquality().equals(
                  other.textDetail,
                  textDetail,
                )) &&
            (identical(other.imgDetail, imgDetail) ||
                const DeepCollectionEquality().equals(
                  other.imgDetail,
                  imgDetail,
                )) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality().equals(
                  other.categoryId,
                  categoryId,
                )) &&
            (identical(other.productOptions, productOptions) ||
                const DeepCollectionEquality().equals(
                  other.productOptions,
                  productOptions,
                )) &&
            (identical(other.productAttrs, productAttrs) ||
                const DeepCollectionEquality().equals(
                  other.productAttrs,
                  productAttrs,
                )) &&
            (identical(other.sourcePlatform, sourcePlatform) ||
                const DeepCollectionEquality().equals(
                  other.sourcePlatform,
                  sourcePlatform,
                )) &&
            (identical(other.platformUrl, platformUrl) ||
                const DeepCollectionEquality().equals(
                  other.platformUrl,
                  platformUrl,
                )) &&
            (identical(other.platformProductId, platformProductId) ||
                const DeepCollectionEquality().equals(
                  other.platformProductId,
                  platformProductId,
                )) &&
            (identical(other.skuCode, skuCode) ||
                const DeepCollectionEquality().equals(
                  other.skuCode,
                  skuCode,
                )) &&
            (identical(other.sellPriceCur, sellPriceCur) ||
                const DeepCollectionEquality().equals(
                  other.sellPriceCur,
                  sellPriceCur,
                )) &&
            (identical(other.sellPrice, sellPrice) ||
                const DeepCollectionEquality().equals(
                  other.sellPrice,
                  sellPrice,
                )) &&
            (identical(other.targetSellPrice, targetSellPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetSellPrice,
                  targetSellPrice,
                )) &&
            (identical(other.targetSellCur, targetSellCur) ||
                const DeepCollectionEquality().equals(
                  other.targetSellCur,
                  targetSellCur,
                )) &&
            (identical(other.productFlag, productFlag) ||
                const DeepCollectionEquality().equals(
                  other.productFlag,
                  productFlag,
                )) &&
            (identical(other.marketingInfo, marketingInfo) ||
                const DeepCollectionEquality().equals(
                  other.marketingInfo,
                  marketingInfo,
                )) &&
            (identical(other.sellQuantity, sellQuantity) ||
                const DeepCollectionEquality().equals(
                  other.sellQuantity,
                  sellQuantity,
                )) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.premiumBrandInfo, premiumBrandInfo) ||
                const DeepCollectionEquality().equals(
                  other.premiumBrandInfo,
                  premiumBrandInfo,
                )) &&
            (identical(other.sellPoints, sellPoints) ||
                const DeepCollectionEquality().equals(
                  other.sellPoints,
                  sellPoints,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(shopCode) ^
      const DeepCollectionEquality().hash(productCode) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(tenantCode) ^
      const DeepCollectionEquality().hash(brandName) ^
      const DeepCollectionEquality().hash(mainImg) ^
      const DeepCollectionEquality().hash(subImg) ^
      const DeepCollectionEquality().hash(mainVideo) ^
      const DeepCollectionEquality().hash(imgCollection) ^
      const DeepCollectionEquality().hash(textDetail) ^
      const DeepCollectionEquality().hash(imgDetail) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(productOptions) ^
      const DeepCollectionEquality().hash(productAttrs) ^
      const DeepCollectionEquality().hash(sourcePlatform) ^
      const DeepCollectionEquality().hash(platformUrl) ^
      const DeepCollectionEquality().hash(platformProductId) ^
      const DeepCollectionEquality().hash(skuCode) ^
      const DeepCollectionEquality().hash(sellPriceCur) ^
      const DeepCollectionEquality().hash(sellPrice) ^
      const DeepCollectionEquality().hash(targetSellPrice) ^
      const DeepCollectionEquality().hash(targetSellCur) ^
      const DeepCollectionEquality().hash(productFlag) ^
      const DeepCollectionEquality().hash(marketingInfo) ^
      const DeepCollectionEquality().hash(sellQuantity) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(premiumBrandInfo) ^
      const DeepCollectionEquality().hash(sellPoints) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthKolProductGet$Response$Data$ItemExtension
    on ProductNoAuthKolProductGet$Response$Data$Item {
  ProductNoAuthKolProductGet$Response$Data$Item copyWith({
    String? shopCode,
    String? productCode,
    String? productName,
    String? tenantCode,
    String? brandName,
    List<ProductNoAuthKolProductGet$Response$Data$Item$MainImg$Item>? mainImg,
    Object? subImg,
    List<ProductNoAuthKolProductGet$Response$Data$Item$MainVideo$Item>?
    mainVideo,
    List<ProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$Item>?
    imgCollection,
    String? textDetail,
    List<ProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$Item>?
    imgDetail,
    double? categoryId,
    List<ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item>?
    productOptions,
    List<ProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$Item>?
    productAttrs,
    String? sourcePlatform,
    String? platformUrl,
    String? platformProductId,
    String? skuCode,
    String? sellPriceCur,
    String? sellPrice,
    String? targetSellPrice,
    String? targetSellCur,
    String? productFlag,
    String? marketingInfo,
    String? sellQuantity,
    List<ProductNoAuthKolProductGet$Response$Data$Item$Tags$Item>? tags,
    ProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
  }) {
    return ProductNoAuthKolProductGet$Response$Data$Item(
      shopCode: shopCode ?? this.shopCode,
      productCode: productCode ?? this.productCode,
      productName: productName ?? this.productName,
      tenantCode: tenantCode ?? this.tenantCode,
      brandName: brandName ?? this.brandName,
      mainImg: mainImg ?? this.mainImg,
      subImg: subImg ?? this.subImg,
      mainVideo: mainVideo ?? this.mainVideo,
      imgCollection: imgCollection ?? this.imgCollection,
      textDetail: textDetail ?? this.textDetail,
      imgDetail: imgDetail ?? this.imgDetail,
      categoryId: categoryId ?? this.categoryId,
      productOptions: productOptions ?? this.productOptions,
      productAttrs: productAttrs ?? this.productAttrs,
      sourcePlatform: sourcePlatform ?? this.sourcePlatform,
      platformUrl: platformUrl ?? this.platformUrl,
      platformProductId: platformProductId ?? this.platformProductId,
      skuCode: skuCode ?? this.skuCode,
      sellPriceCur: sellPriceCur ?? this.sellPriceCur,
      sellPrice: sellPrice ?? this.sellPrice,
      targetSellPrice: targetSellPrice ?? this.targetSellPrice,
      targetSellCur: targetSellCur ?? this.targetSellCur,
      productFlag: productFlag ?? this.productFlag,
      marketingInfo: marketingInfo ?? this.marketingInfo,
      sellQuantity: sellQuantity ?? this.sellQuantity,
      tags: tags ?? this.tags,
      premiumBrandInfo: premiumBrandInfo ?? this.premiumBrandInfo,
      sellPoints: sellPoints ?? this.sellPoints,
    );
  }

  ProductNoAuthKolProductGet$Response$Data$Item copyWithWrapped({
    Wrapped<String>? shopCode,
    Wrapped<String>? productCode,
    Wrapped<String>? productName,
    Wrapped<String>? tenantCode,
    Wrapped<String>? brandName,
    Wrapped<List<ProductNoAuthKolProductGet$Response$Data$Item$MainImg$Item>>?
    mainImg,
    Wrapped<Object>? subImg,
    Wrapped<List<ProductNoAuthKolProductGet$Response$Data$Item$MainVideo$Item>>?
    mainVideo,
    Wrapped<
      List<ProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$Item>
    >?
    imgCollection,
    Wrapped<String?>? textDetail,
    Wrapped<List<ProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$Item>>?
    imgDetail,
    Wrapped<double>? categoryId,
    Wrapped<
      List<ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item>
    >?
    productOptions,
    Wrapped<
      List<ProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$Item>
    >?
    productAttrs,
    Wrapped<String>? sourcePlatform,
    Wrapped<String>? platformUrl,
    Wrapped<String>? platformProductId,
    Wrapped<String>? skuCode,
    Wrapped<String>? sellPriceCur,
    Wrapped<String>? sellPrice,
    Wrapped<String>? targetSellPrice,
    Wrapped<String>? targetSellCur,
    Wrapped<String>? productFlag,
    Wrapped<String>? marketingInfo,
    Wrapped<String>? sellQuantity,
    Wrapped<List<ProductNoAuthKolProductGet$Response$Data$Item$Tags$Item>>?
    tags,
    Wrapped<ProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfo?>?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
  }) {
    return ProductNoAuthKolProductGet$Response$Data$Item(
      shopCode: (shopCode != null ? shopCode.value : this.shopCode),
      productCode: (productCode != null ? productCode.value : this.productCode),
      productName: (productName != null ? productName.value : this.productName),
      tenantCode: (tenantCode != null ? tenantCode.value : this.tenantCode),
      brandName: (brandName != null ? brandName.value : this.brandName),
      mainImg: (mainImg != null ? mainImg.value : this.mainImg),
      subImg: (subImg != null ? subImg.value : this.subImg),
      mainVideo: (mainVideo != null ? mainVideo.value : this.mainVideo),
      imgCollection: (imgCollection != null
          ? imgCollection.value
          : this.imgCollection),
      textDetail: (textDetail != null ? textDetail.value : this.textDetail),
      imgDetail: (imgDetail != null ? imgDetail.value : this.imgDetail),
      categoryId: (categoryId != null ? categoryId.value : this.categoryId),
      productOptions: (productOptions != null
          ? productOptions.value
          : this.productOptions),
      productAttrs: (productAttrs != null
          ? productAttrs.value
          : this.productAttrs),
      sourcePlatform: (sourcePlatform != null
          ? sourcePlatform.value
          : this.sourcePlatform),
      platformUrl: (platformUrl != null ? platformUrl.value : this.platformUrl),
      platformProductId: (platformProductId != null
          ? platformProductId.value
          : this.platformProductId),
      skuCode: (skuCode != null ? skuCode.value : this.skuCode),
      sellPriceCur: (sellPriceCur != null
          ? sellPriceCur.value
          : this.sellPriceCur),
      sellPrice: (sellPrice != null ? sellPrice.value : this.sellPrice),
      targetSellPrice: (targetSellPrice != null
          ? targetSellPrice.value
          : this.targetSellPrice),
      targetSellCur: (targetSellCur != null
          ? targetSellCur.value
          : this.targetSellCur),
      productFlag: (productFlag != null ? productFlag.value : this.productFlag),
      marketingInfo: (marketingInfo != null
          ? marketingInfo.value
          : this.marketingInfo),
      sellQuantity: (sellQuantity != null
          ? sellQuantity.value
          : this.sellQuantity),
      tags: (tags != null ? tags.value : this.tags),
      premiumBrandInfo: (premiumBrandInfo != null
          ? premiumBrandInfo.value
          : this.premiumBrandInfo),
      sellPoints: (sellPoints != null ? sellPoints.value : this.sellPoints),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthPremierProductGet$Response$Data {
  const ProductNoAuthPremierProductGet$Response$Data({
    this.total,
    this.pageSize,
    this.totalPages,
    this.current,
    this.records,
  });

  factory ProductNoAuthPremierProductGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthPremierProductGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthPremierProductGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthPremierProductGet$Response$DataToJson(this);

  @JsonKey(name: 'total')
  final double? total;
  @JsonKey(name: 'pageSize')
  final double? pageSize;
  @JsonKey(name: 'totalPages')
  final double? totalPages;
  @JsonKey(name: 'current')
  final double? current;
  @JsonKey(name: 'records')
  final List<ProductNoAuthPremierProductGet$Response$Data$Records$Item>?
  records;
  static const fromJsonFactory =
      _$ProductNoAuthPremierProductGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthPremierProductGet$Response$Data &&
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

extension $ProductNoAuthPremierProductGet$Response$DataExtension
    on ProductNoAuthPremierProductGet$Response$Data {
  ProductNoAuthPremierProductGet$Response$Data copyWith({
    double? total,
    double? pageSize,
    double? totalPages,
    double? current,
    List<ProductNoAuthPremierProductGet$Response$Data$Records$Item>? records,
  }) {
    return ProductNoAuthPremierProductGet$Response$Data(
      total: total ?? this.total,
      pageSize: pageSize ?? this.pageSize,
      totalPages: totalPages ?? this.totalPages,
      current: current ?? this.current,
      records: records ?? this.records,
    );
  }

  ProductNoAuthPremierProductGet$Response$Data copyWithWrapped({
    Wrapped<double?>? total,
    Wrapped<double?>? pageSize,
    Wrapped<double?>? totalPages,
    Wrapped<double?>? current,
    Wrapped<List<ProductNoAuthPremierProductGet$Response$Data$Records$Item>?>?
    records,
  }) {
    return ProductNoAuthPremierProductGet$Response$Data(
      total: (total != null ? total.value : this.total),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      totalPages: (totalPages != null ? totalPages.value : this.totalPages),
      current: (current != null ? current.value : this.current),
      records: (records != null ? records.value : this.records),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RecommendNoAuthCategoryRecommendationGet$Response$Data {
  const RecommendNoAuthCategoryRecommendationGet$Response$Data({
    this.timestamp,
    this.categories,
  });

  factory RecommendNoAuthCategoryRecommendationGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$RecommendNoAuthCategoryRecommendationGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$RecommendNoAuthCategoryRecommendationGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$RecommendNoAuthCategoryRecommendationGet$Response$DataToJson(this);

  @JsonKey(name: 'timestamp')
  final String? timestamp;
  @JsonKey(name: 'categories')
  final List<
    RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item
  >?
  categories;
  static const fromJsonFactory =
      _$RecommendNoAuthCategoryRecommendationGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RecommendNoAuthCategoryRecommendationGet$Response$Data &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality().equals(
                  other.timestamp,
                  timestamp,
                )) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality().equals(
                  other.categories,
                  categories,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(categories) ^
      runtimeType.hashCode;
}

extension $RecommendNoAuthCategoryRecommendationGet$Response$DataExtension
    on RecommendNoAuthCategoryRecommendationGet$Response$Data {
  RecommendNoAuthCategoryRecommendationGet$Response$Data copyWith({
    String? timestamp,
    List<
      RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item
    >?
    categories,
  }) {
    return RecommendNoAuthCategoryRecommendationGet$Response$Data(
      timestamp: timestamp ?? this.timestamp,
      categories: categories ?? this.categories,
    );
  }

  RecommendNoAuthCategoryRecommendationGet$Response$Data copyWithWrapped({
    Wrapped<String?>? timestamp,
    Wrapped<
      List<
        RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item
      >?
    >?
    categories,
  }) {
    return RecommendNoAuthCategoryRecommendationGet$Response$Data(
      timestamp: (timestamp != null ? timestamp.value : this.timestamp),
      categories: (categories != null ? categories.value : this.categories),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RecommendNoAuthCategoryPost$Response$Data {
  const RecommendNoAuthCategoryPost$Response$Data({
    required this.total,
    required this.pageSize,
    required this.totalPages,
    required this.current,
    required this.records,
  });

  factory RecommendNoAuthCategoryPost$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$RecommendNoAuthCategoryPost$Response$DataFromJson(json);

  static const toJsonFactory =
      _$RecommendNoAuthCategoryPost$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$RecommendNoAuthCategoryPost$Response$DataToJson(this);

  @JsonKey(name: 'total')
  final String total;
  @JsonKey(name: 'pageSize')
  final String pageSize;
  @JsonKey(name: 'totalPages')
  final String totalPages;
  @JsonKey(name: 'current')
  final String current;
  @JsonKey(name: 'records')
  final List<RecommendNoAuthCategoryPost$Response$Data$Records$Item> records;
  static const fromJsonFactory =
      _$RecommendNoAuthCategoryPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RecommendNoAuthCategoryPost$Response$Data &&
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

extension $RecommendNoAuthCategoryPost$Response$DataExtension
    on RecommendNoAuthCategoryPost$Response$Data {
  RecommendNoAuthCategoryPost$Response$Data copyWith({
    String? total,
    String? pageSize,
    String? totalPages,
    String? current,
    List<RecommendNoAuthCategoryPost$Response$Data$Records$Item>? records,
  }) {
    return RecommendNoAuthCategoryPost$Response$Data(
      total: total ?? this.total,
      pageSize: pageSize ?? this.pageSize,
      totalPages: totalPages ?? this.totalPages,
      current: current ?? this.current,
      records: records ?? this.records,
    );
  }

  RecommendNoAuthCategoryPost$Response$Data copyWithWrapped({
    Wrapped<String>? total,
    Wrapped<String>? pageSize,
    Wrapped<String>? totalPages,
    Wrapped<String>? current,
    Wrapped<List<RecommendNoAuthCategoryPost$Response$Data$Records$Item>>?
    records,
  }) {
    return RecommendNoAuthCategoryPost$Response$Data(
      total: (total != null ? total.value : this.total),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      totalPages: (totalPages != null ? totalPages.value : this.totalPages),
      current: (current != null ? current.value : this.current),
      records: (records != null ? records.value : this.records),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RecommendNoAuthShopPost$Response$Data {
  const RecommendNoAuthShopPost$Response$Data({
    required this.total,
    required this.pageSize,
    required this.totalPages,
    required this.current,
    required this.records,
  });

  factory RecommendNoAuthShopPost$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$RecommendNoAuthShopPost$Response$DataFromJson(json);

  static const toJsonFactory = _$RecommendNoAuthShopPost$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$RecommendNoAuthShopPost$Response$DataToJson(this);

  @JsonKey(name: 'total')
  final String total;
  @JsonKey(name: 'pageSize')
  final String pageSize;
  @JsonKey(name: 'totalPages')
  final String totalPages;
  @JsonKey(name: 'current')
  final String current;
  @JsonKey(name: 'records')
  final List<RecommendNoAuthShopPost$Response$Data$Records$Item> records;
  static const fromJsonFactory =
      _$RecommendNoAuthShopPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RecommendNoAuthShopPost$Response$Data &&
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

extension $RecommendNoAuthShopPost$Response$DataExtension
    on RecommendNoAuthShopPost$Response$Data {
  RecommendNoAuthShopPost$Response$Data copyWith({
    String? total,
    String? pageSize,
    String? totalPages,
    String? current,
    List<RecommendNoAuthShopPost$Response$Data$Records$Item>? records,
  }) {
    return RecommendNoAuthShopPost$Response$Data(
      total: total ?? this.total,
      pageSize: pageSize ?? this.pageSize,
      totalPages: totalPages ?? this.totalPages,
      current: current ?? this.current,
      records: records ?? this.records,
    );
  }

  RecommendNoAuthShopPost$Response$Data copyWithWrapped({
    Wrapped<String>? total,
    Wrapped<String>? pageSize,
    Wrapped<String>? totalPages,
    Wrapped<String>? current,
    Wrapped<List<RecommendNoAuthShopPost$Response$Data$Records$Item>>? records,
  }) {
    return RecommendNoAuthShopPost$Response$Data(
      total: (total != null ? total.value : this.total),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      totalPages: (totalPages != null ? totalPages.value : this.totalPages),
      current: (current != null ? current.value : this.current),
      records: (records != null ? records.value : this.records),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RecommendNoAuthSimilarProductPost$Response$Data {
  const RecommendNoAuthSimilarProductPost$Response$Data({
    required this.records,
    required this.total,
    required this.pageSize,
    required this.totalPages,
    required this.current,
  });

  factory RecommendNoAuthSimilarProductPost$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$RecommendNoAuthSimilarProductPost$Response$DataFromJson(json);

  static const toJsonFactory =
      _$RecommendNoAuthSimilarProductPost$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$RecommendNoAuthSimilarProductPost$Response$DataToJson(this);

  @JsonKey(name: 'records')
  final List<RecommendNoAuthSimilarProductPost$Response$Data$Records$Item>
  records;
  @JsonKey(name: 'total')
  final String total;
  @JsonKey(name: 'pageSize')
  final String pageSize;
  @JsonKey(name: 'totalPages')
  final String totalPages;
  @JsonKey(name: 'current')
  final String current;
  static const fromJsonFactory =
      _$RecommendNoAuthSimilarProductPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RecommendNoAuthSimilarProductPost$Response$Data &&
            (identical(other.records, records) ||
                const DeepCollectionEquality().equals(
                  other.records,
                  records,
                )) &&
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
                const DeepCollectionEquality().equals(other.current, current)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(records) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(current) ^
      runtimeType.hashCode;
}

extension $RecommendNoAuthSimilarProductPost$Response$DataExtension
    on RecommendNoAuthSimilarProductPost$Response$Data {
  RecommendNoAuthSimilarProductPost$Response$Data copyWith({
    List<RecommendNoAuthSimilarProductPost$Response$Data$Records$Item>? records,
    String? total,
    String? pageSize,
    String? totalPages,
    String? current,
  }) {
    return RecommendNoAuthSimilarProductPost$Response$Data(
      records: records ?? this.records,
      total: total ?? this.total,
      pageSize: pageSize ?? this.pageSize,
      totalPages: totalPages ?? this.totalPages,
      current: current ?? this.current,
    );
  }

  RecommendNoAuthSimilarProductPost$Response$Data copyWithWrapped({
    Wrapped<List<RecommendNoAuthSimilarProductPost$Response$Data$Records$Item>>?
    records,
    Wrapped<String>? total,
    Wrapped<String>? pageSize,
    Wrapped<String>? totalPages,
    Wrapped<String>? current,
  }) {
    return RecommendNoAuthSimilarProductPost$Response$Data(
      records: (records != null ? records.value : this.records),
      total: (total != null ? total.value : this.total),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      totalPages: (totalPages != null ? totalPages.value : this.totalPages),
      current: (current != null ? current.value : this.current),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductReviewNoAuthPageGet$Response$Data$Records$Item {
  const ProductReviewNoAuthPageGet$Response$Data$Records$Item({
    this.id,
    this.username,
    this.comment,
    this.score,
    this.images,
    this.extraComment,
    this.reviewTime,
    this.salesQuantity,
  });

  factory ProductReviewNoAuthPageGet$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductReviewNoAuthPageGet$Response$Data$Records$ItemFromJson(json);

  static const toJsonFactory =
      _$ProductReviewNoAuthPageGet$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductReviewNoAuthPageGet$Response$Data$Records$ItemToJson(this);

  @JsonKey(name: 'id')
  final double? id;
  @JsonKey(name: 'username')
  final String? username;
  @JsonKey(name: 'comment')
  final String? comment;
  @JsonKey(name: 'score')
  final double? score;
  @JsonKey(name: 'images', defaultValue: <Object>[])
  final List<Object>? images;
  @JsonKey(name: 'extraComment')
  final String? extraComment;
  @JsonKey(name: 'reviewTime')
  final String? reviewTime;
  @JsonKey(name: 'salesQuantity')
  final double? salesQuantity;
  static const fromJsonFactory =
      _$ProductReviewNoAuthPageGet$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductReviewNoAuthPageGet$Response$Data$Records$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality().equals(
                  other.username,
                  username,
                )) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality().equals(
                  other.comment,
                  comment,
                )) &&
            (identical(other.score, score) ||
                const DeepCollectionEquality().equals(other.score, score)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.extraComment, extraComment) ||
                const DeepCollectionEquality().equals(
                  other.extraComment,
                  extraComment,
                )) &&
            (identical(other.reviewTime, reviewTime) ||
                const DeepCollectionEquality().equals(
                  other.reviewTime,
                  reviewTime,
                )) &&
            (identical(other.salesQuantity, salesQuantity) ||
                const DeepCollectionEquality().equals(
                  other.salesQuantity,
                  salesQuantity,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(score) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(extraComment) ^
      const DeepCollectionEquality().hash(reviewTime) ^
      const DeepCollectionEquality().hash(salesQuantity) ^
      runtimeType.hashCode;
}

extension $ProductReviewNoAuthPageGet$Response$Data$Records$ItemExtension
    on ProductReviewNoAuthPageGet$Response$Data$Records$Item {
  ProductReviewNoAuthPageGet$Response$Data$Records$Item copyWith({
    double? id,
    String? username,
    String? comment,
    double? score,
    List<Object>? images,
    String? extraComment,
    String? reviewTime,
    double? salesQuantity,
  }) {
    return ProductReviewNoAuthPageGet$Response$Data$Records$Item(
      id: id ?? this.id,
      username: username ?? this.username,
      comment: comment ?? this.comment,
      score: score ?? this.score,
      images: images ?? this.images,
      extraComment: extraComment ?? this.extraComment,
      reviewTime: reviewTime ?? this.reviewTime,
      salesQuantity: salesQuantity ?? this.salesQuantity,
    );
  }

  ProductReviewNoAuthPageGet$Response$Data$Records$Item copyWithWrapped({
    Wrapped<double?>? id,
    Wrapped<String?>? username,
    Wrapped<String?>? comment,
    Wrapped<double?>? score,
    Wrapped<List<Object>?>? images,
    Wrapped<String?>? extraComment,
    Wrapped<String?>? reviewTime,
    Wrapped<double?>? salesQuantity,
  }) {
    return ProductReviewNoAuthPageGet$Response$Data$Records$Item(
      id: (id != null ? id.value : this.id),
      username: (username != null ? username.value : this.username),
      comment: (comment != null ? comment.value : this.comment),
      score: (score != null ? score.value : this.score),
      images: (images != null ? images.value : this.images),
      extraComment: (extraComment != null
          ? extraComment.value
          : this.extraComment),
      reviewTime: (reviewTime != null ? reviewTime.value : this.reviewTime),
      salesQuantity: (salesQuantity != null
          ? salesQuantity.value
          : this.salesQuantity),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$Item {
  const ProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$Item({
    this.id,
    this.username,
    this.comment,
    this.score,
    this.images,
    this.extraComment,
    this.reviewTime,
    this.salesQuantity,
  });

  factory ProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$ItemToJson(
        this,
      );

  @JsonKey(name: 'id')
  final double? id;
  @JsonKey(name: 'username')
  final String? username;
  @JsonKey(name: 'comment')
  final String? comment;
  @JsonKey(name: 'score')
  final double? score;
  @JsonKey(name: 'images', defaultValue: <Object>[])
  final List<Object>? images;
  @JsonKey(name: 'extraComment')
  final String? extraComment;
  @JsonKey(name: 'reviewTime')
  final String? reviewTime;
  @JsonKey(name: 'salesQuantity')
  final double? salesQuantity;
  static const fromJsonFactory =
      _$ProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality().equals(
                  other.username,
                  username,
                )) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality().equals(
                  other.comment,
                  comment,
                )) &&
            (identical(other.score, score) ||
                const DeepCollectionEquality().equals(other.score, score)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.extraComment, extraComment) ||
                const DeepCollectionEquality().equals(
                  other.extraComment,
                  extraComment,
                )) &&
            (identical(other.reviewTime, reviewTime) ||
                const DeepCollectionEquality().equals(
                  other.reviewTime,
                  reviewTime,
                )) &&
            (identical(other.salesQuantity, salesQuantity) ||
                const DeepCollectionEquality().equals(
                  other.salesQuantity,
                  salesQuantity,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(score) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(extraComment) ^
      const DeepCollectionEquality().hash(reviewTime) ^
      const DeepCollectionEquality().hash(salesQuantity) ^
      runtimeType.hashCode;
}

extension $ProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$ItemExtension
    on ProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$Item {
  ProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$Item copyWith({
    double? id,
    String? username,
    String? comment,
    double? score,
    List<Object>? images,
    String? extraComment,
    String? reviewTime,
    double? salesQuantity,
  }) {
    return ProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$Item(
      id: id ?? this.id,
      username: username ?? this.username,
      comment: comment ?? this.comment,
      score: score ?? this.score,
      images: images ?? this.images,
      extraComment: extraComment ?? this.extraComment,
      reviewTime: reviewTime ?? this.reviewTime,
      salesQuantity: salesQuantity ?? this.salesQuantity,
    );
  }

  ProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$Item
  copyWithWrapped({
    Wrapped<double?>? id,
    Wrapped<String?>? username,
    Wrapped<String?>? comment,
    Wrapped<double?>? score,
    Wrapped<List<Object>?>? images,
    Wrapped<String?>? extraComment,
    Wrapped<String?>? reviewTime,
    Wrapped<double?>? salesQuantity,
  }) {
    return ProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$Item(
      id: (id != null ? id.value : this.id),
      username: (username != null ? username.value : this.username),
      comment: (comment != null ? comment.value : this.comment),
      score: (score != null ? score.value : this.score),
      images: (images != null ? images.value : this.images),
      extraComment: (extraComment != null
          ? extraComment.value
          : this.extraComment),
      reviewTime: (reviewTime != null ? reviewTime.value : this.reviewTime),
      salesQuantity: (salesQuantity != null
          ? salesQuantity.value
          : this.salesQuantity),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CategoryNoAuthTreeGet$Response$Data$CategoryList$Item {
  const CategoryNoAuthTreeGet$Response$Data$CategoryList$Item({
    required this.id,
    required this.parentId,
    required this.level,
    required this.showOrder,
    required this.name,
    required this.iconUrl,
    required this.categoryList,
    required this.brands,
  });

  factory CategoryNoAuthTreeGet$Response$Data$CategoryList$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$CategoryNoAuthTreeGet$Response$Data$CategoryList$ItemFromJson(json);

  static const toJsonFactory =
      _$CategoryNoAuthTreeGet$Response$Data$CategoryList$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$CategoryNoAuthTreeGet$Response$Data$CategoryList$ItemToJson(this);

  @JsonKey(name: 'id')
  final double id;
  @JsonKey(name: 'parentId')
  final double parentId;
  @JsonKey(name: 'level')
  final double level;
  @JsonKey(name: 'showOrder')
  final double showOrder;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'iconUrl')
  final String iconUrl;
  @JsonKey(name: 'categoryList')
  final List<
    CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item
  >
  categoryList;
  @JsonKey(name: 'brands', defaultValue: <Object>[])
  final List<Object> brands;
  static const fromJsonFactory =
      _$CategoryNoAuthTreeGet$Response$Data$CategoryList$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CategoryNoAuthTreeGet$Response$Data$CategoryList$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality().equals(
                  other.parentId,
                  parentId,
                )) &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)) &&
            (identical(other.showOrder, showOrder) ||
                const DeepCollectionEquality().equals(
                  other.showOrder,
                  showOrder,
                )) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.iconUrl, iconUrl) ||
                const DeepCollectionEquality().equals(
                  other.iconUrl,
                  iconUrl,
                )) &&
            (identical(other.categoryList, categoryList) ||
                const DeepCollectionEquality().equals(
                  other.categoryList,
                  categoryList,
                )) &&
            (identical(other.brands, brands) ||
                const DeepCollectionEquality().equals(other.brands, brands)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash(showOrder) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(iconUrl) ^
      const DeepCollectionEquality().hash(categoryList) ^
      const DeepCollectionEquality().hash(brands) ^
      runtimeType.hashCode;
}

extension $CategoryNoAuthTreeGet$Response$Data$CategoryList$ItemExtension
    on CategoryNoAuthTreeGet$Response$Data$CategoryList$Item {
  CategoryNoAuthTreeGet$Response$Data$CategoryList$Item copyWith({
    double? id,
    double? parentId,
    double? level,
    double? showOrder,
    String? name,
    String? iconUrl,
    List<
      CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item
    >?
    categoryList,
    List<Object>? brands,
  }) {
    return CategoryNoAuthTreeGet$Response$Data$CategoryList$Item(
      id: id ?? this.id,
      parentId: parentId ?? this.parentId,
      level: level ?? this.level,
      showOrder: showOrder ?? this.showOrder,
      name: name ?? this.name,
      iconUrl: iconUrl ?? this.iconUrl,
      categoryList: categoryList ?? this.categoryList,
      brands: brands ?? this.brands,
    );
  }

  CategoryNoAuthTreeGet$Response$Data$CategoryList$Item copyWithWrapped({
    Wrapped<double>? id,
    Wrapped<double>? parentId,
    Wrapped<double>? level,
    Wrapped<double>? showOrder,
    Wrapped<String>? name,
    Wrapped<String>? iconUrl,
    Wrapped<
      List<
        CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item
      >
    >?
    categoryList,
    Wrapped<List<Object>>? brands,
  }) {
    return CategoryNoAuthTreeGet$Response$Data$CategoryList$Item(
      id: (id != null ? id.value : this.id),
      parentId: (parentId != null ? parentId.value : this.parentId),
      level: (level != null ? level.value : this.level),
      showOrder: (showOrder != null ? showOrder.value : this.showOrder),
      name: (name != null ? name.value : this.name),
      iconUrl: (iconUrl != null ? iconUrl.value : this.iconUrl),
      categoryList: (categoryList != null
          ? categoryList.value
          : this.categoryList),
      brands: (brands != null ? brands.value : this.brands),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$Item {
  const ActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$Item({
    this.activityCode,
    this.title,
    this.status,
    this.startTime,
    this.endTime,
    this.names,
  });

  factory ActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$ItemToJson(
        this,
      );

  @JsonKey(name: 'activityCode')
  final String? activityCode;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'startTime')
  final double? startTime;
  @JsonKey(name: 'endTime')
  final double? endTime;
  @JsonKey(name: 'names', defaultValue: <Object>[])
  final List<Object>? names;
  static const fromJsonFactory =
      _$ActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$Item &&
            (identical(other.activityCode, activityCode) ||
                const DeepCollectionEquality().equals(
                  other.activityCode,
                  activityCode,
                )) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality().equals(
                  other.startTime,
                  startTime,
                )) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality().equals(
                  other.endTime,
                  endTime,
                )) &&
            (identical(other.names, names) ||
                const DeepCollectionEquality().equals(other.names, names)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(activityCode) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(endTime) ^
      const DeepCollectionEquality().hash(names) ^
      runtimeType.hashCode;
}

extension $ActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$ItemExtension
    on ActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$Item {
  ActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$Item copyWith({
    String? activityCode,
    String? title,
    String? status,
    double? startTime,
    double? endTime,
    List<Object>? names,
  }) {
    return ActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$Item(
      activityCode: activityCode ?? this.activityCode,
      title: title ?? this.title,
      status: status ?? this.status,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      names: names ?? this.names,
    );
  }

  ActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$Item
  copyWithWrapped({
    Wrapped<String?>? activityCode,
    Wrapped<String?>? title,
    Wrapped<String?>? status,
    Wrapped<double?>? startTime,
    Wrapped<double?>? endTime,
    Wrapped<List<Object>?>? names,
  }) {
    return ActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$Item(
      activityCode: (activityCode != null
          ? activityCode.value
          : this.activityCode),
      title: (title != null ? title.value : this.title),
      status: (status != null ? status.value : this.status),
      startTime: (startTime != null ? startTime.value : this.startTime),
      endTime: (endTime != null ? endTime.value : this.endTime),
      names: (names != null ? names.value : this.names),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item {
  const ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item({
    required this.productCode,
    required this.productName,
    required this.image,
    required this.skuCode,
    required this.sellPriceCur,
    required this.sellPrice,
    required this.targetSellPrice,
    required this.targetOriginPrice,
    required this.targetSellCur,
    required this.sellQuantity,
    required this.skuCount,
    required this.marketingInfo,
    required this.tags,
    required this.flashSale,
  });

  factory ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$ItemToJson(
        this,
      );

  @JsonKey(name: 'productCode')
  final String productCode;
  @JsonKey(name: 'productName')
  final String productName;
  @JsonKey(name: 'image')
  final ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Image
  image;
  @JsonKey(name: 'skuCode')
  final String skuCode;
  @JsonKey(name: 'sellPriceCur')
  final String sellPriceCur;
  @JsonKey(name: 'sellPrice')
  final String sellPrice;
  @JsonKey(name: 'targetSellPrice')
  final String targetSellPrice;
  @JsonKey(name: 'targetOriginPrice')
  final String targetOriginPrice;
  @JsonKey(name: 'targetSellCur')
  final String targetSellCur;
  @JsonKey(name: 'sellQuantity')
  final String sellQuantity;
  @JsonKey(name: 'skuCount')
  final int skuCount;
  @JsonKey(name: 'marketingInfo')
  final String marketingInfo;
  @JsonKey(name: 'tags')
  final List<
    ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$Item
  >
  tags;
  @JsonKey(name: 'flashSale')
  final ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSale
  flashSale;
  static const fromJsonFactory =
      _$ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item &&
            (identical(other.productCode, productCode) ||
                const DeepCollectionEquality().equals(
                  other.productCode,
                  productCode,
                )) &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality().equals(
                  other.productName,
                  productName,
                )) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.skuCode, skuCode) ||
                const DeepCollectionEquality().equals(
                  other.skuCode,
                  skuCode,
                )) &&
            (identical(other.sellPriceCur, sellPriceCur) ||
                const DeepCollectionEquality().equals(
                  other.sellPriceCur,
                  sellPriceCur,
                )) &&
            (identical(other.sellPrice, sellPrice) ||
                const DeepCollectionEquality().equals(
                  other.sellPrice,
                  sellPrice,
                )) &&
            (identical(other.targetSellPrice, targetSellPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetSellPrice,
                  targetSellPrice,
                )) &&
            (identical(other.targetOriginPrice, targetOriginPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetOriginPrice,
                  targetOriginPrice,
                )) &&
            (identical(other.targetSellCur, targetSellCur) ||
                const DeepCollectionEquality().equals(
                  other.targetSellCur,
                  targetSellCur,
                )) &&
            (identical(other.sellQuantity, sellQuantity) ||
                const DeepCollectionEquality().equals(
                  other.sellQuantity,
                  sellQuantity,
                )) &&
            (identical(other.skuCount, skuCount) ||
                const DeepCollectionEquality().equals(
                  other.skuCount,
                  skuCount,
                )) &&
            (identical(other.marketingInfo, marketingInfo) ||
                const DeepCollectionEquality().equals(
                  other.marketingInfo,
                  marketingInfo,
                )) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.flashSale, flashSale) ||
                const DeepCollectionEquality().equals(
                  other.flashSale,
                  flashSale,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(productCode) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(skuCode) ^
      const DeepCollectionEquality().hash(sellPriceCur) ^
      const DeepCollectionEquality().hash(sellPrice) ^
      const DeepCollectionEquality().hash(targetSellPrice) ^
      const DeepCollectionEquality().hash(targetOriginPrice) ^
      const DeepCollectionEquality().hash(targetSellCur) ^
      const DeepCollectionEquality().hash(sellQuantity) ^
      const DeepCollectionEquality().hash(skuCount) ^
      const DeepCollectionEquality().hash(marketingInfo) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(flashSale) ^
      runtimeType.hashCode;
}

extension $ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$ItemExtension
    on ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item {
  ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item
  copyWith({
    String? productCode,
    String? productName,
    ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Image?
    image,
    String? skuCode,
    String? sellPriceCur,
    String? sellPrice,
    String? targetSellPrice,
    String? targetOriginPrice,
    String? targetSellCur,
    String? sellQuantity,
    int? skuCount,
    String? marketingInfo,
    List<
      ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$Item
    >?
    tags,
    ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSale?
    flashSale,
  }) {
    return ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item(
      productCode: productCode ?? this.productCode,
      productName: productName ?? this.productName,
      image: image ?? this.image,
      skuCode: skuCode ?? this.skuCode,
      sellPriceCur: sellPriceCur ?? this.sellPriceCur,
      sellPrice: sellPrice ?? this.sellPrice,
      targetSellPrice: targetSellPrice ?? this.targetSellPrice,
      targetOriginPrice: targetOriginPrice ?? this.targetOriginPrice,
      targetSellCur: targetSellCur ?? this.targetSellCur,
      sellQuantity: sellQuantity ?? this.sellQuantity,
      skuCount: skuCount ?? this.skuCount,
      marketingInfo: marketingInfo ?? this.marketingInfo,
      tags: tags ?? this.tags,
      flashSale: flashSale ?? this.flashSale,
    );
  }

  ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item
  copyWithWrapped({
    Wrapped<String>? productCode,
    Wrapped<String>? productName,
    Wrapped<
      ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Image
    >?
    image,
    Wrapped<String>? skuCode,
    Wrapped<String>? sellPriceCur,
    Wrapped<String>? sellPrice,
    Wrapped<String>? targetSellPrice,
    Wrapped<String>? targetOriginPrice,
    Wrapped<String>? targetSellCur,
    Wrapped<String>? sellQuantity,
    Wrapped<int>? skuCount,
    Wrapped<String>? marketingInfo,
    Wrapped<
      List<
        ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$Item
      >
    >?
    tags,
    Wrapped<
      ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSale
    >?
    flashSale,
  }) {
    return ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item(
      productCode: (productCode != null ? productCode.value : this.productCode),
      productName: (productName != null ? productName.value : this.productName),
      image: (image != null ? image.value : this.image),
      skuCode: (skuCode != null ? skuCode.value : this.skuCode),
      sellPriceCur: (sellPriceCur != null
          ? sellPriceCur.value
          : this.sellPriceCur),
      sellPrice: (sellPrice != null ? sellPrice.value : this.sellPrice),
      targetSellPrice: (targetSellPrice != null
          ? targetSellPrice.value
          : this.targetSellPrice),
      targetOriginPrice: (targetOriginPrice != null
          ? targetOriginPrice.value
          : this.targetOriginPrice),
      targetSellCur: (targetSellCur != null
          ? targetSellCur.value
          : this.targetSellCur),
      sellQuantity: (sellQuantity != null
          ? sellQuantity.value
          : this.sellQuantity),
      skuCount: (skuCount != null ? skuCount.value : this.skuCount),
      marketingInfo: (marketingInfo != null
          ? marketingInfo.value
          : this.marketingInfo),
      tags: (tags != null ? tags.value : this.tags),
      flashSale: (flashSale != null ? flashSale.value : this.flashSale),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item {
  const ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item({
    this.productCode,
    this.productName,
    this.image,
    this.sourcePlatform,
    this.platformProductId,
    this.skuCode,
    this.sellPriceCur,
    this.sellPrice,
    this.targetSellPrice,
    this.targetOriginPrice,
    this.targetSellCur,
    this.sellQuantity,
    this.skuCount,
    this.marketingInfo,
    this.tags,
    this.skuSourceCode,
    this.premiumBrandInfo,
    this.sellPoints,
  });

  factory ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductPremiumDupeNoAuthPagePost$Response$Data$Records$ItemFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductPremiumDupeNoAuthPagePost$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductPremiumDupeNoAuthPagePost$Response$Data$Records$ItemToJson(this);

  @JsonKey(name: 'productCode')
  final String? productCode;
  @JsonKey(name: 'productName')
  final String? productName;
  @JsonKey(name: 'image')
  final ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Image?
  image;
  @JsonKey(name: 'sourcePlatform')
  final String? sourcePlatform;
  @JsonKey(name: 'platformProductId')
  final String? platformProductId;
  @JsonKey(name: 'skuCode')
  final String? skuCode;
  @JsonKey(name: 'sellPriceCur')
  final String? sellPriceCur;
  @JsonKey(name: 'sellPrice')
  final double? sellPrice;
  @JsonKey(name: 'targetSellPrice')
  final double? targetSellPrice;
  @JsonKey(name: 'targetOriginPrice')
  final double? targetOriginPrice;
  @JsonKey(name: 'targetSellCur')
  final String? targetSellCur;
  @JsonKey(name: 'sellQuantity')
  final String? sellQuantity;
  @JsonKey(name: 'skuCount')
  final int? skuCount;
  @JsonKey(name: 'marketingInfo')
  final String? marketingInfo;
  @JsonKey(name: 'tags')
  final List<
    ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$Item
  >?
  tags;
  @JsonKey(name: 'skuSourceCode')
  final String? skuSourceCode;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  static const fromJsonFactory =
      _$ProductPremiumDupeNoAuthPagePost$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item &&
            (identical(other.productCode, productCode) ||
                const DeepCollectionEquality().equals(
                  other.productCode,
                  productCode,
                )) &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality().equals(
                  other.productName,
                  productName,
                )) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.sourcePlatform, sourcePlatform) ||
                const DeepCollectionEquality().equals(
                  other.sourcePlatform,
                  sourcePlatform,
                )) &&
            (identical(other.platformProductId, platformProductId) ||
                const DeepCollectionEquality().equals(
                  other.platformProductId,
                  platformProductId,
                )) &&
            (identical(other.skuCode, skuCode) ||
                const DeepCollectionEquality().equals(
                  other.skuCode,
                  skuCode,
                )) &&
            (identical(other.sellPriceCur, sellPriceCur) ||
                const DeepCollectionEquality().equals(
                  other.sellPriceCur,
                  sellPriceCur,
                )) &&
            (identical(other.sellPrice, sellPrice) ||
                const DeepCollectionEquality().equals(
                  other.sellPrice,
                  sellPrice,
                )) &&
            (identical(other.targetSellPrice, targetSellPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetSellPrice,
                  targetSellPrice,
                )) &&
            (identical(other.targetOriginPrice, targetOriginPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetOriginPrice,
                  targetOriginPrice,
                )) &&
            (identical(other.targetSellCur, targetSellCur) ||
                const DeepCollectionEquality().equals(
                  other.targetSellCur,
                  targetSellCur,
                )) &&
            (identical(other.sellQuantity, sellQuantity) ||
                const DeepCollectionEquality().equals(
                  other.sellQuantity,
                  sellQuantity,
                )) &&
            (identical(other.skuCount, skuCount) ||
                const DeepCollectionEquality().equals(
                  other.skuCount,
                  skuCount,
                )) &&
            (identical(other.marketingInfo, marketingInfo) ||
                const DeepCollectionEquality().equals(
                  other.marketingInfo,
                  marketingInfo,
                )) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.skuSourceCode, skuSourceCode) ||
                const DeepCollectionEquality().equals(
                  other.skuSourceCode,
                  skuSourceCode,
                )) &&
            (identical(other.premiumBrandInfo, premiumBrandInfo) ||
                const DeepCollectionEquality().equals(
                  other.premiumBrandInfo,
                  premiumBrandInfo,
                )) &&
            (identical(other.sellPoints, sellPoints) ||
                const DeepCollectionEquality().equals(
                  other.sellPoints,
                  sellPoints,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(productCode) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(sourcePlatform) ^
      const DeepCollectionEquality().hash(platformProductId) ^
      const DeepCollectionEquality().hash(skuCode) ^
      const DeepCollectionEquality().hash(sellPriceCur) ^
      const DeepCollectionEquality().hash(sellPrice) ^
      const DeepCollectionEquality().hash(targetSellPrice) ^
      const DeepCollectionEquality().hash(targetOriginPrice) ^
      const DeepCollectionEquality().hash(targetSellCur) ^
      const DeepCollectionEquality().hash(sellQuantity) ^
      const DeepCollectionEquality().hash(skuCount) ^
      const DeepCollectionEquality().hash(marketingInfo) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(skuSourceCode) ^
      const DeepCollectionEquality().hash(premiumBrandInfo) ^
      const DeepCollectionEquality().hash(sellPoints) ^
      runtimeType.hashCode;
}

extension $ProductPremiumDupeNoAuthPagePost$Response$Data$Records$ItemExtension
    on ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item {
  ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item copyWith({
    String? productCode,
    String? productName,
    ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Image? image,
    String? sourcePlatform,
    String? platformProductId,
    String? skuCode,
    String? sellPriceCur,
    double? sellPrice,
    double? targetSellPrice,
    double? targetOriginPrice,
    String? targetSellCur,
    String? sellQuantity,
    int? skuCount,
    String? marketingInfo,
    List<ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$Item>?
    tags,
    String? skuSourceCode,
    ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
  }) {
    return ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item(
      productCode: productCode ?? this.productCode,
      productName: productName ?? this.productName,
      image: image ?? this.image,
      sourcePlatform: sourcePlatform ?? this.sourcePlatform,
      platformProductId: platformProductId ?? this.platformProductId,
      skuCode: skuCode ?? this.skuCode,
      sellPriceCur: sellPriceCur ?? this.sellPriceCur,
      sellPrice: sellPrice ?? this.sellPrice,
      targetSellPrice: targetSellPrice ?? this.targetSellPrice,
      targetOriginPrice: targetOriginPrice ?? this.targetOriginPrice,
      targetSellCur: targetSellCur ?? this.targetSellCur,
      sellQuantity: sellQuantity ?? this.sellQuantity,
      skuCount: skuCount ?? this.skuCount,
      marketingInfo: marketingInfo ?? this.marketingInfo,
      tags: tags ?? this.tags,
      skuSourceCode: skuSourceCode ?? this.skuSourceCode,
      premiumBrandInfo: premiumBrandInfo ?? this.premiumBrandInfo,
      sellPoints: sellPoints ?? this.sellPoints,
    );
  }

  ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item copyWithWrapped({
    Wrapped<String?>? productCode,
    Wrapped<String?>? productName,
    Wrapped<ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Image?>?
    image,
    Wrapped<String?>? sourcePlatform,
    Wrapped<String?>? platformProductId,
    Wrapped<String?>? skuCode,
    Wrapped<String?>? sellPriceCur,
    Wrapped<double?>? sellPrice,
    Wrapped<double?>? targetSellPrice,
    Wrapped<double?>? targetOriginPrice,
    Wrapped<String?>? targetSellCur,
    Wrapped<String?>? sellQuantity,
    Wrapped<int?>? skuCount,
    Wrapped<String?>? marketingInfo,
    Wrapped<
      List<
        ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$Item
      >?
    >?
    tags,
    Wrapped<String?>? skuSourceCode,
    Wrapped<
      ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
  }) {
    return ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item(
      productCode: (productCode != null ? productCode.value : this.productCode),
      productName: (productName != null ? productName.value : this.productName),
      image: (image != null ? image.value : this.image),
      sourcePlatform: (sourcePlatform != null
          ? sourcePlatform.value
          : this.sourcePlatform),
      platformProductId: (platformProductId != null
          ? platformProductId.value
          : this.platformProductId),
      skuCode: (skuCode != null ? skuCode.value : this.skuCode),
      sellPriceCur: (sellPriceCur != null
          ? sellPriceCur.value
          : this.sellPriceCur),
      sellPrice: (sellPrice != null ? sellPrice.value : this.sellPrice),
      targetSellPrice: (targetSellPrice != null
          ? targetSellPrice.value
          : this.targetSellPrice),
      targetOriginPrice: (targetOriginPrice != null
          ? targetOriginPrice.value
          : this.targetOriginPrice),
      targetSellCur: (targetSellCur != null
          ? targetSellCur.value
          : this.targetSellCur),
      sellQuantity: (sellQuantity != null
          ? sellQuantity.value
          : this.sellQuantity),
      skuCount: (skuCount != null ? skuCount.value : this.skuCount),
      marketingInfo: (marketingInfo != null
          ? marketingInfo.value
          : this.marketingInfo),
      tags: (tags != null ? tags.value : this.tags),
      skuSourceCode: (skuSourceCode != null
          ? skuSourceCode.value
          : this.skuSourceCode),
      premiumBrandInfo: (premiumBrandInfo != null
          ? premiumBrandInfo.value
          : this.premiumBrandInfo),
      sellPoints: (sellPoints != null ? sellPoints.value : this.sellPoints),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$Item {
  const ProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$Item({
    this.categoryId,
    this.categoryName,
    this.count,
    this.categoryImage,
  });

  factory ProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$ItemFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$ItemToJson(
        this,
      );

  @JsonKey(name: 'categoryId')
  final int? categoryId;
  @JsonKey(name: 'categoryName')
  final String? categoryName;
  @JsonKey(name: 'count')
  final int? count;
  @JsonKey(name: 'categoryImage')
  final String? categoryImage;
  static const fromJsonFactory =
      _$ProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$Item &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality().equals(
                  other.categoryId,
                  categoryId,
                )) &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality().equals(
                  other.categoryName,
                  categoryName,
                )) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.categoryImage, categoryImage) ||
                const DeepCollectionEquality().equals(
                  other.categoryImage,
                  categoryImage,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(categoryName) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(categoryImage) ^
      runtimeType.hashCode;
}

extension $ProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$ItemExtension
    on ProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$Item {
  ProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$Item copyWith({
    int? categoryId,
    String? categoryName,
    int? count,
    String? categoryImage,
  }) {
    return ProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$Item(
      categoryId: categoryId ?? this.categoryId,
      categoryName: categoryName ?? this.categoryName,
      count: count ?? this.count,
      categoryImage: categoryImage ?? this.categoryImage,
    );
  }

  ProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$Item
  copyWithWrapped({
    Wrapped<int?>? categoryId,
    Wrapped<String?>? categoryName,
    Wrapped<int?>? count,
    Wrapped<String?>? categoryImage,
  }) {
    return ProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$Item(
      categoryId: (categoryId != null ? categoryId.value : this.categoryId),
      categoryName: (categoryName != null
          ? categoryName.value
          : this.categoryName),
      count: (count != null ? count.value : this.count),
      categoryImage: (categoryImage != null
          ? categoryImage.value
          : this.categoryImage),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$Item {
  const ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$Item({
    this.sort,
    this.order,
    this.label,
  });

  factory ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemFromJson(json);

  static const toJsonFactory =
      _$ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemToJson(this);

  @JsonKey(
    name: 'sort',
    toJson:
        productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSortNullableToJson,
    fromJson:
        productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSortNullableFromJson,
  )
  final enums.ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort?
  sort;
  @JsonKey(
    name: 'order',
    toJson:
        productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrderNullableToJson,
    fromJson:
        productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrderNullableFromJson,
  )
  final enums.ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder?
  order;
  @JsonKey(name: 'label')
  final String? label;
  static const fromJsonFactory =
      _$ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$Item &&
            (identical(other.sort, sort) ||
                const DeepCollectionEquality().equals(other.sort, sort)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(sort) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(label) ^
      runtimeType.hashCode;
}

extension $ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemExtension
    on ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$Item {
  ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$Item copyWith({
    enums.ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort? sort,
    enums.ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder? order,
    String? label,
  }) {
    return ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$Item(
      sort: sort ?? this.sort,
      order: order ?? this.order,
      label: label ?? this.label,
    );
  }

  ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$Item copyWithWrapped({
    Wrapped<
      enums.ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort?
    >?
    sort,
    Wrapped<
      enums.ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder?
    >?
    order,
    Wrapped<String?>? label,
  }) {
    return ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$Item(
      sort: (sort != null ? sort.value : this.sort),
      order: (order != null ? order.value : this.order),
      label: (label != null ? label.value : this.label),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductPremiumDupeNoAuthMetaGet$Response$Data$Config {
  const ProductPremiumDupeNoAuthMetaGet$Response$Data$Config({this.list});

  factory ProductPremiumDupeNoAuthMetaGet$Response$Data$Config.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductPremiumDupeNoAuthMetaGet$Response$Data$ConfigFromJson(json);

  static const toJsonFactory =
      _$ProductPremiumDupeNoAuthMetaGet$Response$Data$ConfigToJson;
  Map<String, dynamic> toJson() =>
      _$ProductPremiumDupeNoAuthMetaGet$Response$Data$ConfigToJson(this);

  @JsonKey(name: 'list')
  final List<ProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$Item>?
  list;
  static const fromJsonFactory =
      _$ProductPremiumDupeNoAuthMetaGet$Response$Data$ConfigFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductPremiumDupeNoAuthMetaGet$Response$Data$Config &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(list) ^ runtimeType.hashCode;
}

extension $ProductPremiumDupeNoAuthMetaGet$Response$Data$ConfigExtension
    on ProductPremiumDupeNoAuthMetaGet$Response$Data$Config {
  ProductPremiumDupeNoAuthMetaGet$Response$Data$Config copyWith({
    List<ProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$Item>? list,
  }) {
    return ProductPremiumDupeNoAuthMetaGet$Response$Data$Config(
      list: list ?? this.list,
    );
  }

  ProductPremiumDupeNoAuthMetaGet$Response$Data$Config copyWithWrapped({
    Wrapped<
      List<ProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$Item>?
    >?
    list,
  }) {
    return ProductPremiumDupeNoAuthMetaGet$Response$Data$Config(
      list: (list != null ? list.value : this.list),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Image {
  const ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Image({
    this.width,
    this.height,
    this.url,
  });

  factory ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Image.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$ImageFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$ImageToJson;
  Map<String, dynamic> toJson() =>
      _$ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$ImageToJson(
        this,
      );

  @JsonKey(name: 'width')
  final int? width;
  @JsonKey(name: 'height')
  final int? height;
  @JsonKey(name: 'url')
  final String? url;
  static const fromJsonFactory =
      _$ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$ImageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Image &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$ImageExtension
    on ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Image {
  ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Image copyWith({
    int? width,
    int? height,
    String? url,
  }) {
    return ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Image(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Image
  copyWithWrapped({
    Wrapped<int?>? width,
    Wrapped<int?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Image(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$Item {
  const ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$Item({
    this.tagCode,
    this.tagImg,
    this.order,
    this.frontShow,
  });

  factory ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$ItemToJson(
        this,
      );

  @JsonKey(name: 'tagCode')
  final String? tagCode;
  @JsonKey(name: 'tagImg')
  final String? tagImg;
  @JsonKey(name: 'order')
  final int? order;
  @JsonKey(name: 'frontShow')
  final int? frontShow;
  static const fromJsonFactory =
      _$ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$Item &&
            (identical(other.tagCode, tagCode) ||
                const DeepCollectionEquality().equals(
                  other.tagCode,
                  tagCode,
                )) &&
            (identical(other.tagImg, tagImg) ||
                const DeepCollectionEquality().equals(other.tagImg, tagImg)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.frontShow, frontShow) ||
                const DeepCollectionEquality().equals(
                  other.frontShow,
                  frontShow,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tagCode) ^
      const DeepCollectionEquality().hash(tagImg) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(frontShow) ^
      runtimeType.hashCode;
}

extension $ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$ItemExtension
    on ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$Item {
  ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$Item copyWith({
    String? tagCode,
    String? tagImg,
    int? order,
    int? frontShow,
  }) {
    return ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagImg: tagImg ?? this.tagImg,
      order: order ?? this.order,
      frontShow: frontShow ?? this.frontShow,
    );
  }

  ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$Item
  copyWithWrapped({
    Wrapped<String?>? tagCode,
    Wrapped<String?>? tagImg,
    Wrapped<int?>? order,
    Wrapped<int?>? frontShow,
  }) {
    return ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
      order: (order != null ? order.value : this.order),
      frontShow: (frontShow != null ? frontShow.value : this.frontShow),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfo {
  const ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode')
  final String? brandCode;
  @JsonKey(name: 'brandImg')
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfo &&
            (identical(other.brandCode, brandCode) ||
                const DeepCollectionEquality().equals(
                  other.brandCode,
                  brandCode,
                )) &&
            (identical(other.brandImg, brandImg) ||
                const DeepCollectionEquality().equals(
                  other.brandImg,
                  brandImg,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(brandCode) ^
      const DeepCollectionEquality().hash(brandImg) ^
      runtimeType.hashCode;
}

extension $ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfoExtension
    on ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfo {
  ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthPushProductGet$Response$Data$Records$Item {
  const ProductNoAuthPushProductGet$Response$Data$Records$Item({
    required this.productCode,
    required this.productName,
    required this.image,
    required this.skuCode,
    required this.sellPriceCur,
    required this.sellPrice,
    required this.targetSellPrice,
    required this.targetSellCur,
    required this.sellQuantity,
    required this.tags,
    this.premiumBrandInfo,
    this.sellPoints,
    required this.targetOriginPrice,
    required this.marketingInfo,
  });

  factory ProductNoAuthPushProductGet$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthPushProductGet$Response$Data$Records$ItemFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthPushProductGet$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthPushProductGet$Response$Data$Records$ItemToJson(this);

  @JsonKey(name: 'productCode')
  final String productCode;
  @JsonKey(name: 'productName')
  final String productName;
  @JsonKey(name: 'image')
  final ProductNoAuthPushProductGet$Response$Data$Records$Item$Image image;
  @JsonKey(name: 'skuCode')
  final String skuCode;
  @JsonKey(name: 'sellPriceCur')
  final String sellPriceCur;
  @JsonKey(name: 'sellPrice')
  final String sellPrice;
  @JsonKey(name: 'targetSellPrice')
  final String targetSellPrice;
  @JsonKey(name: 'targetSellCur')
  final String targetSellCur;
  @JsonKey(name: 'sellQuantity')
  final String sellQuantity;
  @JsonKey(name: 'tags')
  final List<ProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$Item>
  tags;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  @JsonKey(name: 'targetOriginPrice')
  final String targetOriginPrice;
  @JsonKey(name: 'marketingInfo')
  final String marketingInfo;
  static const fromJsonFactory =
      _$ProductNoAuthPushProductGet$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthPushProductGet$Response$Data$Records$Item &&
            (identical(other.productCode, productCode) ||
                const DeepCollectionEquality().equals(
                  other.productCode,
                  productCode,
                )) &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality().equals(
                  other.productName,
                  productName,
                )) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.skuCode, skuCode) ||
                const DeepCollectionEquality().equals(
                  other.skuCode,
                  skuCode,
                )) &&
            (identical(other.sellPriceCur, sellPriceCur) ||
                const DeepCollectionEquality().equals(
                  other.sellPriceCur,
                  sellPriceCur,
                )) &&
            (identical(other.sellPrice, sellPrice) ||
                const DeepCollectionEquality().equals(
                  other.sellPrice,
                  sellPrice,
                )) &&
            (identical(other.targetSellPrice, targetSellPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetSellPrice,
                  targetSellPrice,
                )) &&
            (identical(other.targetSellCur, targetSellCur) ||
                const DeepCollectionEquality().equals(
                  other.targetSellCur,
                  targetSellCur,
                )) &&
            (identical(other.sellQuantity, sellQuantity) ||
                const DeepCollectionEquality().equals(
                  other.sellQuantity,
                  sellQuantity,
                )) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.premiumBrandInfo, premiumBrandInfo) ||
                const DeepCollectionEquality().equals(
                  other.premiumBrandInfo,
                  premiumBrandInfo,
                )) &&
            (identical(other.sellPoints, sellPoints) ||
                const DeepCollectionEquality().equals(
                  other.sellPoints,
                  sellPoints,
                )) &&
            (identical(other.targetOriginPrice, targetOriginPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetOriginPrice,
                  targetOriginPrice,
                )) &&
            (identical(other.marketingInfo, marketingInfo) ||
                const DeepCollectionEquality().equals(
                  other.marketingInfo,
                  marketingInfo,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(productCode) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(skuCode) ^
      const DeepCollectionEquality().hash(sellPriceCur) ^
      const DeepCollectionEquality().hash(sellPrice) ^
      const DeepCollectionEquality().hash(targetSellPrice) ^
      const DeepCollectionEquality().hash(targetSellCur) ^
      const DeepCollectionEquality().hash(sellQuantity) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(premiumBrandInfo) ^
      const DeepCollectionEquality().hash(sellPoints) ^
      const DeepCollectionEquality().hash(targetOriginPrice) ^
      const DeepCollectionEquality().hash(marketingInfo) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthPushProductGet$Response$Data$Records$ItemExtension
    on ProductNoAuthPushProductGet$Response$Data$Records$Item {
  ProductNoAuthPushProductGet$Response$Data$Records$Item copyWith({
    String? productCode,
    String? productName,
    ProductNoAuthPushProductGet$Response$Data$Records$Item$Image? image,
    String? skuCode,
    String? sellPriceCur,
    String? sellPrice,
    String? targetSellPrice,
    String? targetSellCur,
    String? sellQuantity,
    List<ProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$Item>?
    tags,
    ProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
    String? targetOriginPrice,
    String? marketingInfo,
  }) {
    return ProductNoAuthPushProductGet$Response$Data$Records$Item(
      productCode: productCode ?? this.productCode,
      productName: productName ?? this.productName,
      image: image ?? this.image,
      skuCode: skuCode ?? this.skuCode,
      sellPriceCur: sellPriceCur ?? this.sellPriceCur,
      sellPrice: sellPrice ?? this.sellPrice,
      targetSellPrice: targetSellPrice ?? this.targetSellPrice,
      targetSellCur: targetSellCur ?? this.targetSellCur,
      sellQuantity: sellQuantity ?? this.sellQuantity,
      tags: tags ?? this.tags,
      premiumBrandInfo: premiumBrandInfo ?? this.premiumBrandInfo,
      sellPoints: sellPoints ?? this.sellPoints,
      targetOriginPrice: targetOriginPrice ?? this.targetOriginPrice,
      marketingInfo: marketingInfo ?? this.marketingInfo,
    );
  }

  ProductNoAuthPushProductGet$Response$Data$Records$Item copyWithWrapped({
    Wrapped<String>? productCode,
    Wrapped<String>? productName,
    Wrapped<ProductNoAuthPushProductGet$Response$Data$Records$Item$Image>?
    image,
    Wrapped<String>? skuCode,
    Wrapped<String>? sellPriceCur,
    Wrapped<String>? sellPrice,
    Wrapped<String>? targetSellPrice,
    Wrapped<String>? targetSellCur,
    Wrapped<String>? sellQuantity,
    Wrapped<
      List<ProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$Item>
    >?
    tags,
    Wrapped<
      ProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
    Wrapped<String>? targetOriginPrice,
    Wrapped<String>? marketingInfo,
  }) {
    return ProductNoAuthPushProductGet$Response$Data$Records$Item(
      productCode: (productCode != null ? productCode.value : this.productCode),
      productName: (productName != null ? productName.value : this.productName),
      image: (image != null ? image.value : this.image),
      skuCode: (skuCode != null ? skuCode.value : this.skuCode),
      sellPriceCur: (sellPriceCur != null
          ? sellPriceCur.value
          : this.sellPriceCur),
      sellPrice: (sellPrice != null ? sellPrice.value : this.sellPrice),
      targetSellPrice: (targetSellPrice != null
          ? targetSellPrice.value
          : this.targetSellPrice),
      targetSellCur: (targetSellCur != null
          ? targetSellCur.value
          : this.targetSellCur),
      sellQuantity: (sellQuantity != null
          ? sellQuantity.value
          : this.sellQuantity),
      tags: (tags != null ? tags.value : this.tags),
      premiumBrandInfo: (premiumBrandInfo != null
          ? premiumBrandInfo.value
          : this.premiumBrandInfo),
      sellPoints: (sellPoints != null ? sellPoints.value : this.sellPoints),
      targetOriginPrice: (targetOriginPrice != null
          ? targetOriginPrice.value
          : this.targetOriginPrice),
      marketingInfo: (marketingInfo != null
          ? marketingInfo.value
          : this.marketingInfo),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthSearchGet$Response$Data$Item$MainImg {
  const ProductNoAuthSearchGet$Response$Data$Item$MainImg({
    required this.width,
    required this.height,
    required this.url,
  });

  factory ProductNoAuthSearchGet$Response$Data$Item$MainImg.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthSearchGet$Response$Data$Item$MainImgFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthSearchGet$Response$Data$Item$MainImgToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthSearchGet$Response$Data$Item$MainImgToJson(this);

  @JsonKey(name: 'width')
  final int width;
  @JsonKey(name: 'height')
  final int height;
  @JsonKey(name: 'url')
  final String url;
  static const fromJsonFactory =
      _$ProductNoAuthSearchGet$Response$Data$Item$MainImgFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthSearchGet$Response$Data$Item$MainImg &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthSearchGet$Response$Data$Item$MainImgExtension
    on ProductNoAuthSearchGet$Response$Data$Item$MainImg {
  ProductNoAuthSearchGet$Response$Data$Item$MainImg copyWith({
    int? width,
    int? height,
    String? url,
  }) {
    return ProductNoAuthSearchGet$Response$Data$Item$MainImg(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductNoAuthSearchGet$Response$Data$Item$MainImg copyWithWrapped({
    Wrapped<int>? width,
    Wrapped<int>? height,
    Wrapped<String>? url,
  }) {
    return ProductNoAuthSearchGet$Response$Data$Item$MainImg(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthSearchGet$Response$Data$Item$SubImg {
  const ProductNoAuthSearchGet$Response$Data$Item$SubImg({
    required this.width,
    required this.height,
    required this.url,
  });

  factory ProductNoAuthSearchGet$Response$Data$Item$SubImg.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthSearchGet$Response$Data$Item$SubImgFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthSearchGet$Response$Data$Item$SubImgToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthSearchGet$Response$Data$Item$SubImgToJson(this);

  @JsonKey(name: 'width')
  final int width;
  @JsonKey(name: 'height')
  final int height;
  @JsonKey(name: 'url')
  final String url;
  static const fromJsonFactory =
      _$ProductNoAuthSearchGet$Response$Data$Item$SubImgFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthSearchGet$Response$Data$Item$SubImg &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthSearchGet$Response$Data$Item$SubImgExtension
    on ProductNoAuthSearchGet$Response$Data$Item$SubImg {
  ProductNoAuthSearchGet$Response$Data$Item$SubImg copyWith({
    int? width,
    int? height,
    String? url,
  }) {
    return ProductNoAuthSearchGet$Response$Data$Item$SubImg(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductNoAuthSearchGet$Response$Data$Item$SubImg copyWithWrapped({
    Wrapped<int>? width,
    Wrapped<int>? height,
    Wrapped<String>? url,
  }) {
    return ProductNoAuthSearchGet$Response$Data$Item$SubImg(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthSearchGet$Response$Data$Item$MainVideo {
  const ProductNoAuthSearchGet$Response$Data$Item$MainVideo({
    required this.videoUrl,
  });

  factory ProductNoAuthSearchGet$Response$Data$Item$MainVideo.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthSearchGet$Response$Data$Item$MainVideoFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthSearchGet$Response$Data$Item$MainVideoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthSearchGet$Response$Data$Item$MainVideoToJson(this);

  @JsonKey(name: 'videoUrl')
  final String videoUrl;
  static const fromJsonFactory =
      _$ProductNoAuthSearchGet$Response$Data$Item$MainVideoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthSearchGet$Response$Data$Item$MainVideo &&
            (identical(other.videoUrl, videoUrl) ||
                const DeepCollectionEquality().equals(
                  other.videoUrl,
                  videoUrl,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(videoUrl) ^ runtimeType.hashCode;
}

extension $ProductNoAuthSearchGet$Response$Data$Item$MainVideoExtension
    on ProductNoAuthSearchGet$Response$Data$Item$MainVideo {
  ProductNoAuthSearchGet$Response$Data$Item$MainVideo copyWith({
    String? videoUrl,
  }) {
    return ProductNoAuthSearchGet$Response$Data$Item$MainVideo(
      videoUrl: videoUrl ?? this.videoUrl,
    );
  }

  ProductNoAuthSearchGet$Response$Data$Item$MainVideo copyWithWrapped({
    Wrapped<String>? videoUrl,
  }) {
    return ProductNoAuthSearchGet$Response$Data$Item$MainVideo(
      videoUrl: (videoUrl != null ? videoUrl.value : this.videoUrl),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthSearchGet$Response$Data$Item$ImgCollection$Item {
  const ProductNoAuthSearchGet$Response$Data$Item$ImgCollection$Item({
    required this.width,
    required this.height,
    required this.url,
  });

  factory ProductNoAuthSearchGet$Response$Data$Item$ImgCollection$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthSearchGet$Response$Data$Item$ImgCollection$ItemFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductNoAuthSearchGet$Response$Data$Item$ImgCollection$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthSearchGet$Response$Data$Item$ImgCollection$ItemToJson(
        this,
      );

  @JsonKey(name: 'width')
  final String width;
  @JsonKey(name: 'height')
  final String height;
  @JsonKey(name: 'url')
  final String url;
  static const fromJsonFactory =
      _$ProductNoAuthSearchGet$Response$Data$Item$ImgCollection$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthSearchGet$Response$Data$Item$ImgCollection$Item &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthSearchGet$Response$Data$Item$ImgCollection$ItemExtension
    on ProductNoAuthSearchGet$Response$Data$Item$ImgCollection$Item {
  ProductNoAuthSearchGet$Response$Data$Item$ImgCollection$Item copyWith({
    String? width,
    String? height,
    String? url,
  }) {
    return ProductNoAuthSearchGet$Response$Data$Item$ImgCollection$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductNoAuthSearchGet$Response$Data$Item$ImgCollection$Item copyWithWrapped({
    Wrapped<String>? width,
    Wrapped<String>? height,
    Wrapped<String>? url,
  }) {
    return ProductNoAuthSearchGet$Response$Data$Item$ImgCollection$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item {
  const ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item({
    required this.name,
    required this.enName,
    required this.styleType,
    required this.type,
    required this.optionValues,
  });

  factory ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$ItemFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$ItemToJson(
        this,
      );

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'enName')
  final String enName;
  @JsonKey(name: 'styleType')
  final int styleType;
  @JsonKey(name: 'type')
  final String type;
  @JsonKey(name: 'optionValues')
  final List<
    ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
  >
  optionValues;
  static const fromJsonFactory =
      _$ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.enName, enName) ||
                const DeepCollectionEquality().equals(other.enName, enName)) &&
            (identical(other.styleType, styleType) ||
                const DeepCollectionEquality().equals(
                  other.styleType,
                  styleType,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.optionValues, optionValues) ||
                const DeepCollectionEquality().equals(
                  other.optionValues,
                  optionValues,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(enName) ^
      const DeepCollectionEquality().hash(styleType) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(optionValues) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$ItemExtension
    on ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item {
  ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item copyWith({
    String? name,
    String? enName,
    int? styleType,
    String? type,
    List<
      ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
    >?
    optionValues,
  }) {
    return ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item(
      name: name ?? this.name,
      enName: enName ?? this.enName,
      styleType: styleType ?? this.styleType,
      type: type ?? this.type,
      optionValues: optionValues ?? this.optionValues,
    );
  }

  ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item
  copyWithWrapped({
    Wrapped<String>? name,
    Wrapped<String>? enName,
    Wrapped<int>? styleType,
    Wrapped<String>? type,
    Wrapped<
      List<
        ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
      >
    >?
    optionValues,
  }) {
    return ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item(
      name: (name != null ? name.value : this.name),
      enName: (enName != null ? enName.value : this.enName),
      styleType: (styleType != null ? styleType.value : this.styleType),
      type: (type != null ? type.value : this.type),
      optionValues: (optionValues != null
          ? optionValues.value
          : this.optionValues),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$Item {
  const ProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$Item({
    required this.name,
    required this.value,
  });

  factory ProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$ItemFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$ItemToJson(this);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'value')
  final String value;
  static const fromJsonFactory =
      _$ProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$Item &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(value) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$ItemExtension
    on ProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$Item {
  ProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$Item copyWith({
    String? name,
    String? value,
  }) {
    return ProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$Item(
      name: name ?? this.name,
      value: value ?? this.value,
    );
  }

  ProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$Item copyWithWrapped({
    Wrapped<String>? name,
    Wrapped<String>? value,
  }) {
    return ProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$Item(
      name: (name != null ? name.value : this.name),
      value: (value != null ? value.value : this.value),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfo {
  const ProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfoFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfoToJson(this);

  @JsonKey(name: 'brandCode')
  final String? brandCode;
  @JsonKey(name: 'brandImg')
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfo &&
            (identical(other.brandCode, brandCode) ||
                const DeepCollectionEquality().equals(
                  other.brandCode,
                  brandCode,
                )) &&
            (identical(other.brandImg, brandImg) ||
                const DeepCollectionEquality().equals(
                  other.brandImg,
                  brandImg,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(brandCode) ^
      const DeepCollectionEquality().hash(brandImg) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfoExtension
    on ProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfo {
  ProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfo copyWith({
    String? brandCode,
    String? brandImg,
  }) {
    return ProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfo copyWithWrapped({
    Wrapped<String?>? brandCode,
    Wrapped<String?>? brandImg,
  }) {
    return ProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthCombineSearchGet$Response$Data$Records$Item {
  const ProductNoAuthCombineSearchGet$Response$Data$Records$Item({
    required this.shopCode,
    required this.productCode,
    required this.productName,
    required this.tenantCode,
    this.brandName,
    required this.mainImg,
    required this.subImg,
    required this.mainVideo,
    required this.imgCollection,
    required this.textDetail,
    required this.imgDetail,
    required this.categoryId,
    required this.productOptions,
    required this.productAttrs,
    required this.sourcePlatform,
    required this.platformUrl,
    required this.platformProductId,
    required this.skuCode,
    required this.sellPriceCur,
    required this.sellPrice,
    required this.targetSellPrice,
    required this.targetSellCur,
    required this.sellQuantity,
    required this.tags,
    this.premiumBrandInfo,
    this.sellPoints,
  });

  factory ProductNoAuthCombineSearchGet$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthCombineSearchGet$Response$Data$Records$ItemFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$ItemToJson(this);

  @JsonKey(name: 'shopCode')
  final String shopCode;
  @JsonKey(name: 'productCode')
  final String productCode;
  @JsonKey(name: 'productName')
  final String productName;
  @JsonKey(name: 'tenantCode')
  final String tenantCode;
  @JsonKey(name: 'brandName')
  final String? brandName;
  @JsonKey(name: 'mainImg')
  final List<
    ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$Item
  >
  mainImg;
  @JsonKey(name: 'subImg')
  final Object subImg;
  @JsonKey(name: 'mainVideo')
  final List<
    ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$Item
  >
  mainVideo;
  @JsonKey(name: 'imgCollection')
  final List<
    ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$Item
  >
  imgCollection;
  @JsonKey(name: 'textDetail')
  final Object textDetail;
  @JsonKey(name: 'imgDetail')
  final List<
    ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$Item
  >
  imgDetail;
  @JsonKey(name: 'categoryId')
  final double categoryId;
  @JsonKey(name: 'productOptions')
  final List<
    ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item
  >
  productOptions;
  @JsonKey(name: 'productAttrs', defaultValue: <Object>[])
  final List<Object> productAttrs;
  @JsonKey(name: 'sourcePlatform')
  final String sourcePlatform;
  @JsonKey(name: 'platformUrl')
  final String platformUrl;
  @JsonKey(name: 'platformProductId')
  final String platformProductId;
  @JsonKey(name: 'skuCode')
  final String skuCode;
  @JsonKey(name: 'sellPriceCur')
  final String sellPriceCur;
  @JsonKey(name: 'sellPrice')
  final String sellPrice;
  @JsonKey(name: 'targetSellPrice')
  final String targetSellPrice;
  @JsonKey(name: 'targetSellCur')
  final String targetSellCur;
  @JsonKey(name: 'sellQuantity')
  final String sellQuantity;
  @JsonKey(name: 'tags')
  final List<ProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$Item>
  tags;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  static const fromJsonFactory =
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthCombineSearchGet$Response$Data$Records$Item &&
            (identical(other.shopCode, shopCode) ||
                const DeepCollectionEquality().equals(
                  other.shopCode,
                  shopCode,
                )) &&
            (identical(other.productCode, productCode) ||
                const DeepCollectionEquality().equals(
                  other.productCode,
                  productCode,
                )) &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality().equals(
                  other.productName,
                  productName,
                )) &&
            (identical(other.tenantCode, tenantCode) ||
                const DeepCollectionEquality().equals(
                  other.tenantCode,
                  tenantCode,
                )) &&
            (identical(other.brandName, brandName) ||
                const DeepCollectionEquality().equals(
                  other.brandName,
                  brandName,
                )) &&
            (identical(other.mainImg, mainImg) ||
                const DeepCollectionEquality().equals(
                  other.mainImg,
                  mainImg,
                )) &&
            (identical(other.subImg, subImg) ||
                const DeepCollectionEquality().equals(other.subImg, subImg)) &&
            (identical(other.mainVideo, mainVideo) ||
                const DeepCollectionEquality().equals(
                  other.mainVideo,
                  mainVideo,
                )) &&
            (identical(other.imgCollection, imgCollection) ||
                const DeepCollectionEquality().equals(
                  other.imgCollection,
                  imgCollection,
                )) &&
            (identical(other.textDetail, textDetail) ||
                const DeepCollectionEquality().equals(
                  other.textDetail,
                  textDetail,
                )) &&
            (identical(other.imgDetail, imgDetail) ||
                const DeepCollectionEquality().equals(
                  other.imgDetail,
                  imgDetail,
                )) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality().equals(
                  other.categoryId,
                  categoryId,
                )) &&
            (identical(other.productOptions, productOptions) ||
                const DeepCollectionEquality().equals(
                  other.productOptions,
                  productOptions,
                )) &&
            (identical(other.productAttrs, productAttrs) ||
                const DeepCollectionEquality().equals(
                  other.productAttrs,
                  productAttrs,
                )) &&
            (identical(other.sourcePlatform, sourcePlatform) ||
                const DeepCollectionEquality().equals(
                  other.sourcePlatform,
                  sourcePlatform,
                )) &&
            (identical(other.platformUrl, platformUrl) ||
                const DeepCollectionEquality().equals(
                  other.platformUrl,
                  platformUrl,
                )) &&
            (identical(other.platformProductId, platformProductId) ||
                const DeepCollectionEquality().equals(
                  other.platformProductId,
                  platformProductId,
                )) &&
            (identical(other.skuCode, skuCode) ||
                const DeepCollectionEquality().equals(
                  other.skuCode,
                  skuCode,
                )) &&
            (identical(other.sellPriceCur, sellPriceCur) ||
                const DeepCollectionEquality().equals(
                  other.sellPriceCur,
                  sellPriceCur,
                )) &&
            (identical(other.sellPrice, sellPrice) ||
                const DeepCollectionEquality().equals(
                  other.sellPrice,
                  sellPrice,
                )) &&
            (identical(other.targetSellPrice, targetSellPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetSellPrice,
                  targetSellPrice,
                )) &&
            (identical(other.targetSellCur, targetSellCur) ||
                const DeepCollectionEquality().equals(
                  other.targetSellCur,
                  targetSellCur,
                )) &&
            (identical(other.sellQuantity, sellQuantity) ||
                const DeepCollectionEquality().equals(
                  other.sellQuantity,
                  sellQuantity,
                )) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.premiumBrandInfo, premiumBrandInfo) ||
                const DeepCollectionEquality().equals(
                  other.premiumBrandInfo,
                  premiumBrandInfo,
                )) &&
            (identical(other.sellPoints, sellPoints) ||
                const DeepCollectionEquality().equals(
                  other.sellPoints,
                  sellPoints,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(shopCode) ^
      const DeepCollectionEquality().hash(productCode) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(tenantCode) ^
      const DeepCollectionEquality().hash(brandName) ^
      const DeepCollectionEquality().hash(mainImg) ^
      const DeepCollectionEquality().hash(subImg) ^
      const DeepCollectionEquality().hash(mainVideo) ^
      const DeepCollectionEquality().hash(imgCollection) ^
      const DeepCollectionEquality().hash(textDetail) ^
      const DeepCollectionEquality().hash(imgDetail) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(productOptions) ^
      const DeepCollectionEquality().hash(productAttrs) ^
      const DeepCollectionEquality().hash(sourcePlatform) ^
      const DeepCollectionEquality().hash(platformUrl) ^
      const DeepCollectionEquality().hash(platformProductId) ^
      const DeepCollectionEquality().hash(skuCode) ^
      const DeepCollectionEquality().hash(sellPriceCur) ^
      const DeepCollectionEquality().hash(sellPrice) ^
      const DeepCollectionEquality().hash(targetSellPrice) ^
      const DeepCollectionEquality().hash(targetSellCur) ^
      const DeepCollectionEquality().hash(sellQuantity) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(premiumBrandInfo) ^
      const DeepCollectionEquality().hash(sellPoints) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthCombineSearchGet$Response$Data$Records$ItemExtension
    on ProductNoAuthCombineSearchGet$Response$Data$Records$Item {
  ProductNoAuthCombineSearchGet$Response$Data$Records$Item copyWith({
    String? shopCode,
    String? productCode,
    String? productName,
    String? tenantCode,
    String? brandName,
    List<ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$Item>?
    mainImg,
    Object? subImg,
    List<
      ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$Item
    >?
    mainVideo,
    List<
      ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$Item
    >?
    imgCollection,
    Object? textDetail,
    List<
      ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$Item
    >?
    imgDetail,
    double? categoryId,
    List<
      ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item
    >?
    productOptions,
    List<Object>? productAttrs,
    String? sourcePlatform,
    String? platformUrl,
    String? platformProductId,
    String? skuCode,
    String? sellPriceCur,
    String? sellPrice,
    String? targetSellPrice,
    String? targetSellCur,
    String? sellQuantity,
    List<ProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$Item>?
    tags,
    ProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
  }) {
    return ProductNoAuthCombineSearchGet$Response$Data$Records$Item(
      shopCode: shopCode ?? this.shopCode,
      productCode: productCode ?? this.productCode,
      productName: productName ?? this.productName,
      tenantCode: tenantCode ?? this.tenantCode,
      brandName: brandName ?? this.brandName,
      mainImg: mainImg ?? this.mainImg,
      subImg: subImg ?? this.subImg,
      mainVideo: mainVideo ?? this.mainVideo,
      imgCollection: imgCollection ?? this.imgCollection,
      textDetail: textDetail ?? this.textDetail,
      imgDetail: imgDetail ?? this.imgDetail,
      categoryId: categoryId ?? this.categoryId,
      productOptions: productOptions ?? this.productOptions,
      productAttrs: productAttrs ?? this.productAttrs,
      sourcePlatform: sourcePlatform ?? this.sourcePlatform,
      platformUrl: platformUrl ?? this.platformUrl,
      platformProductId: platformProductId ?? this.platformProductId,
      skuCode: skuCode ?? this.skuCode,
      sellPriceCur: sellPriceCur ?? this.sellPriceCur,
      sellPrice: sellPrice ?? this.sellPrice,
      targetSellPrice: targetSellPrice ?? this.targetSellPrice,
      targetSellCur: targetSellCur ?? this.targetSellCur,
      sellQuantity: sellQuantity ?? this.sellQuantity,
      tags: tags ?? this.tags,
      premiumBrandInfo: premiumBrandInfo ?? this.premiumBrandInfo,
      sellPoints: sellPoints ?? this.sellPoints,
    );
  }

  ProductNoAuthCombineSearchGet$Response$Data$Records$Item copyWithWrapped({
    Wrapped<String>? shopCode,
    Wrapped<String>? productCode,
    Wrapped<String>? productName,
    Wrapped<String>? tenantCode,
    Wrapped<String?>? brandName,
    Wrapped<
      List<
        ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$Item
      >
    >?
    mainImg,
    Wrapped<Object>? subImg,
    Wrapped<
      List<
        ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$Item
      >
    >?
    mainVideo,
    Wrapped<
      List<
        ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$Item
      >
    >?
    imgCollection,
    Wrapped<Object>? textDetail,
    Wrapped<
      List<
        ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$Item
      >
    >?
    imgDetail,
    Wrapped<double>? categoryId,
    Wrapped<
      List<
        ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item
      >
    >?
    productOptions,
    Wrapped<List<Object>>? productAttrs,
    Wrapped<String>? sourcePlatform,
    Wrapped<String>? platformUrl,
    Wrapped<String>? platformProductId,
    Wrapped<String>? skuCode,
    Wrapped<String>? sellPriceCur,
    Wrapped<String>? sellPrice,
    Wrapped<String>? targetSellPrice,
    Wrapped<String>? targetSellCur,
    Wrapped<String>? sellQuantity,
    Wrapped<
      List<ProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$Item>
    >?
    tags,
    Wrapped<
      ProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
  }) {
    return ProductNoAuthCombineSearchGet$Response$Data$Records$Item(
      shopCode: (shopCode != null ? shopCode.value : this.shopCode),
      productCode: (productCode != null ? productCode.value : this.productCode),
      productName: (productName != null ? productName.value : this.productName),
      tenantCode: (tenantCode != null ? tenantCode.value : this.tenantCode),
      brandName: (brandName != null ? brandName.value : this.brandName),
      mainImg: (mainImg != null ? mainImg.value : this.mainImg),
      subImg: (subImg != null ? subImg.value : this.subImg),
      mainVideo: (mainVideo != null ? mainVideo.value : this.mainVideo),
      imgCollection: (imgCollection != null
          ? imgCollection.value
          : this.imgCollection),
      textDetail: (textDetail != null ? textDetail.value : this.textDetail),
      imgDetail: (imgDetail != null ? imgDetail.value : this.imgDetail),
      categoryId: (categoryId != null ? categoryId.value : this.categoryId),
      productOptions: (productOptions != null
          ? productOptions.value
          : this.productOptions),
      productAttrs: (productAttrs != null
          ? productAttrs.value
          : this.productAttrs),
      sourcePlatform: (sourcePlatform != null
          ? sourcePlatform.value
          : this.sourcePlatform),
      platformUrl: (platformUrl != null ? platformUrl.value : this.platformUrl),
      platformProductId: (platformProductId != null
          ? platformProductId.value
          : this.platformProductId),
      skuCode: (skuCode != null ? skuCode.value : this.skuCode),
      sellPriceCur: (sellPriceCur != null
          ? sellPriceCur.value
          : this.sellPriceCur),
      sellPrice: (sellPrice != null ? sellPrice.value : this.sellPrice),
      targetSellPrice: (targetSellPrice != null
          ? targetSellPrice.value
          : this.targetSellPrice),
      targetSellCur: (targetSellCur != null
          ? targetSellCur.value
          : this.targetSellCur),
      sellQuantity: (sellQuantity != null
          ? sellQuantity.value
          : this.sellQuantity),
      tags: (tags != null ? tags.value : this.tags),
      premiumBrandInfo: (premiumBrandInfo != null
          ? premiumBrandInfo.value
          : this.premiumBrandInfo),
      sellPoints: (sellPoints != null ? sellPoints.value : this.sellPoints),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item {
  const ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item({
    this.shopCode,
    this.productCode,
    this.productName,
    this.tenantCode,
    this.brandName,
    this.mainImg,
    this.subImg,
    this.mainVideo,
    this.imgCollection,
    this.textDetail,
    this.imgDetail,
    this.categoryId,
    this.productOptions,
    this.productAttrs,
    this.sourcePlatform,
    this.platformUrl,
    this.platformProductId,
    this.skuCode,
    this.sellPriceCur,
    this.sellPrice,
    this.targetSellPrice,
    this.targetSellCur,
    this.productFlag,
    this.marketingInfo,
    this.sellQuantity,
    this.targetOriginPrice,
    this.tags,
    this.premiumBrandInfo,
    this.sellPoints,
  });

  factory ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthNewArrivalProductGet$Response$Data$Records$ItemFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductNoAuthNewArrivalProductGet$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthNewArrivalProductGet$Response$Data$Records$ItemToJson(
        this,
      );

  @JsonKey(name: 'shopCode')
  final Object? shopCode;
  @JsonKey(name: 'productCode')
  final String? productCode;
  @JsonKey(name: 'productName')
  final String? productName;
  @JsonKey(name: 'tenantCode')
  final String? tenantCode;
  @JsonKey(name: 'brandName')
  final Object? brandName;
  @JsonKey(name: 'mainImg')
  final List<
    ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$Item
  >?
  mainImg;
  @JsonKey(name: 'subImg')
  final Object? subImg;
  @JsonKey(name: 'mainVideo', defaultValue: <Object>[])
  final List<Object>? mainVideo;
  @JsonKey(name: 'imgCollection')
  final List<
    ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$Item
  >?
  imgCollection;
  @JsonKey(name: 'textDetail')
  final Object? textDetail;
  @JsonKey(name: 'imgDetail')
  final List<
    ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$Item
  >?
  imgDetail;
  @JsonKey(name: 'categoryId')
  final double? categoryId;
  @JsonKey(name: 'productOptions')
  final List<
    ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item
  >?
  productOptions;
  @JsonKey(name: 'productAttrs', defaultValue: <Object>[])
  final List<Object>? productAttrs;
  @JsonKey(name: 'sourcePlatform')
  final String? sourcePlatform;
  @JsonKey(name: 'platformUrl')
  final String? platformUrl;
  @JsonKey(name: 'platformProductId')
  final String? platformProductId;
  @JsonKey(name: 'skuCode')
  final String? skuCode;
  @JsonKey(name: 'sellPriceCur')
  final String? sellPriceCur;
  @JsonKey(name: 'sellPrice')
  final String? sellPrice;
  @JsonKey(name: 'targetSellPrice')
  final String? targetSellPrice;
  @JsonKey(name: 'targetSellCur')
  final String? targetSellCur;
  @JsonKey(name: 'productFlag')
  final String? productFlag;
  @JsonKey(name: 'marketingInfo')
  final String? marketingInfo;
  @JsonKey(name: 'sellQuantity')
  final String? sellQuantity;
  @JsonKey(name: 'targetOriginPrice')
  final String? targetOriginPrice;
  @JsonKey(name: 'tags')
  final List<
    ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$Item
  >?
  tags;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  static const fromJsonFactory =
      _$ProductNoAuthNewArrivalProductGet$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item &&
            (identical(other.shopCode, shopCode) ||
                const DeepCollectionEquality().equals(
                  other.shopCode,
                  shopCode,
                )) &&
            (identical(other.productCode, productCode) ||
                const DeepCollectionEquality().equals(
                  other.productCode,
                  productCode,
                )) &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality().equals(
                  other.productName,
                  productName,
                )) &&
            (identical(other.tenantCode, tenantCode) ||
                const DeepCollectionEquality().equals(
                  other.tenantCode,
                  tenantCode,
                )) &&
            (identical(other.brandName, brandName) ||
                const DeepCollectionEquality().equals(
                  other.brandName,
                  brandName,
                )) &&
            (identical(other.mainImg, mainImg) ||
                const DeepCollectionEquality().equals(
                  other.mainImg,
                  mainImg,
                )) &&
            (identical(other.subImg, subImg) ||
                const DeepCollectionEquality().equals(other.subImg, subImg)) &&
            (identical(other.mainVideo, mainVideo) ||
                const DeepCollectionEquality().equals(
                  other.mainVideo,
                  mainVideo,
                )) &&
            (identical(other.imgCollection, imgCollection) ||
                const DeepCollectionEquality().equals(
                  other.imgCollection,
                  imgCollection,
                )) &&
            (identical(other.textDetail, textDetail) ||
                const DeepCollectionEquality().equals(
                  other.textDetail,
                  textDetail,
                )) &&
            (identical(other.imgDetail, imgDetail) ||
                const DeepCollectionEquality().equals(
                  other.imgDetail,
                  imgDetail,
                )) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality().equals(
                  other.categoryId,
                  categoryId,
                )) &&
            (identical(other.productOptions, productOptions) ||
                const DeepCollectionEquality().equals(
                  other.productOptions,
                  productOptions,
                )) &&
            (identical(other.productAttrs, productAttrs) ||
                const DeepCollectionEquality().equals(
                  other.productAttrs,
                  productAttrs,
                )) &&
            (identical(other.sourcePlatform, sourcePlatform) ||
                const DeepCollectionEquality().equals(
                  other.sourcePlatform,
                  sourcePlatform,
                )) &&
            (identical(other.platformUrl, platformUrl) ||
                const DeepCollectionEquality().equals(
                  other.platformUrl,
                  platformUrl,
                )) &&
            (identical(other.platformProductId, platformProductId) ||
                const DeepCollectionEquality().equals(
                  other.platformProductId,
                  platformProductId,
                )) &&
            (identical(other.skuCode, skuCode) ||
                const DeepCollectionEquality().equals(
                  other.skuCode,
                  skuCode,
                )) &&
            (identical(other.sellPriceCur, sellPriceCur) ||
                const DeepCollectionEquality().equals(
                  other.sellPriceCur,
                  sellPriceCur,
                )) &&
            (identical(other.sellPrice, sellPrice) ||
                const DeepCollectionEquality().equals(
                  other.sellPrice,
                  sellPrice,
                )) &&
            (identical(other.targetSellPrice, targetSellPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetSellPrice,
                  targetSellPrice,
                )) &&
            (identical(other.targetSellCur, targetSellCur) ||
                const DeepCollectionEquality().equals(
                  other.targetSellCur,
                  targetSellCur,
                )) &&
            (identical(other.productFlag, productFlag) ||
                const DeepCollectionEquality().equals(
                  other.productFlag,
                  productFlag,
                )) &&
            (identical(other.marketingInfo, marketingInfo) ||
                const DeepCollectionEquality().equals(
                  other.marketingInfo,
                  marketingInfo,
                )) &&
            (identical(other.sellQuantity, sellQuantity) ||
                const DeepCollectionEquality().equals(
                  other.sellQuantity,
                  sellQuantity,
                )) &&
            (identical(other.targetOriginPrice, targetOriginPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetOriginPrice,
                  targetOriginPrice,
                )) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.premiumBrandInfo, premiumBrandInfo) ||
                const DeepCollectionEquality().equals(
                  other.premiumBrandInfo,
                  premiumBrandInfo,
                )) &&
            (identical(other.sellPoints, sellPoints) ||
                const DeepCollectionEquality().equals(
                  other.sellPoints,
                  sellPoints,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(shopCode) ^
      const DeepCollectionEquality().hash(productCode) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(tenantCode) ^
      const DeepCollectionEquality().hash(brandName) ^
      const DeepCollectionEquality().hash(mainImg) ^
      const DeepCollectionEquality().hash(subImg) ^
      const DeepCollectionEquality().hash(mainVideo) ^
      const DeepCollectionEquality().hash(imgCollection) ^
      const DeepCollectionEquality().hash(textDetail) ^
      const DeepCollectionEquality().hash(imgDetail) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(productOptions) ^
      const DeepCollectionEquality().hash(productAttrs) ^
      const DeepCollectionEquality().hash(sourcePlatform) ^
      const DeepCollectionEquality().hash(platformUrl) ^
      const DeepCollectionEquality().hash(platformProductId) ^
      const DeepCollectionEquality().hash(skuCode) ^
      const DeepCollectionEquality().hash(sellPriceCur) ^
      const DeepCollectionEquality().hash(sellPrice) ^
      const DeepCollectionEquality().hash(targetSellPrice) ^
      const DeepCollectionEquality().hash(targetSellCur) ^
      const DeepCollectionEquality().hash(productFlag) ^
      const DeepCollectionEquality().hash(marketingInfo) ^
      const DeepCollectionEquality().hash(sellQuantity) ^
      const DeepCollectionEquality().hash(targetOriginPrice) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(premiumBrandInfo) ^
      const DeepCollectionEquality().hash(sellPoints) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthNewArrivalProductGet$Response$Data$Records$ItemExtension
    on ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item {
  ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item copyWith({
    Object? shopCode,
    String? productCode,
    String? productName,
    String? tenantCode,
    Object? brandName,
    List<
      ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$Item
    >?
    mainImg,
    Object? subImg,
    List<Object>? mainVideo,
    List<
      ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$Item
    >?
    imgCollection,
    Object? textDetail,
    List<
      ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$Item
    >?
    imgDetail,
    double? categoryId,
    List<
      ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item
    >?
    productOptions,
    List<Object>? productAttrs,
    String? sourcePlatform,
    String? platformUrl,
    String? platformProductId,
    String? skuCode,
    String? sellPriceCur,
    String? sellPrice,
    String? targetSellPrice,
    String? targetSellCur,
    String? productFlag,
    String? marketingInfo,
    String? sellQuantity,
    String? targetOriginPrice,
    List<
      ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$Item
    >?
    tags,
    ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
  }) {
    return ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item(
      shopCode: shopCode ?? this.shopCode,
      productCode: productCode ?? this.productCode,
      productName: productName ?? this.productName,
      tenantCode: tenantCode ?? this.tenantCode,
      brandName: brandName ?? this.brandName,
      mainImg: mainImg ?? this.mainImg,
      subImg: subImg ?? this.subImg,
      mainVideo: mainVideo ?? this.mainVideo,
      imgCollection: imgCollection ?? this.imgCollection,
      textDetail: textDetail ?? this.textDetail,
      imgDetail: imgDetail ?? this.imgDetail,
      categoryId: categoryId ?? this.categoryId,
      productOptions: productOptions ?? this.productOptions,
      productAttrs: productAttrs ?? this.productAttrs,
      sourcePlatform: sourcePlatform ?? this.sourcePlatform,
      platformUrl: platformUrl ?? this.platformUrl,
      platformProductId: platformProductId ?? this.platformProductId,
      skuCode: skuCode ?? this.skuCode,
      sellPriceCur: sellPriceCur ?? this.sellPriceCur,
      sellPrice: sellPrice ?? this.sellPrice,
      targetSellPrice: targetSellPrice ?? this.targetSellPrice,
      targetSellCur: targetSellCur ?? this.targetSellCur,
      productFlag: productFlag ?? this.productFlag,
      marketingInfo: marketingInfo ?? this.marketingInfo,
      sellQuantity: sellQuantity ?? this.sellQuantity,
      targetOriginPrice: targetOriginPrice ?? this.targetOriginPrice,
      tags: tags ?? this.tags,
      premiumBrandInfo: premiumBrandInfo ?? this.premiumBrandInfo,
      sellPoints: sellPoints ?? this.sellPoints,
    );
  }

  ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item copyWithWrapped({
    Wrapped<Object?>? shopCode,
    Wrapped<String?>? productCode,
    Wrapped<String?>? productName,
    Wrapped<String?>? tenantCode,
    Wrapped<Object?>? brandName,
    Wrapped<
      List<
        ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$Item
      >?
    >?
    mainImg,
    Wrapped<Object?>? subImg,
    Wrapped<List<Object>?>? mainVideo,
    Wrapped<
      List<
        ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$Item
      >?
    >?
    imgCollection,
    Wrapped<Object?>? textDetail,
    Wrapped<
      List<
        ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$Item
      >?
    >?
    imgDetail,
    Wrapped<double?>? categoryId,
    Wrapped<
      List<
        ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item
      >?
    >?
    productOptions,
    Wrapped<List<Object>?>? productAttrs,
    Wrapped<String?>? sourcePlatform,
    Wrapped<String?>? platformUrl,
    Wrapped<String?>? platformProductId,
    Wrapped<String?>? skuCode,
    Wrapped<String?>? sellPriceCur,
    Wrapped<String?>? sellPrice,
    Wrapped<String?>? targetSellPrice,
    Wrapped<String?>? targetSellCur,
    Wrapped<String?>? productFlag,
    Wrapped<String?>? marketingInfo,
    Wrapped<String?>? sellQuantity,
    Wrapped<String?>? targetOriginPrice,
    Wrapped<
      List<
        ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$Item
      >?
    >?
    tags,
    Wrapped<
      ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
  }) {
    return ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item(
      shopCode: (shopCode != null ? shopCode.value : this.shopCode),
      productCode: (productCode != null ? productCode.value : this.productCode),
      productName: (productName != null ? productName.value : this.productName),
      tenantCode: (tenantCode != null ? tenantCode.value : this.tenantCode),
      brandName: (brandName != null ? brandName.value : this.brandName),
      mainImg: (mainImg != null ? mainImg.value : this.mainImg),
      subImg: (subImg != null ? subImg.value : this.subImg),
      mainVideo: (mainVideo != null ? mainVideo.value : this.mainVideo),
      imgCollection: (imgCollection != null
          ? imgCollection.value
          : this.imgCollection),
      textDetail: (textDetail != null ? textDetail.value : this.textDetail),
      imgDetail: (imgDetail != null ? imgDetail.value : this.imgDetail),
      categoryId: (categoryId != null ? categoryId.value : this.categoryId),
      productOptions: (productOptions != null
          ? productOptions.value
          : this.productOptions),
      productAttrs: (productAttrs != null
          ? productAttrs.value
          : this.productAttrs),
      sourcePlatform: (sourcePlatform != null
          ? sourcePlatform.value
          : this.sourcePlatform),
      platformUrl: (platformUrl != null ? platformUrl.value : this.platformUrl),
      platformProductId: (platformProductId != null
          ? platformProductId.value
          : this.platformProductId),
      skuCode: (skuCode != null ? skuCode.value : this.skuCode),
      sellPriceCur: (sellPriceCur != null
          ? sellPriceCur.value
          : this.sellPriceCur),
      sellPrice: (sellPrice != null ? sellPrice.value : this.sellPrice),
      targetSellPrice: (targetSellPrice != null
          ? targetSellPrice.value
          : this.targetSellPrice),
      targetSellCur: (targetSellCur != null
          ? targetSellCur.value
          : this.targetSellCur),
      productFlag: (productFlag != null ? productFlag.value : this.productFlag),
      marketingInfo: (marketingInfo != null
          ? marketingInfo.value
          : this.marketingInfo),
      sellQuantity: (sellQuantity != null
          ? sellQuantity.value
          : this.sellQuantity),
      targetOriginPrice: (targetOriginPrice != null
          ? targetOriginPrice.value
          : this.targetOriginPrice),
      tags: (tags != null ? tags.value : this.tags),
      premiumBrandInfo: (premiumBrandInfo != null
          ? premiumBrandInfo.value
          : this.premiumBrandInfo),
      sellPoints: (sellPoints != null ? sellPoints.value : this.sellPoints),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthSkuListGet$Response$Data$Item$SkuImg {
  const ProductNoAuthSkuListGet$Response$Data$Item$SkuImg({
    required this.width,
    required this.height,
    required this.url,
  });

  factory ProductNoAuthSkuListGet$Response$Data$Item$SkuImg.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthSkuListGet$Response$Data$Item$SkuImgFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthSkuListGet$Response$Data$Item$SkuImgToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthSkuListGet$Response$Data$Item$SkuImgToJson(this);

  @JsonKey(name: 'width')
  final int width;
  @JsonKey(name: 'height')
  final int height;
  @JsonKey(name: 'url')
  final String url;
  static const fromJsonFactory =
      _$ProductNoAuthSkuListGet$Response$Data$Item$SkuImgFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthSkuListGet$Response$Data$Item$SkuImg &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthSkuListGet$Response$Data$Item$SkuImgExtension
    on ProductNoAuthSkuListGet$Response$Data$Item$SkuImg {
  ProductNoAuthSkuListGet$Response$Data$Item$SkuImg copyWith({
    int? width,
    int? height,
    String? url,
  }) {
    return ProductNoAuthSkuListGet$Response$Data$Item$SkuImg(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductNoAuthSkuListGet$Response$Data$Item$SkuImg copyWithWrapped({
    Wrapped<int>? width,
    Wrapped<int>? height,
    Wrapped<String>? url,
  }) {
    return ProductNoAuthSkuListGet$Response$Data$Item$SkuImg(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$Item {
  const ProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$Item({
    required this.name,
    required this.value,
  });

  factory ProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$ItemFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$ItemToJson(this);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'value')
  final String value;
  static const fromJsonFactory =
      _$ProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$Item &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(value) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$ItemExtension
    on ProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$Item {
  ProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$Item copyWith({
    String? name,
    String? value,
  }) {
    return ProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$Item(
      name: name ?? this.name,
      value: value ?? this.value,
    );
  }

  ProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$Item copyWithWrapped({
    Wrapped<String>? name,
    Wrapped<String>? value,
  }) {
    return ProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$Item(
      name: (name != null ? name.value : this.name),
      value: (value != null ? value.value : this.value),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfo {
  const ProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfo({
    required this.activityCode,
    required this.activityTitle,
    required this.startTime,
    required this.endTime,
    required this.progressPercent,
    required this.progressText,
    required this.marketingIcon,
  });

  factory ProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfo.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfoFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfoToJson(this);

  @JsonKey(name: 'activityCode')
  final String activityCode;
  @JsonKey(name: 'activityTitle')
  final String activityTitle;
  @JsonKey(name: 'startTime')
  final int startTime;
  @JsonKey(name: 'endTime')
  final int endTime;
  @JsonKey(name: 'progressPercent')
  final int progressPercent;
  @JsonKey(name: 'progressText')
  final String progressText;
  @JsonKey(name: 'marketingIcon')
  final String marketingIcon;
  static const fromJsonFactory =
      _$ProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfo &&
            (identical(other.activityCode, activityCode) ||
                const DeepCollectionEquality().equals(
                  other.activityCode,
                  activityCode,
                )) &&
            (identical(other.activityTitle, activityTitle) ||
                const DeepCollectionEquality().equals(
                  other.activityTitle,
                  activityTitle,
                )) &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality().equals(
                  other.startTime,
                  startTime,
                )) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality().equals(
                  other.endTime,
                  endTime,
                )) &&
            (identical(other.progressPercent, progressPercent) ||
                const DeepCollectionEquality().equals(
                  other.progressPercent,
                  progressPercent,
                )) &&
            (identical(other.progressText, progressText) ||
                const DeepCollectionEquality().equals(
                  other.progressText,
                  progressText,
                )) &&
            (identical(other.marketingIcon, marketingIcon) ||
                const DeepCollectionEquality().equals(
                  other.marketingIcon,
                  marketingIcon,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(activityCode) ^
      const DeepCollectionEquality().hash(activityTitle) ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(endTime) ^
      const DeepCollectionEquality().hash(progressPercent) ^
      const DeepCollectionEquality().hash(progressText) ^
      const DeepCollectionEquality().hash(marketingIcon) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfoExtension
    on ProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfo {
  ProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfo copyWith({
    String? activityCode,
    String? activityTitle,
    int? startTime,
    int? endTime,
    int? progressPercent,
    String? progressText,
    String? marketingIcon,
  }) {
    return ProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfo(
      activityCode: activityCode ?? this.activityCode,
      activityTitle: activityTitle ?? this.activityTitle,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      progressPercent: progressPercent ?? this.progressPercent,
      progressText: progressText ?? this.progressText,
      marketingIcon: marketingIcon ?? this.marketingIcon,
    );
  }

  ProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfo copyWithWrapped({
    Wrapped<String>? activityCode,
    Wrapped<String>? activityTitle,
    Wrapped<int>? startTime,
    Wrapped<int>? endTime,
    Wrapped<int>? progressPercent,
    Wrapped<String>? progressText,
    Wrapped<String>? marketingIcon,
  }) {
    return ProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfo(
      activityCode: (activityCode != null
          ? activityCode.value
          : this.activityCode),
      activityTitle: (activityTitle != null
          ? activityTitle.value
          : this.activityTitle),
      startTime: (startTime != null ? startTime.value : this.startTime),
      endTime: (endTime != null ? endTime.value : this.endTime),
      progressPercent: (progressPercent != null
          ? progressPercent.value
          : this.progressPercent),
      progressText: (progressText != null
          ? progressText.value
          : this.progressText),
      marketingIcon: (marketingIcon != null
          ? marketingIcon.value
          : this.marketingIcon),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthGetProductInfoGet$Response$Data$MainImg$Item {
  const ProductNoAuthGetProductInfoGet$Response$Data$MainImg$Item({
    this.width,
    this.height,
    this.url,
  });

  factory ProductNoAuthGetProductInfoGet$Response$Data$MainImg$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthGetProductInfoGet$Response$Data$MainImg$ItemFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthGetProductInfoGet$Response$Data$MainImg$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthGetProductInfoGet$Response$Data$MainImg$ItemToJson(this);

  @JsonKey(name: 'width')
  final double? width;
  @JsonKey(name: 'height')
  final double? height;
  @JsonKey(name: 'url')
  final String? url;
  static const fromJsonFactory =
      _$ProductNoAuthGetProductInfoGet$Response$Data$MainImg$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthGetProductInfoGet$Response$Data$MainImg$Item &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthGetProductInfoGet$Response$Data$MainImg$ItemExtension
    on ProductNoAuthGetProductInfoGet$Response$Data$MainImg$Item {
  ProductNoAuthGetProductInfoGet$Response$Data$MainImg$Item copyWith({
    double? width,
    double? height,
    String? url,
  }) {
    return ProductNoAuthGetProductInfoGet$Response$Data$MainImg$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductNoAuthGetProductInfoGet$Response$Data$MainImg$Item copyWithWrapped({
    Wrapped<double?>? width,
    Wrapped<double?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductNoAuthGetProductInfoGet$Response$Data$MainImg$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthGetProductInfoGet$Response$Data$MainVideo$Item {
  const ProductNoAuthGetProductInfoGet$Response$Data$MainVideo$Item({
    this.videoUrl,
    this.vodUrl,
    this.previewUrl,
    this.width,
    this.height,
  });

  factory ProductNoAuthGetProductInfoGet$Response$Data$MainVideo$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthGetProductInfoGet$Response$Data$MainVideo$ItemFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductNoAuthGetProductInfoGet$Response$Data$MainVideo$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthGetProductInfoGet$Response$Data$MainVideo$ItemToJson(this);

  @JsonKey(name: 'videoUrl')
  final String? videoUrl;
  @JsonKey(name: 'vodUrl')
  final Object? vodUrl;
  @JsonKey(name: 'previewUrl')
  final Object? previewUrl;
  @JsonKey(name: 'width')
  final Object? width;
  @JsonKey(name: 'height')
  final Object? height;
  static const fromJsonFactory =
      _$ProductNoAuthGetProductInfoGet$Response$Data$MainVideo$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthGetProductInfoGet$Response$Data$MainVideo$Item &&
            (identical(other.videoUrl, videoUrl) ||
                const DeepCollectionEquality().equals(
                  other.videoUrl,
                  videoUrl,
                )) &&
            (identical(other.vodUrl, vodUrl) ||
                const DeepCollectionEquality().equals(other.vodUrl, vodUrl)) &&
            (identical(other.previewUrl, previewUrl) ||
                const DeepCollectionEquality().equals(
                  other.previewUrl,
                  previewUrl,
                )) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(videoUrl) ^
      const DeepCollectionEquality().hash(vodUrl) ^
      const DeepCollectionEquality().hash(previewUrl) ^
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthGetProductInfoGet$Response$Data$MainVideo$ItemExtension
    on ProductNoAuthGetProductInfoGet$Response$Data$MainVideo$Item {
  ProductNoAuthGetProductInfoGet$Response$Data$MainVideo$Item copyWith({
    String? videoUrl,
    Object? vodUrl,
    Object? previewUrl,
    Object? width,
    Object? height,
  }) {
    return ProductNoAuthGetProductInfoGet$Response$Data$MainVideo$Item(
      videoUrl: videoUrl ?? this.videoUrl,
      vodUrl: vodUrl ?? this.vodUrl,
      previewUrl: previewUrl ?? this.previewUrl,
      width: width ?? this.width,
      height: height ?? this.height,
    );
  }

  ProductNoAuthGetProductInfoGet$Response$Data$MainVideo$Item copyWithWrapped({
    Wrapped<String?>? videoUrl,
    Wrapped<Object?>? vodUrl,
    Wrapped<Object?>? previewUrl,
    Wrapped<Object?>? width,
    Wrapped<Object?>? height,
  }) {
    return ProductNoAuthGetProductInfoGet$Response$Data$MainVideo$Item(
      videoUrl: (videoUrl != null ? videoUrl.value : this.videoUrl),
      vodUrl: (vodUrl != null ? vodUrl.value : this.vodUrl),
      previewUrl: (previewUrl != null ? previewUrl.value : this.previewUrl),
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$Item {
  const ProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$Item({
    required this.width,
    required this.height,
    required this.url,
  });

  factory ProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$ItemToJson(
        this,
      );

  @JsonKey(name: 'width')
  final double width;
  @JsonKey(name: 'height')
  final double height;
  @JsonKey(name: 'url')
  final String url;
  static const fromJsonFactory =
      _$ProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$Item &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$ItemExtension
    on ProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$Item {
  ProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$Item copyWith({
    double? width,
    double? height,
    String? url,
  }) {
    return ProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$Item
  copyWithWrapped({
    Wrapped<double>? width,
    Wrapped<double>? height,
    Wrapped<String>? url,
  }) {
    return ProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$Item {
  const ProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$Item({
    required this.width,
    required this.height,
    required this.url,
  });

  factory ProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$ItemFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$ItemToJson(this);

  @JsonKey(name: 'width')
  final double width;
  @JsonKey(name: 'height')
  final double height;
  @JsonKey(name: 'url')
  final String url;
  static const fromJsonFactory =
      _$ProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$Item &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$ItemExtension
    on ProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$Item {
  ProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$Item copyWith({
    double? width,
    double? height,
    String? url,
  }) {
    return ProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$Item copyWithWrapped({
    Wrapped<double>? width,
    Wrapped<double>? height,
    Wrapped<String>? url,
  }) {
    return ProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item {
  const ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item({
    required this.name,
    required this.type,
    required this.optionValues,
  });

  factory ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$ItemToJson(
        this,
      );

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'type')
  final double type;
  @JsonKey(name: 'optionValues')
  final List<
    ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$Item
  >
  optionValues;
  static const fromJsonFactory =
      _$ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.optionValues, optionValues) ||
                const DeepCollectionEquality().equals(
                  other.optionValues,
                  optionValues,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(optionValues) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$ItemExtension
    on ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item {
  ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item copyWith({
    String? name,
    double? type,
    List<
      ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$Item
    >?
    optionValues,
  }) {
    return ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item(
      name: name ?? this.name,
      type: type ?? this.type,
      optionValues: optionValues ?? this.optionValues,
    );
  }

  ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item
  copyWithWrapped({
    Wrapped<String>? name,
    Wrapped<double>? type,
    Wrapped<
      List<
        ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$Item
      >
    >?
    optionValues,
  }) {
    return ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item(
      name: (name != null ? name.value : this.name),
      type: (type != null ? type.value : this.type),
      optionValues: (optionValues != null
          ? optionValues.value
          : this.optionValues),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$Item {
  const ProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$Item({
    required this.name,
    required this.value,
  });

  factory ProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$ItemFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$ItemToJson(
        this,
      );

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'value')
  final String value;
  static const fromJsonFactory =
      _$ProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$Item &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(value) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$ItemExtension
    on ProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$Item {
  ProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$Item copyWith({
    String? name,
    String? value,
  }) {
    return ProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$Item(
      name: name ?? this.name,
      value: value ?? this.value,
    );
  }

  ProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$Item
  copyWithWrapped({Wrapped<String>? name, Wrapped<String>? value}) {
    return ProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$Item(
      name: (name != null ? name.value : this.name),
      value: (value != null ? value.value : this.value),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item {
  const ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item({
    this.images,
    this.skuOption,
  });

  factory ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$ItemToJson(
        this,
      );

  @JsonKey(name: 'images', defaultValue: <Object>[])
  final List<Object>? images;
  @JsonKey(name: 'skuOption')
  final ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOption?
  skuOption;
  static const fromJsonFactory =
      _$ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.skuOption, skuOption) ||
                const DeepCollectionEquality().equals(
                  other.skuOption,
                  skuOption,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(skuOption) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$ItemExtension
    on ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item {
  ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item copyWith({
    List<Object>? images,
    ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOption?
    skuOption,
  }) {
    return ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item(
      images: images ?? this.images,
      skuOption: skuOption ?? this.skuOption,
    );
  }

  ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item
  copyWithWrapped({
    Wrapped<List<Object>?>? images,
    Wrapped<
      ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOption?
    >?
    skuOption,
  }) {
    return ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item(
      images: (images != null ? images.value : this.images),
      skuOption: (skuOption != null ? skuOption.value : this.skuOption),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthGetProductInfoGet$Response$Data$Tags$Item {
  const ProductNoAuthGetProductInfoGet$Response$Data$Tags$Item({
    required this.tagCode,
    required this.tagName,
    required this.tagImg,
  });

  factory ProductNoAuthGetProductInfoGet$Response$Data$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthGetProductInfoGet$Response$Data$Tags$ItemFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthGetProductInfoGet$Response$Data$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthGetProductInfoGet$Response$Data$Tags$ItemToJson(this);

  @JsonKey(name: 'tagCode')
  final String tagCode;
  @JsonKey(name: 'tagName')
  final String tagName;
  @JsonKey(name: 'tagImg')
  final String tagImg;
  static const fromJsonFactory =
      _$ProductNoAuthGetProductInfoGet$Response$Data$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthGetProductInfoGet$Response$Data$Tags$Item &&
            (identical(other.tagCode, tagCode) ||
                const DeepCollectionEquality().equals(
                  other.tagCode,
                  tagCode,
                )) &&
            (identical(other.tagName, tagName) ||
                const DeepCollectionEquality().equals(
                  other.tagName,
                  tagName,
                )) &&
            (identical(other.tagImg, tagImg) ||
                const DeepCollectionEquality().equals(other.tagImg, tagImg)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tagCode) ^
      const DeepCollectionEquality().hash(tagName) ^
      const DeepCollectionEquality().hash(tagImg) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthGetProductInfoGet$Response$Data$Tags$ItemExtension
    on ProductNoAuthGetProductInfoGet$Response$Data$Tags$Item {
  ProductNoAuthGetProductInfoGet$Response$Data$Tags$Item copyWith({
    String? tagCode,
    String? tagName,
    String? tagImg,
  }) {
    return ProductNoAuthGetProductInfoGet$Response$Data$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagName: tagName ?? this.tagName,
      tagImg: tagImg ?? this.tagImg,
    );
  }

  ProductNoAuthGetProductInfoGet$Response$Data$Tags$Item copyWithWrapped({
    Wrapped<String>? tagCode,
    Wrapped<String>? tagName,
    Wrapped<String>? tagImg,
  }) {
    return ProductNoAuthGetProductInfoGet$Response$Data$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagName: (tagName != null ? tagName.value : this.tagName),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfo {
  const ProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfoFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode')
  final String? brandCode;
  @JsonKey(name: 'brandImg')
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfo &&
            (identical(other.brandCode, brandCode) ||
                const DeepCollectionEquality().equals(
                  other.brandCode,
                  brandCode,
                )) &&
            (identical(other.brandImg, brandImg) ||
                const DeepCollectionEquality().equals(
                  other.brandImg,
                  brandImg,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(brandCode) ^
      const DeepCollectionEquality().hash(brandImg) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfoExtension
    on ProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfo {
  ProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfo copyWith({
    String? brandCode,
    String? brandImg,
  }) {
    return ProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthGetProductInfoGet$Response$Data$Ext {
  const ProductNoAuthGetProductInfoGet$Response$Data$Ext({
    required this.sizeHelperOptionName,
    required this.sizeHelperType,
    this.brand,
  });

  factory ProductNoAuthGetProductInfoGet$Response$Data$Ext.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthGetProductInfoGet$Response$Data$ExtFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthGetProductInfoGet$Response$Data$ExtToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthGetProductInfoGet$Response$Data$ExtToJson(this);

  @JsonKey(name: 'sizeHelperOptionName')
  final String sizeHelperOptionName;
  @JsonKey(name: 'sizeHelperType')
  final int sizeHelperType;
  @JsonKey(name: 'brand')
  final ProductNoAuthGetProductInfoGet$Response$Data$Ext$Brand? brand;
  static const fromJsonFactory =
      _$ProductNoAuthGetProductInfoGet$Response$Data$ExtFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthGetProductInfoGet$Response$Data$Ext &&
            (identical(other.sizeHelperOptionName, sizeHelperOptionName) ||
                const DeepCollectionEquality().equals(
                  other.sizeHelperOptionName,
                  sizeHelperOptionName,
                )) &&
            (identical(other.sizeHelperType, sizeHelperType) ||
                const DeepCollectionEquality().equals(
                  other.sizeHelperType,
                  sizeHelperType,
                )) &&
            (identical(other.brand, brand) ||
                const DeepCollectionEquality().equals(other.brand, brand)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(sizeHelperOptionName) ^
      const DeepCollectionEquality().hash(sizeHelperType) ^
      const DeepCollectionEquality().hash(brand) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthGetProductInfoGet$Response$Data$ExtExtension
    on ProductNoAuthGetProductInfoGet$Response$Data$Ext {
  ProductNoAuthGetProductInfoGet$Response$Data$Ext copyWith({
    String? sizeHelperOptionName,
    int? sizeHelperType,
    ProductNoAuthGetProductInfoGet$Response$Data$Ext$Brand? brand,
  }) {
    return ProductNoAuthGetProductInfoGet$Response$Data$Ext(
      sizeHelperOptionName: sizeHelperOptionName ?? this.sizeHelperOptionName,
      sizeHelperType: sizeHelperType ?? this.sizeHelperType,
      brand: brand ?? this.brand,
    );
  }

  ProductNoAuthGetProductInfoGet$Response$Data$Ext copyWithWrapped({
    Wrapped<String>? sizeHelperOptionName,
    Wrapped<int>? sizeHelperType,
    Wrapped<ProductNoAuthGetProductInfoGet$Response$Data$Ext$Brand?>? brand,
  }) {
    return ProductNoAuthGetProductInfoGet$Response$Data$Ext(
      sizeHelperOptionName: (sizeHelperOptionName != null
          ? sizeHelperOptionName.value
          : this.sizeHelperOptionName),
      sizeHelperType: (sizeHelperType != null
          ? sizeHelperType.value
          : this.sizeHelperType),
      brand: (brand != null ? brand.value : this.brand),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthGetProductInfoGet$Response$Data$FlashSale {
  const ProductNoAuthGetProductInfoGet$Response$Data$FlashSale({
    required this.activityCode,
    required this.activityTitle,
    required this.startTime,
    required this.endTime,
    required this.progressPercent,
    required this.progressText,
    required this.marketingIcon,
    required this.discountExpr,
  });

  factory ProductNoAuthGetProductInfoGet$Response$Data$FlashSale.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthGetProductInfoGet$Response$Data$FlashSaleFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthGetProductInfoGet$Response$Data$FlashSaleToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthGetProductInfoGet$Response$Data$FlashSaleToJson(this);

  @JsonKey(name: 'activityCode')
  final String activityCode;
  @JsonKey(name: 'activityTitle')
  final String activityTitle;
  @JsonKey(name: 'startTime')
  final String startTime;
  @JsonKey(name: 'endTime')
  final String endTime;
  @JsonKey(name: 'progressPercent')
  final String progressPercent;
  @JsonKey(name: 'progressText')
  final String progressText;
  @JsonKey(name: 'marketingIcon')
  final String marketingIcon;
  @JsonKey(name: 'discountExpr')
  final String discountExpr;
  static const fromJsonFactory =
      _$ProductNoAuthGetProductInfoGet$Response$Data$FlashSaleFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthGetProductInfoGet$Response$Data$FlashSale &&
            (identical(other.activityCode, activityCode) ||
                const DeepCollectionEquality().equals(
                  other.activityCode,
                  activityCode,
                )) &&
            (identical(other.activityTitle, activityTitle) ||
                const DeepCollectionEquality().equals(
                  other.activityTitle,
                  activityTitle,
                )) &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality().equals(
                  other.startTime,
                  startTime,
                )) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality().equals(
                  other.endTime,
                  endTime,
                )) &&
            (identical(other.progressPercent, progressPercent) ||
                const DeepCollectionEquality().equals(
                  other.progressPercent,
                  progressPercent,
                )) &&
            (identical(other.progressText, progressText) ||
                const DeepCollectionEquality().equals(
                  other.progressText,
                  progressText,
                )) &&
            (identical(other.marketingIcon, marketingIcon) ||
                const DeepCollectionEquality().equals(
                  other.marketingIcon,
                  marketingIcon,
                )) &&
            (identical(other.discountExpr, discountExpr) ||
                const DeepCollectionEquality().equals(
                  other.discountExpr,
                  discountExpr,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(activityCode) ^
      const DeepCollectionEquality().hash(activityTitle) ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(endTime) ^
      const DeepCollectionEquality().hash(progressPercent) ^
      const DeepCollectionEquality().hash(progressText) ^
      const DeepCollectionEquality().hash(marketingIcon) ^
      const DeepCollectionEquality().hash(discountExpr) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthGetProductInfoGet$Response$Data$FlashSaleExtension
    on ProductNoAuthGetProductInfoGet$Response$Data$FlashSale {
  ProductNoAuthGetProductInfoGet$Response$Data$FlashSale copyWith({
    String? activityCode,
    String? activityTitle,
    String? startTime,
    String? endTime,
    String? progressPercent,
    String? progressText,
    String? marketingIcon,
    String? discountExpr,
  }) {
    return ProductNoAuthGetProductInfoGet$Response$Data$FlashSale(
      activityCode: activityCode ?? this.activityCode,
      activityTitle: activityTitle ?? this.activityTitle,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      progressPercent: progressPercent ?? this.progressPercent,
      progressText: progressText ?? this.progressText,
      marketingIcon: marketingIcon ?? this.marketingIcon,
      discountExpr: discountExpr ?? this.discountExpr,
    );
  }

  ProductNoAuthGetProductInfoGet$Response$Data$FlashSale copyWithWrapped({
    Wrapped<String>? activityCode,
    Wrapped<String>? activityTitle,
    Wrapped<String>? startTime,
    Wrapped<String>? endTime,
    Wrapped<String>? progressPercent,
    Wrapped<String>? progressText,
    Wrapped<String>? marketingIcon,
    Wrapped<String>? discountExpr,
  }) {
    return ProductNoAuthGetProductInfoGet$Response$Data$FlashSale(
      activityCode: (activityCode != null
          ? activityCode.value
          : this.activityCode),
      activityTitle: (activityTitle != null
          ? activityTitle.value
          : this.activityTitle),
      startTime: (startTime != null ? startTime.value : this.startTime),
      endTime: (endTime != null ? endTime.value : this.endTime),
      progressPercent: (progressPercent != null
          ? progressPercent.value
          : this.progressPercent),
      progressText: (progressText != null
          ? progressText.value
          : this.progressText),
      marketingIcon: (marketingIcon != null
          ? marketingIcon.value
          : this.marketingIcon),
      discountExpr: (discountExpr != null
          ? discountExpr.value
          : this.discountExpr),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item {
  const ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item({
    required this.id,
    required this.parentId,
    required this.level,
    required this.showOrder,
    required this.name,
    required this.iconUrl,
    required this.categoryList,
    required this.brands,
  });

  factory ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$ItemToJson(
        this,
      );

  @JsonKey(name: 'id')
  final double id;
  @JsonKey(name: 'parentId')
  final double parentId;
  @JsonKey(name: 'level')
  final double level;
  @JsonKey(name: 'showOrder')
  final double showOrder;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'iconUrl')
  final String iconUrl;
  @JsonKey(name: 'categoryList')
  final List<
    ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$Item
  >
  categoryList;
  @JsonKey(name: 'brands', defaultValue: <Object>[])
  final List<Object> brands;
  static const fromJsonFactory =
      _$ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality().equals(
                  other.parentId,
                  parentId,
                )) &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)) &&
            (identical(other.showOrder, showOrder) ||
                const DeepCollectionEquality().equals(
                  other.showOrder,
                  showOrder,
                )) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.iconUrl, iconUrl) ||
                const DeepCollectionEquality().equals(
                  other.iconUrl,
                  iconUrl,
                )) &&
            (identical(other.categoryList, categoryList) ||
                const DeepCollectionEquality().equals(
                  other.categoryList,
                  categoryList,
                )) &&
            (identical(other.brands, brands) ||
                const DeepCollectionEquality().equals(other.brands, brands)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash(showOrder) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(iconUrl) ^
      const DeepCollectionEquality().hash(categoryList) ^
      const DeepCollectionEquality().hash(brands) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$ItemExtension
    on ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item {
  ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item
  copyWith({
    double? id,
    double? parentId,
    double? level,
    double? showOrder,
    String? name,
    String? iconUrl,
    List<
      ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$Item
    >?
    categoryList,
    List<Object>? brands,
  }) {
    return ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item(
      id: id ?? this.id,
      parentId: parentId ?? this.parentId,
      level: level ?? this.level,
      showOrder: showOrder ?? this.showOrder,
      name: name ?? this.name,
      iconUrl: iconUrl ?? this.iconUrl,
      categoryList: categoryList ?? this.categoryList,
      brands: brands ?? this.brands,
    );
  }

  ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item
  copyWithWrapped({
    Wrapped<double>? id,
    Wrapped<double>? parentId,
    Wrapped<double>? level,
    Wrapped<double>? showOrder,
    Wrapped<String>? name,
    Wrapped<String>? iconUrl,
    Wrapped<
      List<
        ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$Item
      >
    >?
    categoryList,
    Wrapped<List<Object>>? brands,
  }) {
    return ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item(
      id: (id != null ? id.value : this.id),
      parentId: (parentId != null ? parentId.value : this.parentId),
      level: (level != null ? level.value : this.level),
      showOrder: (showOrder != null ? showOrder.value : this.showOrder),
      name: (name != null ? name.value : this.name),
      iconUrl: (iconUrl != null ? iconUrl.value : this.iconUrl),
      categoryList: (categoryList != null
          ? categoryList.value
          : this.categoryList),
      brands: (brands != null ? brands.value : this.brands),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthHotProductGet$Response$Data$Item$Image {
  const ProductNoAuthHotProductGet$Response$Data$Item$Image({
    required this.width,
    required this.height,
    required this.url,
  });

  factory ProductNoAuthHotProductGet$Response$Data$Item$Image.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthHotProductGet$Response$Data$Item$ImageFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthHotProductGet$Response$Data$Item$ImageToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthHotProductGet$Response$Data$Item$ImageToJson(this);

  @JsonKey(name: 'width')
  final int width;
  @JsonKey(name: 'height')
  final int height;
  @JsonKey(name: 'url')
  final String url;
  static const fromJsonFactory =
      _$ProductNoAuthHotProductGet$Response$Data$Item$ImageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthHotProductGet$Response$Data$Item$Image &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthHotProductGet$Response$Data$Item$ImageExtension
    on ProductNoAuthHotProductGet$Response$Data$Item$Image {
  ProductNoAuthHotProductGet$Response$Data$Item$Image copyWith({
    int? width,
    int? height,
    String? url,
  }) {
    return ProductNoAuthHotProductGet$Response$Data$Item$Image(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductNoAuthHotProductGet$Response$Data$Item$Image copyWithWrapped({
    Wrapped<int>? width,
    Wrapped<int>? height,
    Wrapped<String>? url,
  }) {
    return ProductNoAuthHotProductGet$Response$Data$Item$Image(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthHotProductGet$Response$Data$Item$Tags$Item {
  const ProductNoAuthHotProductGet$Response$Data$Item$Tags$Item({
    this.tagCode,
    this.tagImg,
  });

  factory ProductNoAuthHotProductGet$Response$Data$Item$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthHotProductGet$Response$Data$Item$Tags$ItemFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthHotProductGet$Response$Data$Item$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthHotProductGet$Response$Data$Item$Tags$ItemToJson(this);

  @JsonKey(name: 'tagCode')
  final String? tagCode;
  @JsonKey(name: 'tagImg')
  final String? tagImg;
  static const fromJsonFactory =
      _$ProductNoAuthHotProductGet$Response$Data$Item$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthHotProductGet$Response$Data$Item$Tags$Item &&
            (identical(other.tagCode, tagCode) ||
                const DeepCollectionEquality().equals(
                  other.tagCode,
                  tagCode,
                )) &&
            (identical(other.tagImg, tagImg) ||
                const DeepCollectionEquality().equals(other.tagImg, tagImg)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tagCode) ^
      const DeepCollectionEquality().hash(tagImg) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthHotProductGet$Response$Data$Item$Tags$ItemExtension
    on ProductNoAuthHotProductGet$Response$Data$Item$Tags$Item {
  ProductNoAuthHotProductGet$Response$Data$Item$Tags$Item copyWith({
    String? tagCode,
    String? tagImg,
  }) {
    return ProductNoAuthHotProductGet$Response$Data$Item$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagImg: tagImg ?? this.tagImg,
    );
  }

  ProductNoAuthHotProductGet$Response$Data$Item$Tags$Item copyWithWrapped({
    Wrapped<String?>? tagCode,
    Wrapped<String?>? tagImg,
  }) {
    return ProductNoAuthHotProductGet$Response$Data$Item$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfo {
  const ProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfoFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode')
  final String? brandCode;
  @JsonKey(name: 'brandImg')
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfo &&
            (identical(other.brandCode, brandCode) ||
                const DeepCollectionEquality().equals(
                  other.brandCode,
                  brandCode,
                )) &&
            (identical(other.brandImg, brandImg) ||
                const DeepCollectionEquality().equals(
                  other.brandImg,
                  brandImg,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(brandCode) ^
      const DeepCollectionEquality().hash(brandImg) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfoExtension
    on ProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfo {
  ProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfo copyWith({
    String? brandCode,
    String? brandImg,
  }) {
    return ProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthHotProductV2Get$Response$Data$Records$Item {
  const ProductNoAuthHotProductV2Get$Response$Data$Records$Item({
    required this.productCode,
    required this.productName,
    required this.image,
    required this.skuCode,
    required this.sellPriceCur,
    required this.sellPrice,
    required this.targetSellPrice,
    required this.targetSellCur,
    required this.sellQuantity,
    required this.tags,
    this.premiumBrandInfo,
    this.sellPoints,
    this.rate,
    this.flashSale,
    this.targetOriginPrice,
    this.marketingInfo,
  });

  factory ProductNoAuthHotProductV2Get$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthHotProductV2Get$Response$Data$Records$ItemFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthHotProductV2Get$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthHotProductV2Get$Response$Data$Records$ItemToJson(this);

  @JsonKey(name: 'productCode')
  final String productCode;
  @JsonKey(name: 'productName')
  final String productName;
  @JsonKey(name: 'image')
  final ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Image image;
  @JsonKey(name: 'skuCode')
  final String skuCode;
  @JsonKey(name: 'sellPriceCur')
  final String sellPriceCur;
  @JsonKey(name: 'sellPrice')
  final String sellPrice;
  @JsonKey(name: 'targetSellPrice')
  final String targetSellPrice;
  @JsonKey(name: 'targetSellCur')
  final String targetSellCur;
  @JsonKey(name: 'sellQuantity')
  final String sellQuantity;
  @JsonKey(name: 'tags')
  final List<ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$Item>
  tags;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  @JsonKey(name: 'rate')
  final String? rate;
  @JsonKey(name: 'flashSale')
  final ProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSale?
  flashSale;
  @JsonKey(name: 'targetOriginPrice')
  final String? targetOriginPrice;
  @JsonKey(name: 'marketingInfo')
  final String? marketingInfo;
  static const fromJsonFactory =
      _$ProductNoAuthHotProductV2Get$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthHotProductV2Get$Response$Data$Records$Item &&
            (identical(other.productCode, productCode) ||
                const DeepCollectionEquality().equals(
                  other.productCode,
                  productCode,
                )) &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality().equals(
                  other.productName,
                  productName,
                )) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.skuCode, skuCode) ||
                const DeepCollectionEquality().equals(
                  other.skuCode,
                  skuCode,
                )) &&
            (identical(other.sellPriceCur, sellPriceCur) ||
                const DeepCollectionEquality().equals(
                  other.sellPriceCur,
                  sellPriceCur,
                )) &&
            (identical(other.sellPrice, sellPrice) ||
                const DeepCollectionEquality().equals(
                  other.sellPrice,
                  sellPrice,
                )) &&
            (identical(other.targetSellPrice, targetSellPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetSellPrice,
                  targetSellPrice,
                )) &&
            (identical(other.targetSellCur, targetSellCur) ||
                const DeepCollectionEquality().equals(
                  other.targetSellCur,
                  targetSellCur,
                )) &&
            (identical(other.sellQuantity, sellQuantity) ||
                const DeepCollectionEquality().equals(
                  other.sellQuantity,
                  sellQuantity,
                )) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.premiumBrandInfo, premiumBrandInfo) ||
                const DeepCollectionEquality().equals(
                  other.premiumBrandInfo,
                  premiumBrandInfo,
                )) &&
            (identical(other.sellPoints, sellPoints) ||
                const DeepCollectionEquality().equals(
                  other.sellPoints,
                  sellPoints,
                )) &&
            (identical(other.rate, rate) ||
                const DeepCollectionEquality().equals(other.rate, rate)) &&
            (identical(other.flashSale, flashSale) ||
                const DeepCollectionEquality().equals(
                  other.flashSale,
                  flashSale,
                )) &&
            (identical(other.targetOriginPrice, targetOriginPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetOriginPrice,
                  targetOriginPrice,
                )) &&
            (identical(other.marketingInfo, marketingInfo) ||
                const DeepCollectionEquality().equals(
                  other.marketingInfo,
                  marketingInfo,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(productCode) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(skuCode) ^
      const DeepCollectionEquality().hash(sellPriceCur) ^
      const DeepCollectionEquality().hash(sellPrice) ^
      const DeepCollectionEquality().hash(targetSellPrice) ^
      const DeepCollectionEquality().hash(targetSellCur) ^
      const DeepCollectionEquality().hash(sellQuantity) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(premiumBrandInfo) ^
      const DeepCollectionEquality().hash(sellPoints) ^
      const DeepCollectionEquality().hash(rate) ^
      const DeepCollectionEquality().hash(flashSale) ^
      const DeepCollectionEquality().hash(targetOriginPrice) ^
      const DeepCollectionEquality().hash(marketingInfo) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthHotProductV2Get$Response$Data$Records$ItemExtension
    on ProductNoAuthHotProductV2Get$Response$Data$Records$Item {
  ProductNoAuthHotProductV2Get$Response$Data$Records$Item copyWith({
    String? productCode,
    String? productName,
    ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Image? image,
    String? skuCode,
    String? sellPriceCur,
    String? sellPrice,
    String? targetSellPrice,
    String? targetSellCur,
    String? sellQuantity,
    List<ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$Item>?
    tags,
    ProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
    String? rate,
    ProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSale?
    flashSale,
    String? targetOriginPrice,
    String? marketingInfo,
  }) {
    return ProductNoAuthHotProductV2Get$Response$Data$Records$Item(
      productCode: productCode ?? this.productCode,
      productName: productName ?? this.productName,
      image: image ?? this.image,
      skuCode: skuCode ?? this.skuCode,
      sellPriceCur: sellPriceCur ?? this.sellPriceCur,
      sellPrice: sellPrice ?? this.sellPrice,
      targetSellPrice: targetSellPrice ?? this.targetSellPrice,
      targetSellCur: targetSellCur ?? this.targetSellCur,
      sellQuantity: sellQuantity ?? this.sellQuantity,
      tags: tags ?? this.tags,
      premiumBrandInfo: premiumBrandInfo ?? this.premiumBrandInfo,
      sellPoints: sellPoints ?? this.sellPoints,
      rate: rate ?? this.rate,
      flashSale: flashSale ?? this.flashSale,
      targetOriginPrice: targetOriginPrice ?? this.targetOriginPrice,
      marketingInfo: marketingInfo ?? this.marketingInfo,
    );
  }

  ProductNoAuthHotProductV2Get$Response$Data$Records$Item copyWithWrapped({
    Wrapped<String>? productCode,
    Wrapped<String>? productName,
    Wrapped<ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Image>?
    image,
    Wrapped<String>? skuCode,
    Wrapped<String>? sellPriceCur,
    Wrapped<String>? sellPrice,
    Wrapped<String>? targetSellPrice,
    Wrapped<String>? targetSellCur,
    Wrapped<String>? sellQuantity,
    Wrapped<
      List<ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$Item>
    >?
    tags,
    Wrapped<
      ProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
    Wrapped<String?>? rate,
    Wrapped<ProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSale?>?
    flashSale,
    Wrapped<String?>? targetOriginPrice,
    Wrapped<String?>? marketingInfo,
  }) {
    return ProductNoAuthHotProductV2Get$Response$Data$Records$Item(
      productCode: (productCode != null ? productCode.value : this.productCode),
      productName: (productName != null ? productName.value : this.productName),
      image: (image != null ? image.value : this.image),
      skuCode: (skuCode != null ? skuCode.value : this.skuCode),
      sellPriceCur: (sellPriceCur != null
          ? sellPriceCur.value
          : this.sellPriceCur),
      sellPrice: (sellPrice != null ? sellPrice.value : this.sellPrice),
      targetSellPrice: (targetSellPrice != null
          ? targetSellPrice.value
          : this.targetSellPrice),
      targetSellCur: (targetSellCur != null
          ? targetSellCur.value
          : this.targetSellCur),
      sellQuantity: (sellQuantity != null
          ? sellQuantity.value
          : this.sellQuantity),
      tags: (tags != null ? tags.value : this.tags),
      premiumBrandInfo: (premiumBrandInfo != null
          ? premiumBrandInfo.value
          : this.premiumBrandInfo),
      sellPoints: (sellPoints != null ? sellPoints.value : this.sellPoints),
      rate: (rate != null ? rate.value : this.rate),
      flashSale: (flashSale != null ? flashSale.value : this.flashSale),
      targetOriginPrice: (targetOriginPrice != null
          ? targetOriginPrice.value
          : this.targetOriginPrice),
      marketingInfo: (marketingInfo != null
          ? marketingInfo.value
          : this.marketingInfo),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthHotProductV3Get$Response$Data$Records$Item {
  const ProductNoAuthHotProductV3Get$Response$Data$Records$Item({
    required this.productCode,
    required this.productName,
    required this.image,
    required this.sourcePlatform,
    required this.platformProductId,
    required this.skuCode,
    required this.sellPriceCur,
    required this.sellPrice,
    required this.targetSellPrice,
    required this.targetOriginPrice,
    required this.targetSellCur,
    required this.sellQuantity,
    required this.skuCount,
    required this.marketingInfo,
    required this.tags,
    this.premiumBrandInfo,
    this.sellPoints,
    this.rate,
    this.flashSale,
  });

  factory ProductNoAuthHotProductV3Get$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthHotProductV3Get$Response$Data$Records$ItemFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthHotProductV3Get$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthHotProductV3Get$Response$Data$Records$ItemToJson(this);

  @JsonKey(name: 'productCode')
  final String productCode;
  @JsonKey(name: 'productName')
  final String productName;
  @JsonKey(name: 'image')
  final ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Image image;
  @JsonKey(name: 'sourcePlatform')
  final String sourcePlatform;
  @JsonKey(name: 'platformProductId')
  final String platformProductId;
  @JsonKey(name: 'skuCode')
  final String skuCode;
  @JsonKey(name: 'sellPriceCur')
  final String sellPriceCur;
  @JsonKey(name: 'sellPrice')
  final String sellPrice;
  @JsonKey(name: 'targetSellPrice')
  final String targetSellPrice;
  @JsonKey(name: 'targetOriginPrice')
  final String targetOriginPrice;
  @JsonKey(name: 'targetSellCur')
  final String targetSellCur;
  @JsonKey(name: 'sellQuantity')
  final String sellQuantity;
  @JsonKey(name: 'skuCount')
  final double skuCount;
  @JsonKey(name: 'marketingInfo')
  final String marketingInfo;
  @JsonKey(name: 'tags')
  final List<ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$Item>
  tags;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  @JsonKey(name: 'rate')
  final String? rate;
  @JsonKey(name: 'flashSale')
  final ProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSale?
  flashSale;
  static const fromJsonFactory =
      _$ProductNoAuthHotProductV3Get$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthHotProductV3Get$Response$Data$Records$Item &&
            (identical(other.productCode, productCode) ||
                const DeepCollectionEquality().equals(
                  other.productCode,
                  productCode,
                )) &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality().equals(
                  other.productName,
                  productName,
                )) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.sourcePlatform, sourcePlatform) ||
                const DeepCollectionEquality().equals(
                  other.sourcePlatform,
                  sourcePlatform,
                )) &&
            (identical(other.platformProductId, platformProductId) ||
                const DeepCollectionEquality().equals(
                  other.platformProductId,
                  platformProductId,
                )) &&
            (identical(other.skuCode, skuCode) ||
                const DeepCollectionEquality().equals(
                  other.skuCode,
                  skuCode,
                )) &&
            (identical(other.sellPriceCur, sellPriceCur) ||
                const DeepCollectionEquality().equals(
                  other.sellPriceCur,
                  sellPriceCur,
                )) &&
            (identical(other.sellPrice, sellPrice) ||
                const DeepCollectionEquality().equals(
                  other.sellPrice,
                  sellPrice,
                )) &&
            (identical(other.targetSellPrice, targetSellPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetSellPrice,
                  targetSellPrice,
                )) &&
            (identical(other.targetOriginPrice, targetOriginPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetOriginPrice,
                  targetOriginPrice,
                )) &&
            (identical(other.targetSellCur, targetSellCur) ||
                const DeepCollectionEquality().equals(
                  other.targetSellCur,
                  targetSellCur,
                )) &&
            (identical(other.sellQuantity, sellQuantity) ||
                const DeepCollectionEquality().equals(
                  other.sellQuantity,
                  sellQuantity,
                )) &&
            (identical(other.skuCount, skuCount) ||
                const DeepCollectionEquality().equals(
                  other.skuCount,
                  skuCount,
                )) &&
            (identical(other.marketingInfo, marketingInfo) ||
                const DeepCollectionEquality().equals(
                  other.marketingInfo,
                  marketingInfo,
                )) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.premiumBrandInfo, premiumBrandInfo) ||
                const DeepCollectionEquality().equals(
                  other.premiumBrandInfo,
                  premiumBrandInfo,
                )) &&
            (identical(other.sellPoints, sellPoints) ||
                const DeepCollectionEquality().equals(
                  other.sellPoints,
                  sellPoints,
                )) &&
            (identical(other.rate, rate) ||
                const DeepCollectionEquality().equals(other.rate, rate)) &&
            (identical(other.flashSale, flashSale) ||
                const DeepCollectionEquality().equals(
                  other.flashSale,
                  flashSale,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(productCode) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(sourcePlatform) ^
      const DeepCollectionEquality().hash(platformProductId) ^
      const DeepCollectionEquality().hash(skuCode) ^
      const DeepCollectionEquality().hash(sellPriceCur) ^
      const DeepCollectionEquality().hash(sellPrice) ^
      const DeepCollectionEquality().hash(targetSellPrice) ^
      const DeepCollectionEquality().hash(targetOriginPrice) ^
      const DeepCollectionEquality().hash(targetSellCur) ^
      const DeepCollectionEquality().hash(sellQuantity) ^
      const DeepCollectionEquality().hash(skuCount) ^
      const DeepCollectionEquality().hash(marketingInfo) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(premiumBrandInfo) ^
      const DeepCollectionEquality().hash(sellPoints) ^
      const DeepCollectionEquality().hash(rate) ^
      const DeepCollectionEquality().hash(flashSale) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthHotProductV3Get$Response$Data$Records$ItemExtension
    on ProductNoAuthHotProductV3Get$Response$Data$Records$Item {
  ProductNoAuthHotProductV3Get$Response$Data$Records$Item copyWith({
    String? productCode,
    String? productName,
    ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Image? image,
    String? sourcePlatform,
    String? platformProductId,
    String? skuCode,
    String? sellPriceCur,
    String? sellPrice,
    String? targetSellPrice,
    String? targetOriginPrice,
    String? targetSellCur,
    String? sellQuantity,
    double? skuCount,
    String? marketingInfo,
    List<ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$Item>?
    tags,
    ProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
    String? rate,
    ProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSale?
    flashSale,
  }) {
    return ProductNoAuthHotProductV3Get$Response$Data$Records$Item(
      productCode: productCode ?? this.productCode,
      productName: productName ?? this.productName,
      image: image ?? this.image,
      sourcePlatform: sourcePlatform ?? this.sourcePlatform,
      platformProductId: platformProductId ?? this.platformProductId,
      skuCode: skuCode ?? this.skuCode,
      sellPriceCur: sellPriceCur ?? this.sellPriceCur,
      sellPrice: sellPrice ?? this.sellPrice,
      targetSellPrice: targetSellPrice ?? this.targetSellPrice,
      targetOriginPrice: targetOriginPrice ?? this.targetOriginPrice,
      targetSellCur: targetSellCur ?? this.targetSellCur,
      sellQuantity: sellQuantity ?? this.sellQuantity,
      skuCount: skuCount ?? this.skuCount,
      marketingInfo: marketingInfo ?? this.marketingInfo,
      tags: tags ?? this.tags,
      premiumBrandInfo: premiumBrandInfo ?? this.premiumBrandInfo,
      sellPoints: sellPoints ?? this.sellPoints,
      rate: rate ?? this.rate,
      flashSale: flashSale ?? this.flashSale,
    );
  }

  ProductNoAuthHotProductV3Get$Response$Data$Records$Item copyWithWrapped({
    Wrapped<String>? productCode,
    Wrapped<String>? productName,
    Wrapped<ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Image>?
    image,
    Wrapped<String>? sourcePlatform,
    Wrapped<String>? platformProductId,
    Wrapped<String>? skuCode,
    Wrapped<String>? sellPriceCur,
    Wrapped<String>? sellPrice,
    Wrapped<String>? targetSellPrice,
    Wrapped<String>? targetOriginPrice,
    Wrapped<String>? targetSellCur,
    Wrapped<String>? sellQuantity,
    Wrapped<double>? skuCount,
    Wrapped<String>? marketingInfo,
    Wrapped<
      List<ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$Item>
    >?
    tags,
    Wrapped<
      ProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
    Wrapped<String?>? rate,
    Wrapped<ProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSale?>?
    flashSale,
  }) {
    return ProductNoAuthHotProductV3Get$Response$Data$Records$Item(
      productCode: (productCode != null ? productCode.value : this.productCode),
      productName: (productName != null ? productName.value : this.productName),
      image: (image != null ? image.value : this.image),
      sourcePlatform: (sourcePlatform != null
          ? sourcePlatform.value
          : this.sourcePlatform),
      platformProductId: (platformProductId != null
          ? platformProductId.value
          : this.platformProductId),
      skuCode: (skuCode != null ? skuCode.value : this.skuCode),
      sellPriceCur: (sellPriceCur != null
          ? sellPriceCur.value
          : this.sellPriceCur),
      sellPrice: (sellPrice != null ? sellPrice.value : this.sellPrice),
      targetSellPrice: (targetSellPrice != null
          ? targetSellPrice.value
          : this.targetSellPrice),
      targetOriginPrice: (targetOriginPrice != null
          ? targetOriginPrice.value
          : this.targetOriginPrice),
      targetSellCur: (targetSellCur != null
          ? targetSellCur.value
          : this.targetSellCur),
      sellQuantity: (sellQuantity != null
          ? sellQuantity.value
          : this.sellQuantity),
      skuCount: (skuCount != null ? skuCount.value : this.skuCount),
      marketingInfo: (marketingInfo != null
          ? marketingInfo.value
          : this.marketingInfo),
      tags: (tags != null ? tags.value : this.tags),
      premiumBrandInfo: (premiumBrandInfo != null
          ? premiumBrandInfo.value
          : this.premiumBrandInfo),
      sellPoints: (sellPoints != null ? sellPoints.value : this.sellPoints),
      rate: (rate != null ? rate.value : this.rate),
      flashSale: (flashSale != null ? flashSale.value : this.flashSale),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$Item {
  const ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$Item({
    required this.width,
    required this.height,
    required this.url,
  });

  factory ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$ItemToJson(
        this,
      );

  @JsonKey(name: 'width')
  final double width;
  @JsonKey(name: 'height')
  final double height;
  @JsonKey(name: 'url')
  final String url;
  static const fromJsonFactory =
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$Item &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$ItemExtension
    on ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$Item {
  ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$Item copyWith({
    double? width,
    double? height,
    String? url,
  }) {
    return ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$Item
  copyWithWrapped({
    Wrapped<double>? width,
    Wrapped<double>? height,
    Wrapped<String>? url,
  }) {
    return ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$Item {
  const ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$Item({
    required this.videoUrl,
    required this.vodUrl,
    required this.previewUrl,
    required this.width,
    required this.height,
  });

  factory ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$ItemToJson(
        this,
      );

  @JsonKey(name: 'videoUrl')
  final String videoUrl;
  @JsonKey(name: 'vodUrl')
  final String vodUrl;
  @JsonKey(name: 'previewUrl')
  final String previewUrl;
  @JsonKey(name: 'width')
  final double width;
  @JsonKey(name: 'height')
  final double height;
  static const fromJsonFactory =
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$Item &&
            (identical(other.videoUrl, videoUrl) ||
                const DeepCollectionEquality().equals(
                  other.videoUrl,
                  videoUrl,
                )) &&
            (identical(other.vodUrl, vodUrl) ||
                const DeepCollectionEquality().equals(other.vodUrl, vodUrl)) &&
            (identical(other.previewUrl, previewUrl) ||
                const DeepCollectionEquality().equals(
                  other.previewUrl,
                  previewUrl,
                )) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(videoUrl) ^
      const DeepCollectionEquality().hash(vodUrl) ^
      const DeepCollectionEquality().hash(previewUrl) ^
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$ItemExtension
    on ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$Item {
  ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$Item copyWith({
    String? videoUrl,
    String? vodUrl,
    String? previewUrl,
    double? width,
    double? height,
  }) {
    return ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$Item(
      videoUrl: videoUrl ?? this.videoUrl,
      vodUrl: vodUrl ?? this.vodUrl,
      previewUrl: previewUrl ?? this.previewUrl,
      width: width ?? this.width,
      height: height ?? this.height,
    );
  }

  ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$Item
  copyWithWrapped({
    Wrapped<String>? videoUrl,
    Wrapped<String>? vodUrl,
    Wrapped<String>? previewUrl,
    Wrapped<double>? width,
    Wrapped<double>? height,
  }) {
    return ProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$Item(
      videoUrl: (videoUrl != null ? videoUrl.value : this.videoUrl),
      vodUrl: (vodUrl != null ? vodUrl.value : this.vodUrl),
      previewUrl: (previewUrl != null ? previewUrl.value : this.previewUrl),
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$Item {
  const ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$Item({
    required this.width,
    required this.height,
    required this.url,
  });

  factory ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$ItemToJson(
        this,
      );

  @JsonKey(name: 'width')
  final double width;
  @JsonKey(name: 'height')
  final double height;
  @JsonKey(name: 'url')
  final String url;
  static const fromJsonFactory =
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$Item &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$ItemExtension
    on ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$Item {
  ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$Item
  copyWithWrapped({
    Wrapped<double>? width,
    Wrapped<double>? height,
    Wrapped<String>? url,
  }) {
    return ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$Item {
  const ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$Item({
    required this.width,
    required this.height,
    required this.url,
  });

  factory ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$ItemToJson(
        this,
      );

  @JsonKey(name: 'width')
  final double width;
  @JsonKey(name: 'height')
  final double height;
  @JsonKey(name: 'url')
  final String url;
  static const fromJsonFactory =
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$Item &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$ItemExtension
    on ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$Item {
  ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$Item copyWith({
    double? width,
    double? height,
    String? url,
  }) {
    return ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$Item
  copyWithWrapped({
    Wrapped<double>? width,
    Wrapped<double>? height,
    Wrapped<String>? url,
  }) {
    return ProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item {
  const ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item({
    required this.name,
    required this.type,
    required this.optionValues,
  });

  factory ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$ItemToJson(
        this,
      );

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'type')
  final double type;
  @JsonKey(name: 'optionValues')
  final List<
    ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
  >
  optionValues;
  static const fromJsonFactory =
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.optionValues, optionValues) ||
                const DeepCollectionEquality().equals(
                  other.optionValues,
                  optionValues,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(optionValues) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$ItemExtension
    on ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item {
  ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item
  copyWith({
    String? name,
    double? type,
    List<
      ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
    >?
    optionValues,
  }) {
    return ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item(
      name: name ?? this.name,
      type: type ?? this.type,
      optionValues: optionValues ?? this.optionValues,
    );
  }

  ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item
  copyWithWrapped({
    Wrapped<String>? name,
    Wrapped<double>? type,
    Wrapped<
      List<
        ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
      >
    >?
    optionValues,
  }) {
    return ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item(
      name: (name != null ? name.value : this.name),
      type: (type != null ? type.value : this.type),
      optionValues: (optionValues != null
          ? optionValues.value
          : this.optionValues),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$Item {
  const ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$Item({
    required this.name,
    required this.value,
  });

  factory ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$ItemToJson(
        this,
      );

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'value')
  final String value;
  static const fromJsonFactory =
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$Item &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(value) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$ItemExtension
    on ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$Item {
  ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$Item
  copyWith({String? name, String? value}) {
    return ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$Item(
      name: name ?? this.name,
      value: value ?? this.value,
    );
  }

  ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$Item
  copyWithWrapped({Wrapped<String>? name, Wrapped<String>? value}) {
    return ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$Item(
      name: (name != null ? name.value : this.name),
      value: (value != null ? value.value : this.value),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$Item {
  const ProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$Item({
    this.tagCode,
    this.tagImg,
  });

  factory ProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$ItemFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$ItemToJson(
        this,
      );

  @JsonKey(name: 'tagCode')
  final String? tagCode;
  @JsonKey(name: 'tagImg')
  final String? tagImg;
  static const fromJsonFactory =
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$Item &&
            (identical(other.tagCode, tagCode) ||
                const DeepCollectionEquality().equals(
                  other.tagCode,
                  tagCode,
                )) &&
            (identical(other.tagImg, tagImg) ||
                const DeepCollectionEquality().equals(other.tagImg, tagImg)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tagCode) ^
      const DeepCollectionEquality().hash(tagImg) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$ItemExtension
    on ProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$Item {
  ProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$Item copyWith({
    String? tagCode,
    String? tagImg,
  }) {
    return ProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagImg: tagImg ?? this.tagImg,
    );
  }

  ProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$Item
  copyWithWrapped({Wrapped<String?>? tagCode, Wrapped<String?>? tagImg}) {
    return ProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfo {
  const ProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode')
  final String? brandCode;
  @JsonKey(name: 'brandImg')
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfo &&
            (identical(other.brandCode, brandCode) ||
                const DeepCollectionEquality().equals(
                  other.brandCode,
                  brandCode,
                )) &&
            (identical(other.brandImg, brandImg) ||
                const DeepCollectionEquality().equals(
                  other.brandImg,
                  brandImg,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(brandCode) ^
      const DeepCollectionEquality().hash(brandImg) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfoExtension
    on ProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfo {
  ProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return ProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthAlbumProductGet$Response$Data$Records$Item {
  const ProductNoAuthAlbumProductGet$Response$Data$Records$Item({
    this.shopCode,
    this.productCode,
    this.productName,
    this.tenantCode,
    this.brandName,
    this.mainImg,
    this.subImg,
    this.mainVideo,
    this.imgCollection,
    this.textDetail,
    this.imgDetail,
    this.categoryId,
    this.productOptions,
    this.productAttrs,
    this.sourcePlatform,
    this.platformUrl,
    this.platformProductId,
    this.skuCode,
    this.sellPriceCur,
    this.sellPrice,
    this.targetSellPrice,
    this.targetSellCur,
    this.productFlag,
    this.marketingInfo,
    this.sellQuantity,
    this.targetOriginPrice,
    this.tags,
    this.premiumBrandInfo,
    this.sellPoints,
  });

  factory ProductNoAuthAlbumProductGet$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthAlbumProductGet$Response$Data$Records$ItemFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthAlbumProductGet$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthAlbumProductGet$Response$Data$Records$ItemToJson(this);

  @JsonKey(name: 'shopCode')
  final Object? shopCode;
  @JsonKey(name: 'productCode')
  final String? productCode;
  @JsonKey(name: 'productName')
  final String? productName;
  @JsonKey(name: 'tenantCode')
  final String? tenantCode;
  @JsonKey(name: 'brandName')
  final Object? brandName;
  @JsonKey(name: 'mainImg')
  final List<
    ProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$Item
  >?
  mainImg;
  @JsonKey(name: 'subImg')
  final Object? subImg;
  @JsonKey(name: 'mainVideo', defaultValue: <Object>[])
  final List<Object>? mainVideo;
  @JsonKey(name: 'imgCollection')
  final List<
    ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$Item
  >?
  imgCollection;
  @JsonKey(name: 'textDetail')
  final Object? textDetail;
  @JsonKey(name: 'imgDetail')
  final List<
    ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$Item
  >?
  imgDetail;
  @JsonKey(name: 'categoryId')
  final double? categoryId;
  @JsonKey(name: 'productOptions')
  final List<
    ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item
  >?
  productOptions;
  @JsonKey(name: 'productAttrs', defaultValue: <Object>[])
  final List<Object>? productAttrs;
  @JsonKey(name: 'sourcePlatform')
  final String? sourcePlatform;
  @JsonKey(name: 'platformUrl')
  final String? platformUrl;
  @JsonKey(name: 'platformProductId')
  final String? platformProductId;
  @JsonKey(name: 'skuCode')
  final String? skuCode;
  @JsonKey(name: 'sellPriceCur')
  final String? sellPriceCur;
  @JsonKey(name: 'sellPrice')
  final String? sellPrice;
  @JsonKey(name: 'targetSellPrice')
  final String? targetSellPrice;
  @JsonKey(name: 'targetSellCur')
  final String? targetSellCur;
  @JsonKey(name: 'productFlag')
  final String? productFlag;
  @JsonKey(name: 'marketingInfo')
  final String? marketingInfo;
  @JsonKey(name: 'sellQuantity')
  final String? sellQuantity;
  @JsonKey(name: 'targetOriginPrice')
  final String? targetOriginPrice;
  @JsonKey(name: 'tags')
  final List<ProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$Item>?
  tags;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  static const fromJsonFactory =
      _$ProductNoAuthAlbumProductGet$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthAlbumProductGet$Response$Data$Records$Item &&
            (identical(other.shopCode, shopCode) ||
                const DeepCollectionEquality().equals(
                  other.shopCode,
                  shopCode,
                )) &&
            (identical(other.productCode, productCode) ||
                const DeepCollectionEquality().equals(
                  other.productCode,
                  productCode,
                )) &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality().equals(
                  other.productName,
                  productName,
                )) &&
            (identical(other.tenantCode, tenantCode) ||
                const DeepCollectionEquality().equals(
                  other.tenantCode,
                  tenantCode,
                )) &&
            (identical(other.brandName, brandName) ||
                const DeepCollectionEquality().equals(
                  other.brandName,
                  brandName,
                )) &&
            (identical(other.mainImg, mainImg) ||
                const DeepCollectionEquality().equals(
                  other.mainImg,
                  mainImg,
                )) &&
            (identical(other.subImg, subImg) ||
                const DeepCollectionEquality().equals(other.subImg, subImg)) &&
            (identical(other.mainVideo, mainVideo) ||
                const DeepCollectionEquality().equals(
                  other.mainVideo,
                  mainVideo,
                )) &&
            (identical(other.imgCollection, imgCollection) ||
                const DeepCollectionEquality().equals(
                  other.imgCollection,
                  imgCollection,
                )) &&
            (identical(other.textDetail, textDetail) ||
                const DeepCollectionEquality().equals(
                  other.textDetail,
                  textDetail,
                )) &&
            (identical(other.imgDetail, imgDetail) ||
                const DeepCollectionEquality().equals(
                  other.imgDetail,
                  imgDetail,
                )) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality().equals(
                  other.categoryId,
                  categoryId,
                )) &&
            (identical(other.productOptions, productOptions) ||
                const DeepCollectionEquality().equals(
                  other.productOptions,
                  productOptions,
                )) &&
            (identical(other.productAttrs, productAttrs) ||
                const DeepCollectionEquality().equals(
                  other.productAttrs,
                  productAttrs,
                )) &&
            (identical(other.sourcePlatform, sourcePlatform) ||
                const DeepCollectionEquality().equals(
                  other.sourcePlatform,
                  sourcePlatform,
                )) &&
            (identical(other.platformUrl, platformUrl) ||
                const DeepCollectionEquality().equals(
                  other.platformUrl,
                  platformUrl,
                )) &&
            (identical(other.platformProductId, platformProductId) ||
                const DeepCollectionEquality().equals(
                  other.platformProductId,
                  platformProductId,
                )) &&
            (identical(other.skuCode, skuCode) ||
                const DeepCollectionEquality().equals(
                  other.skuCode,
                  skuCode,
                )) &&
            (identical(other.sellPriceCur, sellPriceCur) ||
                const DeepCollectionEquality().equals(
                  other.sellPriceCur,
                  sellPriceCur,
                )) &&
            (identical(other.sellPrice, sellPrice) ||
                const DeepCollectionEquality().equals(
                  other.sellPrice,
                  sellPrice,
                )) &&
            (identical(other.targetSellPrice, targetSellPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetSellPrice,
                  targetSellPrice,
                )) &&
            (identical(other.targetSellCur, targetSellCur) ||
                const DeepCollectionEquality().equals(
                  other.targetSellCur,
                  targetSellCur,
                )) &&
            (identical(other.productFlag, productFlag) ||
                const DeepCollectionEquality().equals(
                  other.productFlag,
                  productFlag,
                )) &&
            (identical(other.marketingInfo, marketingInfo) ||
                const DeepCollectionEquality().equals(
                  other.marketingInfo,
                  marketingInfo,
                )) &&
            (identical(other.sellQuantity, sellQuantity) ||
                const DeepCollectionEquality().equals(
                  other.sellQuantity,
                  sellQuantity,
                )) &&
            (identical(other.targetOriginPrice, targetOriginPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetOriginPrice,
                  targetOriginPrice,
                )) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.premiumBrandInfo, premiumBrandInfo) ||
                const DeepCollectionEquality().equals(
                  other.premiumBrandInfo,
                  premiumBrandInfo,
                )) &&
            (identical(other.sellPoints, sellPoints) ||
                const DeepCollectionEquality().equals(
                  other.sellPoints,
                  sellPoints,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(shopCode) ^
      const DeepCollectionEquality().hash(productCode) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(tenantCode) ^
      const DeepCollectionEquality().hash(brandName) ^
      const DeepCollectionEquality().hash(mainImg) ^
      const DeepCollectionEquality().hash(subImg) ^
      const DeepCollectionEquality().hash(mainVideo) ^
      const DeepCollectionEquality().hash(imgCollection) ^
      const DeepCollectionEquality().hash(textDetail) ^
      const DeepCollectionEquality().hash(imgDetail) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(productOptions) ^
      const DeepCollectionEquality().hash(productAttrs) ^
      const DeepCollectionEquality().hash(sourcePlatform) ^
      const DeepCollectionEquality().hash(platformUrl) ^
      const DeepCollectionEquality().hash(platformProductId) ^
      const DeepCollectionEquality().hash(skuCode) ^
      const DeepCollectionEquality().hash(sellPriceCur) ^
      const DeepCollectionEquality().hash(sellPrice) ^
      const DeepCollectionEquality().hash(targetSellPrice) ^
      const DeepCollectionEquality().hash(targetSellCur) ^
      const DeepCollectionEquality().hash(productFlag) ^
      const DeepCollectionEquality().hash(marketingInfo) ^
      const DeepCollectionEquality().hash(sellQuantity) ^
      const DeepCollectionEquality().hash(targetOriginPrice) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(premiumBrandInfo) ^
      const DeepCollectionEquality().hash(sellPoints) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthAlbumProductGet$Response$Data$Records$ItemExtension
    on ProductNoAuthAlbumProductGet$Response$Data$Records$Item {
  ProductNoAuthAlbumProductGet$Response$Data$Records$Item copyWith({
    Object? shopCode,
    String? productCode,
    String? productName,
    String? tenantCode,
    Object? brandName,
    List<ProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$Item>?
    mainImg,
    Object? subImg,
    List<Object>? mainVideo,
    List<
      ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$Item
    >?
    imgCollection,
    Object? textDetail,
    List<
      ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$Item
    >?
    imgDetail,
    double? categoryId,
    List<
      ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item
    >?
    productOptions,
    List<Object>? productAttrs,
    String? sourcePlatform,
    String? platformUrl,
    String? platformProductId,
    String? skuCode,
    String? sellPriceCur,
    String? sellPrice,
    String? targetSellPrice,
    String? targetSellCur,
    String? productFlag,
    String? marketingInfo,
    String? sellQuantity,
    String? targetOriginPrice,
    List<ProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$Item>?
    tags,
    ProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
  }) {
    return ProductNoAuthAlbumProductGet$Response$Data$Records$Item(
      shopCode: shopCode ?? this.shopCode,
      productCode: productCode ?? this.productCode,
      productName: productName ?? this.productName,
      tenantCode: tenantCode ?? this.tenantCode,
      brandName: brandName ?? this.brandName,
      mainImg: mainImg ?? this.mainImg,
      subImg: subImg ?? this.subImg,
      mainVideo: mainVideo ?? this.mainVideo,
      imgCollection: imgCollection ?? this.imgCollection,
      textDetail: textDetail ?? this.textDetail,
      imgDetail: imgDetail ?? this.imgDetail,
      categoryId: categoryId ?? this.categoryId,
      productOptions: productOptions ?? this.productOptions,
      productAttrs: productAttrs ?? this.productAttrs,
      sourcePlatform: sourcePlatform ?? this.sourcePlatform,
      platformUrl: platformUrl ?? this.platformUrl,
      platformProductId: platformProductId ?? this.platformProductId,
      skuCode: skuCode ?? this.skuCode,
      sellPriceCur: sellPriceCur ?? this.sellPriceCur,
      sellPrice: sellPrice ?? this.sellPrice,
      targetSellPrice: targetSellPrice ?? this.targetSellPrice,
      targetSellCur: targetSellCur ?? this.targetSellCur,
      productFlag: productFlag ?? this.productFlag,
      marketingInfo: marketingInfo ?? this.marketingInfo,
      sellQuantity: sellQuantity ?? this.sellQuantity,
      targetOriginPrice: targetOriginPrice ?? this.targetOriginPrice,
      tags: tags ?? this.tags,
      premiumBrandInfo: premiumBrandInfo ?? this.premiumBrandInfo,
      sellPoints: sellPoints ?? this.sellPoints,
    );
  }

  ProductNoAuthAlbumProductGet$Response$Data$Records$Item copyWithWrapped({
    Wrapped<Object?>? shopCode,
    Wrapped<String?>? productCode,
    Wrapped<String?>? productName,
    Wrapped<String?>? tenantCode,
    Wrapped<Object?>? brandName,
    Wrapped<
      List<
        ProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$Item
      >?
    >?
    mainImg,
    Wrapped<Object?>? subImg,
    Wrapped<List<Object>?>? mainVideo,
    Wrapped<
      List<
        ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$Item
      >?
    >?
    imgCollection,
    Wrapped<Object?>? textDetail,
    Wrapped<
      List<
        ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$Item
      >?
    >?
    imgDetail,
    Wrapped<double?>? categoryId,
    Wrapped<
      List<
        ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item
      >?
    >?
    productOptions,
    Wrapped<List<Object>?>? productAttrs,
    Wrapped<String?>? sourcePlatform,
    Wrapped<String?>? platformUrl,
    Wrapped<String?>? platformProductId,
    Wrapped<String?>? skuCode,
    Wrapped<String?>? sellPriceCur,
    Wrapped<String?>? sellPrice,
    Wrapped<String?>? targetSellPrice,
    Wrapped<String?>? targetSellCur,
    Wrapped<String?>? productFlag,
    Wrapped<String?>? marketingInfo,
    Wrapped<String?>? sellQuantity,
    Wrapped<String?>? targetOriginPrice,
    Wrapped<
      List<ProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$Item>?
    >?
    tags,
    Wrapped<
      ProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
  }) {
    return ProductNoAuthAlbumProductGet$Response$Data$Records$Item(
      shopCode: (shopCode != null ? shopCode.value : this.shopCode),
      productCode: (productCode != null ? productCode.value : this.productCode),
      productName: (productName != null ? productName.value : this.productName),
      tenantCode: (tenantCode != null ? tenantCode.value : this.tenantCode),
      brandName: (brandName != null ? brandName.value : this.brandName),
      mainImg: (mainImg != null ? mainImg.value : this.mainImg),
      subImg: (subImg != null ? subImg.value : this.subImg),
      mainVideo: (mainVideo != null ? mainVideo.value : this.mainVideo),
      imgCollection: (imgCollection != null
          ? imgCollection.value
          : this.imgCollection),
      textDetail: (textDetail != null ? textDetail.value : this.textDetail),
      imgDetail: (imgDetail != null ? imgDetail.value : this.imgDetail),
      categoryId: (categoryId != null ? categoryId.value : this.categoryId),
      productOptions: (productOptions != null
          ? productOptions.value
          : this.productOptions),
      productAttrs: (productAttrs != null
          ? productAttrs.value
          : this.productAttrs),
      sourcePlatform: (sourcePlatform != null
          ? sourcePlatform.value
          : this.sourcePlatform),
      platformUrl: (platformUrl != null ? platformUrl.value : this.platformUrl),
      platformProductId: (platformProductId != null
          ? platformProductId.value
          : this.platformProductId),
      skuCode: (skuCode != null ? skuCode.value : this.skuCode),
      sellPriceCur: (sellPriceCur != null
          ? sellPriceCur.value
          : this.sellPriceCur),
      sellPrice: (sellPrice != null ? sellPrice.value : this.sellPrice),
      targetSellPrice: (targetSellPrice != null
          ? targetSellPrice.value
          : this.targetSellPrice),
      targetSellCur: (targetSellCur != null
          ? targetSellCur.value
          : this.targetSellCur),
      productFlag: (productFlag != null ? productFlag.value : this.productFlag),
      marketingInfo: (marketingInfo != null
          ? marketingInfo.value
          : this.marketingInfo),
      sellQuantity: (sellQuantity != null
          ? sellQuantity.value
          : this.sellQuantity),
      targetOriginPrice: (targetOriginPrice != null
          ? targetOriginPrice.value
          : this.targetOriginPrice),
      tags: (tags != null ? tags.value : this.tags),
      premiumBrandInfo: (premiumBrandInfo != null
          ? premiumBrandInfo.value
          : this.premiumBrandInfo),
      sellPoints: (sellPoints != null ? sellPoints.value : this.sellPoints),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ShopNoAuthGetThirdShopGet$Response$Data$Records$Item {
  const ShopNoAuthGetThirdShopGet$Response$Data$Records$Item({
    required this.productCode,
    required this.productName,
    required this.image,
    required this.skuCode,
    required this.sellPriceCur,
    required this.sellPrice,
    required this.targetSellPrice,
    required this.targetSellCur,
    required this.sellQuantity,
    required this.marketingInfo,
    required this.targetOriginPrice,
    this.premiumBrandInfo,
    this.sellPoints,
  });

  factory ShopNoAuthGetThirdShopGet$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ShopNoAuthGetThirdShopGet$Response$Data$Records$ItemFromJson(json);

  static const toJsonFactory =
      _$ShopNoAuthGetThirdShopGet$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ShopNoAuthGetThirdShopGet$Response$Data$Records$ItemToJson(this);

  @JsonKey(name: 'productCode')
  final String productCode;
  @JsonKey(name: 'productName')
  final String productName;
  @JsonKey(name: 'image')
  final ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$Image image;
  @JsonKey(name: 'skuCode')
  final String skuCode;
  @JsonKey(name: 'sellPriceCur')
  final String sellPriceCur;
  @JsonKey(name: 'sellPrice')
  final String sellPrice;
  @JsonKey(name: 'targetSellPrice')
  final String targetSellPrice;
  @JsonKey(name: 'targetSellCur')
  final String targetSellCur;
  @JsonKey(name: 'sellQuantity')
  final String sellQuantity;
  @JsonKey(name: 'marketingInfo')
  final String marketingInfo;
  @JsonKey(name: 'targetOriginPrice')
  final String targetOriginPrice;
  @JsonKey(name: 'premiumBrandInfo')
  final ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  static const fromJsonFactory =
      _$ShopNoAuthGetThirdShopGet$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ShopNoAuthGetThirdShopGet$Response$Data$Records$Item &&
            (identical(other.productCode, productCode) ||
                const DeepCollectionEquality().equals(
                  other.productCode,
                  productCode,
                )) &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality().equals(
                  other.productName,
                  productName,
                )) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.skuCode, skuCode) ||
                const DeepCollectionEquality().equals(
                  other.skuCode,
                  skuCode,
                )) &&
            (identical(other.sellPriceCur, sellPriceCur) ||
                const DeepCollectionEquality().equals(
                  other.sellPriceCur,
                  sellPriceCur,
                )) &&
            (identical(other.sellPrice, sellPrice) ||
                const DeepCollectionEquality().equals(
                  other.sellPrice,
                  sellPrice,
                )) &&
            (identical(other.targetSellPrice, targetSellPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetSellPrice,
                  targetSellPrice,
                )) &&
            (identical(other.targetSellCur, targetSellCur) ||
                const DeepCollectionEquality().equals(
                  other.targetSellCur,
                  targetSellCur,
                )) &&
            (identical(other.sellQuantity, sellQuantity) ||
                const DeepCollectionEquality().equals(
                  other.sellQuantity,
                  sellQuantity,
                )) &&
            (identical(other.marketingInfo, marketingInfo) ||
                const DeepCollectionEquality().equals(
                  other.marketingInfo,
                  marketingInfo,
                )) &&
            (identical(other.targetOriginPrice, targetOriginPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetOriginPrice,
                  targetOriginPrice,
                )) &&
            (identical(other.premiumBrandInfo, premiumBrandInfo) ||
                const DeepCollectionEquality().equals(
                  other.premiumBrandInfo,
                  premiumBrandInfo,
                )) &&
            (identical(other.sellPoints, sellPoints) ||
                const DeepCollectionEquality().equals(
                  other.sellPoints,
                  sellPoints,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(productCode) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(skuCode) ^
      const DeepCollectionEquality().hash(sellPriceCur) ^
      const DeepCollectionEquality().hash(sellPrice) ^
      const DeepCollectionEquality().hash(targetSellPrice) ^
      const DeepCollectionEquality().hash(targetSellCur) ^
      const DeepCollectionEquality().hash(sellQuantity) ^
      const DeepCollectionEquality().hash(marketingInfo) ^
      const DeepCollectionEquality().hash(targetOriginPrice) ^
      const DeepCollectionEquality().hash(premiumBrandInfo) ^
      const DeepCollectionEquality().hash(sellPoints) ^
      runtimeType.hashCode;
}

extension $ShopNoAuthGetThirdShopGet$Response$Data$Records$ItemExtension
    on ShopNoAuthGetThirdShopGet$Response$Data$Records$Item {
  ShopNoAuthGetThirdShopGet$Response$Data$Records$Item copyWith({
    String? productCode,
    String? productName,
    ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$Image? image,
    String? skuCode,
    String? sellPriceCur,
    String? sellPrice,
    String? targetSellPrice,
    String? targetSellCur,
    String? sellQuantity,
    String? marketingInfo,
    String? targetOriginPrice,
    ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
  }) {
    return ShopNoAuthGetThirdShopGet$Response$Data$Records$Item(
      productCode: productCode ?? this.productCode,
      productName: productName ?? this.productName,
      image: image ?? this.image,
      skuCode: skuCode ?? this.skuCode,
      sellPriceCur: sellPriceCur ?? this.sellPriceCur,
      sellPrice: sellPrice ?? this.sellPrice,
      targetSellPrice: targetSellPrice ?? this.targetSellPrice,
      targetSellCur: targetSellCur ?? this.targetSellCur,
      sellQuantity: sellQuantity ?? this.sellQuantity,
      marketingInfo: marketingInfo ?? this.marketingInfo,
      targetOriginPrice: targetOriginPrice ?? this.targetOriginPrice,
      premiumBrandInfo: premiumBrandInfo ?? this.premiumBrandInfo,
      sellPoints: sellPoints ?? this.sellPoints,
    );
  }

  ShopNoAuthGetThirdShopGet$Response$Data$Records$Item copyWithWrapped({
    Wrapped<String>? productCode,
    Wrapped<String>? productName,
    Wrapped<ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$Image>? image,
    Wrapped<String>? skuCode,
    Wrapped<String>? sellPriceCur,
    Wrapped<String>? sellPrice,
    Wrapped<String>? targetSellPrice,
    Wrapped<String>? targetSellCur,
    Wrapped<String>? sellQuantity,
    Wrapped<String>? marketingInfo,
    Wrapped<String>? targetOriginPrice,
    Wrapped<
      ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
  }) {
    return ShopNoAuthGetThirdShopGet$Response$Data$Records$Item(
      productCode: (productCode != null ? productCode.value : this.productCode),
      productName: (productName != null ? productName.value : this.productName),
      image: (image != null ? image.value : this.image),
      skuCode: (skuCode != null ? skuCode.value : this.skuCode),
      sellPriceCur: (sellPriceCur != null
          ? sellPriceCur.value
          : this.sellPriceCur),
      sellPrice: (sellPrice != null ? sellPrice.value : this.sellPrice),
      targetSellPrice: (targetSellPrice != null
          ? targetSellPrice.value
          : this.targetSellPrice),
      targetSellCur: (targetSellCur != null
          ? targetSellCur.value
          : this.targetSellCur),
      sellQuantity: (sellQuantity != null
          ? sellQuantity.value
          : this.sellQuantity),
      marketingInfo: (marketingInfo != null
          ? marketingInfo.value
          : this.marketingInfo),
      targetOriginPrice: (targetOriginPrice != null
          ? targetOriginPrice.value
          : this.targetOriginPrice),
      premiumBrandInfo: (premiumBrandInfo != null
          ? premiumBrandInfo.value
          : this.premiumBrandInfo),
      sellPoints: (sellPoints != null ? sellPoints.value : this.sellPoints),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthKolProductGet$Response$Data$Item$MainImg$Item {
  const ProductNoAuthKolProductGet$Response$Data$Item$MainImg$Item({
    required this.width,
    required this.height,
    required this.url,
  });

  factory ProductNoAuthKolProductGet$Response$Data$Item$MainImg$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthKolProductGet$Response$Data$Item$MainImg$ItemFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductNoAuthKolProductGet$Response$Data$Item$MainImg$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthKolProductGet$Response$Data$Item$MainImg$ItemToJson(this);

  @JsonKey(name: 'width')
  final double width;
  @JsonKey(name: 'height')
  final double height;
  @JsonKey(name: 'url')
  final String url;
  static const fromJsonFactory =
      _$ProductNoAuthKolProductGet$Response$Data$Item$MainImg$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthKolProductGet$Response$Data$Item$MainImg$Item &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthKolProductGet$Response$Data$Item$MainImg$ItemExtension
    on ProductNoAuthKolProductGet$Response$Data$Item$MainImg$Item {
  ProductNoAuthKolProductGet$Response$Data$Item$MainImg$Item copyWith({
    double? width,
    double? height,
    String? url,
  }) {
    return ProductNoAuthKolProductGet$Response$Data$Item$MainImg$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductNoAuthKolProductGet$Response$Data$Item$MainImg$Item copyWithWrapped({
    Wrapped<double>? width,
    Wrapped<double>? height,
    Wrapped<String>? url,
  }) {
    return ProductNoAuthKolProductGet$Response$Data$Item$MainImg$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthKolProductGet$Response$Data$Item$MainVideo$Item {
  const ProductNoAuthKolProductGet$Response$Data$Item$MainVideo$Item({
    required this.videoUrl,
    required this.vodUrl,
    required this.previewUrl,
    required this.width,
    required this.height,
  });

  factory ProductNoAuthKolProductGet$Response$Data$Item$MainVideo$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthKolProductGet$Response$Data$Item$MainVideo$ItemFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductNoAuthKolProductGet$Response$Data$Item$MainVideo$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthKolProductGet$Response$Data$Item$MainVideo$ItemToJson(
        this,
      );

  @JsonKey(name: 'videoUrl')
  final String videoUrl;
  @JsonKey(name: 'vodUrl')
  final String vodUrl;
  @JsonKey(name: 'previewUrl')
  final String previewUrl;
  @JsonKey(name: 'width')
  final double width;
  @JsonKey(name: 'height')
  final double height;
  static const fromJsonFactory =
      _$ProductNoAuthKolProductGet$Response$Data$Item$MainVideo$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthKolProductGet$Response$Data$Item$MainVideo$Item &&
            (identical(other.videoUrl, videoUrl) ||
                const DeepCollectionEquality().equals(
                  other.videoUrl,
                  videoUrl,
                )) &&
            (identical(other.vodUrl, vodUrl) ||
                const DeepCollectionEquality().equals(other.vodUrl, vodUrl)) &&
            (identical(other.previewUrl, previewUrl) ||
                const DeepCollectionEquality().equals(
                  other.previewUrl,
                  previewUrl,
                )) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(videoUrl) ^
      const DeepCollectionEquality().hash(vodUrl) ^
      const DeepCollectionEquality().hash(previewUrl) ^
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthKolProductGet$Response$Data$Item$MainVideo$ItemExtension
    on ProductNoAuthKolProductGet$Response$Data$Item$MainVideo$Item {
  ProductNoAuthKolProductGet$Response$Data$Item$MainVideo$Item copyWith({
    String? videoUrl,
    String? vodUrl,
    String? previewUrl,
    double? width,
    double? height,
  }) {
    return ProductNoAuthKolProductGet$Response$Data$Item$MainVideo$Item(
      videoUrl: videoUrl ?? this.videoUrl,
      vodUrl: vodUrl ?? this.vodUrl,
      previewUrl: previewUrl ?? this.previewUrl,
      width: width ?? this.width,
      height: height ?? this.height,
    );
  }

  ProductNoAuthKolProductGet$Response$Data$Item$MainVideo$Item copyWithWrapped({
    Wrapped<String>? videoUrl,
    Wrapped<String>? vodUrl,
    Wrapped<String>? previewUrl,
    Wrapped<double>? width,
    Wrapped<double>? height,
  }) {
    return ProductNoAuthKolProductGet$Response$Data$Item$MainVideo$Item(
      videoUrl: (videoUrl != null ? videoUrl.value : this.videoUrl),
      vodUrl: (vodUrl != null ? vodUrl.value : this.vodUrl),
      previewUrl: (previewUrl != null ? previewUrl.value : this.previewUrl),
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$Item {
  const ProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$Item({
    required this.width,
    required this.height,
    required this.url,
  });

  factory ProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$ItemToJson(
        this,
      );

  @JsonKey(name: 'width')
  final double width;
  @JsonKey(name: 'height')
  final double height;
  @JsonKey(name: 'url')
  final String url;
  static const fromJsonFactory =
      _$ProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$Item &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$ItemExtension
    on ProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$Item {
  ProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$Item copyWith({
    double? width,
    double? height,
    String? url,
  }) {
    return ProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$Item
  copyWithWrapped({
    Wrapped<double>? width,
    Wrapped<double>? height,
    Wrapped<String>? url,
  }) {
    return ProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$Item {
  const ProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$Item({
    required this.width,
    required this.height,
    required this.url,
  });

  factory ProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$ItemFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$ItemToJson(
        this,
      );

  @JsonKey(name: 'width')
  final double width;
  @JsonKey(name: 'height')
  final double height;
  @JsonKey(name: 'url')
  final String url;
  static const fromJsonFactory =
      _$ProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$Item &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$ItemExtension
    on ProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$Item {
  ProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$Item copyWith({
    double? width,
    double? height,
    String? url,
  }) {
    return ProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$Item copyWithWrapped({
    Wrapped<double>? width,
    Wrapped<double>? height,
    Wrapped<String>? url,
  }) {
    return ProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item {
  const ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item({
    required this.name,
    required this.type,
    required this.optionValues,
  });

  factory ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$ItemToJson(
        this,
      );

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'type')
  final double type;
  @JsonKey(name: 'optionValues')
  final List<
    ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
  >
  optionValues;
  static const fromJsonFactory =
      _$ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.optionValues, optionValues) ||
                const DeepCollectionEquality().equals(
                  other.optionValues,
                  optionValues,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(optionValues) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$ItemExtension
    on ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item {
  ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item copyWith({
    String? name,
    double? type,
    List<
      ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
    >?
    optionValues,
  }) {
    return ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item(
      name: name ?? this.name,
      type: type ?? this.type,
      optionValues: optionValues ?? this.optionValues,
    );
  }

  ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item
  copyWithWrapped({
    Wrapped<String>? name,
    Wrapped<double>? type,
    Wrapped<
      List<
        ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
      >
    >?
    optionValues,
  }) {
    return ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item(
      name: (name != null ? name.value : this.name),
      type: (type != null ? type.value : this.type),
      optionValues: (optionValues != null
          ? optionValues.value
          : this.optionValues),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$Item {
  const ProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$Item({
    required this.name,
    required this.value,
  });

  factory ProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$ItemToJson(
        this,
      );

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'value')
  final String value;
  static const fromJsonFactory =
      _$ProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$Item &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(value) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$ItemExtension
    on ProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$Item {
  ProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$Item copyWith({
    String? name,
    String? value,
  }) {
    return ProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$Item(
      name: name ?? this.name,
      value: value ?? this.value,
    );
  }

  ProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$Item
  copyWithWrapped({Wrapped<String>? name, Wrapped<String>? value}) {
    return ProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$Item(
      name: (name != null ? name.value : this.name),
      value: (value != null ? value.value : this.value),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthKolProductGet$Response$Data$Item$Tags$Item {
  const ProductNoAuthKolProductGet$Response$Data$Item$Tags$Item({
    this.tagCode,
    this.tagImg,
  });

  factory ProductNoAuthKolProductGet$Response$Data$Item$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthKolProductGet$Response$Data$Item$Tags$ItemFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthKolProductGet$Response$Data$Item$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthKolProductGet$Response$Data$Item$Tags$ItemToJson(this);

  @JsonKey(name: 'tagCode')
  final String? tagCode;
  @JsonKey(name: 'tagImg')
  final String? tagImg;
  static const fromJsonFactory =
      _$ProductNoAuthKolProductGet$Response$Data$Item$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthKolProductGet$Response$Data$Item$Tags$Item &&
            (identical(other.tagCode, tagCode) ||
                const DeepCollectionEquality().equals(
                  other.tagCode,
                  tagCode,
                )) &&
            (identical(other.tagImg, tagImg) ||
                const DeepCollectionEquality().equals(other.tagImg, tagImg)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tagCode) ^
      const DeepCollectionEquality().hash(tagImg) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthKolProductGet$Response$Data$Item$Tags$ItemExtension
    on ProductNoAuthKolProductGet$Response$Data$Item$Tags$Item {
  ProductNoAuthKolProductGet$Response$Data$Item$Tags$Item copyWith({
    String? tagCode,
    String? tagImg,
  }) {
    return ProductNoAuthKolProductGet$Response$Data$Item$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagImg: tagImg ?? this.tagImg,
    );
  }

  ProductNoAuthKolProductGet$Response$Data$Item$Tags$Item copyWithWrapped({
    Wrapped<String?>? tagCode,
    Wrapped<String?>? tagImg,
  }) {
    return ProductNoAuthKolProductGet$Response$Data$Item$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfo {
  const ProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfoFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode')
  final String? brandCode;
  @JsonKey(name: 'brandImg')
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfo &&
            (identical(other.brandCode, brandCode) ||
                const DeepCollectionEquality().equals(
                  other.brandCode,
                  brandCode,
                )) &&
            (identical(other.brandImg, brandImg) ||
                const DeepCollectionEquality().equals(
                  other.brandImg,
                  brandImg,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(brandCode) ^
      const DeepCollectionEquality().hash(brandImg) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfoExtension
    on ProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfo {
  ProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfo copyWith({
    String? brandCode,
    String? brandImg,
  }) {
    return ProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthPremierProductGet$Response$Data$Records$Item {
  const ProductNoAuthPremierProductGet$Response$Data$Records$Item({
    this.shopCode,
    this.productCode,
    this.productName,
    this.tenantCode,
    this.brandName,
    this.mainImg,
    this.subImg,
    this.mainVideo,
    this.imgCollection,
    this.textDetail,
    this.imgDetail,
    this.categoryId,
    this.productOptions,
    this.productAttrs,
    this.sourcePlatform,
    this.platformUrl,
    this.platformProductId,
    this.skuCode,
    this.sellPriceCur,
    this.sellPrice,
    this.targetSellPrice,
    this.targetSellCur,
    this.productFlag,
    this.marketingInfo,
    this.sellQuantity,
    this.targetOriginPrice,
    this.tags,
    this.premiumBrandInfo,
    this.sellPoints,
  });

  factory ProductNoAuthPremierProductGet$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthPremierProductGet$Response$Data$Records$ItemFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthPremierProductGet$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthPremierProductGet$Response$Data$Records$ItemToJson(this);

  @JsonKey(name: 'shopCode')
  final Object? shopCode;
  @JsonKey(name: 'productCode')
  final String? productCode;
  @JsonKey(name: 'productName')
  final String? productName;
  @JsonKey(name: 'tenantCode')
  final String? tenantCode;
  @JsonKey(name: 'brandName')
  final Object? brandName;
  @JsonKey(name: 'mainImg')
  final List<
    ProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$Item
  >?
  mainImg;
  @JsonKey(name: 'subImg')
  final Object? subImg;
  @JsonKey(name: 'mainVideo', defaultValue: <Object>[])
  final List<Object>? mainVideo;
  @JsonKey(name: 'imgCollection')
  final List<
    ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$Item
  >?
  imgCollection;
  @JsonKey(name: 'textDetail')
  final Object? textDetail;
  @JsonKey(name: 'imgDetail')
  final List<
    ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$Item
  >?
  imgDetail;
  @JsonKey(name: 'categoryId')
  final double? categoryId;
  @JsonKey(name: 'productOptions')
  final List<
    ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item
  >?
  productOptions;
  @JsonKey(name: 'productAttrs', defaultValue: <Object>[])
  final List<Object>? productAttrs;
  @JsonKey(name: 'sourcePlatform')
  final String? sourcePlatform;
  @JsonKey(name: 'platformUrl')
  final String? platformUrl;
  @JsonKey(name: 'platformProductId')
  final String? platformProductId;
  @JsonKey(name: 'skuCode')
  final String? skuCode;
  @JsonKey(name: 'sellPriceCur')
  final String? sellPriceCur;
  @JsonKey(name: 'sellPrice')
  final String? sellPrice;
  @JsonKey(name: 'targetSellPrice')
  final String? targetSellPrice;
  @JsonKey(name: 'targetSellCur')
  final String? targetSellCur;
  @JsonKey(name: 'productFlag')
  final String? productFlag;
  @JsonKey(name: 'marketingInfo')
  final String? marketingInfo;
  @JsonKey(name: 'sellQuantity')
  final String? sellQuantity;
  @JsonKey(name: 'targetOriginPrice')
  final String? targetOriginPrice;
  @JsonKey(name: 'tags')
  final List<
    ProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$Item
  >?
  tags;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  static const fromJsonFactory =
      _$ProductNoAuthPremierProductGet$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthPremierProductGet$Response$Data$Records$Item &&
            (identical(other.shopCode, shopCode) ||
                const DeepCollectionEquality().equals(
                  other.shopCode,
                  shopCode,
                )) &&
            (identical(other.productCode, productCode) ||
                const DeepCollectionEquality().equals(
                  other.productCode,
                  productCode,
                )) &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality().equals(
                  other.productName,
                  productName,
                )) &&
            (identical(other.tenantCode, tenantCode) ||
                const DeepCollectionEquality().equals(
                  other.tenantCode,
                  tenantCode,
                )) &&
            (identical(other.brandName, brandName) ||
                const DeepCollectionEquality().equals(
                  other.brandName,
                  brandName,
                )) &&
            (identical(other.mainImg, mainImg) ||
                const DeepCollectionEquality().equals(
                  other.mainImg,
                  mainImg,
                )) &&
            (identical(other.subImg, subImg) ||
                const DeepCollectionEquality().equals(other.subImg, subImg)) &&
            (identical(other.mainVideo, mainVideo) ||
                const DeepCollectionEquality().equals(
                  other.mainVideo,
                  mainVideo,
                )) &&
            (identical(other.imgCollection, imgCollection) ||
                const DeepCollectionEquality().equals(
                  other.imgCollection,
                  imgCollection,
                )) &&
            (identical(other.textDetail, textDetail) ||
                const DeepCollectionEquality().equals(
                  other.textDetail,
                  textDetail,
                )) &&
            (identical(other.imgDetail, imgDetail) ||
                const DeepCollectionEquality().equals(
                  other.imgDetail,
                  imgDetail,
                )) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality().equals(
                  other.categoryId,
                  categoryId,
                )) &&
            (identical(other.productOptions, productOptions) ||
                const DeepCollectionEquality().equals(
                  other.productOptions,
                  productOptions,
                )) &&
            (identical(other.productAttrs, productAttrs) ||
                const DeepCollectionEquality().equals(
                  other.productAttrs,
                  productAttrs,
                )) &&
            (identical(other.sourcePlatform, sourcePlatform) ||
                const DeepCollectionEquality().equals(
                  other.sourcePlatform,
                  sourcePlatform,
                )) &&
            (identical(other.platformUrl, platformUrl) ||
                const DeepCollectionEquality().equals(
                  other.platformUrl,
                  platformUrl,
                )) &&
            (identical(other.platformProductId, platformProductId) ||
                const DeepCollectionEquality().equals(
                  other.platformProductId,
                  platformProductId,
                )) &&
            (identical(other.skuCode, skuCode) ||
                const DeepCollectionEquality().equals(
                  other.skuCode,
                  skuCode,
                )) &&
            (identical(other.sellPriceCur, sellPriceCur) ||
                const DeepCollectionEquality().equals(
                  other.sellPriceCur,
                  sellPriceCur,
                )) &&
            (identical(other.sellPrice, sellPrice) ||
                const DeepCollectionEquality().equals(
                  other.sellPrice,
                  sellPrice,
                )) &&
            (identical(other.targetSellPrice, targetSellPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetSellPrice,
                  targetSellPrice,
                )) &&
            (identical(other.targetSellCur, targetSellCur) ||
                const DeepCollectionEquality().equals(
                  other.targetSellCur,
                  targetSellCur,
                )) &&
            (identical(other.productFlag, productFlag) ||
                const DeepCollectionEquality().equals(
                  other.productFlag,
                  productFlag,
                )) &&
            (identical(other.marketingInfo, marketingInfo) ||
                const DeepCollectionEquality().equals(
                  other.marketingInfo,
                  marketingInfo,
                )) &&
            (identical(other.sellQuantity, sellQuantity) ||
                const DeepCollectionEquality().equals(
                  other.sellQuantity,
                  sellQuantity,
                )) &&
            (identical(other.targetOriginPrice, targetOriginPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetOriginPrice,
                  targetOriginPrice,
                )) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.premiumBrandInfo, premiumBrandInfo) ||
                const DeepCollectionEquality().equals(
                  other.premiumBrandInfo,
                  premiumBrandInfo,
                )) &&
            (identical(other.sellPoints, sellPoints) ||
                const DeepCollectionEquality().equals(
                  other.sellPoints,
                  sellPoints,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(shopCode) ^
      const DeepCollectionEquality().hash(productCode) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(tenantCode) ^
      const DeepCollectionEquality().hash(brandName) ^
      const DeepCollectionEquality().hash(mainImg) ^
      const DeepCollectionEquality().hash(subImg) ^
      const DeepCollectionEquality().hash(mainVideo) ^
      const DeepCollectionEquality().hash(imgCollection) ^
      const DeepCollectionEquality().hash(textDetail) ^
      const DeepCollectionEquality().hash(imgDetail) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(productOptions) ^
      const DeepCollectionEquality().hash(productAttrs) ^
      const DeepCollectionEquality().hash(sourcePlatform) ^
      const DeepCollectionEquality().hash(platformUrl) ^
      const DeepCollectionEquality().hash(platformProductId) ^
      const DeepCollectionEquality().hash(skuCode) ^
      const DeepCollectionEquality().hash(sellPriceCur) ^
      const DeepCollectionEquality().hash(sellPrice) ^
      const DeepCollectionEquality().hash(targetSellPrice) ^
      const DeepCollectionEquality().hash(targetSellCur) ^
      const DeepCollectionEquality().hash(productFlag) ^
      const DeepCollectionEquality().hash(marketingInfo) ^
      const DeepCollectionEquality().hash(sellQuantity) ^
      const DeepCollectionEquality().hash(targetOriginPrice) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(premiumBrandInfo) ^
      const DeepCollectionEquality().hash(sellPoints) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthPremierProductGet$Response$Data$Records$ItemExtension
    on ProductNoAuthPremierProductGet$Response$Data$Records$Item {
  ProductNoAuthPremierProductGet$Response$Data$Records$Item copyWith({
    Object? shopCode,
    String? productCode,
    String? productName,
    String? tenantCode,
    Object? brandName,
    List<
      ProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$Item
    >?
    mainImg,
    Object? subImg,
    List<Object>? mainVideo,
    List<
      ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$Item
    >?
    imgCollection,
    Object? textDetail,
    List<
      ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$Item
    >?
    imgDetail,
    double? categoryId,
    List<
      ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item
    >?
    productOptions,
    List<Object>? productAttrs,
    String? sourcePlatform,
    String? platformUrl,
    String? platformProductId,
    String? skuCode,
    String? sellPriceCur,
    String? sellPrice,
    String? targetSellPrice,
    String? targetSellCur,
    String? productFlag,
    String? marketingInfo,
    String? sellQuantity,
    String? targetOriginPrice,
    List<ProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$Item>?
    tags,
    ProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
  }) {
    return ProductNoAuthPremierProductGet$Response$Data$Records$Item(
      shopCode: shopCode ?? this.shopCode,
      productCode: productCode ?? this.productCode,
      productName: productName ?? this.productName,
      tenantCode: tenantCode ?? this.tenantCode,
      brandName: brandName ?? this.brandName,
      mainImg: mainImg ?? this.mainImg,
      subImg: subImg ?? this.subImg,
      mainVideo: mainVideo ?? this.mainVideo,
      imgCollection: imgCollection ?? this.imgCollection,
      textDetail: textDetail ?? this.textDetail,
      imgDetail: imgDetail ?? this.imgDetail,
      categoryId: categoryId ?? this.categoryId,
      productOptions: productOptions ?? this.productOptions,
      productAttrs: productAttrs ?? this.productAttrs,
      sourcePlatform: sourcePlatform ?? this.sourcePlatform,
      platformUrl: platformUrl ?? this.platformUrl,
      platformProductId: platformProductId ?? this.platformProductId,
      skuCode: skuCode ?? this.skuCode,
      sellPriceCur: sellPriceCur ?? this.sellPriceCur,
      sellPrice: sellPrice ?? this.sellPrice,
      targetSellPrice: targetSellPrice ?? this.targetSellPrice,
      targetSellCur: targetSellCur ?? this.targetSellCur,
      productFlag: productFlag ?? this.productFlag,
      marketingInfo: marketingInfo ?? this.marketingInfo,
      sellQuantity: sellQuantity ?? this.sellQuantity,
      targetOriginPrice: targetOriginPrice ?? this.targetOriginPrice,
      tags: tags ?? this.tags,
      premiumBrandInfo: premiumBrandInfo ?? this.premiumBrandInfo,
      sellPoints: sellPoints ?? this.sellPoints,
    );
  }

  ProductNoAuthPremierProductGet$Response$Data$Records$Item copyWithWrapped({
    Wrapped<Object?>? shopCode,
    Wrapped<String?>? productCode,
    Wrapped<String?>? productName,
    Wrapped<String?>? tenantCode,
    Wrapped<Object?>? brandName,
    Wrapped<
      List<
        ProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$Item
      >?
    >?
    mainImg,
    Wrapped<Object?>? subImg,
    Wrapped<List<Object>?>? mainVideo,
    Wrapped<
      List<
        ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$Item
      >?
    >?
    imgCollection,
    Wrapped<Object?>? textDetail,
    Wrapped<
      List<
        ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$Item
      >?
    >?
    imgDetail,
    Wrapped<double?>? categoryId,
    Wrapped<
      List<
        ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item
      >?
    >?
    productOptions,
    Wrapped<List<Object>?>? productAttrs,
    Wrapped<String?>? sourcePlatform,
    Wrapped<String?>? platformUrl,
    Wrapped<String?>? platformProductId,
    Wrapped<String?>? skuCode,
    Wrapped<String?>? sellPriceCur,
    Wrapped<String?>? sellPrice,
    Wrapped<String?>? targetSellPrice,
    Wrapped<String?>? targetSellCur,
    Wrapped<String?>? productFlag,
    Wrapped<String?>? marketingInfo,
    Wrapped<String?>? sellQuantity,
    Wrapped<String?>? targetOriginPrice,
    Wrapped<
      List<ProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$Item>?
    >?
    tags,
    Wrapped<
      ProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
  }) {
    return ProductNoAuthPremierProductGet$Response$Data$Records$Item(
      shopCode: (shopCode != null ? shopCode.value : this.shopCode),
      productCode: (productCode != null ? productCode.value : this.productCode),
      productName: (productName != null ? productName.value : this.productName),
      tenantCode: (tenantCode != null ? tenantCode.value : this.tenantCode),
      brandName: (brandName != null ? brandName.value : this.brandName),
      mainImg: (mainImg != null ? mainImg.value : this.mainImg),
      subImg: (subImg != null ? subImg.value : this.subImg),
      mainVideo: (mainVideo != null ? mainVideo.value : this.mainVideo),
      imgCollection: (imgCollection != null
          ? imgCollection.value
          : this.imgCollection),
      textDetail: (textDetail != null ? textDetail.value : this.textDetail),
      imgDetail: (imgDetail != null ? imgDetail.value : this.imgDetail),
      categoryId: (categoryId != null ? categoryId.value : this.categoryId),
      productOptions: (productOptions != null
          ? productOptions.value
          : this.productOptions),
      productAttrs: (productAttrs != null
          ? productAttrs.value
          : this.productAttrs),
      sourcePlatform: (sourcePlatform != null
          ? sourcePlatform.value
          : this.sourcePlatform),
      platformUrl: (platformUrl != null ? platformUrl.value : this.platformUrl),
      platformProductId: (platformProductId != null
          ? platformProductId.value
          : this.platformProductId),
      skuCode: (skuCode != null ? skuCode.value : this.skuCode),
      sellPriceCur: (sellPriceCur != null
          ? sellPriceCur.value
          : this.sellPriceCur),
      sellPrice: (sellPrice != null ? sellPrice.value : this.sellPrice),
      targetSellPrice: (targetSellPrice != null
          ? targetSellPrice.value
          : this.targetSellPrice),
      targetSellCur: (targetSellCur != null
          ? targetSellCur.value
          : this.targetSellCur),
      productFlag: (productFlag != null ? productFlag.value : this.productFlag),
      marketingInfo: (marketingInfo != null
          ? marketingInfo.value
          : this.marketingInfo),
      sellQuantity: (sellQuantity != null
          ? sellQuantity.value
          : this.sellQuantity),
      targetOriginPrice: (targetOriginPrice != null
          ? targetOriginPrice.value
          : this.targetOriginPrice),
      tags: (tags != null ? tags.value : this.tags),
      premiumBrandInfo: (premiumBrandInfo != null
          ? premiumBrandInfo.value
          : this.premiumBrandInfo),
      sellPoints: (sellPoints != null ? sellPoints.value : this.sellPoints),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item {
  const RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item({
    required this.categoryName,
    required this.productInfos,
    required this.recommendationReason,
  });

  factory RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$ItemToJson(
        this,
      );

  @JsonKey(name: 'categoryName')
  final String categoryName;
  @JsonKey(name: 'productInfos')
  final List<
    RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item
  >
  productInfos;
  @JsonKey(name: 'recommendationReason')
  final String recommendationReason;
  static const fromJsonFactory =
      _$RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality().equals(
                  other.categoryName,
                  categoryName,
                )) &&
            (identical(other.productInfos, productInfos) ||
                const DeepCollectionEquality().equals(
                  other.productInfos,
                  productInfos,
                )) &&
            (identical(other.recommendationReason, recommendationReason) ||
                const DeepCollectionEquality().equals(
                  other.recommendationReason,
                  recommendationReason,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(categoryName) ^
      const DeepCollectionEquality().hash(productInfos) ^
      const DeepCollectionEquality().hash(recommendationReason) ^
      runtimeType.hashCode;
}

extension $RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$ItemExtension
    on RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item {
  RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item
  copyWith({
    String? categoryName,
    List<
      RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item
    >?
    productInfos,
    String? recommendationReason,
  }) {
    return RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item(
      categoryName: categoryName ?? this.categoryName,
      productInfos: productInfos ?? this.productInfos,
      recommendationReason: recommendationReason ?? this.recommendationReason,
    );
  }

  RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item
  copyWithWrapped({
    Wrapped<String>? categoryName,
    Wrapped<
      List<
        RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item
      >
    >?
    productInfos,
    Wrapped<String>? recommendationReason,
  }) {
    return RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item(
      categoryName: (categoryName != null
          ? categoryName.value
          : this.categoryName),
      productInfos: (productInfos != null
          ? productInfos.value
          : this.productInfos),
      recommendationReason: (recommendationReason != null
          ? recommendationReason.value
          : this.recommendationReason),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RecommendNoAuthCategoryPost$Response$Data$Records$Item {
  const RecommendNoAuthCategoryPost$Response$Data$Records$Item({
    required this.productCode,
    required this.productName,
    required this.image,
    required this.skuCode,
    required this.sellPriceCur,
    required this.sellPrice,
    required this.targetSellPrice,
    required this.targetSellCur,
    required this.sellQuantity,
    required this.skuCount,
    required this.tags,
    this.premiumBrandInfo,
    this.sellPoints,
  });

  factory RecommendNoAuthCategoryPost$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$RecommendNoAuthCategoryPost$Response$Data$Records$ItemFromJson(json);

  static const toJsonFactory =
      _$RecommendNoAuthCategoryPost$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$RecommendNoAuthCategoryPost$Response$Data$Records$ItemToJson(this);

  @JsonKey(name: 'productCode')
  final String productCode;
  @JsonKey(name: 'productName')
  final String productName;
  @JsonKey(name: 'image')
  final RecommendNoAuthCategoryPost$Response$Data$Records$Item$Image image;
  @JsonKey(name: 'skuCode')
  final String skuCode;
  @JsonKey(name: 'sellPriceCur')
  final String sellPriceCur;
  @JsonKey(name: 'sellPrice')
  final String sellPrice;
  @JsonKey(name: 'targetSellPrice')
  final String targetSellPrice;
  @JsonKey(name: 'targetSellCur')
  final String targetSellCur;
  @JsonKey(name: 'sellQuantity')
  final String sellQuantity;
  @JsonKey(name: 'skuCount')
  final int skuCount;
  @JsonKey(name: 'tags')
  final List<RecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$Item>
  tags;
  @JsonKey(name: 'premiumBrandInfo')
  final RecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  static const fromJsonFactory =
      _$RecommendNoAuthCategoryPost$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RecommendNoAuthCategoryPost$Response$Data$Records$Item &&
            (identical(other.productCode, productCode) ||
                const DeepCollectionEquality().equals(
                  other.productCode,
                  productCode,
                )) &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality().equals(
                  other.productName,
                  productName,
                )) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.skuCode, skuCode) ||
                const DeepCollectionEquality().equals(
                  other.skuCode,
                  skuCode,
                )) &&
            (identical(other.sellPriceCur, sellPriceCur) ||
                const DeepCollectionEquality().equals(
                  other.sellPriceCur,
                  sellPriceCur,
                )) &&
            (identical(other.sellPrice, sellPrice) ||
                const DeepCollectionEquality().equals(
                  other.sellPrice,
                  sellPrice,
                )) &&
            (identical(other.targetSellPrice, targetSellPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetSellPrice,
                  targetSellPrice,
                )) &&
            (identical(other.targetSellCur, targetSellCur) ||
                const DeepCollectionEquality().equals(
                  other.targetSellCur,
                  targetSellCur,
                )) &&
            (identical(other.sellQuantity, sellQuantity) ||
                const DeepCollectionEquality().equals(
                  other.sellQuantity,
                  sellQuantity,
                )) &&
            (identical(other.skuCount, skuCount) ||
                const DeepCollectionEquality().equals(
                  other.skuCount,
                  skuCount,
                )) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.premiumBrandInfo, premiumBrandInfo) ||
                const DeepCollectionEquality().equals(
                  other.premiumBrandInfo,
                  premiumBrandInfo,
                )) &&
            (identical(other.sellPoints, sellPoints) ||
                const DeepCollectionEquality().equals(
                  other.sellPoints,
                  sellPoints,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(productCode) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(skuCode) ^
      const DeepCollectionEquality().hash(sellPriceCur) ^
      const DeepCollectionEquality().hash(sellPrice) ^
      const DeepCollectionEquality().hash(targetSellPrice) ^
      const DeepCollectionEquality().hash(targetSellCur) ^
      const DeepCollectionEquality().hash(sellQuantity) ^
      const DeepCollectionEquality().hash(skuCount) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(premiumBrandInfo) ^
      const DeepCollectionEquality().hash(sellPoints) ^
      runtimeType.hashCode;
}

extension $RecommendNoAuthCategoryPost$Response$Data$Records$ItemExtension
    on RecommendNoAuthCategoryPost$Response$Data$Records$Item {
  RecommendNoAuthCategoryPost$Response$Data$Records$Item copyWith({
    String? productCode,
    String? productName,
    RecommendNoAuthCategoryPost$Response$Data$Records$Item$Image? image,
    String? skuCode,
    String? sellPriceCur,
    String? sellPrice,
    String? targetSellPrice,
    String? targetSellCur,
    String? sellQuantity,
    int? skuCount,
    List<RecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$Item>?
    tags,
    RecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
  }) {
    return RecommendNoAuthCategoryPost$Response$Data$Records$Item(
      productCode: productCode ?? this.productCode,
      productName: productName ?? this.productName,
      image: image ?? this.image,
      skuCode: skuCode ?? this.skuCode,
      sellPriceCur: sellPriceCur ?? this.sellPriceCur,
      sellPrice: sellPrice ?? this.sellPrice,
      targetSellPrice: targetSellPrice ?? this.targetSellPrice,
      targetSellCur: targetSellCur ?? this.targetSellCur,
      sellQuantity: sellQuantity ?? this.sellQuantity,
      skuCount: skuCount ?? this.skuCount,
      tags: tags ?? this.tags,
      premiumBrandInfo: premiumBrandInfo ?? this.premiumBrandInfo,
      sellPoints: sellPoints ?? this.sellPoints,
    );
  }

  RecommendNoAuthCategoryPost$Response$Data$Records$Item copyWithWrapped({
    Wrapped<String>? productCode,
    Wrapped<String>? productName,
    Wrapped<RecommendNoAuthCategoryPost$Response$Data$Records$Item$Image>?
    image,
    Wrapped<String>? skuCode,
    Wrapped<String>? sellPriceCur,
    Wrapped<String>? sellPrice,
    Wrapped<String>? targetSellPrice,
    Wrapped<String>? targetSellCur,
    Wrapped<String>? sellQuantity,
    Wrapped<int>? skuCount,
    Wrapped<
      List<RecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$Item>
    >?
    tags,
    Wrapped<
      RecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
  }) {
    return RecommendNoAuthCategoryPost$Response$Data$Records$Item(
      productCode: (productCode != null ? productCode.value : this.productCode),
      productName: (productName != null ? productName.value : this.productName),
      image: (image != null ? image.value : this.image),
      skuCode: (skuCode != null ? skuCode.value : this.skuCode),
      sellPriceCur: (sellPriceCur != null
          ? sellPriceCur.value
          : this.sellPriceCur),
      sellPrice: (sellPrice != null ? sellPrice.value : this.sellPrice),
      targetSellPrice: (targetSellPrice != null
          ? targetSellPrice.value
          : this.targetSellPrice),
      targetSellCur: (targetSellCur != null
          ? targetSellCur.value
          : this.targetSellCur),
      sellQuantity: (sellQuantity != null
          ? sellQuantity.value
          : this.sellQuantity),
      skuCount: (skuCount != null ? skuCount.value : this.skuCount),
      tags: (tags != null ? tags.value : this.tags),
      premiumBrandInfo: (premiumBrandInfo != null
          ? premiumBrandInfo.value
          : this.premiumBrandInfo),
      sellPoints: (sellPoints != null ? sellPoints.value : this.sellPoints),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RecommendNoAuthShopPost$Response$Data$Records$Item {
  const RecommendNoAuthShopPost$Response$Data$Records$Item({
    required this.productCode,
    required this.productName,
    required this.image,
    required this.skuCode,
    required this.sellPriceCur,
    required this.sellPrice,
    required this.targetSellPrice,
    required this.targetSellCur,
    required this.sellQuantity,
    required this.skuCount,
    required this.marketingInfo,
    required this.targetOriginPrice,
    required this.tags,
    this.premiumBrandInfo,
    this.sellPoints,
  });

  factory RecommendNoAuthShopPost$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$RecommendNoAuthShopPost$Response$Data$Records$ItemFromJson(json);

  static const toJsonFactory =
      _$RecommendNoAuthShopPost$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$RecommendNoAuthShopPost$Response$Data$Records$ItemToJson(this);

  @JsonKey(name: 'productCode')
  final String productCode;
  @JsonKey(name: 'productName')
  final String productName;
  @JsonKey(name: 'image')
  final RecommendNoAuthShopPost$Response$Data$Records$Item$Image image;
  @JsonKey(name: 'skuCode')
  final String skuCode;
  @JsonKey(name: 'sellPriceCur')
  final String sellPriceCur;
  @JsonKey(name: 'sellPrice')
  final String sellPrice;
  @JsonKey(name: 'targetSellPrice')
  final String targetSellPrice;
  @JsonKey(name: 'targetSellCur')
  final String targetSellCur;
  @JsonKey(name: 'sellQuantity')
  final String sellQuantity;
  @JsonKey(name: 'skuCount')
  final int skuCount;
  @JsonKey(name: 'marketingInfo')
  final String marketingInfo;
  @JsonKey(name: 'targetOriginPrice')
  final String targetOriginPrice;
  @JsonKey(name: 'tags')
  final List<RecommendNoAuthShopPost$Response$Data$Records$Item$Tags$Item> tags;
  @JsonKey(name: 'premiumBrandInfo')
  final RecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  static const fromJsonFactory =
      _$RecommendNoAuthShopPost$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RecommendNoAuthShopPost$Response$Data$Records$Item &&
            (identical(other.productCode, productCode) ||
                const DeepCollectionEquality().equals(
                  other.productCode,
                  productCode,
                )) &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality().equals(
                  other.productName,
                  productName,
                )) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.skuCode, skuCode) ||
                const DeepCollectionEquality().equals(
                  other.skuCode,
                  skuCode,
                )) &&
            (identical(other.sellPriceCur, sellPriceCur) ||
                const DeepCollectionEquality().equals(
                  other.sellPriceCur,
                  sellPriceCur,
                )) &&
            (identical(other.sellPrice, sellPrice) ||
                const DeepCollectionEquality().equals(
                  other.sellPrice,
                  sellPrice,
                )) &&
            (identical(other.targetSellPrice, targetSellPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetSellPrice,
                  targetSellPrice,
                )) &&
            (identical(other.targetSellCur, targetSellCur) ||
                const DeepCollectionEquality().equals(
                  other.targetSellCur,
                  targetSellCur,
                )) &&
            (identical(other.sellQuantity, sellQuantity) ||
                const DeepCollectionEquality().equals(
                  other.sellQuantity,
                  sellQuantity,
                )) &&
            (identical(other.skuCount, skuCount) ||
                const DeepCollectionEquality().equals(
                  other.skuCount,
                  skuCount,
                )) &&
            (identical(other.marketingInfo, marketingInfo) ||
                const DeepCollectionEquality().equals(
                  other.marketingInfo,
                  marketingInfo,
                )) &&
            (identical(other.targetOriginPrice, targetOriginPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetOriginPrice,
                  targetOriginPrice,
                )) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.premiumBrandInfo, premiumBrandInfo) ||
                const DeepCollectionEquality().equals(
                  other.premiumBrandInfo,
                  premiumBrandInfo,
                )) &&
            (identical(other.sellPoints, sellPoints) ||
                const DeepCollectionEquality().equals(
                  other.sellPoints,
                  sellPoints,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(productCode) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(skuCode) ^
      const DeepCollectionEquality().hash(sellPriceCur) ^
      const DeepCollectionEquality().hash(sellPrice) ^
      const DeepCollectionEquality().hash(targetSellPrice) ^
      const DeepCollectionEquality().hash(targetSellCur) ^
      const DeepCollectionEquality().hash(sellQuantity) ^
      const DeepCollectionEquality().hash(skuCount) ^
      const DeepCollectionEquality().hash(marketingInfo) ^
      const DeepCollectionEquality().hash(targetOriginPrice) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(premiumBrandInfo) ^
      const DeepCollectionEquality().hash(sellPoints) ^
      runtimeType.hashCode;
}

extension $RecommendNoAuthShopPost$Response$Data$Records$ItemExtension
    on RecommendNoAuthShopPost$Response$Data$Records$Item {
  RecommendNoAuthShopPost$Response$Data$Records$Item copyWith({
    String? productCode,
    String? productName,
    RecommendNoAuthShopPost$Response$Data$Records$Item$Image? image,
    String? skuCode,
    String? sellPriceCur,
    String? sellPrice,
    String? targetSellPrice,
    String? targetSellCur,
    String? sellQuantity,
    int? skuCount,
    String? marketingInfo,
    String? targetOriginPrice,
    List<RecommendNoAuthShopPost$Response$Data$Records$Item$Tags$Item>? tags,
    RecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
  }) {
    return RecommendNoAuthShopPost$Response$Data$Records$Item(
      productCode: productCode ?? this.productCode,
      productName: productName ?? this.productName,
      image: image ?? this.image,
      skuCode: skuCode ?? this.skuCode,
      sellPriceCur: sellPriceCur ?? this.sellPriceCur,
      sellPrice: sellPrice ?? this.sellPrice,
      targetSellPrice: targetSellPrice ?? this.targetSellPrice,
      targetSellCur: targetSellCur ?? this.targetSellCur,
      sellQuantity: sellQuantity ?? this.sellQuantity,
      skuCount: skuCount ?? this.skuCount,
      marketingInfo: marketingInfo ?? this.marketingInfo,
      targetOriginPrice: targetOriginPrice ?? this.targetOriginPrice,
      tags: tags ?? this.tags,
      premiumBrandInfo: premiumBrandInfo ?? this.premiumBrandInfo,
      sellPoints: sellPoints ?? this.sellPoints,
    );
  }

  RecommendNoAuthShopPost$Response$Data$Records$Item copyWithWrapped({
    Wrapped<String>? productCode,
    Wrapped<String>? productName,
    Wrapped<RecommendNoAuthShopPost$Response$Data$Records$Item$Image>? image,
    Wrapped<String>? skuCode,
    Wrapped<String>? sellPriceCur,
    Wrapped<String>? sellPrice,
    Wrapped<String>? targetSellPrice,
    Wrapped<String>? targetSellCur,
    Wrapped<String>? sellQuantity,
    Wrapped<int>? skuCount,
    Wrapped<String>? marketingInfo,
    Wrapped<String>? targetOriginPrice,
    Wrapped<List<RecommendNoAuthShopPost$Response$Data$Records$Item$Tags$Item>>?
    tags,
    Wrapped<
      RecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
  }) {
    return RecommendNoAuthShopPost$Response$Data$Records$Item(
      productCode: (productCode != null ? productCode.value : this.productCode),
      productName: (productName != null ? productName.value : this.productName),
      image: (image != null ? image.value : this.image),
      skuCode: (skuCode != null ? skuCode.value : this.skuCode),
      sellPriceCur: (sellPriceCur != null
          ? sellPriceCur.value
          : this.sellPriceCur),
      sellPrice: (sellPrice != null ? sellPrice.value : this.sellPrice),
      targetSellPrice: (targetSellPrice != null
          ? targetSellPrice.value
          : this.targetSellPrice),
      targetSellCur: (targetSellCur != null
          ? targetSellCur.value
          : this.targetSellCur),
      sellQuantity: (sellQuantity != null
          ? sellQuantity.value
          : this.sellQuantity),
      skuCount: (skuCount != null ? skuCount.value : this.skuCount),
      marketingInfo: (marketingInfo != null
          ? marketingInfo.value
          : this.marketingInfo),
      targetOriginPrice: (targetOriginPrice != null
          ? targetOriginPrice.value
          : this.targetOriginPrice),
      tags: (tags != null ? tags.value : this.tags),
      premiumBrandInfo: (premiumBrandInfo != null
          ? premiumBrandInfo.value
          : this.premiumBrandInfo),
      sellPoints: (sellPoints != null ? sellPoints.value : this.sellPoints),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RecommendNoAuthSimilarProductPost$Response$Data$Records$Item {
  const RecommendNoAuthSimilarProductPost$Response$Data$Records$Item({
    required this.productCode,
    required this.productName,
    required this.image,
    required this.skuCode,
    required this.sellPriceCur,
    required this.sellPrice,
    required this.targetSellPrice,
    required this.targetSellCur,
    required this.sellQuantity,
    required this.skuCount,
    required this.marketingInfo,
    required this.targetOriginPrice,
    required this.tags,
    this.premiumBrandInfo,
    this.sellPoints,
  });

  factory RecommendNoAuthSimilarProductPost$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$RecommendNoAuthSimilarProductPost$Response$Data$Records$ItemFromJson(
    json,
  );

  static const toJsonFactory =
      _$RecommendNoAuthSimilarProductPost$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$RecommendNoAuthSimilarProductPost$Response$Data$Records$ItemToJson(
        this,
      );

  @JsonKey(name: 'productCode')
  final String productCode;
  @JsonKey(name: 'productName')
  final String productName;
  @JsonKey(name: 'image')
  final RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Image
  image;
  @JsonKey(name: 'skuCode')
  final String skuCode;
  @JsonKey(name: 'sellPriceCur')
  final String sellPriceCur;
  @JsonKey(name: 'sellPrice')
  final String sellPrice;
  @JsonKey(name: 'targetSellPrice')
  final String targetSellPrice;
  @JsonKey(name: 'targetSellCur')
  final String targetSellCur;
  @JsonKey(name: 'sellQuantity')
  final String sellQuantity;
  @JsonKey(name: 'skuCount')
  final int skuCount;
  @JsonKey(name: 'marketingInfo')
  final String marketingInfo;
  @JsonKey(name: 'targetOriginPrice')
  final String targetOriginPrice;
  @JsonKey(name: 'tags')
  final List<
    RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$Item
  >
  tags;
  @JsonKey(name: 'premiumBrandInfo')
  final RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  static const fromJsonFactory =
      _$RecommendNoAuthSimilarProductPost$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is RecommendNoAuthSimilarProductPost$Response$Data$Records$Item &&
            (identical(other.productCode, productCode) ||
                const DeepCollectionEquality().equals(
                  other.productCode,
                  productCode,
                )) &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality().equals(
                  other.productName,
                  productName,
                )) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.skuCode, skuCode) ||
                const DeepCollectionEquality().equals(
                  other.skuCode,
                  skuCode,
                )) &&
            (identical(other.sellPriceCur, sellPriceCur) ||
                const DeepCollectionEquality().equals(
                  other.sellPriceCur,
                  sellPriceCur,
                )) &&
            (identical(other.sellPrice, sellPrice) ||
                const DeepCollectionEquality().equals(
                  other.sellPrice,
                  sellPrice,
                )) &&
            (identical(other.targetSellPrice, targetSellPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetSellPrice,
                  targetSellPrice,
                )) &&
            (identical(other.targetSellCur, targetSellCur) ||
                const DeepCollectionEquality().equals(
                  other.targetSellCur,
                  targetSellCur,
                )) &&
            (identical(other.sellQuantity, sellQuantity) ||
                const DeepCollectionEquality().equals(
                  other.sellQuantity,
                  sellQuantity,
                )) &&
            (identical(other.skuCount, skuCount) ||
                const DeepCollectionEquality().equals(
                  other.skuCount,
                  skuCount,
                )) &&
            (identical(other.marketingInfo, marketingInfo) ||
                const DeepCollectionEquality().equals(
                  other.marketingInfo,
                  marketingInfo,
                )) &&
            (identical(other.targetOriginPrice, targetOriginPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetOriginPrice,
                  targetOriginPrice,
                )) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.premiumBrandInfo, premiumBrandInfo) ||
                const DeepCollectionEquality().equals(
                  other.premiumBrandInfo,
                  premiumBrandInfo,
                )) &&
            (identical(other.sellPoints, sellPoints) ||
                const DeepCollectionEquality().equals(
                  other.sellPoints,
                  sellPoints,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(productCode) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(skuCode) ^
      const DeepCollectionEquality().hash(sellPriceCur) ^
      const DeepCollectionEquality().hash(sellPrice) ^
      const DeepCollectionEquality().hash(targetSellPrice) ^
      const DeepCollectionEquality().hash(targetSellCur) ^
      const DeepCollectionEquality().hash(sellQuantity) ^
      const DeepCollectionEquality().hash(skuCount) ^
      const DeepCollectionEquality().hash(marketingInfo) ^
      const DeepCollectionEquality().hash(targetOriginPrice) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(premiumBrandInfo) ^
      const DeepCollectionEquality().hash(sellPoints) ^
      runtimeType.hashCode;
}

extension $RecommendNoAuthSimilarProductPost$Response$Data$Records$ItemExtension
    on RecommendNoAuthSimilarProductPost$Response$Data$Records$Item {
  RecommendNoAuthSimilarProductPost$Response$Data$Records$Item copyWith({
    String? productCode,
    String? productName,
    RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Image? image,
    String? skuCode,
    String? sellPriceCur,
    String? sellPrice,
    String? targetSellPrice,
    String? targetSellCur,
    String? sellQuantity,
    int? skuCount,
    String? marketingInfo,
    String? targetOriginPrice,
    List<
      RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$Item
    >?
    tags,
    RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
  }) {
    return RecommendNoAuthSimilarProductPost$Response$Data$Records$Item(
      productCode: productCode ?? this.productCode,
      productName: productName ?? this.productName,
      image: image ?? this.image,
      skuCode: skuCode ?? this.skuCode,
      sellPriceCur: sellPriceCur ?? this.sellPriceCur,
      sellPrice: sellPrice ?? this.sellPrice,
      targetSellPrice: targetSellPrice ?? this.targetSellPrice,
      targetSellCur: targetSellCur ?? this.targetSellCur,
      sellQuantity: sellQuantity ?? this.sellQuantity,
      skuCount: skuCount ?? this.skuCount,
      marketingInfo: marketingInfo ?? this.marketingInfo,
      targetOriginPrice: targetOriginPrice ?? this.targetOriginPrice,
      tags: tags ?? this.tags,
      premiumBrandInfo: premiumBrandInfo ?? this.premiumBrandInfo,
      sellPoints: sellPoints ?? this.sellPoints,
    );
  }

  RecommendNoAuthSimilarProductPost$Response$Data$Records$Item copyWithWrapped({
    Wrapped<String>? productCode,
    Wrapped<String>? productName,
    Wrapped<RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Image>?
    image,
    Wrapped<String>? skuCode,
    Wrapped<String>? sellPriceCur,
    Wrapped<String>? sellPrice,
    Wrapped<String>? targetSellPrice,
    Wrapped<String>? targetSellCur,
    Wrapped<String>? sellQuantity,
    Wrapped<int>? skuCount,
    Wrapped<String>? marketingInfo,
    Wrapped<String>? targetOriginPrice,
    Wrapped<
      List<
        RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$Item
      >
    >?
    tags,
    Wrapped<
      RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
  }) {
    return RecommendNoAuthSimilarProductPost$Response$Data$Records$Item(
      productCode: (productCode != null ? productCode.value : this.productCode),
      productName: (productName != null ? productName.value : this.productName),
      image: (image != null ? image.value : this.image),
      skuCode: (skuCode != null ? skuCode.value : this.skuCode),
      sellPriceCur: (sellPriceCur != null
          ? sellPriceCur.value
          : this.sellPriceCur),
      sellPrice: (sellPrice != null ? sellPrice.value : this.sellPrice),
      targetSellPrice: (targetSellPrice != null
          ? targetSellPrice.value
          : this.targetSellPrice),
      targetSellCur: (targetSellCur != null
          ? targetSellCur.value
          : this.targetSellCur),
      sellQuantity: (sellQuantity != null
          ? sellQuantity.value
          : this.sellQuantity),
      skuCount: (skuCount != null ? skuCount.value : this.skuCount),
      marketingInfo: (marketingInfo != null
          ? marketingInfo.value
          : this.marketingInfo),
      targetOriginPrice: (targetOriginPrice != null
          ? targetOriginPrice.value
          : this.targetOriginPrice),
      tags: (tags != null ? tags.value : this.tags),
      premiumBrandInfo: (premiumBrandInfo != null
          ? premiumBrandInfo.value
          : this.premiumBrandInfo),
      sellPoints: (sellPoints != null ? sellPoints.value : this.sellPoints),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item {
  const CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item({
    required this.id,
    required this.parentId,
    required this.level,
    required this.showOrder,
    required this.name,
    required this.iconUrl,
    required this.categoryList,
    required this.brands,
  });

  factory CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$ItemToJson(
        this,
      );

  @JsonKey(name: 'id')
  final double id;
  @JsonKey(name: 'parentId')
  final double parentId;
  @JsonKey(name: 'level')
  final double level;
  @JsonKey(name: 'showOrder')
  final double showOrder;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'iconUrl')
  final String iconUrl;
  @JsonKey(name: 'categoryList')
  final List<
    CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item
  >
  categoryList;
  @JsonKey(name: 'brands', defaultValue: <Object>[])
  final List<Object> brands;
  static const fromJsonFactory =
      _$CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality().equals(
                  other.parentId,
                  parentId,
                )) &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)) &&
            (identical(other.showOrder, showOrder) ||
                const DeepCollectionEquality().equals(
                  other.showOrder,
                  showOrder,
                )) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.iconUrl, iconUrl) ||
                const DeepCollectionEquality().equals(
                  other.iconUrl,
                  iconUrl,
                )) &&
            (identical(other.categoryList, categoryList) ||
                const DeepCollectionEquality().equals(
                  other.categoryList,
                  categoryList,
                )) &&
            (identical(other.brands, brands) ||
                const DeepCollectionEquality().equals(other.brands, brands)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash(showOrder) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(iconUrl) ^
      const DeepCollectionEquality().hash(categoryList) ^
      const DeepCollectionEquality().hash(brands) ^
      runtimeType.hashCode;
}

extension $CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$ItemExtension
    on CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item {
  CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item
  copyWith({
    double? id,
    double? parentId,
    double? level,
    double? showOrder,
    String? name,
    String? iconUrl,
    List<
      CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item
    >?
    categoryList,
    List<Object>? brands,
  }) {
    return CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item(
      id: id ?? this.id,
      parentId: parentId ?? this.parentId,
      level: level ?? this.level,
      showOrder: showOrder ?? this.showOrder,
      name: name ?? this.name,
      iconUrl: iconUrl ?? this.iconUrl,
      categoryList: categoryList ?? this.categoryList,
      brands: brands ?? this.brands,
    );
  }

  CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item
  copyWithWrapped({
    Wrapped<double>? id,
    Wrapped<double>? parentId,
    Wrapped<double>? level,
    Wrapped<double>? showOrder,
    Wrapped<String>? name,
    Wrapped<String>? iconUrl,
    Wrapped<
      List<
        CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item
      >
    >?
    categoryList,
    Wrapped<List<Object>>? brands,
  }) {
    return CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item(
      id: (id != null ? id.value : this.id),
      parentId: (parentId != null ? parentId.value : this.parentId),
      level: (level != null ? level.value : this.level),
      showOrder: (showOrder != null ? showOrder.value : this.showOrder),
      name: (name != null ? name.value : this.name),
      iconUrl: (iconUrl != null ? iconUrl.value : this.iconUrl),
      categoryList: (categoryList != null
          ? categoryList.value
          : this.categoryList),
      brands: (brands != null ? brands.value : this.brands),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Image {
  const ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Image({
    required this.width,
    required this.height,
    required this.url,
  });

  factory ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Image.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$ImageFromJson(
        json,
      );

  static const toJsonFactory =
      _$ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$ImageToJson;
  Map<String, dynamic> toJson() =>
      _$ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$ImageToJson(
        this,
      );

  @JsonKey(name: 'width')
  final int width;
  @JsonKey(name: 'height')
  final int height;
  @JsonKey(name: 'url')
  final String url;
  static const fromJsonFactory =
      _$ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$ImageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Image &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$ImageExtension
    on ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Image {
  ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Image
  copyWith({int? width, int? height, String? url}) {
    return ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Image(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Image
  copyWithWrapped({
    Wrapped<int>? width,
    Wrapped<int>? height,
    Wrapped<String>? url,
  }) {
    return ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Image(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$Item {
  const ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$Item({
    required this.tagCode,
    required this.tagImg,
    required this.order,
    required this.frontShow,
  });

  factory ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$ItemToJson(
        this,
      );

  @JsonKey(name: 'tagCode')
  final String tagCode;
  @JsonKey(name: 'tagImg')
  final String tagImg;
  @JsonKey(name: 'order')
  final int order;
  @JsonKey(name: 'frontShow')
  final int frontShow;
  static const fromJsonFactory =
      _$ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$Item &&
            (identical(other.tagCode, tagCode) ||
                const DeepCollectionEquality().equals(
                  other.tagCode,
                  tagCode,
                )) &&
            (identical(other.tagImg, tagImg) ||
                const DeepCollectionEquality().equals(other.tagImg, tagImg)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.frontShow, frontShow) ||
                const DeepCollectionEquality().equals(
                  other.frontShow,
                  frontShow,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tagCode) ^
      const DeepCollectionEquality().hash(tagImg) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(frontShow) ^
      runtimeType.hashCode;
}

extension $ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$ItemExtension
    on ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$Item {
  ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$Item
  copyWith({String? tagCode, String? tagImg, int? order, int? frontShow}) {
    return ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagImg: tagImg ?? this.tagImg,
      order: order ?? this.order,
      frontShow: frontShow ?? this.frontShow,
    );
  }

  ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$Item
  copyWithWrapped({
    Wrapped<String>? tagCode,
    Wrapped<String>? tagImg,
    Wrapped<int>? order,
    Wrapped<int>? frontShow,
  }) {
    return ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
      order: (order != null ? order.value : this.order),
      frontShow: (frontShow != null ? frontShow.value : this.frontShow),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSale {
  const ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSale({
    this.activityCode,
    this.activityTitle,
    this.startTime,
    this.endTime,
    this.progressPercent,
    this.progressText,
    this.marketingIcon,
  });

  factory ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSale.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSaleFromJson(
        json,
      );

  static const toJsonFactory =
      _$ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSaleToJson;
  Map<String, dynamic> toJson() =>
      _$ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSaleToJson(
        this,
      );

  @JsonKey(name: 'activityCode')
  final String? activityCode;
  @JsonKey(name: 'activityTitle')
  final String? activityTitle;
  @JsonKey(name: 'startTime')
  final int? startTime;
  @JsonKey(name: 'endTime')
  final int? endTime;
  @JsonKey(name: 'progressPercent')
  final int? progressPercent;
  @JsonKey(name: 'progressText')
  final String? progressText;
  @JsonKey(name: 'marketingIcon')
  final String? marketingIcon;
  static const fromJsonFactory =
      _$ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSaleFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSale &&
            (identical(other.activityCode, activityCode) ||
                const DeepCollectionEquality().equals(
                  other.activityCode,
                  activityCode,
                )) &&
            (identical(other.activityTitle, activityTitle) ||
                const DeepCollectionEquality().equals(
                  other.activityTitle,
                  activityTitle,
                )) &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality().equals(
                  other.startTime,
                  startTime,
                )) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality().equals(
                  other.endTime,
                  endTime,
                )) &&
            (identical(other.progressPercent, progressPercent) ||
                const DeepCollectionEquality().equals(
                  other.progressPercent,
                  progressPercent,
                )) &&
            (identical(other.progressText, progressText) ||
                const DeepCollectionEquality().equals(
                  other.progressText,
                  progressText,
                )) &&
            (identical(other.marketingIcon, marketingIcon) ||
                const DeepCollectionEquality().equals(
                  other.marketingIcon,
                  marketingIcon,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(activityCode) ^
      const DeepCollectionEquality().hash(activityTitle) ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(endTime) ^
      const DeepCollectionEquality().hash(progressPercent) ^
      const DeepCollectionEquality().hash(progressText) ^
      const DeepCollectionEquality().hash(marketingIcon) ^
      runtimeType.hashCode;
}

extension $ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSaleExtension
    on ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSale {
  ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSale
  copyWith({
    String? activityCode,
    String? activityTitle,
    int? startTime,
    int? endTime,
    int? progressPercent,
    String? progressText,
    String? marketingIcon,
  }) {
    return ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSale(
      activityCode: activityCode ?? this.activityCode,
      activityTitle: activityTitle ?? this.activityTitle,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      progressPercent: progressPercent ?? this.progressPercent,
      progressText: progressText ?? this.progressText,
      marketingIcon: marketingIcon ?? this.marketingIcon,
    );
  }

  ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSale
  copyWithWrapped({
    Wrapped<String?>? activityCode,
    Wrapped<String?>? activityTitle,
    Wrapped<int?>? startTime,
    Wrapped<int?>? endTime,
    Wrapped<int?>? progressPercent,
    Wrapped<String?>? progressText,
    Wrapped<String?>? marketingIcon,
  }) {
    return ActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSale(
      activityCode: (activityCode != null
          ? activityCode.value
          : this.activityCode),
      activityTitle: (activityTitle != null
          ? activityTitle.value
          : this.activityTitle),
      startTime: (startTime != null ? startTime.value : this.startTime),
      endTime: (endTime != null ? endTime.value : this.endTime),
      progressPercent: (progressPercent != null
          ? progressPercent.value
          : this.progressPercent),
      progressText: (progressText != null
          ? progressText.value
          : this.progressText),
      marketingIcon: (marketingIcon != null
          ? marketingIcon.value
          : this.marketingIcon),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Image {
  const ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Image({
    this.width,
    this.height,
    this.url,
  });

  factory ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Image.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$ImageFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$ImageToJson;
  Map<String, dynamic> toJson() =>
      _$ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$ImageToJson(
        this,
      );

  @JsonKey(name: 'width')
  final int? width;
  @JsonKey(name: 'height')
  final int? height;
  @JsonKey(name: 'url')
  final String? url;
  static const fromJsonFactory =
      _$ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$ImageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Image &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$ImageExtension
    on ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Image {
  ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Image copyWith({
    int? width,
    int? height,
    String? url,
  }) {
    return ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Image(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Image
  copyWithWrapped({
    Wrapped<int?>? width,
    Wrapped<int?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Image(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$Item {
  const ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$Item({
    this.tagCode,
    this.tagImg,
    this.order,
    this.frontShow,
  });

  factory ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$ItemToJson(
        this,
      );

  @JsonKey(name: 'tagCode')
  final String? tagCode;
  @JsonKey(name: 'tagImg')
  final String? tagImg;
  @JsonKey(name: 'order')
  final int? order;
  @JsonKey(name: 'frontShow')
  final int? frontShow;
  static const fromJsonFactory =
      _$ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$Item &&
            (identical(other.tagCode, tagCode) ||
                const DeepCollectionEquality().equals(
                  other.tagCode,
                  tagCode,
                )) &&
            (identical(other.tagImg, tagImg) ||
                const DeepCollectionEquality().equals(other.tagImg, tagImg)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.frontShow, frontShow) ||
                const DeepCollectionEquality().equals(
                  other.frontShow,
                  frontShow,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tagCode) ^
      const DeepCollectionEquality().hash(tagImg) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(frontShow) ^
      runtimeType.hashCode;
}

extension $ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$ItemExtension
    on ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$Item {
  ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$Item
  copyWith({String? tagCode, String? tagImg, int? order, int? frontShow}) {
    return ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagImg: tagImg ?? this.tagImg,
      order: order ?? this.order,
      frontShow: frontShow ?? this.frontShow,
    );
  }

  ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$Item
  copyWithWrapped({
    Wrapped<String?>? tagCode,
    Wrapped<String?>? tagImg,
    Wrapped<int?>? order,
    Wrapped<int?>? frontShow,
  }) {
    return ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
      order: (order != null ? order.value : this.order),
      frontShow: (frontShow != null ? frontShow.value : this.frontShow),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfo {
  const ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode')
  final String? brandCode;
  @JsonKey(name: 'brandImg')
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfo &&
            (identical(other.brandCode, brandCode) ||
                const DeepCollectionEquality().equals(
                  other.brandCode,
                  brandCode,
                )) &&
            (identical(other.brandImg, brandImg) ||
                const DeepCollectionEquality().equals(
                  other.brandImg,
                  brandImg,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(brandCode) ^
      const DeepCollectionEquality().hash(brandImg) ^
      runtimeType.hashCode;
}

extension $ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfoExtension
    on ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfo {
  ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$Item {
  const ProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$Item({
    this.img,
    this.tabNormalColor,
    this.tabSelectedColor,
    this.tabsBackgroundColor,
  });

  factory ProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$ItemFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$ItemToJson(
        this,
      );

  @JsonKey(name: 'img')
  final String? img;
  @JsonKey(name: 'tabNormalColor')
  final String? tabNormalColor;
  @JsonKey(name: 'tabSelectedColor')
  final String? tabSelectedColor;
  @JsonKey(name: 'tabsBackgroundColor')
  final String? tabsBackgroundColor;
  static const fromJsonFactory =
      _$ProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$Item &&
            (identical(other.img, img) ||
                const DeepCollectionEquality().equals(other.img, img)) &&
            (identical(other.tabNormalColor, tabNormalColor) ||
                const DeepCollectionEquality().equals(
                  other.tabNormalColor,
                  tabNormalColor,
                )) &&
            (identical(other.tabSelectedColor, tabSelectedColor) ||
                const DeepCollectionEquality().equals(
                  other.tabSelectedColor,
                  tabSelectedColor,
                )) &&
            (identical(other.tabsBackgroundColor, tabsBackgroundColor) ||
                const DeepCollectionEquality().equals(
                  other.tabsBackgroundColor,
                  tabsBackgroundColor,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(img) ^
      const DeepCollectionEquality().hash(tabNormalColor) ^
      const DeepCollectionEquality().hash(tabSelectedColor) ^
      const DeepCollectionEquality().hash(tabsBackgroundColor) ^
      runtimeType.hashCode;
}

extension $ProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$ItemExtension
    on ProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$Item {
  ProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$Item copyWith({
    String? img,
    String? tabNormalColor,
    String? tabSelectedColor,
    String? tabsBackgroundColor,
  }) {
    return ProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$Item(
      img: img ?? this.img,
      tabNormalColor: tabNormalColor ?? this.tabNormalColor,
      tabSelectedColor: tabSelectedColor ?? this.tabSelectedColor,
      tabsBackgroundColor: tabsBackgroundColor ?? this.tabsBackgroundColor,
    );
  }

  ProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$Item
  copyWithWrapped({
    Wrapped<String?>? img,
    Wrapped<String?>? tabNormalColor,
    Wrapped<String?>? tabSelectedColor,
    Wrapped<String?>? tabsBackgroundColor,
  }) {
    return ProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$Item(
      img: (img != null ? img.value : this.img),
      tabNormalColor: (tabNormalColor != null
          ? tabNormalColor.value
          : this.tabNormalColor),
      tabSelectedColor: (tabSelectedColor != null
          ? tabSelectedColor.value
          : this.tabSelectedColor),
      tabsBackgroundColor: (tabsBackgroundColor != null
          ? tabsBackgroundColor.value
          : this.tabsBackgroundColor),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthPushProductGet$Response$Data$Records$Item$Image {
  const ProductNoAuthPushProductGet$Response$Data$Records$Item$Image({
    required this.width,
    required this.height,
    required this.url,
  });

  factory ProductNoAuthPushProductGet$Response$Data$Records$Item$Image.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthPushProductGet$Response$Data$Records$Item$ImageFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductNoAuthPushProductGet$Response$Data$Records$Item$ImageToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthPushProductGet$Response$Data$Records$Item$ImageToJson(
        this,
      );

  @JsonKey(name: 'width')
  final int width;
  @JsonKey(name: 'height')
  final int height;
  @JsonKey(name: 'url')
  final String url;
  static const fromJsonFactory =
      _$ProductNoAuthPushProductGet$Response$Data$Records$Item$ImageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthPushProductGet$Response$Data$Records$Item$Image &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthPushProductGet$Response$Data$Records$Item$ImageExtension
    on ProductNoAuthPushProductGet$Response$Data$Records$Item$Image {
  ProductNoAuthPushProductGet$Response$Data$Records$Item$Image copyWith({
    int? width,
    int? height,
    String? url,
  }) {
    return ProductNoAuthPushProductGet$Response$Data$Records$Item$Image(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductNoAuthPushProductGet$Response$Data$Records$Item$Image copyWithWrapped({
    Wrapped<int>? width,
    Wrapped<int>? height,
    Wrapped<String>? url,
  }) {
    return ProductNoAuthPushProductGet$Response$Data$Records$Item$Image(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$Item {
  const ProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$Item({
    this.tagCode,
    this.tagImg,
  });

  factory ProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$ItemToJson(
        this,
      );

  @JsonKey(name: 'tagCode')
  final String? tagCode;
  @JsonKey(name: 'tagImg')
  final String? tagImg;
  static const fromJsonFactory =
      _$ProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$Item &&
            (identical(other.tagCode, tagCode) ||
                const DeepCollectionEquality().equals(
                  other.tagCode,
                  tagCode,
                )) &&
            (identical(other.tagImg, tagImg) ||
                const DeepCollectionEquality().equals(other.tagImg, tagImg)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tagCode) ^
      const DeepCollectionEquality().hash(tagImg) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$ItemExtension
    on ProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$Item {
  ProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$Item copyWith({
    String? tagCode,
    String? tagImg,
  }) {
    return ProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagImg: tagImg ?? this.tagImg,
    );
  }

  ProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$Item
  copyWithWrapped({Wrapped<String?>? tagCode, Wrapped<String?>? tagImg}) {
    return ProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfo {
  const ProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode')
  final String? brandCode;
  @JsonKey(name: 'brandImg')
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfo &&
            (identical(other.brandCode, brandCode) ||
                const DeepCollectionEquality().equals(
                  other.brandCode,
                  brandCode,
                )) &&
            (identical(other.brandImg, brandImg) ||
                const DeepCollectionEquality().equals(
                  other.brandImg,
                  brandImg,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(brandCode) ^
      const DeepCollectionEquality().hash(brandImg) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfoExtension
    on ProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfo {
  ProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return ProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item {
  const ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item({
    required this.value,
    required this.enValue,
    required this.image,
    required this.imageWidth,
    required this.imageHeight,
  });

  factory ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemToJson(
        this,
      );

  @JsonKey(name: 'value')
  final String value;
  @JsonKey(name: 'enValue')
  final String enValue;
  @JsonKey(name: 'image')
  final String image;
  @JsonKey(name: 'imageWidth')
  final int imageWidth;
  @JsonKey(name: 'imageHeight')
  final int imageHeight;
  static const fromJsonFactory =
      _$ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.enValue, enValue) ||
                const DeepCollectionEquality().equals(
                  other.enValue,
                  enValue,
                )) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.imageWidth, imageWidth) ||
                const DeepCollectionEquality().equals(
                  other.imageWidth,
                  imageWidth,
                )) &&
            (identical(other.imageHeight, imageHeight) ||
                const DeepCollectionEquality().equals(
                  other.imageHeight,
                  imageHeight,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(enValue) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(imageWidth) ^
      const DeepCollectionEquality().hash(imageHeight) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemExtension
    on
        ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item {
  ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
  copyWith({
    String? value,
    String? enValue,
    String? image,
    int? imageWidth,
    int? imageHeight,
  }) {
    return ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item(
      value: value ?? this.value,
      enValue: enValue ?? this.enValue,
      image: image ?? this.image,
      imageWidth: imageWidth ?? this.imageWidth,
      imageHeight: imageHeight ?? this.imageHeight,
    );
  }

  ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
  copyWithWrapped({
    Wrapped<String>? value,
    Wrapped<String>? enValue,
    Wrapped<String>? image,
    Wrapped<int>? imageWidth,
    Wrapped<int>? imageHeight,
  }) {
    return ProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item(
      value: (value != null ? value.value : this.value),
      enValue: (enValue != null ? enValue.value : this.enValue),
      image: (image != null ? image.value : this.image),
      imageWidth: (imageWidth != null ? imageWidth.value : this.imageWidth),
      imageHeight: (imageHeight != null ? imageHeight.value : this.imageHeight),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$Item {
  const ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$Item({
    required this.width,
    required this.height,
    required this.url,
  });

  factory ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$ItemToJson(
        this,
      );

  @JsonKey(name: 'width')
  final double width;
  @JsonKey(name: 'height')
  final double height;
  @JsonKey(name: 'url')
  final String url;
  static const fromJsonFactory =
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$Item &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$ItemExtension
    on ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$Item {
  ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$Item
  copyWithWrapped({
    Wrapped<double>? width,
    Wrapped<double>? height,
    Wrapped<String>? url,
  }) {
    return ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$Item {
  const ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$Item({
    this.videoUrl,
    this.vodUrl,
    this.previewUrl,
    this.width,
    this.height,
  });

  factory ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$ItemToJson(
        this,
      );

  @JsonKey(name: 'videoUrl')
  final String? videoUrl;
  @JsonKey(name: 'vodUrl')
  final Object? vodUrl;
  @JsonKey(name: 'previewUrl')
  final Object? previewUrl;
  @JsonKey(name: 'width')
  final Object? width;
  @JsonKey(name: 'height')
  final Object? height;
  static const fromJsonFactory =
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$Item &&
            (identical(other.videoUrl, videoUrl) ||
                const DeepCollectionEquality().equals(
                  other.videoUrl,
                  videoUrl,
                )) &&
            (identical(other.vodUrl, vodUrl) ||
                const DeepCollectionEquality().equals(other.vodUrl, vodUrl)) &&
            (identical(other.previewUrl, previewUrl) ||
                const DeepCollectionEquality().equals(
                  other.previewUrl,
                  previewUrl,
                )) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(videoUrl) ^
      const DeepCollectionEquality().hash(vodUrl) ^
      const DeepCollectionEquality().hash(previewUrl) ^
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$ItemExtension
    on ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$Item {
  ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$Item
  copyWith({
    String? videoUrl,
    Object? vodUrl,
    Object? previewUrl,
    Object? width,
    Object? height,
  }) {
    return ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$Item(
      videoUrl: videoUrl ?? this.videoUrl,
      vodUrl: vodUrl ?? this.vodUrl,
      previewUrl: previewUrl ?? this.previewUrl,
      width: width ?? this.width,
      height: height ?? this.height,
    );
  }

  ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$Item
  copyWithWrapped({
    Wrapped<String?>? videoUrl,
    Wrapped<Object?>? vodUrl,
    Wrapped<Object?>? previewUrl,
    Wrapped<Object?>? width,
    Wrapped<Object?>? height,
  }) {
    return ProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$Item(
      videoUrl: (videoUrl != null ? videoUrl.value : this.videoUrl),
      vodUrl: (vodUrl != null ? vodUrl.value : this.vodUrl),
      previewUrl: (previewUrl != null ? previewUrl.value : this.previewUrl),
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$Item {
  const ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$Item({
    required this.width,
    required this.height,
    required this.url,
  });

  factory ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$ItemToJson(
        this,
      );

  @JsonKey(name: 'width')
  final double width;
  @JsonKey(name: 'height')
  final double height;
  @JsonKey(name: 'url')
  final String url;
  static const fromJsonFactory =
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$Item &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$ItemExtension
    on ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$Item {
  ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$Item
  copyWithWrapped({
    Wrapped<double>? width,
    Wrapped<double>? height,
    Wrapped<String>? url,
  }) {
    return ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$Item {
  const ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$Item({
    required this.width,
    required this.height,
    required this.url,
  });

  factory ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$ItemToJson(
        this,
      );

  @JsonKey(name: 'width')
  final double width;
  @JsonKey(name: 'height')
  final double height;
  @JsonKey(name: 'url')
  final String url;
  static const fromJsonFactory =
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$Item &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$ItemExtension
    on ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$Item {
  ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$Item
  copyWithWrapped({
    Wrapped<double>? width,
    Wrapped<double>? height,
    Wrapped<String>? url,
  }) {
    return ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item {
  const ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item({
    required this.name,
    required this.type,
    required this.optionValues,
  });

  factory ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$ItemToJson(
        this,
      );

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'type')
  final double type;
  @JsonKey(name: 'optionValues')
  final List<
    ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
  >
  optionValues;
  static const fromJsonFactory =
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.optionValues, optionValues) ||
                const DeepCollectionEquality().equals(
                  other.optionValues,
                  optionValues,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(optionValues) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$ItemExtension
    on ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item {
  ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item
  copyWith({
    String? name,
    double? type,
    List<
      ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
    >?
    optionValues,
  }) {
    return ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item(
      name: name ?? this.name,
      type: type ?? this.type,
      optionValues: optionValues ?? this.optionValues,
    );
  }

  ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item
  copyWithWrapped({
    Wrapped<String>? name,
    Wrapped<double>? type,
    Wrapped<
      List<
        ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
      >
    >?
    optionValues,
  }) {
    return ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item(
      name: (name != null ? name.value : this.name),
      type: (type != null ? type.value : this.type),
      optionValues: (optionValues != null
          ? optionValues.value
          : this.optionValues),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$Item {
  const ProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$Item({
    this.tagCode,
    this.tagImg,
  });

  factory ProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$ItemToJson(
        this,
      );

  @JsonKey(name: 'tagCode')
  final String? tagCode;
  @JsonKey(name: 'tagImg')
  final String? tagImg;
  static const fromJsonFactory =
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$Item &&
            (identical(other.tagCode, tagCode) ||
                const DeepCollectionEquality().equals(
                  other.tagCode,
                  tagCode,
                )) &&
            (identical(other.tagImg, tagImg) ||
                const DeepCollectionEquality().equals(other.tagImg, tagImg)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tagCode) ^
      const DeepCollectionEquality().hash(tagImg) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$ItemExtension
    on ProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$Item {
  ProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$Item copyWith({
    String? tagCode,
    String? tagImg,
  }) {
    return ProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagImg: tagImg ?? this.tagImg,
    );
  }

  ProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$Item
  copyWithWrapped({Wrapped<String?>? tagCode, Wrapped<String?>? tagImg}) {
    return ProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfo {
  const ProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode')
  final String? brandCode;
  @JsonKey(name: 'brandImg')
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfo &&
            (identical(other.brandCode, brandCode) ||
                const DeepCollectionEquality().equals(
                  other.brandCode,
                  brandCode,
                )) &&
            (identical(other.brandImg, brandImg) ||
                const DeepCollectionEquality().equals(
                  other.brandImg,
                  brandImg,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(brandCode) ^
      const DeepCollectionEquality().hash(brandImg) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfoExtension
    on ProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfo {
  ProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return ProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$Item {
  const ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$Item({
    this.width,
    this.height,
    this.url,
  });

  factory ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$ItemToJson(
        this,
      );

  @JsonKey(name: 'width')
  final double? width;
  @JsonKey(name: 'height')
  final double? height;
  @JsonKey(name: 'url')
  final String? url;
  static const fromJsonFactory =
      _$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$Item &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$ItemExtension
    on ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$Item {
  ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$Item
  copyWithWrapped({
    Wrapped<double?>? width,
    Wrapped<double?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$Item {
  const ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$Item({
    required this.width,
    required this.height,
    required this.url,
  });

  factory ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$ItemToJson(
        this,
      );

  @JsonKey(name: 'width')
  final double width;
  @JsonKey(name: 'height')
  final double height;
  @JsonKey(name: 'url')
  final String url;
  static const fromJsonFactory =
      _$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$Item &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$ItemExtension
    on
        ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$Item {
  ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$Item
  copyWithWrapped({
    Wrapped<double>? width,
    Wrapped<double>? height,
    Wrapped<String>? url,
  }) {
    return ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$Item {
  const ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$Item({
    required this.width,
    required this.height,
    required this.url,
  });

  factory ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$ItemToJson(
        this,
      );

  @JsonKey(name: 'width')
  final double width;
  @JsonKey(name: 'height')
  final double height;
  @JsonKey(name: 'url')
  final String url;
  static const fromJsonFactory =
      _$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$Item &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$ItemExtension
    on ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$Item {
  ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$Item
  copyWithWrapped({
    Wrapped<double>? width,
    Wrapped<double>? height,
    Wrapped<String>? url,
  }) {
    return ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item {
  const ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item({
    this.name,
    this.type,
    this.optionValues,
  });

  factory ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$ItemToJson(
        this,
      );

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'type')
  final double? type;
  @JsonKey(name: 'optionValues')
  final List<
    ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
  >?
  optionValues;
  static const fromJsonFactory =
      _$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.optionValues, optionValues) ||
                const DeepCollectionEquality().equals(
                  other.optionValues,
                  optionValues,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(optionValues) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$ItemExtension
    on
        ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item {
  ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item
  copyWith({
    String? name,
    double? type,
    List<
      ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
    >?
    optionValues,
  }) {
    return ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item(
      name: name ?? this.name,
      type: type ?? this.type,
      optionValues: optionValues ?? this.optionValues,
    );
  }

  ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item
  copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<double?>? type,
    Wrapped<
      List<
        ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
      >?
    >?
    optionValues,
  }) {
    return ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item(
      name: (name != null ? name.value : this.name),
      type: (type != null ? type.value : this.type),
      optionValues: (optionValues != null
          ? optionValues.value
          : this.optionValues),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$Item {
  const ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$Item({
    this.tagCode,
    this.tagImg,
  });

  factory ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$ItemToJson(
        this,
      );

  @JsonKey(name: 'tagCode')
  final String? tagCode;
  @JsonKey(name: 'tagImg')
  final String? tagImg;
  static const fromJsonFactory =
      _$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$Item &&
            (identical(other.tagCode, tagCode) ||
                const DeepCollectionEquality().equals(
                  other.tagCode,
                  tagCode,
                )) &&
            (identical(other.tagImg, tagImg) ||
                const DeepCollectionEquality().equals(other.tagImg, tagImg)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tagCode) ^
      const DeepCollectionEquality().hash(tagImg) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$ItemExtension
    on ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$Item {
  ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$Item
  copyWith({String? tagCode, String? tagImg}) {
    return ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagImg: tagImg ?? this.tagImg,
    );
  }

  ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$Item
  copyWithWrapped({Wrapped<String?>? tagCode, Wrapped<String?>? tagImg}) {
    return ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfo {
  const ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode')
  final String? brandCode;
  @JsonKey(name: 'brandImg')
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfo &&
            (identical(other.brandCode, brandCode) ||
                const DeepCollectionEquality().equals(
                  other.brandCode,
                  brandCode,
                )) &&
            (identical(other.brandImg, brandImg) ||
                const DeepCollectionEquality().equals(
                  other.brandImg,
                  brandImg,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(brandCode) ^
      const DeepCollectionEquality().hash(brandImg) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfoExtension
    on ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfo {
  ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$Item {
  const ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$Item({
    required this.value,
    this.image,
    required this.imageWidth,
    required this.imageHeight,
  });

  factory ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$ItemToJson(
        this,
      );

  @JsonKey(name: 'value')
  final String value;
  @JsonKey(name: 'image')
  final String? image;
  @JsonKey(name: 'imageWidth')
  final Object imageWidth;
  @JsonKey(name: 'imageHeight')
  final Object imageHeight;
  static const fromJsonFactory =
      _$ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$Item &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.imageWidth, imageWidth) ||
                const DeepCollectionEquality().equals(
                  other.imageWidth,
                  imageWidth,
                )) &&
            (identical(other.imageHeight, imageHeight) ||
                const DeepCollectionEquality().equals(
                  other.imageHeight,
                  imageHeight,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(imageWidth) ^
      const DeepCollectionEquality().hash(imageHeight) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$ItemExtension
    on
        ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$Item {
  ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$Item
  copyWith({
    String? value,
    String? image,
    Object? imageWidth,
    Object? imageHeight,
  }) {
    return ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$Item(
      value: value ?? this.value,
      image: image ?? this.image,
      imageWidth: imageWidth ?? this.imageWidth,
      imageHeight: imageHeight ?? this.imageHeight,
    );
  }

  ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$Item
  copyWithWrapped({
    Wrapped<String>? value,
    Wrapped<String?>? image,
    Wrapped<Object>? imageWidth,
    Wrapped<Object>? imageHeight,
  }) {
    return ProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$Item(
      value: (value != null ? value.value : this.value),
      image: (image != null ? image.value : this.image),
      imageWidth: (imageWidth != null ? imageWidth.value : this.imageWidth),
      imageHeight: (imageHeight != null ? imageHeight.value : this.imageHeight),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOption {
  const ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOption({
    this.name,
    this.value,
  });

  factory ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOption.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOptionFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOptionToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOptionToJson(
        this,
      );

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'value')
  final String? value;
  static const fromJsonFactory =
      _$ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOptionFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOption &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(value) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOptionExtension
    on ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOption {
  ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOption
  copyWith({String? name, String? value}) {
    return ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOption(
      name: name ?? this.name,
      value: value ?? this.value,
    );
  }

  ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOption
  copyWithWrapped({Wrapped<String?>? name, Wrapped<String?>? value}) {
    return ProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOption(
      name: (name != null ? name.value : this.name),
      value: (value != null ? value.value : this.value),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthGetProductInfoGet$Response$Data$Ext$Brand {
  const ProductNoAuthGetProductInfoGet$Response$Data$Ext$Brand({
    required this.brandTitle,
    required this.brandName,
    required this.background,
    required this.qualityAssured,
    required this.qualityAssuredUrl,
    required this.deliverAssured,
  });

  factory ProductNoAuthGetProductInfoGet$Response$Data$Ext$Brand.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthGetProductInfoGet$Response$Data$Ext$BrandFromJson(json);

  static const toJsonFactory =
      _$ProductNoAuthGetProductInfoGet$Response$Data$Ext$BrandToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthGetProductInfoGet$Response$Data$Ext$BrandToJson(this);

  @JsonKey(name: 'brandTitle')
  final String brandTitle;
  @JsonKey(name: 'brandName')
  final String brandName;
  @JsonKey(name: 'background')
  final String background;
  @JsonKey(name: 'qualityAssured')
  final String qualityAssured;
  @JsonKey(name: 'qualityAssuredUrl')
  final String qualityAssuredUrl;
  @JsonKey(name: 'deliverAssured')
  final String deliverAssured;
  static const fromJsonFactory =
      _$ProductNoAuthGetProductInfoGet$Response$Data$Ext$BrandFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthGetProductInfoGet$Response$Data$Ext$Brand &&
            (identical(other.brandTitle, brandTitle) ||
                const DeepCollectionEquality().equals(
                  other.brandTitle,
                  brandTitle,
                )) &&
            (identical(other.brandName, brandName) ||
                const DeepCollectionEquality().equals(
                  other.brandName,
                  brandName,
                )) &&
            (identical(other.background, background) ||
                const DeepCollectionEquality().equals(
                  other.background,
                  background,
                )) &&
            (identical(other.qualityAssured, qualityAssured) ||
                const DeepCollectionEquality().equals(
                  other.qualityAssured,
                  qualityAssured,
                )) &&
            (identical(other.qualityAssuredUrl, qualityAssuredUrl) ||
                const DeepCollectionEquality().equals(
                  other.qualityAssuredUrl,
                  qualityAssuredUrl,
                )) &&
            (identical(other.deliverAssured, deliverAssured) ||
                const DeepCollectionEquality().equals(
                  other.deliverAssured,
                  deliverAssured,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(brandTitle) ^
      const DeepCollectionEquality().hash(brandName) ^
      const DeepCollectionEquality().hash(background) ^
      const DeepCollectionEquality().hash(qualityAssured) ^
      const DeepCollectionEquality().hash(qualityAssuredUrl) ^
      const DeepCollectionEquality().hash(deliverAssured) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthGetProductInfoGet$Response$Data$Ext$BrandExtension
    on ProductNoAuthGetProductInfoGet$Response$Data$Ext$Brand {
  ProductNoAuthGetProductInfoGet$Response$Data$Ext$Brand copyWith({
    String? brandTitle,
    String? brandName,
    String? background,
    String? qualityAssured,
    String? qualityAssuredUrl,
    String? deliverAssured,
  }) {
    return ProductNoAuthGetProductInfoGet$Response$Data$Ext$Brand(
      brandTitle: brandTitle ?? this.brandTitle,
      brandName: brandName ?? this.brandName,
      background: background ?? this.background,
      qualityAssured: qualityAssured ?? this.qualityAssured,
      qualityAssuredUrl: qualityAssuredUrl ?? this.qualityAssuredUrl,
      deliverAssured: deliverAssured ?? this.deliverAssured,
    );
  }

  ProductNoAuthGetProductInfoGet$Response$Data$Ext$Brand copyWithWrapped({
    Wrapped<String>? brandTitle,
    Wrapped<String>? brandName,
    Wrapped<String>? background,
    Wrapped<String>? qualityAssured,
    Wrapped<String>? qualityAssuredUrl,
    Wrapped<String>? deliverAssured,
  }) {
    return ProductNoAuthGetProductInfoGet$Response$Data$Ext$Brand(
      brandTitle: (brandTitle != null ? brandTitle.value : this.brandTitle),
      brandName: (brandName != null ? brandName.value : this.brandName),
      background: (background != null ? background.value : this.background),
      qualityAssured: (qualityAssured != null
          ? qualityAssured.value
          : this.qualityAssured),
      qualityAssuredUrl: (qualityAssuredUrl != null
          ? qualityAssuredUrl.value
          : this.qualityAssuredUrl),
      deliverAssured: (deliverAssured != null
          ? deliverAssured.value
          : this.deliverAssured),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$Item {
  const ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$Item({
    required this.id,
    required this.parentId,
    required this.level,
    required this.showOrder,
    required this.name,
    required this.iconUrl,
    required this.categoryList,
    required this.brands,
  });

  factory ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$ItemToJson(
        this,
      );

  @JsonKey(name: 'id')
  final double id;
  @JsonKey(name: 'parentId')
  final double parentId;
  @JsonKey(name: 'level')
  final double level;
  @JsonKey(name: 'showOrder')
  final double showOrder;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'iconUrl')
  final String iconUrl;
  @JsonKey(name: 'categoryList', defaultValue: <Object>[])
  final List<Object> categoryList;
  @JsonKey(name: 'brands', defaultValue: <Object>[])
  final List<Object> brands;
  static const fromJsonFactory =
      _$ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality().equals(
                  other.parentId,
                  parentId,
                )) &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)) &&
            (identical(other.showOrder, showOrder) ||
                const DeepCollectionEquality().equals(
                  other.showOrder,
                  showOrder,
                )) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.iconUrl, iconUrl) ||
                const DeepCollectionEquality().equals(
                  other.iconUrl,
                  iconUrl,
                )) &&
            (identical(other.categoryList, categoryList) ||
                const DeepCollectionEquality().equals(
                  other.categoryList,
                  categoryList,
                )) &&
            (identical(other.brands, brands) ||
                const DeepCollectionEquality().equals(other.brands, brands)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash(showOrder) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(iconUrl) ^
      const DeepCollectionEquality().hash(categoryList) ^
      const DeepCollectionEquality().hash(brands) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$ItemExtension
    on
        ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$Item {
  ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$Item
  copyWith({
    double? id,
    double? parentId,
    double? level,
    double? showOrder,
    String? name,
    String? iconUrl,
    List<Object>? categoryList,
    List<Object>? brands,
  }) {
    return ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$Item(
      id: id ?? this.id,
      parentId: parentId ?? this.parentId,
      level: level ?? this.level,
      showOrder: showOrder ?? this.showOrder,
      name: name ?? this.name,
      iconUrl: iconUrl ?? this.iconUrl,
      categoryList: categoryList ?? this.categoryList,
      brands: brands ?? this.brands,
    );
  }

  ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$Item
  copyWithWrapped({
    Wrapped<double>? id,
    Wrapped<double>? parentId,
    Wrapped<double>? level,
    Wrapped<double>? showOrder,
    Wrapped<String>? name,
    Wrapped<String>? iconUrl,
    Wrapped<List<Object>>? categoryList,
    Wrapped<List<Object>>? brands,
  }) {
    return ProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$Item(
      id: (id != null ? id.value : this.id),
      parentId: (parentId != null ? parentId.value : this.parentId),
      level: (level != null ? level.value : this.level),
      showOrder: (showOrder != null ? showOrder.value : this.showOrder),
      name: (name != null ? name.value : this.name),
      iconUrl: (iconUrl != null ? iconUrl.value : this.iconUrl),
      categoryList: (categoryList != null
          ? categoryList.value
          : this.categoryList),
      brands: (brands != null ? brands.value : this.brands),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Image {
  const ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Image({
    required this.width,
    required this.height,
    required this.url,
  });

  factory ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Image.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthHotProductV2Get$Response$Data$Records$Item$ImageFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductNoAuthHotProductV2Get$Response$Data$Records$Item$ImageToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthHotProductV2Get$Response$Data$Records$Item$ImageToJson(
        this,
      );

  @JsonKey(name: 'width')
  final int width;
  @JsonKey(name: 'height')
  final int height;
  @JsonKey(name: 'url')
  final String url;
  static const fromJsonFactory =
      _$ProductNoAuthHotProductV2Get$Response$Data$Records$Item$ImageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Image &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthHotProductV2Get$Response$Data$Records$Item$ImageExtension
    on ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Image {
  ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Image copyWith({
    int? width,
    int? height,
    String? url,
  }) {
    return ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Image(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Image
  copyWithWrapped({
    Wrapped<int>? width,
    Wrapped<int>? height,
    Wrapped<String>? url,
  }) {
    return ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Image(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$Item {
  const ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$Item({
    this.tagCode,
    this.tagImg,
  });

  factory ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$ItemToJson(
        this,
      );

  @JsonKey(name: 'tagCode')
  final String? tagCode;
  @JsonKey(name: 'tagImg')
  final String? tagImg;
  static const fromJsonFactory =
      _$ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$Item &&
            (identical(other.tagCode, tagCode) ||
                const DeepCollectionEquality().equals(
                  other.tagCode,
                  tagCode,
                )) &&
            (identical(other.tagImg, tagImg) ||
                const DeepCollectionEquality().equals(other.tagImg, tagImg)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tagCode) ^
      const DeepCollectionEquality().hash(tagImg) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$ItemExtension
    on ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$Item {
  ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$Item copyWith({
    String? tagCode,
    String? tagImg,
  }) {
    return ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagImg: tagImg ?? this.tagImg,
    );
  }

  ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$Item
  copyWithWrapped({Wrapped<String?>? tagCode, Wrapped<String?>? tagImg}) {
    return ProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfo {
  const ProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode')
  final String? brandCode;
  @JsonKey(name: 'brandImg')
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfo &&
            (identical(other.brandCode, brandCode) ||
                const DeepCollectionEquality().equals(
                  other.brandCode,
                  brandCode,
                )) &&
            (identical(other.brandImg, brandImg) ||
                const DeepCollectionEquality().equals(
                  other.brandImg,
                  brandImg,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(brandCode) ^
      const DeepCollectionEquality().hash(brandImg) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfoExtension
    on ProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfo {
  ProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return ProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSale {
  const ProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSale({
    required this.activityCode,
    required this.activityTitle,
    required this.startTime,
    required this.endTime,
    required this.progressPercent,
    required this.progressText,
    required this.marketingIcon,
    required this.discountExpr,
  });

  factory ProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSale.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSaleFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSaleToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSaleToJson(
        this,
      );

  @JsonKey(name: 'activityCode')
  final String activityCode;
  @JsonKey(name: 'activityTitle')
  final String activityTitle;
  @JsonKey(name: 'startTime')
  final int startTime;
  @JsonKey(name: 'endTime')
  final int endTime;
  @JsonKey(name: 'progressPercent')
  final int progressPercent;
  @JsonKey(name: 'progressText')
  final String progressText;
  @JsonKey(name: 'marketingIcon')
  final String marketingIcon;
  @JsonKey(name: 'discountExpr')
  final String discountExpr;
  static const fromJsonFactory =
      _$ProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSaleFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSale &&
            (identical(other.activityCode, activityCode) ||
                const DeepCollectionEquality().equals(
                  other.activityCode,
                  activityCode,
                )) &&
            (identical(other.activityTitle, activityTitle) ||
                const DeepCollectionEquality().equals(
                  other.activityTitle,
                  activityTitle,
                )) &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality().equals(
                  other.startTime,
                  startTime,
                )) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality().equals(
                  other.endTime,
                  endTime,
                )) &&
            (identical(other.progressPercent, progressPercent) ||
                const DeepCollectionEquality().equals(
                  other.progressPercent,
                  progressPercent,
                )) &&
            (identical(other.progressText, progressText) ||
                const DeepCollectionEquality().equals(
                  other.progressText,
                  progressText,
                )) &&
            (identical(other.marketingIcon, marketingIcon) ||
                const DeepCollectionEquality().equals(
                  other.marketingIcon,
                  marketingIcon,
                )) &&
            (identical(other.discountExpr, discountExpr) ||
                const DeepCollectionEquality().equals(
                  other.discountExpr,
                  discountExpr,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(activityCode) ^
      const DeepCollectionEquality().hash(activityTitle) ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(endTime) ^
      const DeepCollectionEquality().hash(progressPercent) ^
      const DeepCollectionEquality().hash(progressText) ^
      const DeepCollectionEquality().hash(marketingIcon) ^
      const DeepCollectionEquality().hash(discountExpr) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSaleExtension
    on ProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSale {
  ProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSale copyWith({
    String? activityCode,
    String? activityTitle,
    int? startTime,
    int? endTime,
    int? progressPercent,
    String? progressText,
    String? marketingIcon,
    String? discountExpr,
  }) {
    return ProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSale(
      activityCode: activityCode ?? this.activityCode,
      activityTitle: activityTitle ?? this.activityTitle,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      progressPercent: progressPercent ?? this.progressPercent,
      progressText: progressText ?? this.progressText,
      marketingIcon: marketingIcon ?? this.marketingIcon,
      discountExpr: discountExpr ?? this.discountExpr,
    );
  }

  ProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSale
  copyWithWrapped({
    Wrapped<String>? activityCode,
    Wrapped<String>? activityTitle,
    Wrapped<int>? startTime,
    Wrapped<int>? endTime,
    Wrapped<int>? progressPercent,
    Wrapped<String>? progressText,
    Wrapped<String>? marketingIcon,
    Wrapped<String>? discountExpr,
  }) {
    return ProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSale(
      activityCode: (activityCode != null
          ? activityCode.value
          : this.activityCode),
      activityTitle: (activityTitle != null
          ? activityTitle.value
          : this.activityTitle),
      startTime: (startTime != null ? startTime.value : this.startTime),
      endTime: (endTime != null ? endTime.value : this.endTime),
      progressPercent: (progressPercent != null
          ? progressPercent.value
          : this.progressPercent),
      progressText: (progressText != null
          ? progressText.value
          : this.progressText),
      marketingIcon: (marketingIcon != null
          ? marketingIcon.value
          : this.marketingIcon),
      discountExpr: (discountExpr != null
          ? discountExpr.value
          : this.discountExpr),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Image {
  const ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Image({
    this.width,
    this.height,
    this.url,
  });

  factory ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Image.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductNoAuthHotProductV3Get$Response$Data$Records$Item$ImageFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductNoAuthHotProductV3Get$Response$Data$Records$Item$ImageToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthHotProductV3Get$Response$Data$Records$Item$ImageToJson(
        this,
      );

  @JsonKey(name: 'width')
  final double? width;
  @JsonKey(name: 'height')
  final double? height;
  @JsonKey(name: 'url')
  final String? url;
  static const fromJsonFactory =
      _$ProductNoAuthHotProductV3Get$Response$Data$Records$Item$ImageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Image &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthHotProductV3Get$Response$Data$Records$Item$ImageExtension
    on ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Image {
  ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Image copyWith({
    double? width,
    double? height,
    String? url,
  }) {
    return ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Image(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Image
  copyWithWrapped({
    Wrapped<double?>? width,
    Wrapped<double?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Image(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$Item {
  const ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$Item({
    required this.tagCode,
    required this.tagImg,
    required this.order,
    required this.frontShow,
  });

  factory ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$ItemToJson(
        this,
      );

  @JsonKey(name: 'tagCode')
  final String tagCode;
  @JsonKey(name: 'tagImg')
  final String tagImg;
  @JsonKey(name: 'order')
  final double order;
  @JsonKey(name: 'frontShow')
  final double frontShow;
  static const fromJsonFactory =
      _$ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$Item &&
            (identical(other.tagCode, tagCode) ||
                const DeepCollectionEquality().equals(
                  other.tagCode,
                  tagCode,
                )) &&
            (identical(other.tagImg, tagImg) ||
                const DeepCollectionEquality().equals(other.tagImg, tagImg)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.frontShow, frontShow) ||
                const DeepCollectionEquality().equals(
                  other.frontShow,
                  frontShow,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tagCode) ^
      const DeepCollectionEquality().hash(tagImg) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(frontShow) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$ItemExtension
    on ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$Item {
  ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$Item copyWith({
    String? tagCode,
    String? tagImg,
    double? order,
    double? frontShow,
  }) {
    return ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagImg: tagImg ?? this.tagImg,
      order: order ?? this.order,
      frontShow: frontShow ?? this.frontShow,
    );
  }

  ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$Item
  copyWithWrapped({
    Wrapped<String>? tagCode,
    Wrapped<String>? tagImg,
    Wrapped<double>? order,
    Wrapped<double>? frontShow,
  }) {
    return ProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
      order: (order != null ? order.value : this.order),
      frontShow: (frontShow != null ? frontShow.value : this.frontShow),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfo {
  const ProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode')
  final String? brandCode;
  @JsonKey(name: 'brandImg')
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfo &&
            (identical(other.brandCode, brandCode) ||
                const DeepCollectionEquality().equals(
                  other.brandCode,
                  brandCode,
                )) &&
            (identical(other.brandImg, brandImg) ||
                const DeepCollectionEquality().equals(
                  other.brandImg,
                  brandImg,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(brandCode) ^
      const DeepCollectionEquality().hash(brandImg) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfoExtension
    on ProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfo {
  ProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return ProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSale {
  const ProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSale({
    required this.activityCode,
    required this.activityTitle,
    required this.startTime,
    required this.endTime,
    required this.progressPercent,
    required this.progressText,
    required this.marketingIcon,
  });

  factory ProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSale.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSaleFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSaleToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSaleToJson(
        this,
      );

  @JsonKey(name: 'activityCode')
  final String activityCode;
  @JsonKey(name: 'activityTitle')
  final String activityTitle;
  @JsonKey(name: 'startTime')
  final int startTime;
  @JsonKey(name: 'endTime')
  final int endTime;
  @JsonKey(name: 'progressPercent')
  final int progressPercent;
  @JsonKey(name: 'progressText')
  final String progressText;
  @JsonKey(name: 'marketingIcon')
  final String marketingIcon;
  static const fromJsonFactory =
      _$ProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSaleFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSale &&
            (identical(other.activityCode, activityCode) ||
                const DeepCollectionEquality().equals(
                  other.activityCode,
                  activityCode,
                )) &&
            (identical(other.activityTitle, activityTitle) ||
                const DeepCollectionEquality().equals(
                  other.activityTitle,
                  activityTitle,
                )) &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality().equals(
                  other.startTime,
                  startTime,
                )) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality().equals(
                  other.endTime,
                  endTime,
                )) &&
            (identical(other.progressPercent, progressPercent) ||
                const DeepCollectionEquality().equals(
                  other.progressPercent,
                  progressPercent,
                )) &&
            (identical(other.progressText, progressText) ||
                const DeepCollectionEquality().equals(
                  other.progressText,
                  progressText,
                )) &&
            (identical(other.marketingIcon, marketingIcon) ||
                const DeepCollectionEquality().equals(
                  other.marketingIcon,
                  marketingIcon,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(activityCode) ^
      const DeepCollectionEquality().hash(activityTitle) ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(endTime) ^
      const DeepCollectionEquality().hash(progressPercent) ^
      const DeepCollectionEquality().hash(progressText) ^
      const DeepCollectionEquality().hash(marketingIcon) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSaleExtension
    on ProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSale {
  ProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSale copyWith({
    String? activityCode,
    String? activityTitle,
    int? startTime,
    int? endTime,
    int? progressPercent,
    String? progressText,
    String? marketingIcon,
  }) {
    return ProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSale(
      activityCode: activityCode ?? this.activityCode,
      activityTitle: activityTitle ?? this.activityTitle,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      progressPercent: progressPercent ?? this.progressPercent,
      progressText: progressText ?? this.progressText,
      marketingIcon: marketingIcon ?? this.marketingIcon,
    );
  }

  ProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSale
  copyWithWrapped({
    Wrapped<String>? activityCode,
    Wrapped<String>? activityTitle,
    Wrapped<int>? startTime,
    Wrapped<int>? endTime,
    Wrapped<int>? progressPercent,
    Wrapped<String>? progressText,
    Wrapped<String>? marketingIcon,
  }) {
    return ProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSale(
      activityCode: (activityCode != null
          ? activityCode.value
          : this.activityCode),
      activityTitle: (activityTitle != null
          ? activityTitle.value
          : this.activityTitle),
      startTime: (startTime != null ? startTime.value : this.startTime),
      endTime: (endTime != null ? endTime.value : this.endTime),
      progressPercent: (progressPercent != null
          ? progressPercent.value
          : this.progressPercent),
      progressText: (progressText != null
          ? progressText.value
          : this.progressText),
      marketingIcon: (marketingIcon != null
          ? marketingIcon.value
          : this.marketingIcon),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item {
  const ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item({
    required this.value,
    this.image,
    this.imageWidth,
    this.imageHeight,
  });

  factory ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemToJson(
        this,
      );

  @JsonKey(name: 'value')
  final String value;
  @JsonKey(name: 'image')
  final String? image;
  @JsonKey(name: 'imageWidth')
  final double? imageWidth;
  @JsonKey(name: 'imageHeight')
  final double? imageHeight;
  static const fromJsonFactory =
      _$ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.imageWidth, imageWidth) ||
                const DeepCollectionEquality().equals(
                  other.imageWidth,
                  imageWidth,
                )) &&
            (identical(other.imageHeight, imageHeight) ||
                const DeepCollectionEquality().equals(
                  other.imageHeight,
                  imageHeight,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(imageWidth) ^
      const DeepCollectionEquality().hash(imageHeight) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemExtension
    on
        ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item {
  ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
  copyWith({
    String? value,
    String? image,
    double? imageWidth,
    double? imageHeight,
  }) {
    return ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item(
      value: value ?? this.value,
      image: image ?? this.image,
      imageWidth: imageWidth ?? this.imageWidth,
      imageHeight: imageHeight ?? this.imageHeight,
    );
  }

  ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
  copyWithWrapped({
    Wrapped<String>? value,
    Wrapped<String?>? image,
    Wrapped<double?>? imageWidth,
    Wrapped<double?>? imageHeight,
  }) {
    return ProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item(
      value: (value != null ? value.value : this.value),
      image: (image != null ? image.value : this.image),
      imageWidth: (imageWidth != null ? imageWidth.value : this.imageWidth),
      imageHeight: (imageHeight != null ? imageHeight.value : this.imageHeight),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$Item {
  const ProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$Item({
    this.width,
    this.height,
    this.url,
  });

  factory ProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$ItemToJson(
        this,
      );

  @JsonKey(name: 'width')
  final double? width;
  @JsonKey(name: 'height')
  final double? height;
  @JsonKey(name: 'url')
  final String? url;
  static const fromJsonFactory =
      _$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$Item &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$ItemExtension
    on ProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$Item {
  ProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$Item
  copyWithWrapped({
    Wrapped<double?>? width,
    Wrapped<double?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$Item {
  const ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$Item({
    required this.width,
    required this.height,
    required this.url,
  });

  factory ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$ItemToJson(
        this,
      );

  @JsonKey(name: 'width')
  final double width;
  @JsonKey(name: 'height')
  final double height;
  @JsonKey(name: 'url')
  final String url;
  static const fromJsonFactory =
      _$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$Item &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$ItemExtension
    on ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$Item {
  ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$Item
  copyWithWrapped({
    Wrapped<double>? width,
    Wrapped<double>? height,
    Wrapped<String>? url,
  }) {
    return ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$Item {
  const ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$Item({
    required this.width,
    required this.height,
    required this.url,
  });

  factory ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$ItemToJson(
        this,
      );

  @JsonKey(name: 'width')
  final double width;
  @JsonKey(name: 'height')
  final double height;
  @JsonKey(name: 'url')
  final String url;
  static const fromJsonFactory =
      _$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$Item &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$ItemExtension
    on ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$Item {
  ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$Item
  copyWithWrapped({
    Wrapped<double>? width,
    Wrapped<double>? height,
    Wrapped<String>? url,
  }) {
    return ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item {
  const ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item({
    this.name,
    this.type,
    this.optionValues,
  });

  factory ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$ItemToJson(
        this,
      );

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'type')
  final double? type;
  @JsonKey(name: 'optionValues')
  final List<
    ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
  >?
  optionValues;
  static const fromJsonFactory =
      _$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.optionValues, optionValues) ||
                const DeepCollectionEquality().equals(
                  other.optionValues,
                  optionValues,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(optionValues) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$ItemExtension
    on ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item {
  ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item
  copyWith({
    String? name,
    double? type,
    List<
      ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
    >?
    optionValues,
  }) {
    return ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item(
      name: name ?? this.name,
      type: type ?? this.type,
      optionValues: optionValues ?? this.optionValues,
    );
  }

  ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item
  copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<double?>? type,
    Wrapped<
      List<
        ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
      >?
    >?
    optionValues,
  }) {
    return ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item(
      name: (name != null ? name.value : this.name),
      type: (type != null ? type.value : this.type),
      optionValues: (optionValues != null
          ? optionValues.value
          : this.optionValues),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$Item {
  const ProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$Item({
    this.tagCode,
    this.tagImg,
  });

  factory ProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$ItemToJson(
        this,
      );

  @JsonKey(name: 'tagCode')
  final String? tagCode;
  @JsonKey(name: 'tagImg')
  final String? tagImg;
  static const fromJsonFactory =
      _$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$Item &&
            (identical(other.tagCode, tagCode) ||
                const DeepCollectionEquality().equals(
                  other.tagCode,
                  tagCode,
                )) &&
            (identical(other.tagImg, tagImg) ||
                const DeepCollectionEquality().equals(other.tagImg, tagImg)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tagCode) ^
      const DeepCollectionEquality().hash(tagImg) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$ItemExtension
    on ProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$Item {
  ProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$Item copyWith({
    String? tagCode,
    String? tagImg,
  }) {
    return ProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagImg: tagImg ?? this.tagImg,
    );
  }

  ProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$Item
  copyWithWrapped({Wrapped<String?>? tagCode, Wrapped<String?>? tagImg}) {
    return ProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfo {
  const ProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode')
  final String? brandCode;
  @JsonKey(name: 'brandImg')
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfo &&
            (identical(other.brandCode, brandCode) ||
                const DeepCollectionEquality().equals(
                  other.brandCode,
                  brandCode,
                )) &&
            (identical(other.brandImg, brandImg) ||
                const DeepCollectionEquality().equals(
                  other.brandImg,
                  brandImg,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(brandCode) ^
      const DeepCollectionEquality().hash(brandImg) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfoExtension
    on ProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfo {
  ProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return ProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$Image {
  const ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$Image({
    required this.width,
    required this.height,
    required this.url,
  });

  factory ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$Image.fromJson(
    Map<String, dynamic> json,
  ) => _$ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$ImageFromJson(
    json,
  );

  static const toJsonFactory =
      _$ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$ImageToJson;
  Map<String, dynamic> toJson() =>
      _$ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$ImageToJson(this);

  @JsonKey(name: 'width')
  final int width;
  @JsonKey(name: 'height')
  final int height;
  @JsonKey(name: 'url')
  final String url;
  static const fromJsonFactory =
      _$ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$ImageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$Image &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$ImageExtension
    on ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$Image {
  ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$Image copyWith({
    int? width,
    int? height,
    String? url,
  }) {
    return ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$Image(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$Image copyWithWrapped({
    Wrapped<int>? width,
    Wrapped<int>? height,
    Wrapped<String>? url,
  }) {
    return ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$Image(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfo {
  const ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode')
  final String? brandCode;
  @JsonKey(name: 'brandImg')
  final String? brandImg;
  static const fromJsonFactory =
      _$ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfo &&
            (identical(other.brandCode, brandCode) ||
                const DeepCollectionEquality().equals(
                  other.brandCode,
                  brandCode,
                )) &&
            (identical(other.brandImg, brandImg) ||
                const DeepCollectionEquality().equals(
                  other.brandImg,
                  brandImg,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(brandCode) ^
      const DeepCollectionEquality().hash(brandImg) ^
      runtimeType.hashCode;
}

extension $ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfoExtension
    on ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfo {
  ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item {
  const ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item({
    required this.value,
    this.image,
    this.imageWidth,
    this.imageHeight,
  });

  factory ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemToJson(
        this,
      );

  @JsonKey(name: 'value')
  final String value;
  @JsonKey(name: 'image')
  final String? image;
  @JsonKey(name: 'imageWidth')
  final double? imageWidth;
  @JsonKey(name: 'imageHeight')
  final double? imageHeight;
  static const fromJsonFactory =
      _$ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.imageWidth, imageWidth) ||
                const DeepCollectionEquality().equals(
                  other.imageWidth,
                  imageWidth,
                )) &&
            (identical(other.imageHeight, imageHeight) ||
                const DeepCollectionEquality().equals(
                  other.imageHeight,
                  imageHeight,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(imageWidth) ^
      const DeepCollectionEquality().hash(imageHeight) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemExtension
    on
        ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item {
  ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
  copyWith({
    String? value,
    String? image,
    double? imageWidth,
    double? imageHeight,
  }) {
    return ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item(
      value: value ?? this.value,
      image: image ?? this.image,
      imageWidth: imageWidth ?? this.imageWidth,
      imageHeight: imageHeight ?? this.imageHeight,
    );
  }

  ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
  copyWithWrapped({
    Wrapped<String>? value,
    Wrapped<String?>? image,
    Wrapped<double?>? imageWidth,
    Wrapped<double?>? imageHeight,
  }) {
    return ProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item(
      value: (value != null ? value.value : this.value),
      image: (image != null ? image.value : this.image),
      imageWidth: (imageWidth != null ? imageWidth.value : this.imageWidth),
      imageHeight: (imageHeight != null ? imageHeight.value : this.imageHeight),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$Item {
  const ProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$Item({
    this.width,
    this.height,
    this.url,
  });

  factory ProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$ItemToJson(
        this,
      );

  @JsonKey(name: 'width')
  final double? width;
  @JsonKey(name: 'height')
  final double? height;
  @JsonKey(name: 'url')
  final String? url;
  static const fromJsonFactory =
      _$ProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$Item &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$ItemExtension
    on ProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$Item {
  ProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$Item
  copyWithWrapped({
    Wrapped<double?>? width,
    Wrapped<double?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$Item {
  const ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$Item({
    required this.width,
    required this.height,
    required this.url,
  });

  factory ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$ItemToJson(
        this,
      );

  @JsonKey(name: 'width')
  final double width;
  @JsonKey(name: 'height')
  final double height;
  @JsonKey(name: 'url')
  final String url;
  static const fromJsonFactory =
      _$ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$Item &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$ItemExtension
    on ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$Item {
  ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$Item
  copyWithWrapped({
    Wrapped<double>? width,
    Wrapped<double>? height,
    Wrapped<String>? url,
  }) {
    return ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$Item {
  const ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$Item({
    required this.width,
    required this.height,
    required this.url,
  });

  factory ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$ItemToJson(
        this,
      );

  @JsonKey(name: 'width')
  final double width;
  @JsonKey(name: 'height')
  final double height;
  @JsonKey(name: 'url')
  final String url;
  static const fromJsonFactory =
      _$ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$Item &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$ItemExtension
    on ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$Item {
  ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$Item
  copyWithWrapped({
    Wrapped<double>? width,
    Wrapped<double>? height,
    Wrapped<String>? url,
  }) {
    return ProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item {
  const ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item({
    this.name,
    this.type,
    this.optionValues,
  });

  factory ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$ItemToJson(
        this,
      );

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'type')
  final double? type;
  @JsonKey(name: 'optionValues')
  final List<
    ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
  >?
  optionValues;
  static const fromJsonFactory =
      _$ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.optionValues, optionValues) ||
                const DeepCollectionEquality().equals(
                  other.optionValues,
                  optionValues,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(optionValues) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$ItemExtension
    on ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item {
  ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item
  copyWith({
    String? name,
    double? type,
    List<
      ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
    >?
    optionValues,
  }) {
    return ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item(
      name: name ?? this.name,
      type: type ?? this.type,
      optionValues: optionValues ?? this.optionValues,
    );
  }

  ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item
  copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<double?>? type,
    Wrapped<
      List<
        ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
      >?
    >?
    optionValues,
  }) {
    return ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item(
      name: (name != null ? name.value : this.name),
      type: (type != null ? type.value : this.type),
      optionValues: (optionValues != null
          ? optionValues.value
          : this.optionValues),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$Item {
  const ProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$Item({
    this.tagCode,
    this.tagImg,
  });

  factory ProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$ItemToJson(
        this,
      );

  @JsonKey(name: 'tagCode')
  final String? tagCode;
  @JsonKey(name: 'tagImg')
  final String? tagImg;
  static const fromJsonFactory =
      _$ProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$Item &&
            (identical(other.tagCode, tagCode) ||
                const DeepCollectionEquality().equals(
                  other.tagCode,
                  tagCode,
                )) &&
            (identical(other.tagImg, tagImg) ||
                const DeepCollectionEquality().equals(other.tagImg, tagImg)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tagCode) ^
      const DeepCollectionEquality().hash(tagImg) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$ItemExtension
    on ProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$Item {
  ProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$Item copyWith({
    String? tagCode,
    String? tagImg,
  }) {
    return ProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagImg: tagImg ?? this.tagImg,
    );
  }

  ProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$Item
  copyWithWrapped({Wrapped<String?>? tagCode, Wrapped<String?>? tagImg}) {
    return ProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfo {
  const ProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode')
  final String? brandCode;
  @JsonKey(name: 'brandImg')
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfo &&
            (identical(other.brandCode, brandCode) ||
                const DeepCollectionEquality().equals(
                  other.brandCode,
                  brandCode,
                )) &&
            (identical(other.brandImg, brandImg) ||
                const DeepCollectionEquality().equals(
                  other.brandImg,
                  brandImg,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(brandCode) ^
      const DeepCollectionEquality().hash(brandImg) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfoExtension
    on ProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfo {
  ProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return ProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item {
  const RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item({
    required this.productCode,
    required this.productName,
    required this.image,
    required this.sourcePlatform,
    required this.platformProductId,
    required this.skuCode,
    required this.sellPriceCur,
    required this.sellPrice,
    required this.targetSellPrice,
    required this.targetOriginPrice,
    required this.targetSellCur,
    required this.sellQuantity,
    required this.skuCount,
    required this.marketingInfo,
    required this.tags,
    this.premiumBrandInfo,
  });

  factory RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$ItemToJson(
        this,
      );

  @JsonKey(name: 'productCode')
  final String productCode;
  @JsonKey(name: 'productName')
  final String productName;
  @JsonKey(name: 'image')
  final RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$Image
  image;
  @JsonKey(name: 'sourcePlatform')
  final String sourcePlatform;
  @JsonKey(name: 'platformProductId')
  final String platformProductId;
  @JsonKey(name: 'skuCode')
  final String skuCode;
  @JsonKey(name: 'sellPriceCur')
  final String sellPriceCur;
  @JsonKey(name: 'sellPrice')
  final String sellPrice;
  @JsonKey(name: 'targetSellPrice')
  final String targetSellPrice;
  @JsonKey(name: 'targetOriginPrice')
  final String targetOriginPrice;
  @JsonKey(name: 'targetSellCur')
  final String targetSellCur;
  @JsonKey(name: 'sellQuantity')
  final String sellQuantity;
  @JsonKey(name: 'skuCount')
  final double skuCount;
  @JsonKey(name: 'marketingInfo')
  final String marketingInfo;
  @JsonKey(name: 'tags', defaultValue: <Object>[])
  final List<Object> tags;
  @JsonKey(name: 'premiumBrandInfo')
  final RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfo?
  premiumBrandInfo;
  static const fromJsonFactory =
      _$RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item &&
            (identical(other.productCode, productCode) ||
                const DeepCollectionEquality().equals(
                  other.productCode,
                  productCode,
                )) &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality().equals(
                  other.productName,
                  productName,
                )) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.sourcePlatform, sourcePlatform) ||
                const DeepCollectionEquality().equals(
                  other.sourcePlatform,
                  sourcePlatform,
                )) &&
            (identical(other.platformProductId, platformProductId) ||
                const DeepCollectionEquality().equals(
                  other.platformProductId,
                  platformProductId,
                )) &&
            (identical(other.skuCode, skuCode) ||
                const DeepCollectionEquality().equals(
                  other.skuCode,
                  skuCode,
                )) &&
            (identical(other.sellPriceCur, sellPriceCur) ||
                const DeepCollectionEquality().equals(
                  other.sellPriceCur,
                  sellPriceCur,
                )) &&
            (identical(other.sellPrice, sellPrice) ||
                const DeepCollectionEquality().equals(
                  other.sellPrice,
                  sellPrice,
                )) &&
            (identical(other.targetSellPrice, targetSellPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetSellPrice,
                  targetSellPrice,
                )) &&
            (identical(other.targetOriginPrice, targetOriginPrice) ||
                const DeepCollectionEquality().equals(
                  other.targetOriginPrice,
                  targetOriginPrice,
                )) &&
            (identical(other.targetSellCur, targetSellCur) ||
                const DeepCollectionEquality().equals(
                  other.targetSellCur,
                  targetSellCur,
                )) &&
            (identical(other.sellQuantity, sellQuantity) ||
                const DeepCollectionEquality().equals(
                  other.sellQuantity,
                  sellQuantity,
                )) &&
            (identical(other.skuCount, skuCount) ||
                const DeepCollectionEquality().equals(
                  other.skuCount,
                  skuCount,
                )) &&
            (identical(other.marketingInfo, marketingInfo) ||
                const DeepCollectionEquality().equals(
                  other.marketingInfo,
                  marketingInfo,
                )) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.premiumBrandInfo, premiumBrandInfo) ||
                const DeepCollectionEquality().equals(
                  other.premiumBrandInfo,
                  premiumBrandInfo,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(productCode) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(sourcePlatform) ^
      const DeepCollectionEquality().hash(platformProductId) ^
      const DeepCollectionEquality().hash(skuCode) ^
      const DeepCollectionEquality().hash(sellPriceCur) ^
      const DeepCollectionEquality().hash(sellPrice) ^
      const DeepCollectionEquality().hash(targetSellPrice) ^
      const DeepCollectionEquality().hash(targetOriginPrice) ^
      const DeepCollectionEquality().hash(targetSellCur) ^
      const DeepCollectionEquality().hash(sellQuantity) ^
      const DeepCollectionEquality().hash(skuCount) ^
      const DeepCollectionEquality().hash(marketingInfo) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(premiumBrandInfo) ^
      runtimeType.hashCode;
}

extension $RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$ItemExtension
    on
        RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item {
  RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item
  copyWith({
    String? productCode,
    String? productName,
    RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$Image?
    image,
    String? sourcePlatform,
    String? platformProductId,
    String? skuCode,
    String? sellPriceCur,
    String? sellPrice,
    String? targetSellPrice,
    String? targetOriginPrice,
    String? targetSellCur,
    String? sellQuantity,
    double? skuCount,
    String? marketingInfo,
    List<Object>? tags,
    RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfo?
    premiumBrandInfo,
  }) {
    return RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item(
      productCode: productCode ?? this.productCode,
      productName: productName ?? this.productName,
      image: image ?? this.image,
      sourcePlatform: sourcePlatform ?? this.sourcePlatform,
      platformProductId: platformProductId ?? this.platformProductId,
      skuCode: skuCode ?? this.skuCode,
      sellPriceCur: sellPriceCur ?? this.sellPriceCur,
      sellPrice: sellPrice ?? this.sellPrice,
      targetSellPrice: targetSellPrice ?? this.targetSellPrice,
      targetOriginPrice: targetOriginPrice ?? this.targetOriginPrice,
      targetSellCur: targetSellCur ?? this.targetSellCur,
      sellQuantity: sellQuantity ?? this.sellQuantity,
      skuCount: skuCount ?? this.skuCount,
      marketingInfo: marketingInfo ?? this.marketingInfo,
      tags: tags ?? this.tags,
      premiumBrandInfo: premiumBrandInfo ?? this.premiumBrandInfo,
    );
  }

  RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item
  copyWithWrapped({
    Wrapped<String>? productCode,
    Wrapped<String>? productName,
    Wrapped<
      RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$Image
    >?
    image,
    Wrapped<String>? sourcePlatform,
    Wrapped<String>? platformProductId,
    Wrapped<String>? skuCode,
    Wrapped<String>? sellPriceCur,
    Wrapped<String>? sellPrice,
    Wrapped<String>? targetSellPrice,
    Wrapped<String>? targetOriginPrice,
    Wrapped<String>? targetSellCur,
    Wrapped<String>? sellQuantity,
    Wrapped<double>? skuCount,
    Wrapped<String>? marketingInfo,
    Wrapped<List<Object>>? tags,
    Wrapped<
      RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
  }) {
    return RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item(
      productCode: (productCode != null ? productCode.value : this.productCode),
      productName: (productName != null ? productName.value : this.productName),
      image: (image != null ? image.value : this.image),
      sourcePlatform: (sourcePlatform != null
          ? sourcePlatform.value
          : this.sourcePlatform),
      platformProductId: (platformProductId != null
          ? platformProductId.value
          : this.platformProductId),
      skuCode: (skuCode != null ? skuCode.value : this.skuCode),
      sellPriceCur: (sellPriceCur != null
          ? sellPriceCur.value
          : this.sellPriceCur),
      sellPrice: (sellPrice != null ? sellPrice.value : this.sellPrice),
      targetSellPrice: (targetSellPrice != null
          ? targetSellPrice.value
          : this.targetSellPrice),
      targetOriginPrice: (targetOriginPrice != null
          ? targetOriginPrice.value
          : this.targetOriginPrice),
      targetSellCur: (targetSellCur != null
          ? targetSellCur.value
          : this.targetSellCur),
      sellQuantity: (sellQuantity != null
          ? sellQuantity.value
          : this.sellQuantity),
      skuCount: (skuCount != null ? skuCount.value : this.skuCount),
      marketingInfo: (marketingInfo != null
          ? marketingInfo.value
          : this.marketingInfo),
      tags: (tags != null ? tags.value : this.tags),
      premiumBrandInfo: (premiumBrandInfo != null
          ? premiumBrandInfo.value
          : this.premiumBrandInfo),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RecommendNoAuthCategoryPost$Response$Data$Records$Item$Image {
  const RecommendNoAuthCategoryPost$Response$Data$Records$Item$Image({
    required this.width,
    required this.height,
    required this.url,
  });

  factory RecommendNoAuthCategoryPost$Response$Data$Records$Item$Image.fromJson(
    Map<String, dynamic> json,
  ) => _$RecommendNoAuthCategoryPost$Response$Data$Records$Item$ImageFromJson(
    json,
  );

  static const toJsonFactory =
      _$RecommendNoAuthCategoryPost$Response$Data$Records$Item$ImageToJson;
  Map<String, dynamic> toJson() =>
      _$RecommendNoAuthCategoryPost$Response$Data$Records$Item$ImageToJson(
        this,
      );

  @JsonKey(name: 'width')
  final int width;
  @JsonKey(name: 'height')
  final int height;
  @JsonKey(name: 'url')
  final String url;
  static const fromJsonFactory =
      _$RecommendNoAuthCategoryPost$Response$Data$Records$Item$ImageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RecommendNoAuthCategoryPost$Response$Data$Records$Item$Image &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $RecommendNoAuthCategoryPost$Response$Data$Records$Item$ImageExtension
    on RecommendNoAuthCategoryPost$Response$Data$Records$Item$Image {
  RecommendNoAuthCategoryPost$Response$Data$Records$Item$Image copyWith({
    int? width,
    int? height,
    String? url,
  }) {
    return RecommendNoAuthCategoryPost$Response$Data$Records$Item$Image(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  RecommendNoAuthCategoryPost$Response$Data$Records$Item$Image copyWithWrapped({
    Wrapped<int>? width,
    Wrapped<int>? height,
    Wrapped<String>? url,
  }) {
    return RecommendNoAuthCategoryPost$Response$Data$Records$Item$Image(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$Item {
  const RecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$Item({
    this.tagCode,
    this.tagImg,
  });

  factory RecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$RecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$RecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$ItemToJson(
        this,
      );

  @JsonKey(name: 'tagCode')
  final String? tagCode;
  @JsonKey(name: 'tagImg')
  final String? tagImg;
  static const fromJsonFactory =
      _$RecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$Item &&
            (identical(other.tagCode, tagCode) ||
                const DeepCollectionEquality().equals(
                  other.tagCode,
                  tagCode,
                )) &&
            (identical(other.tagImg, tagImg) ||
                const DeepCollectionEquality().equals(other.tagImg, tagImg)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tagCode) ^
      const DeepCollectionEquality().hash(tagImg) ^
      runtimeType.hashCode;
}

extension $RecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$ItemExtension
    on RecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$Item {
  RecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$Item copyWith({
    String? tagCode,
    String? tagImg,
  }) {
    return RecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagImg: tagImg ?? this.tagImg,
    );
  }

  RecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$Item
  copyWithWrapped({Wrapped<String?>? tagCode, Wrapped<String?>? tagImg}) {
    return RecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfo {
  const RecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory RecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$RecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$RecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode')
  final String? brandCode;
  @JsonKey(name: 'brandImg')
  final String? brandImg;
  static const fromJsonFactory =
      _$RecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is RecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfo &&
            (identical(other.brandCode, brandCode) ||
                const DeepCollectionEquality().equals(
                  other.brandCode,
                  brandCode,
                )) &&
            (identical(other.brandImg, brandImg) ||
                const DeepCollectionEquality().equals(
                  other.brandImg,
                  brandImg,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(brandCode) ^
      const DeepCollectionEquality().hash(brandImg) ^
      runtimeType.hashCode;
}

extension $RecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfoExtension
    on RecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfo {
  RecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return RecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  RecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return RecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RecommendNoAuthShopPost$Response$Data$Records$Item$Image {
  const RecommendNoAuthShopPost$Response$Data$Records$Item$Image({
    required this.width,
    required this.height,
    required this.url,
  });

  factory RecommendNoAuthShopPost$Response$Data$Records$Item$Image.fromJson(
    Map<String, dynamic> json,
  ) => _$RecommendNoAuthShopPost$Response$Data$Records$Item$ImageFromJson(json);

  static const toJsonFactory =
      _$RecommendNoAuthShopPost$Response$Data$Records$Item$ImageToJson;
  Map<String, dynamic> toJson() =>
      _$RecommendNoAuthShopPost$Response$Data$Records$Item$ImageToJson(this);

  @JsonKey(name: 'width')
  final int width;
  @JsonKey(name: 'height')
  final int height;
  @JsonKey(name: 'url')
  final String url;
  static const fromJsonFactory =
      _$RecommendNoAuthShopPost$Response$Data$Records$Item$ImageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RecommendNoAuthShopPost$Response$Data$Records$Item$Image &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $RecommendNoAuthShopPost$Response$Data$Records$Item$ImageExtension
    on RecommendNoAuthShopPost$Response$Data$Records$Item$Image {
  RecommendNoAuthShopPost$Response$Data$Records$Item$Image copyWith({
    int? width,
    int? height,
    String? url,
  }) {
    return RecommendNoAuthShopPost$Response$Data$Records$Item$Image(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  RecommendNoAuthShopPost$Response$Data$Records$Item$Image copyWithWrapped({
    Wrapped<int>? width,
    Wrapped<int>? height,
    Wrapped<String>? url,
  }) {
    return RecommendNoAuthShopPost$Response$Data$Records$Item$Image(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RecommendNoAuthShopPost$Response$Data$Records$Item$Tags$Item {
  const RecommendNoAuthShopPost$Response$Data$Records$Item$Tags$Item({
    this.tagCode,
    this.tagImg,
  });

  factory RecommendNoAuthShopPost$Response$Data$Records$Item$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$RecommendNoAuthShopPost$Response$Data$Records$Item$Tags$ItemFromJson(
    json,
  );

  static const toJsonFactory =
      _$RecommendNoAuthShopPost$Response$Data$Records$Item$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$RecommendNoAuthShopPost$Response$Data$Records$Item$Tags$ItemToJson(
        this,
      );

  @JsonKey(name: 'tagCode')
  final String? tagCode;
  @JsonKey(name: 'tagImg')
  final String? tagImg;
  static const fromJsonFactory =
      _$RecommendNoAuthShopPost$Response$Data$Records$Item$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RecommendNoAuthShopPost$Response$Data$Records$Item$Tags$Item &&
            (identical(other.tagCode, tagCode) ||
                const DeepCollectionEquality().equals(
                  other.tagCode,
                  tagCode,
                )) &&
            (identical(other.tagImg, tagImg) ||
                const DeepCollectionEquality().equals(other.tagImg, tagImg)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tagCode) ^
      const DeepCollectionEquality().hash(tagImg) ^
      runtimeType.hashCode;
}

extension $RecommendNoAuthShopPost$Response$Data$Records$Item$Tags$ItemExtension
    on RecommendNoAuthShopPost$Response$Data$Records$Item$Tags$Item {
  RecommendNoAuthShopPost$Response$Data$Records$Item$Tags$Item copyWith({
    String? tagCode,
    String? tagImg,
  }) {
    return RecommendNoAuthShopPost$Response$Data$Records$Item$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagImg: tagImg ?? this.tagImg,
    );
  }

  RecommendNoAuthShopPost$Response$Data$Records$Item$Tags$Item copyWithWrapped({
    Wrapped<String?>? tagCode,
    Wrapped<String?>? tagImg,
  }) {
    return RecommendNoAuthShopPost$Response$Data$Records$Item$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfo {
  const RecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory RecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$RecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$RecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode')
  final String? brandCode;
  @JsonKey(name: 'brandImg')
  final String? brandImg;
  static const fromJsonFactory =
      _$RecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is RecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfo &&
            (identical(other.brandCode, brandCode) ||
                const DeepCollectionEquality().equals(
                  other.brandCode,
                  brandCode,
                )) &&
            (identical(other.brandImg, brandImg) ||
                const DeepCollectionEquality().equals(
                  other.brandImg,
                  brandImg,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(brandCode) ^
      const DeepCollectionEquality().hash(brandImg) ^
      runtimeType.hashCode;
}

extension $RecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfoExtension
    on RecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfo {
  RecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfo copyWith({
    String? brandCode,
    String? brandImg,
  }) {
    return RecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  RecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return RecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Image {
  const RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Image({
    required this.width,
    required this.height,
    required this.url,
  });

  factory RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Image.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$ImageFromJson(
        json,
      );

  static const toJsonFactory =
      _$RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$ImageToJson;
  Map<String, dynamic> toJson() =>
      _$RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$ImageToJson(
        this,
      );

  @JsonKey(name: 'width')
  final int width;
  @JsonKey(name: 'height')
  final int height;
  @JsonKey(name: 'url')
  final String url;
  static const fromJsonFactory =
      _$RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$ImageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Image &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$ImageExtension
    on RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Image {
  RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Image copyWith({
    int? width,
    int? height,
    String? url,
  }) {
    return RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Image(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Image
  copyWithWrapped({
    Wrapped<int>? width,
    Wrapped<int>? height,
    Wrapped<String>? url,
  }) {
    return RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Image(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$Item {
  const RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$Item({
    this.tagCode,
    this.tagImg,
  });

  factory RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$ItemToJson(
        this,
      );

  @JsonKey(name: 'tagCode')
  final String? tagCode;
  @JsonKey(name: 'tagImg')
  final String? tagImg;
  static const fromJsonFactory =
      _$RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$Item &&
            (identical(other.tagCode, tagCode) ||
                const DeepCollectionEquality().equals(
                  other.tagCode,
                  tagCode,
                )) &&
            (identical(other.tagImg, tagImg) ||
                const DeepCollectionEquality().equals(other.tagImg, tagImg)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tagCode) ^
      const DeepCollectionEquality().hash(tagImg) ^
      runtimeType.hashCode;
}

extension $RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$ItemExtension
    on RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$Item {
  RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$Item
  copyWith({String? tagCode, String? tagImg}) {
    return RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagImg: tagImg ?? this.tagImg,
    );
  }

  RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$Item
  copyWithWrapped({Wrapped<String?>? tagCode, Wrapped<String?>? tagImg}) {
    return RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfo {
  const RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode')
  final String? brandCode;
  @JsonKey(name: 'brandImg')
  final String? brandImg;
  static const fromJsonFactory =
      _$RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfo &&
            (identical(other.brandCode, brandCode) ||
                const DeepCollectionEquality().equals(
                  other.brandCode,
                  brandCode,
                )) &&
            (identical(other.brandImg, brandImg) ||
                const DeepCollectionEquality().equals(
                  other.brandImg,
                  brandImg,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(brandCode) ^
      const DeepCollectionEquality().hash(brandImg) ^
      runtimeType.hashCode;
}

extension $RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfoExtension
    on RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfo {
  RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return RecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item {
  const CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item({
    required this.id,
    required this.name,
    required this.iconUrl,
    required this.parentId,
    required this.level,
  });

  factory CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$ItemToJson(
        this,
      );

  @JsonKey(name: 'id')
  final double id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'iconUrl')
  final String iconUrl;
  @JsonKey(name: 'parentId')
  final double parentId;
  @JsonKey(name: 'level')
  final double level;
  static const fromJsonFactory =
      _$CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.iconUrl, iconUrl) ||
                const DeepCollectionEquality().equals(
                  other.iconUrl,
                  iconUrl,
                )) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality().equals(
                  other.parentId,
                  parentId,
                )) &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(iconUrl) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(level) ^
      runtimeType.hashCode;
}

extension $CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$ItemExtension
    on
        CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item {
  CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item
  copyWith({
    double? id,
    String? name,
    String? iconUrl,
    double? parentId,
    double? level,
  }) {
    return CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item(
      id: id ?? this.id,
      name: name ?? this.name,
      iconUrl: iconUrl ?? this.iconUrl,
      parentId: parentId ?? this.parentId,
      level: level ?? this.level,
    );
  }

  CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item
  copyWithWrapped({
    Wrapped<double>? id,
    Wrapped<String>? name,
    Wrapped<String>? iconUrl,
    Wrapped<double>? parentId,
    Wrapped<double>? level,
  }) {
    return CategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item(
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
      iconUrl: (iconUrl != null ? iconUrl.value : this.iconUrl),
      parentId: (parentId != null ? parentId.value : this.parentId),
      level: (level != null ? level.value : this.level),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item {
  const ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item({
    required this.value,
    this.image,
    required this.imageWidth,
    required this.imageHeight,
  });

  factory ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemToJson(
        this,
      );

  @JsonKey(name: 'value')
  final String value;
  @JsonKey(name: 'image')
  final String? image;
  @JsonKey(name: 'imageWidth')
  final Object imageWidth;
  @JsonKey(name: 'imageHeight')
  final Object imageHeight;
  static const fromJsonFactory =
      _$ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.imageWidth, imageWidth) ||
                const DeepCollectionEquality().equals(
                  other.imageWidth,
                  imageWidth,
                )) &&
            (identical(other.imageHeight, imageHeight) ||
                const DeepCollectionEquality().equals(
                  other.imageHeight,
                  imageHeight,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(imageWidth) ^
      const DeepCollectionEquality().hash(imageHeight) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemExtension
    on
        ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item {
  ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
  copyWith({
    String? value,
    String? image,
    Object? imageWidth,
    Object? imageHeight,
  }) {
    return ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item(
      value: value ?? this.value,
      image: image ?? this.image,
      imageWidth: imageWidth ?? this.imageWidth,
      imageHeight: imageHeight ?? this.imageHeight,
    );
  }

  ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
  copyWithWrapped({
    Wrapped<String>? value,
    Wrapped<String?>? image,
    Wrapped<Object>? imageWidth,
    Wrapped<Object>? imageHeight,
  }) {
    return ProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item(
      value: (value != null ? value.value : this.value),
      image: (image != null ? image.value : this.image),
      imageWidth: (imageWidth != null ? imageWidth.value : this.imageWidth),
      imageHeight: (imageHeight != null ? imageHeight.value : this.imageHeight),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item {
  const ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item({
    required this.value,
    required this.image,
    required this.imageWidth,
    required this.imageHeight,
  });

  factory ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemToJson(
        this,
      );

  @JsonKey(name: 'value')
  final String value;
  @JsonKey(name: 'image')
  final Object image;
  @JsonKey(name: 'imageWidth')
  final Object imageWidth;
  @JsonKey(name: 'imageHeight')
  final Object imageHeight;
  static const fromJsonFactory =
      _$ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.imageWidth, imageWidth) ||
                const DeepCollectionEquality().equals(
                  other.imageWidth,
                  imageWidth,
                )) &&
            (identical(other.imageHeight, imageHeight) ||
                const DeepCollectionEquality().equals(
                  other.imageHeight,
                  imageHeight,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(imageWidth) ^
      const DeepCollectionEquality().hash(imageHeight) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemExtension
    on
        ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item {
  ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
  copyWith({
    String? value,
    Object? image,
    Object? imageWidth,
    Object? imageHeight,
  }) {
    return ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item(
      value: value ?? this.value,
      image: image ?? this.image,
      imageWidth: imageWidth ?? this.imageWidth,
      imageHeight: imageHeight ?? this.imageHeight,
    );
  }

  ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
  copyWithWrapped({
    Wrapped<String>? value,
    Wrapped<Object>? image,
    Wrapped<Object>? imageWidth,
    Wrapped<Object>? imageHeight,
  }) {
    return ProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item(
      value: (value != null ? value.value : this.value),
      image: (image != null ? image.value : this.image),
      imageWidth: (imageWidth != null ? imageWidth.value : this.imageWidth),
      imageHeight: (imageHeight != null ? imageHeight.value : this.imageHeight),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item {
  const ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item({
    required this.value,
    required this.image,
    required this.imageWidth,
    required this.imageHeight,
  });

  factory ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemToJson(
        this,
      );

  @JsonKey(name: 'value')
  final String value;
  @JsonKey(name: 'image')
  final Object image;
  @JsonKey(name: 'imageWidth')
  final Object imageWidth;
  @JsonKey(name: 'imageHeight')
  final Object imageHeight;
  static const fromJsonFactory =
      _$ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.imageWidth, imageWidth) ||
                const DeepCollectionEquality().equals(
                  other.imageWidth,
                  imageWidth,
                )) &&
            (identical(other.imageHeight, imageHeight) ||
                const DeepCollectionEquality().equals(
                  other.imageHeight,
                  imageHeight,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(imageWidth) ^
      const DeepCollectionEquality().hash(imageHeight) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemExtension
    on
        ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item {
  ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
  copyWith({
    String? value,
    Object? image,
    Object? imageWidth,
    Object? imageHeight,
  }) {
    return ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item(
      value: value ?? this.value,
      image: image ?? this.image,
      imageWidth: imageWidth ?? this.imageWidth,
      imageHeight: imageHeight ?? this.imageHeight,
    );
  }

  ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
  copyWithWrapped({
    Wrapped<String>? value,
    Wrapped<Object>? image,
    Wrapped<Object>? imageWidth,
    Wrapped<Object>? imageHeight,
  }) {
    return ProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item(
      value: (value != null ? value.value : this.value),
      image: (image != null ? image.value : this.image),
      imageWidth: (imageWidth != null ? imageWidth.value : this.imageWidth),
      imageHeight: (imageHeight != null ? imageHeight.value : this.imageHeight),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item {
  const ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item({
    required this.value,
    required this.image,
    required this.imageWidth,
    required this.imageHeight,
  });

  factory ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemToJson(
        this,
      );

  @JsonKey(name: 'value')
  final String value;
  @JsonKey(name: 'image')
  final Object image;
  @JsonKey(name: 'imageWidth')
  final Object imageWidth;
  @JsonKey(name: 'imageHeight')
  final Object imageHeight;
  static const fromJsonFactory =
      _$ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.imageWidth, imageWidth) ||
                const DeepCollectionEquality().equals(
                  other.imageWidth,
                  imageWidth,
                )) &&
            (identical(other.imageHeight, imageHeight) ||
                const DeepCollectionEquality().equals(
                  other.imageHeight,
                  imageHeight,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(imageWidth) ^
      const DeepCollectionEquality().hash(imageHeight) ^
      runtimeType.hashCode;
}

extension $ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemExtension
    on
        ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item {
  ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
  copyWith({
    String? value,
    Object? image,
    Object? imageWidth,
    Object? imageHeight,
  }) {
    return ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item(
      value: value ?? this.value,
      image: image ?? this.image,
      imageWidth: imageWidth ?? this.imageWidth,
      imageHeight: imageHeight ?? this.imageHeight,
    );
  }

  ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
  copyWithWrapped({
    Wrapped<String>? value,
    Wrapped<Object>? image,
    Wrapped<Object>? imageWidth,
    Wrapped<Object>? imageHeight,
  }) {
    return ProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item(
      value: (value != null ? value.value : this.value),
      image: (image != null ? image.value : this.image),
      imageWidth: (imageWidth != null ? imageWidth.value : this.imageWidth),
      imageHeight: (imageHeight != null ? imageHeight.value : this.imageHeight),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$Image {
  const RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$Image({
    this.width,
    this.height,
    this.url,
  });

  factory RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$Image.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$ImageFromJson(
        json,
      );

  static const toJsonFactory =
      _$RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$ImageToJson;
  Map<String, dynamic> toJson() =>
      _$RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$ImageToJson(
        this,
      );

  @JsonKey(name: 'width')
  final double? width;
  @JsonKey(name: 'height')
  final double? height;
  @JsonKey(name: 'url')
  final String? url;
  static const fromJsonFactory =
      _$RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$ImageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$Image &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$ImageExtension
    on
        RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$Image {
  RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$Image
  copyWith({double? width, double? height, String? url}) {
    return RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$Image(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$Image
  copyWithWrapped({
    Wrapped<double?>? width,
    Wrapped<double?>? height,
    Wrapped<String?>? url,
  }) {
    return RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$Image(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfo {
  const RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode')
  final String? brandCode;
  @JsonKey(name: 'brandImg')
  final String? brandImg;
  static const fromJsonFactory =
      _$RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfo &&
            (identical(other.brandCode, brandCode) ||
                const DeepCollectionEquality().equals(
                  other.brandCode,
                  brandCode,
                )) &&
            (identical(other.brandImg, brandImg) ||
                const DeepCollectionEquality().equals(
                  other.brandImg,
                  brandImg,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(brandCode) ^
      const DeepCollectionEquality().hash(brandImg) ^
      runtimeType.hashCode;
}

extension $RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfoExtension
    on
        RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfo {
  RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return RecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

String?
productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSortNullableToJson(
  enums.ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort?
  productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort,
) {
  return productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort?.value;
}

String? productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSortToJson(
  enums.ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort
  productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort,
) {
  return productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort.value;
}

enums.ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort
productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSortFromJson(
  Object? productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort, [
  enums.ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort?
  defaultValue,
]) {
  return enums
          .ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort
          .values
          .firstWhereOrNull(
            (e) =>
                e.value ==
                productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort,
          ) ??
      defaultValue ??
      enums
          .ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort
          .swaggerGeneratedUnknown;
}

enums.ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort?
productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSortNullableFromJson(
  Object? productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort, [
  enums.ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort?
  defaultValue,
]) {
  if (productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort == null) {
    return null;
  }
  return enums
          .ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort
          .values
          .firstWhereOrNull(
            (e) =>
                e.value ==
                productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort,
          ) ??
      defaultValue;
}

String
productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSortExplodedListToJson(
  List<enums.ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort>?
  productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort,
) {
  return productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String>
productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSortListToJson(
  List<enums.ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort>?
  productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort,
) {
  if (productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort == null) {
    return [];
  }

  return productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort
      .map((e) => e.value!)
      .toList();
}

List<enums.ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort>
productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSortListFromJson(
  List? productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort, [
  List<enums.ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort>?
  defaultValue,
]) {
  if (productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort == null) {
    return defaultValue ?? [];
  }

  return productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort
      .map(
        (e) =>
            productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSortFromJson(
              e.toString(),
            ),
      )
      .toList();
}

List<enums.ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort>?
productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSortNullableListFromJson(
  List? productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort, [
  List<enums.ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort>?
  defaultValue,
]) {
  if (productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort == null) {
    return defaultValue;
  }

  return productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort
      .map(
        (e) =>
            productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSortFromJson(
              e.toString(),
            ),
      )
      .toList();
}

String?
productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrderNullableToJson(
  enums.ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder?
  productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder,
) {
  return productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder?.value;
}

String? productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrderToJson(
  enums.ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder
  productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder,
) {
  return productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder.value;
}

enums.ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder
productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrderFromJson(
  Object? productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder, [
  enums.ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder?
  defaultValue,
]) {
  return enums
          .ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder
          .values
          .firstWhereOrNull(
            (e) =>
                e.value ==
                productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder,
          ) ??
      defaultValue ??
      enums
          .ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder
          .swaggerGeneratedUnknown;
}

enums.ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder?
productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrderNullableFromJson(
  Object? productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder, [
  enums.ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder?
  defaultValue,
]) {
  if (productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder == null) {
    return null;
  }
  return enums
          .ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder
          .values
          .firstWhereOrNull(
            (e) =>
                e.value ==
                productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder,
          ) ??
      defaultValue;
}

String
productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrderExplodedListToJson(
  List<enums.ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder>?
  productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder,
) {
  return productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String>
productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrderListToJson(
  List<enums.ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder>?
  productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder,
) {
  if (productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder == null) {
    return [];
  }

  return productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder
      .map((e) => e.value!)
      .toList();
}

List<enums.ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder>
productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrderListFromJson(
  List? productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder, [
  List<enums.ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder>?
  defaultValue,
]) {
  if (productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder == null) {
    return defaultValue ?? [];
  }

  return productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder
      .map(
        (e) =>
            productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrderFromJson(
              e.toString(),
            ),
      )
      .toList();
}

List<enums.ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder>?
productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrderNullableListFromJson(
  List? productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder, [
  List<enums.ProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder>?
  defaultValue,
]) {
  if (productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder == null) {
    return defaultValue;
  }

  return productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder
      .map(
        (e) =>
            productPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrderFromJson(
              e.toString(),
            ),
      )
      .toList();
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
