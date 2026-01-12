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
import 'package:w2capp/shared/utils/json_coerce.dart';
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
      baseUrl: baseUrl ?? Uri.parse('http://'),
    );
    return _$SwaggerApiProduct(newClient);
  }

  ///分页拉取商品评论
  ///@param productCode
  ///@param current
  ///@param size
  ///@param root
  Future<chopper.Response<ProductServiceProductReviewNoAuthPageGet$Response>>
  productServiceProductReviewNoAuthPageGet({
    required String? productCode,
    required String? current,
    required String? size,
    Object? root,
  }) {
    generatedMapping.putIfAbsent(
      ProductServiceProductReviewNoAuthPageGet$Response,
      () => ProductServiceProductReviewNoAuthPageGet$Response.fromJsonFactory,
    );

    return _productServiceProductReviewNoAuthPageGet(
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
  @GET(path: '/product-service/product-review/no-auth/page')
  Future<chopper.Response<ProductServiceProductReviewNoAuthPageGet$Response>>
  _productServiceProductReviewNoAuthPageGet({
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
  Future<chopper.Response<ProductServiceProductReviewNoAuthSummaryGet$Response>>
  productServiceProductReviewNoAuthSummaryGet({
    required String? productCode,
    Object? root,
  }) {
    generatedMapping.putIfAbsent(
      ProductServiceProductReviewNoAuthSummaryGet$Response,
      () =>
          ProductServiceProductReviewNoAuthSummaryGet$Response.fromJsonFactory,
    );

    return _productServiceProductReviewNoAuthSummaryGet(
      productCode: productCode,
      root: root,
    );
  }

  ///拉取商品精选评论
  ///@param productCode
  ///@param root
  @GET(path: '/product-service/product-review/no-auth/summary')
  Future<chopper.Response<ProductServiceProductReviewNoAuthSummaryGet$Response>>
  _productServiceProductReviewNoAuthSummaryGet({
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
  Future<chopper.Response<ProductServiceCategoryNoAuthTreeGet$Response>>
  productServiceCategoryNoAuthTreeGet() {
    generatedMapping.putIfAbsent(
      ProductServiceCategoryNoAuthTreeGet$Response,
      () => ProductServiceCategoryNoAuthTreeGet$Response.fromJsonFactory,
    );

    return _productServiceCategoryNoAuthTreeGet();
  }

  ///查询商品品类
  @GET(path: '/product-service/category/no-auth/tree')
  Future<chopper.Response<ProductServiceCategoryNoAuthTreeGet$Response>>
  _productServiceCategoryNoAuthTreeGet({
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
  Future<
    chopper.Response<ProductServiceActivityNoAuthFlashSaleActivityGet$Response>
  >
  productServiceActivityNoAuthFlashSaleActivityGet() {
    generatedMapping.putIfAbsent(
      ProductServiceActivityNoAuthFlashSaleActivityGet$Response,
      () => ProductServiceActivityNoAuthFlashSaleActivityGet$Response
          .fromJsonFactory,
    );

    return _productServiceActivityNoAuthFlashSaleActivityGet();
  }

  ///查询FlashSale活动列表
  @GET(path: '/product-service/activity/no-auth/flash-sale-activity')
  Future<
    chopper.Response<ProductServiceActivityNoAuthFlashSaleActivityGet$Response>
  >
  _productServiceActivityNoAuthFlashSaleActivityGet({
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
  Future<
    chopper.Response<
      ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response
    >
  >
  productServiceActivityNoAuthFlashSaleActivityProductGet({
    required String? activityCode,
    required String? name,
    String? current,
    String? size,
    String? productCode,
  }) {
    generatedMapping.putIfAbsent(
      ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response,
      () => ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response
          .fromJsonFactory,
    );

    return _productServiceActivityNoAuthFlashSaleActivityProductGet(
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
  @GET(path: '/product-service/activity/no-auth/flash-sale-activity/product')
  Future<
    chopper.Response<
      ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response
    >
  >
  _productServiceActivityNoAuthFlashSaleActivityProductGet({
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
  Future<
    chopper.Response<ProductServiceProductPremiumDupeNoAuthPagePost$Response>
  >
  productServiceProductPremiumDupeNoAuthPagePost({Object? root}) {
    generatedMapping.putIfAbsent(
      ProductServiceProductPremiumDupeNoAuthPagePost$Response,
      () => ProductServiceProductPremiumDupeNoAuthPagePost$Response
          .fromJsonFactory,
    );

    return _productServiceProductPremiumDupeNoAuthPagePost(root: root);
  }

  ///分页查询大牌平替商品
  ///@param root 大牌平替商品分页查询请求
  @POST(path: '/product-service/product/premium-dupe/no-auth/page')
  Future<
    chopper.Response<ProductServiceProductPremiumDupeNoAuthPagePost$Response>
  >
  _productServiceProductPremiumDupeNoAuthPagePost({
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
  Future<
    chopper.Response<ProductServiceProductPremiumDupeNoAuthMetaGet$Response>
  >
  productServiceProductPremiumDupeNoAuthMetaGet({String? raw}) {
    generatedMapping.putIfAbsent(
      ProductServiceProductPremiumDupeNoAuthMetaGet$Response,
      () => ProductServiceProductPremiumDupeNoAuthMetaGet$Response
          .fromJsonFactory,
    );

    return _productServiceProductPremiumDupeNoAuthMetaGet(raw: raw);
  }

  ///获取大牌平替元数据
  ///@param raw raw paramter
  @GET(path: '/product-service/product/premium-dupe/no-auth/meta')
  Future<
    chopper.Response<ProductServiceProductPremiumDupeNoAuthMetaGet$Response>
  >
  _productServiceProductPremiumDupeNoAuthMetaGet({
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
  Future<
    chopper.Response<
      ProductServiceProductPremiumDupeNoAuthSelectionGet$Response
    >
  >
  productServiceProductPremiumDupeNoAuthSelectionGet({
    String? deviceId,
    String? raw,
  }) {
    generatedMapping.putIfAbsent(
      ProductServiceProductPremiumDupeNoAuthSelectionGet$Response,
      () => ProductServiceProductPremiumDupeNoAuthSelectionGet$Response
          .fromJsonFactory,
    );

    return _productServiceProductPremiumDupeNoAuthSelectionGet(
      deviceId: deviceId,
      raw: raw,
    );
  }

  ///获取精选推荐商品
  ///@param deviceId 设备ID，用于个性化推荐
  ///@param raw raw paramter
  @GET(path: '/product-service/product/premium-dupe/no-auth/selection')
  Future<
    chopper.Response<
      ProductServiceProductPremiumDupeNoAuthSelectionGet$Response
    >
  >
  _productServiceProductPremiumDupeNoAuthSelectionGet({
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
  Future<chopper.Response<ProductServiceExternalPurchaseRecordPost$Response>>
  productServiceExternalPurchaseRecordPost({List<Object>? root}) {
    generatedMapping.putIfAbsent(
      ProductServiceExternalPurchaseRecordPost$Response,
      () => ProductServiceExternalPurchaseRecordPost$Response.fromJsonFactory,
    );

    return _productServiceExternalPurchaseRecordPost(root: root);
  }

  ///导入外部购物记录
  ///@param root
  @POST(path: '/product-service/external-purchase-record')
  Future<chopper.Response<ProductServiceExternalPurchaseRecordPost$Response>>
  _productServiceExternalPurchaseRecordPost({
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
  Future<chopper.Response<ProductServiceProductNoAuthPushProductGet$Response>>
  productServiceProductNoAuthPushProductGet({
    String? current,
    String? size,
    required String? productCode,
  }) {
    generatedMapping.putIfAbsent(
      ProductServiceProductNoAuthPushProductGet$Response,
      () => ProductServiceProductNoAuthPushProductGet$Response.fromJsonFactory,
    );

    return _productServiceProductNoAuthPushProductGet(
      current: current,
      size: size,
      productCode: productCode,
    );
  }

  ///推送同类目商品(默认:热门商品)
  ///@param current 当前页码，默认为1
  ///@param size 分页大小，默认为10
  ///@param productCode
  @GET(path: '/product-service/product/no-auth/pushProduct')
  Future<chopper.Response<ProductServiceProductNoAuthPushProductGet$Response>>
  _productServiceProductNoAuthPushProductGet({
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
  Future<chopper.Response<ProductServiceProductNoAuthSearchGet$Response>>
  productServiceProductNoAuthSearchGet({required String? query}) {
    generatedMapping.putIfAbsent(
      ProductServiceProductNoAuthSearchGet$Response,
      () => ProductServiceProductNoAuthSearchGet$Response.fromJsonFactory,
    );

    return _productServiceProductNoAuthSearchGet(query: query);
  }

  ///搜索商品或提交URL
  ///@param query 电商商品URL 或商品搜索关键词
  @GET(path: '/product-service/product/no-auth/search')
  Future<chopper.Response<ProductServiceProductNoAuthSearchGet$Response>>
  _productServiceProductNoAuthSearchGet({
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
  Future<chopper.Response<ProductServiceProductNoAuthCombineSearchGet$Response>>
  productServiceProductNoAuthCombineSearchGet({
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
      ProductServiceProductNoAuthCombineSearchGet$Response,
      () =>
          ProductServiceProductNoAuthCombineSearchGet$Response.fromJsonFactory,
    );

    return _productServiceProductNoAuthCombineSearchGet(
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
  @GET(path: '/product-service/product/no-auth/combineSearch')
  Future<chopper.Response<ProductServiceProductNoAuthCombineSearchGet$Response>>
  _productServiceProductNoAuthCombineSearchGet({
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
  Future<
    chopper.Response<ProductServiceProductNoAuthNewArrivalProductGet$Response>
  >
  productServiceProductNoAuthNewArrivalProductGet({
    required String? pageNum,
    required String? pageSize,
    String? brandName,
  }) {
    generatedMapping.putIfAbsent(
      ProductServiceProductNoAuthNewArrivalProductGet$Response,
      () => ProductServiceProductNoAuthNewArrivalProductGet$Response
          .fromJsonFactory,
    );

    return _productServiceProductNoAuthNewArrivalProductGet(
      pageNum: pageNum,
      pageSize: pageSize,
      brandName: brandName,
    );
  }

  ///新品专区商品
  ///@param pageNum
  ///@param pageSize
  ///@param brandName
  @GET(path: '/product-service/product/no-auth/newArrivalProduct')
  Future<
    chopper.Response<ProductServiceProductNoAuthNewArrivalProductGet$Response>
  >
  _productServiceProductNoAuthNewArrivalProductGet({
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
  Future<
    chopper.Response<
      ProductServiceProductNoAuthNewArrivalProductBrandGet$Response
    >
  >
  productServiceProductNoAuthNewArrivalProductBrandGet() {
    generatedMapping.putIfAbsent(
      ProductServiceProductNoAuthNewArrivalProductBrandGet$Response,
      () => ProductServiceProductNoAuthNewArrivalProductBrandGet$Response
          .fromJsonFactory,
    );

    return _productServiceProductNoAuthNewArrivalProductBrandGet();
  }

  ///新品专区商品品牌
  @GET(path: '/product-service/product/no-auth/newArrivalProductBrand')
  Future<
    chopper.Response<
      ProductServiceProductNoAuthNewArrivalProductBrandGet$Response
    >
  >
  _productServiceProductNoAuthNewArrivalProductBrandGet({
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
  Future<chopper.Response<ProductServiceProductNoAuthSkuListGet$Response>>
  productServiceProductNoAuthSkuListGet({
    String? productCode,
    String? platformProductId,
    String? sourcePlatform,
  }) {
    generatedMapping.putIfAbsent(
      ProductServiceProductNoAuthSkuListGet$Response,
      () => ProductServiceProductNoAuthSkuListGet$Response.fromJsonFactory,
    );

    return _productServiceProductNoAuthSkuListGet(
      productCode: productCode,
      platformProductId: platformProductId,
      sourcePlatform: sourcePlatform,
    );
  }

  ///查询SKU列表
  ///@param productCode
  ///@param platformProductId
  ///@param sourcePlatform
  @GET(path: '/product-service/product/no-auth/skuList')
  Future<chopper.Response<ProductServiceProductNoAuthSkuListGet$Response>>
  _productServiceProductNoAuthSkuListGet({
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
  Future<
    chopper.Response<ProductServiceProductNoAuthGetProductInfoGet$Response>
  >
  productServiceProductNoAuthGetProductInfoGet({
    String? productCode,
    String? sourcePlatform,
    String? platformProductId,
  }) {
    generatedMapping.putIfAbsent(
      ProductServiceProductNoAuthGetProductInfoGet$Response,
      () =>
          ProductServiceProductNoAuthGetProductInfoGet$Response.fromJsonFactory,
    );

    return _productServiceProductNoAuthGetProductInfoGet(
      productCode: productCode,
      sourcePlatform: sourcePlatform,
      platformProductId: platformProductId,
    );
  }

  ///查询商品详情
  ///@param productCode productCode  或 (sourcePlatform,platformProductId)  ，优先用productCode，productCode为空则用sourcePlatform和platformProductId组合
  ///@param sourcePlatform 平台： 枚举值为：taobao、 tmall、 weidian、 1688  不区分大小写
  ///@param platformProductId 平台商品ID
  @GET(path: '/product-service/product/no-auth/getProductInfo')
  Future<
    chopper.Response<ProductServiceProductNoAuthGetProductInfoGet$Response>
  >
  _productServiceProductNoAuthGetProductInfoGet({
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
  Future<
    chopper.Response<
      ProductServiceProductNoAuthPremierProductCategoryGet$Response
    >
  >
  productServiceProductNoAuthPremierProductCategoryGet() {
    generatedMapping.putIfAbsent(
      ProductServiceProductNoAuthPremierProductCategoryGet$Response,
      () => ProductServiceProductNoAuthPremierProductCategoryGet$Response
          .fromJsonFactory,
    );

    return _productServiceProductNoAuthPremierProductCategoryGet();
  }

  ///查询首选商品品类
  @GET(path: '/product-service/product/no-auth/premierProductCategory')
  Future<
    chopper.Response<
      ProductServiceProductNoAuthPremierProductCategoryGet$Response
    >
  >
  _productServiceProductNoAuthPremierProductCategoryGet({
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
  Future<chopper.Response<ProductServiceProductNoAuthHotProductGet$Response>>
  productServiceProductNoAuthHotProductGet() {
    generatedMapping.putIfAbsent(
      ProductServiceProductNoAuthHotProductGet$Response,
      () => ProductServiceProductNoAuthHotProductGet$Response.fromJsonFactory,
    );

    return _productServiceProductNoAuthHotProductGet();
  }

  ///热门商品
  @GET(path: '/product-service/product/no-auth/hotProduct')
  Future<chopper.Response<ProductServiceProductNoAuthHotProductGet$Response>>
  _productServiceProductNoAuthHotProductGet({
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
  Future<chopper.Response<ProductServiceProductNoAuthHotProductV2Get$Response>>
  productServiceProductNoAuthHotProductV2Get({
    String? current,
    String? size,
    String? productCode,
    String? categoryId,
  }) {
    generatedMapping.putIfAbsent(
      ProductServiceProductNoAuthHotProductV2Get$Response,
      () => ProductServiceProductNoAuthHotProductV2Get$Response.fromJsonFactory,
    );

    return _productServiceProductNoAuthHotProductV2Get(
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
  @GET(path: '/product-service/product/no-auth/hotProduct/v2')
  Future<chopper.Response<ProductServiceProductNoAuthHotProductV2Get$Response>>
  _productServiceProductNoAuthHotProductV2Get({
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
  Future<chopper.Response<ProductServiceProductNoAuthHotProductV3Get$Response>>
  productServiceProductNoAuthHotProductV3Get({String? current, String? size}) {
    generatedMapping.putIfAbsent(
      ProductServiceProductNoAuthHotProductV3Get$Response,
      () => ProductServiceProductNoAuthHotProductV3Get$Response.fromJsonFactory,
    );

    return _productServiceProductNoAuthHotProductV3Get(
      current: current,
      size: size,
    );
  }

  ///热门商品-V3
  ///@param current 当前页码，默认为1
  ///@param size 分页大小，默认为10
  @GET(path: '/product-service/product/no-auth/hotProduct/v3')
  Future<chopper.Response<ProductServiceProductNoAuthHotProductV3Get$Response>>
  _productServiceProductNoAuthHotProductV3Get({
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
  Future<
    chopper.Response<ProductServiceProductNoAuthFlashSaleProductGet$Response>
  >
  productServiceProductNoAuthFlashSaleProductGet({
    String? current,
    String? size,
    String? productCode,
  }) {
    generatedMapping.putIfAbsent(
      ProductServiceProductNoAuthFlashSaleProductGet$Response,
      () => ProductServiceProductNoAuthFlashSaleProductGet$Response
          .fromJsonFactory,
    );

    return _productServiceProductNoAuthFlashSaleProductGet(
      current: current,
      size: size,
      productCode: productCode,
    );
  }

  ///特价商品
  ///@param current
  ///@param size
  ///@param productCode
  @GET(path: '/product-service/product/no-auth/flashSaleProduct')
  Future<
    chopper.Response<ProductServiceProductNoAuthFlashSaleProductGet$Response>
  >
  _productServiceProductNoAuthFlashSaleProductGet({
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
  Future<chopper.Response<ProductServiceProductNoAuthAlbumProductGet$Response>>
  productServiceProductNoAuthAlbumProductGet({
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
      ProductServiceProductNoAuthAlbumProductGet$Response,
      () => ProductServiceProductNoAuthAlbumProductGet$Response.fromJsonFactory,
    );

    return _productServiceProductNoAuthAlbumProductGet(
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
  @GET(path: '/product-service/product/no-auth/albumProduct')
  Future<chopper.Response<ProductServiceProductNoAuthAlbumProductGet$Response>>
  _productServiceProductNoAuthAlbumProductGet({
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
  Future<chopper.Response<ProductServiceShopNoAuthGetThirdShopGet$Response>>
  productServiceShopNoAuthGetThirdShopGet({
    required String? shopCode,
    required String? sourcePlatform,
  }) {
    generatedMapping.putIfAbsent(
      ProductServiceShopNoAuthGetThirdShopGet$Response,
      () => ProductServiceShopNoAuthGetThirdShopGet$Response.fromJsonFactory,
    );

    return _productServiceShopNoAuthGetThirdShopGet(
      shopCode: shopCode,
      sourcePlatform: sourcePlatform,
    );
  }

  ///第三方店铺信息和TopN商品
  ///@param shopCode
  ///@param sourcePlatform 来源平台
  @GET(path: '/product-service/shop/no-auth/getThirdShop')
  Future<chopper.Response<ProductServiceShopNoAuthGetThirdShopGet$Response>>
  _productServiceShopNoAuthGetThirdShopGet({
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
  Future<chopper.Response<ProductServiceProductNoAuthKolProductGet$Response>>
  productServiceProductNoAuthKolProductGet({required String? code}) {
    generatedMapping.putIfAbsent(
      ProductServiceProductNoAuthKolProductGet$Response,
      () => ProductServiceProductNoAuthKolProductGet$Response.fromJsonFactory,
    );

    return _productServiceProductNoAuthKolProductGet(code: code);
  }

  ///红人商品
  ///@param code
  @GET(path: '/product-service/product/no-auth/kolProduct')
  Future<chopper.Response<ProductServiceProductNoAuthKolProductGet$Response>>
  _productServiceProductNoAuthKolProductGet({
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
  Future<
    chopper.Response<ProductServiceProductNoAuthPremierProductGet$Response>
  >
  productServiceProductNoAuthPremierProductGet({
    required String? pageNum,
    required String? pageSize,
    String? brandName,
    String? categoryId,
    String? productCode,
  }) {
    generatedMapping.putIfAbsent(
      ProductServiceProductNoAuthPremierProductGet$Response,
      () =>
          ProductServiceProductNoAuthPremierProductGet$Response.fromJsonFactory,
    );

    return _productServiceProductNoAuthPremierProductGet(
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
  @GET(path: '/product-service/product/no-auth/premierProduct')
  Future<
    chopper.Response<ProductServiceProductNoAuthPremierProductGet$Response>
  >
  _productServiceProductNoAuthPremierProductGet({
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
  Future<
    chopper.Response<ProductServiceProductNoAuthPremierProductBrandGet$Response>
  >
  productServiceProductNoAuthPremierProductBrandGet() {
    generatedMapping.putIfAbsent(
      ProductServiceProductNoAuthPremierProductBrandGet$Response,
      () => ProductServiceProductNoAuthPremierProductBrandGet$Response
          .fromJsonFactory,
    );

    return _productServiceProductNoAuthPremierProductBrandGet();
  }

  ///首选商品品牌
  @GET(path: '/product-service/product/no-auth/premierProductBrand')
  Future<
    chopper.Response<ProductServiceProductNoAuthPremierProductBrandGet$Response>
  >
  _productServiceProductNoAuthPremierProductBrandGet({
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
  Future<
    chopper.Response<
      ProductServiceRecommendNoAuthCategoryRecommendationGet$Response
    >
  >
  productServiceRecommendNoAuthCategoryRecommendationGet({Object? root}) {
    generatedMapping.putIfAbsent(
      ProductServiceRecommendNoAuthCategoryRecommendationGet$Response,
      () => ProductServiceRecommendNoAuthCategoryRecommendationGet$Response
          .fromJsonFactory,
    );

    return _productServiceRecommendNoAuthCategoryRecommendationGet(root: root);
  }

  ///分类热门商品推荐
  ///@param root
  @GET(path: '/product-service/recommend/no-auth/categoryRecommendation')
  Future<
    chopper.Response<
      ProductServiceRecommendNoAuthCategoryRecommendationGet$Response
    >
  >
  _productServiceRecommendNoAuthCategoryRecommendationGet({
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
  Future<chopper.Response<ProductServiceRecommendNoAuthCategoryPost$Response>>
  productServiceRecommendNoAuthCategoryPost({Object? root}) {
    generatedMapping.putIfAbsent(
      ProductServiceRecommendNoAuthCategoryPost$Response,
      () => ProductServiceRecommendNoAuthCategoryPost$Response.fromJsonFactory,
    );

    return _productServiceRecommendNoAuthCategoryPost(root: root);
  }

  ///分类页商品
  ///@param root
  @POST(path: '/product-service/recommend/no-auth/category')
  Future<chopper.Response<ProductServiceRecommendNoAuthCategoryPost$Response>>
  _productServiceRecommendNoAuthCategoryPost({
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
  Future<chopper.Response<ProductServiceRecommendNoAuthShopPost$Response>>
  productServiceRecommendNoAuthShopPost({Object? root}) {
    generatedMapping.putIfAbsent(
      ProductServiceRecommendNoAuthShopPost$Response,
      () => ProductServiceRecommendNoAuthShopPost$Response.fromJsonFactory,
    );

    return _productServiceRecommendNoAuthShopPost(root: root);
  }

  ///店铺页商品
  ///@param root
  @POST(path: '/product-service/recommend/no-auth/shop')
  Future<chopper.Response<ProductServiceRecommendNoAuthShopPost$Response>>
  _productServiceRecommendNoAuthShopPost({
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
  Future<
    chopper.Response<ProductServiceRecommendNoAuthSimilarProductPost$Response>
  >
  productServiceRecommendNoAuthSimilarProductPost({Object? root}) {
    generatedMapping.putIfAbsent(
      ProductServiceRecommendNoAuthSimilarProductPost$Response,
      () => ProductServiceRecommendNoAuthSimilarProductPost$Response
          .fromJsonFactory,
    );

    return _productServiceRecommendNoAuthSimilarProductPost(root: root);
  }

  ///相关商品【后续可能会有换一批之类，用分页接口】
  ///@param root
  @POST(path: '/product-service/recommend/no-auth/similarProduct')
  Future<
    chopper.Response<ProductServiceRecommendNoAuthSimilarProductPost$Response>
  >
  _productServiceRecommendNoAuthSimilarProductPost({
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
class ProductServiceProductReviewNoAuthPageGet$Response {
  const ProductServiceProductReviewNoAuthPageGet$Response({
    this.code,
    this.message,
    this.data,
  });

  factory ProductServiceProductReviewNoAuthPageGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductReviewNoAuthPageGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$ProductServiceProductReviewNoAuthPageGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductReviewNoAuthPageGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asDouble)
  final double? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final ProductServiceProductReviewNoAuthPageGet$Response$Data? data;
  static const fromJsonFactory =
      _$ProductServiceProductReviewNoAuthPageGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductReviewNoAuthPageGet$Response &&
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

extension $ProductServiceProductReviewNoAuthPageGet$ResponseExtension
    on ProductServiceProductReviewNoAuthPageGet$Response {
  ProductServiceProductReviewNoAuthPageGet$Response copyWith({
    double? code,
    String? message,
    ProductServiceProductReviewNoAuthPageGet$Response$Data? data,
  }) {
    return ProductServiceProductReviewNoAuthPageGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

  ProductServiceProductReviewNoAuthPageGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<ProductServiceProductReviewNoAuthPageGet$Response$Data?>? data,
  }) {
    return ProductServiceProductReviewNoAuthPageGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductReviewNoAuthSummaryGet$Response {
  const ProductServiceProductReviewNoAuthSummaryGet$Response({
    this.code,
    this.message,
    this.data,
  });

  factory ProductServiceProductReviewNoAuthSummaryGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductReviewNoAuthSummaryGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$ProductServiceProductReviewNoAuthSummaryGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductReviewNoAuthSummaryGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asDouble)
  final double? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final ProductServiceProductReviewNoAuthSummaryGet$Response$Data? data;
  static const fromJsonFactory =
      _$ProductServiceProductReviewNoAuthSummaryGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductReviewNoAuthSummaryGet$Response &&
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

extension $ProductServiceProductReviewNoAuthSummaryGet$ResponseExtension
    on ProductServiceProductReviewNoAuthSummaryGet$Response {
  ProductServiceProductReviewNoAuthSummaryGet$Response copyWith({
    double? code,
    String? message,
    ProductServiceProductReviewNoAuthSummaryGet$Response$Data? data,
  }) {
    return ProductServiceProductReviewNoAuthSummaryGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

  ProductServiceProductReviewNoAuthSummaryGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<ProductServiceProductReviewNoAuthSummaryGet$Response$Data?>? data,
  }) {
    return ProductServiceProductReviewNoAuthSummaryGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceCategoryNoAuthTreeGet$Response {
  const ProductServiceCategoryNoAuthTreeGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory ProductServiceCategoryNoAuthTreeGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceCategoryNoAuthTreeGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$ProductServiceCategoryNoAuthTreeGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceCategoryNoAuthTreeGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asDouble)
  final double? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final ProductServiceCategoryNoAuthTreeGet$Response$Data? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory =
      _$ProductServiceCategoryNoAuthTreeGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceCategoryNoAuthTreeGet$Response &&
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

extension $ProductServiceCategoryNoAuthTreeGet$ResponseExtension
    on ProductServiceCategoryNoAuthTreeGet$Response {
  ProductServiceCategoryNoAuthTreeGet$Response copyWith({
    double? code,
    String? message,
    ProductServiceCategoryNoAuthTreeGet$Response$Data? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return ProductServiceCategoryNoAuthTreeGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  ProductServiceCategoryNoAuthTreeGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<ProductServiceCategoryNoAuthTreeGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return ProductServiceCategoryNoAuthTreeGet$Response(
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
class ProductServiceActivityNoAuthFlashSaleActivityGet$Response {
  const ProductServiceActivityNoAuthFlashSaleActivityGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.success,
  });

  factory ProductServiceActivityNoAuthFlashSaleActivityGet$Response.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceActivityNoAuthFlashSaleActivityGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$ProductServiceActivityNoAuthFlashSaleActivityGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceActivityNoAuthFlashSaleActivityGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asDouble)
  final double? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory =
      _$ProductServiceActivityNoAuthFlashSaleActivityGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceActivityNoAuthFlashSaleActivityGet$Response &&
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

extension $ProductServiceActivityNoAuthFlashSaleActivityGet$ResponseExtension
    on ProductServiceActivityNoAuthFlashSaleActivityGet$Response {
  ProductServiceActivityNoAuthFlashSaleActivityGet$Response copyWith({
    double? code,
    String? message,
    ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data? data,
    String? traceId,
    bool? success,
  }) {
    return ProductServiceActivityNoAuthFlashSaleActivityGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      success: success ?? this.success,
    );
  }

  ProductServiceActivityNoAuthFlashSaleActivityGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data?>?
    data,
    Wrapped<String?>? traceId,
    Wrapped<bool?>? success,
  }) {
    return ProductServiceActivityNoAuthFlashSaleActivityGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response {
  const ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
  });

  factory ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceActivityNoAuthFlashSaleActivityProductGet$ResponseFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceActivityNoAuthFlashSaleActivityProductGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceActivityNoAuthFlashSaleActivityProductGet$ResponseToJson(
        this,
      );

  @JsonKey(name: 'code', fromJson: JsonCoerce.asString)
  final String? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data?
  data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  static const fromJsonFactory =
      _$ProductServiceActivityNoAuthFlashSaleActivityProductGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response &&
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

extension $ProductServiceActivityNoAuthFlashSaleActivityProductGet$ResponseExtension
    on ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response {
  ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response copyWith({
    String? code,
    String? message,
    ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data? data,
    String? traceId,
  }) {
    return ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
    );
  }

  ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response
  copyWithWrapped({
    Wrapped<String?>? code,
    Wrapped<String?>? message,
    Wrapped<
      ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data?
    >?
    data,
    Wrapped<String?>? traceId,
  }) {
    return ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductPremiumDupeNoAuthPagePost$Response {
  const ProductServiceProductPremiumDupeNoAuthPagePost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
  });

  factory ProductServiceProductPremiumDupeNoAuthPagePost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductPremiumDupeNoAuthPagePost$ResponseFromJson(json);

  static const toJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthPagePost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductPremiumDupeNoAuthPagePost$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  static const fromJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthPagePost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductPremiumDupeNoAuthPagePost$Response &&
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

extension $ProductServiceProductPremiumDupeNoAuthPagePost$ResponseExtension
    on ProductServiceProductPremiumDupeNoAuthPagePost$Response {
  ProductServiceProductPremiumDupeNoAuthPagePost$Response copyWith({
    int? code,
    String? message,
    ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data? data,
    String? traceId,
  }) {
    return ProductServiceProductPremiumDupeNoAuthPagePost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
    );
  }

  ProductServiceProductPremiumDupeNoAuthPagePost$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data?>?
    data,
    Wrapped<String?>? traceId,
  }) {
    return ProductServiceProductPremiumDupeNoAuthPagePost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductPremiumDupeNoAuthMetaGet$Response {
  const ProductServiceProductPremiumDupeNoAuthMetaGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
  });

  factory ProductServiceProductPremiumDupeNoAuthMetaGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductPremiumDupeNoAuthMetaGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthMetaGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductPremiumDupeNoAuthMetaGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  static const fromJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthMetaGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductPremiumDupeNoAuthMetaGet$Response &&
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

extension $ProductServiceProductPremiumDupeNoAuthMetaGet$ResponseExtension
    on ProductServiceProductPremiumDupeNoAuthMetaGet$Response {
  ProductServiceProductPremiumDupeNoAuthMetaGet$Response copyWith({
    int? code,
    String? message,
    ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data? data,
    String? traceId,
  }) {
    return ProductServiceProductPremiumDupeNoAuthMetaGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
    );
  }

  ProductServiceProductPremiumDupeNoAuthMetaGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
  }) {
    return ProductServiceProductPremiumDupeNoAuthMetaGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductPremiumDupeNoAuthSelectionGet$Response {
  const ProductServiceProductPremiumDupeNoAuthSelectionGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
  });

  factory ProductServiceProductPremiumDupeNoAuthSelectionGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductPremiumDupeNoAuthSelectionGet$ResponseFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthSelectionGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductPremiumDupeNoAuthSelectionGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final List<
    ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item
  >?
  data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  static const fromJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthSelectionGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductPremiumDupeNoAuthSelectionGet$Response &&
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

extension $ProductServiceProductPremiumDupeNoAuthSelectionGet$ResponseExtension
    on ProductServiceProductPremiumDupeNoAuthSelectionGet$Response {
  ProductServiceProductPremiumDupeNoAuthSelectionGet$Response copyWith({
    int? code,
    String? message,
    List<ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item>?
    data,
    String? traceId,
  }) {
    return ProductServiceProductPremiumDupeNoAuthSelectionGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
    );
  }

  ProductServiceProductPremiumDupeNoAuthSelectionGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<
      List<
        ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item
      >?
    >?
    data,
    Wrapped<String?>? traceId,
  }) {
    return ProductServiceProductPremiumDupeNoAuthSelectionGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceExternalPurchaseRecordPost$Response {
  const ProductServiceExternalPurchaseRecordPost$Response({
    this.code,
    this.message,
    this.data,
  });

  factory ProductServiceExternalPurchaseRecordPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceExternalPurchaseRecordPost$ResponseFromJson(json);

  static const toJsonFactory =
      _$ProductServiceExternalPurchaseRecordPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceExternalPurchaseRecordPost$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asDouble)
  final double? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data', fromJson: JsonCoerce.asBool)
  final bool? data;
  static const fromJsonFactory =
      _$ProductServiceExternalPurchaseRecordPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceExternalPurchaseRecordPost$Response &&
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

extension $ProductServiceExternalPurchaseRecordPost$ResponseExtension
    on ProductServiceExternalPurchaseRecordPost$Response {
  ProductServiceExternalPurchaseRecordPost$Response copyWith({
    double? code,
    String? message,
    bool? data,
  }) {
    return ProductServiceExternalPurchaseRecordPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

  ProductServiceExternalPurchaseRecordPost$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<bool?>? data,
  }) {
    return ProductServiceExternalPurchaseRecordPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthPushProductGet$Response {
  const ProductServiceProductNoAuthPushProductGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
  });

  factory ProductServiceProductNoAuthPushProductGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductNoAuthPushProductGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$ProductServiceProductNoAuthPushProductGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthPushProductGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final ProductServiceProductNoAuthPushProductGet$Response$Data? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthPushProductGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthPushProductGet$Response &&
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

extension $ProductServiceProductNoAuthPushProductGet$ResponseExtension
    on ProductServiceProductNoAuthPushProductGet$Response {
  ProductServiceProductNoAuthPushProductGet$Response copyWith({
    int? code,
    String? message,
    ProductServiceProductNoAuthPushProductGet$Response$Data? data,
    String? traceId,
  }) {
    return ProductServiceProductNoAuthPushProductGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
    );
  }

  ProductServiceProductNoAuthPushProductGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<ProductServiceProductNoAuthPushProductGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
  }) {
    return ProductServiceProductNoAuthPushProductGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthSearchGet$Response {
  const ProductServiceProductNoAuthSearchGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
  });

  factory ProductServiceProductNoAuthSearchGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductNoAuthSearchGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$ProductServiceProductNoAuthSearchGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthSearchGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final List<ProductServiceProductNoAuthSearchGet$Response$Data$Item>? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthSearchGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthSearchGet$Response &&
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

extension $ProductServiceProductNoAuthSearchGet$ResponseExtension
    on ProductServiceProductNoAuthSearchGet$Response {
  ProductServiceProductNoAuthSearchGet$Response copyWith({
    int? code,
    String? message,
    List<ProductServiceProductNoAuthSearchGet$Response$Data$Item>? data,
    String? traceId,
  }) {
    return ProductServiceProductNoAuthSearchGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
    );
  }

  ProductServiceProductNoAuthSearchGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<List<ProductServiceProductNoAuthSearchGet$Response$Data$Item>?>?
    data,
    Wrapped<String?>? traceId,
  }) {
    return ProductServiceProductNoAuthSearchGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthCombineSearchGet$Response {
  const ProductServiceProductNoAuthCombineSearchGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory ProductServiceProductNoAuthCombineSearchGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductNoAuthCombineSearchGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$ProductServiceProductNoAuthCombineSearchGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthCombineSearchGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asDouble)
  final double? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final ProductServiceProductNoAuthCombineSearchGet$Response$Data? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthCombineSearchGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthCombineSearchGet$Response &&
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

extension $ProductServiceProductNoAuthCombineSearchGet$ResponseExtension
    on ProductServiceProductNoAuthCombineSearchGet$Response {
  ProductServiceProductNoAuthCombineSearchGet$Response copyWith({
    double? code,
    String? message,
    ProductServiceProductNoAuthCombineSearchGet$Response$Data? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return ProductServiceProductNoAuthCombineSearchGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  ProductServiceProductNoAuthCombineSearchGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<ProductServiceProductNoAuthCombineSearchGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return ProductServiceProductNoAuthCombineSearchGet$Response(
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
class ProductServiceProductNoAuthNewArrivalProductGet$Response {
  const ProductServiceProductNoAuthNewArrivalProductGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory ProductServiceProductNoAuthNewArrivalProductGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductNoAuthNewArrivalProductGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$ProductServiceProductNoAuthNewArrivalProductGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthNewArrivalProductGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asDouble)
  final double? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final ProductServiceProductNoAuthNewArrivalProductGet$Response$Data? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthNewArrivalProductGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthNewArrivalProductGet$Response &&
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

extension $ProductServiceProductNoAuthNewArrivalProductGet$ResponseExtension
    on ProductServiceProductNoAuthNewArrivalProductGet$Response {
  ProductServiceProductNoAuthNewArrivalProductGet$Response copyWith({
    double? code,
    String? message,
    ProductServiceProductNoAuthNewArrivalProductGet$Response$Data? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return ProductServiceProductNoAuthNewArrivalProductGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  ProductServiceProductNoAuthNewArrivalProductGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<ProductServiceProductNoAuthNewArrivalProductGet$Response$Data?>?
    data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return ProductServiceProductNoAuthNewArrivalProductGet$Response(
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
class ProductServiceProductNoAuthNewArrivalProductBrandGet$Response {
  const ProductServiceProductNoAuthNewArrivalProductBrandGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory ProductServiceProductNoAuthNewArrivalProductBrandGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductNoAuthNewArrivalProductBrandGet$ResponseFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthNewArrivalProductBrandGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthNewArrivalProductBrandGet$ResponseToJson(
        this,
      );

  @JsonKey(name: 'code', fromJson: JsonCoerce.asDouble)
  final double? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(
    name: 'data',
    fromJson: JsonCoerce.asStringList,
    defaultValue: <String>[],
  )
  final List<String>? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthNewArrivalProductBrandGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthNewArrivalProductBrandGet$Response &&
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

extension $ProductServiceProductNoAuthNewArrivalProductBrandGet$ResponseExtension
    on ProductServiceProductNoAuthNewArrivalProductBrandGet$Response {
  ProductServiceProductNoAuthNewArrivalProductBrandGet$Response copyWith({
    double? code,
    String? message,
    List<String>? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return ProductServiceProductNoAuthNewArrivalProductBrandGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  ProductServiceProductNoAuthNewArrivalProductBrandGet$Response
  copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<List<String>?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return ProductServiceProductNoAuthNewArrivalProductBrandGet$Response(
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
class ProductServiceProductNoAuthSkuListGet$Response {
  const ProductServiceProductNoAuthSkuListGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
  });

  factory ProductServiceProductNoAuthSkuListGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductNoAuthSkuListGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$ProductServiceProductNoAuthSkuListGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthSkuListGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final List<ProductServiceProductNoAuthSkuListGet$Response$Data$Item>? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthSkuListGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthSkuListGet$Response &&
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

extension $ProductServiceProductNoAuthSkuListGet$ResponseExtension
    on ProductServiceProductNoAuthSkuListGet$Response {
  ProductServiceProductNoAuthSkuListGet$Response copyWith({
    int? code,
    String? message,
    List<ProductServiceProductNoAuthSkuListGet$Response$Data$Item>? data,
    String? traceId,
  }) {
    return ProductServiceProductNoAuthSkuListGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
    );
  }

  ProductServiceProductNoAuthSkuListGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<List<ProductServiceProductNoAuthSkuListGet$Response$Data$Item>?>?
    data,
    Wrapped<String?>? traceId,
  }) {
    return ProductServiceProductNoAuthSkuListGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthGetProductInfoGet$Response {
  const ProductServiceProductNoAuthGetProductInfoGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory ProductServiceProductNoAuthGetProductInfoGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductNoAuthGetProductInfoGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$ProductServiceProductNoAuthGetProductInfoGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthGetProductInfoGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asDouble)
  final double? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final ProductServiceProductNoAuthGetProductInfoGet$Response$Data? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthGetProductInfoGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthGetProductInfoGet$Response &&
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

extension $ProductServiceProductNoAuthGetProductInfoGet$ResponseExtension
    on ProductServiceProductNoAuthGetProductInfoGet$Response {
  ProductServiceProductNoAuthGetProductInfoGet$Response copyWith({
    double? code,
    String? message,
    ProductServiceProductNoAuthGetProductInfoGet$Response$Data? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return ProductServiceProductNoAuthGetProductInfoGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  ProductServiceProductNoAuthGetProductInfoGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<ProductServiceProductNoAuthGetProductInfoGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return ProductServiceProductNoAuthGetProductInfoGet$Response(
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
class ProductServiceProductNoAuthPremierProductCategoryGet$Response {
  const ProductServiceProductNoAuthPremierProductCategoryGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory ProductServiceProductNoAuthPremierProductCategoryGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductNoAuthPremierProductCategoryGet$ResponseFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthPremierProductCategoryGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthPremierProductCategoryGet$ResponseToJson(
        this,
      );

  @JsonKey(name: 'code', fromJson: JsonCoerce.asDouble)
  final double? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data?
  data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthPremierProductCategoryGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthPremierProductCategoryGet$Response &&
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

extension $ProductServiceProductNoAuthPremierProductCategoryGet$ResponseExtension
    on ProductServiceProductNoAuthPremierProductCategoryGet$Response {
  ProductServiceProductNoAuthPremierProductCategoryGet$Response copyWith({
    double? code,
    String? message,
    ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return ProductServiceProductNoAuthPremierProductCategoryGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  ProductServiceProductNoAuthPremierProductCategoryGet$Response
  copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<
      ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data?
    >?
    data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return ProductServiceProductNoAuthPremierProductCategoryGet$Response(
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
class ProductServiceProductNoAuthHotProductGet$Response {
  const ProductServiceProductNoAuthHotProductGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
  });

  factory ProductServiceProductNoAuthHotProductGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductNoAuthHotProductGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$ProductServiceProductNoAuthHotProductGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthHotProductGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final List<ProductServiceProductNoAuthHotProductGet$Response$Data$Item>? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthHotProductGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthHotProductGet$Response &&
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

extension $ProductServiceProductNoAuthHotProductGet$ResponseExtension
    on ProductServiceProductNoAuthHotProductGet$Response {
  ProductServiceProductNoAuthHotProductGet$Response copyWith({
    int? code,
    String? message,
    List<ProductServiceProductNoAuthHotProductGet$Response$Data$Item>? data,
    String? traceId,
  }) {
    return ProductServiceProductNoAuthHotProductGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
    );
  }

  ProductServiceProductNoAuthHotProductGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<List<ProductServiceProductNoAuthHotProductGet$Response$Data$Item>?>?
    data,
    Wrapped<String?>? traceId,
  }) {
    return ProductServiceProductNoAuthHotProductGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthHotProductV2Get$Response {
  const ProductServiceProductNoAuthHotProductV2Get$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
  });

  factory ProductServiceProductNoAuthHotProductV2Get$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductNoAuthHotProductV2Get$ResponseFromJson(json);

  static const toJsonFactory =
      _$ProductServiceProductNoAuthHotProductV2Get$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthHotProductV2Get$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final ProductServiceProductNoAuthHotProductV2Get$Response$Data? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthHotProductV2Get$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthHotProductV2Get$Response &&
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

extension $ProductServiceProductNoAuthHotProductV2Get$ResponseExtension
    on ProductServiceProductNoAuthHotProductV2Get$Response {
  ProductServiceProductNoAuthHotProductV2Get$Response copyWith({
    int? code,
    String? message,
    ProductServiceProductNoAuthHotProductV2Get$Response$Data? data,
    String? traceId,
  }) {
    return ProductServiceProductNoAuthHotProductV2Get$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
    );
  }

  ProductServiceProductNoAuthHotProductV2Get$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<ProductServiceProductNoAuthHotProductV2Get$Response$Data?>? data,
    Wrapped<String?>? traceId,
  }) {
    return ProductServiceProductNoAuthHotProductV2Get$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthHotProductV3Get$Response {
  const ProductServiceProductNoAuthHotProductV3Get$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.success,
  });

  factory ProductServiceProductNoAuthHotProductV3Get$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductNoAuthHotProductV3Get$ResponseFromJson(json);

  static const toJsonFactory =
      _$ProductServiceProductNoAuthHotProductV3Get$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthHotProductV3Get$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asDouble)
  final double? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final ProductServiceProductNoAuthHotProductV3Get$Response$Data? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthHotProductV3Get$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthHotProductV3Get$Response &&
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

extension $ProductServiceProductNoAuthHotProductV3Get$ResponseExtension
    on ProductServiceProductNoAuthHotProductV3Get$Response {
  ProductServiceProductNoAuthHotProductV3Get$Response copyWith({
    double? code,
    String? message,
    ProductServiceProductNoAuthHotProductV3Get$Response$Data? data,
    String? traceId,
    bool? success,
  }) {
    return ProductServiceProductNoAuthHotProductV3Get$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      success: success ?? this.success,
    );
  }

  ProductServiceProductNoAuthHotProductV3Get$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<ProductServiceProductNoAuthHotProductV3Get$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<bool?>? success,
  }) {
    return ProductServiceProductNoAuthHotProductV3Get$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthFlashSaleProductGet$Response {
  const ProductServiceProductNoAuthFlashSaleProductGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory ProductServiceProductNoAuthFlashSaleProductGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductNoAuthFlashSaleProductGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$ProductServiceProductNoAuthFlashSaleProductGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthFlashSaleProductGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asDouble)
  final double? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final List<ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item>?
  data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthFlashSaleProductGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthFlashSaleProductGet$Response &&
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

extension $ProductServiceProductNoAuthFlashSaleProductGet$ResponseExtension
    on ProductServiceProductNoAuthFlashSaleProductGet$Response {
  ProductServiceProductNoAuthFlashSaleProductGet$Response copyWith({
    double? code,
    String? message,
    List<ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item>?
    data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return ProductServiceProductNoAuthFlashSaleProductGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  ProductServiceProductNoAuthFlashSaleProductGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<
      List<ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item>?
    >?
    data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return ProductServiceProductNoAuthFlashSaleProductGet$Response(
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
class ProductServiceProductNoAuthAlbumProductGet$Response {
  const ProductServiceProductNoAuthAlbumProductGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory ProductServiceProductNoAuthAlbumProductGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductNoAuthAlbumProductGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$ProductServiceProductNoAuthAlbumProductGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthAlbumProductGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asDouble)
  final double? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final ProductServiceProductNoAuthAlbumProductGet$Response$Data? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthAlbumProductGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthAlbumProductGet$Response &&
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

extension $ProductServiceProductNoAuthAlbumProductGet$ResponseExtension
    on ProductServiceProductNoAuthAlbumProductGet$Response {
  ProductServiceProductNoAuthAlbumProductGet$Response copyWith({
    double? code,
    String? message,
    ProductServiceProductNoAuthAlbumProductGet$Response$Data? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return ProductServiceProductNoAuthAlbumProductGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  ProductServiceProductNoAuthAlbumProductGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<ProductServiceProductNoAuthAlbumProductGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return ProductServiceProductNoAuthAlbumProductGet$Response(
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
class ProductServiceShopNoAuthGetThirdShopGet$Response {
  const ProductServiceShopNoAuthGetThirdShopGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
  });

  factory ProductServiceShopNoAuthGetThirdShopGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceShopNoAuthGetThirdShopGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$ProductServiceShopNoAuthGetThirdShopGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceShopNoAuthGetThirdShopGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final ProductServiceShopNoAuthGetThirdShopGet$Response$Data? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  static const fromJsonFactory =
      _$ProductServiceShopNoAuthGetThirdShopGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceShopNoAuthGetThirdShopGet$Response &&
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

extension $ProductServiceShopNoAuthGetThirdShopGet$ResponseExtension
    on ProductServiceShopNoAuthGetThirdShopGet$Response {
  ProductServiceShopNoAuthGetThirdShopGet$Response copyWith({
    int? code,
    String? message,
    ProductServiceShopNoAuthGetThirdShopGet$Response$Data? data,
    String? traceId,
  }) {
    return ProductServiceShopNoAuthGetThirdShopGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
    );
  }

  ProductServiceShopNoAuthGetThirdShopGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<ProductServiceShopNoAuthGetThirdShopGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
  }) {
    return ProductServiceShopNoAuthGetThirdShopGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthKolProductGet$Response {
  const ProductServiceProductNoAuthKolProductGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory ProductServiceProductNoAuthKolProductGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductNoAuthKolProductGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$ProductServiceProductNoAuthKolProductGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthKolProductGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asDouble)
  final double? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final List<ProductServiceProductNoAuthKolProductGet$Response$Data$Item>? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthKolProductGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthKolProductGet$Response &&
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

extension $ProductServiceProductNoAuthKolProductGet$ResponseExtension
    on ProductServiceProductNoAuthKolProductGet$Response {
  ProductServiceProductNoAuthKolProductGet$Response copyWith({
    double? code,
    String? message,
    List<ProductServiceProductNoAuthKolProductGet$Response$Data$Item>? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return ProductServiceProductNoAuthKolProductGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  ProductServiceProductNoAuthKolProductGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<List<ProductServiceProductNoAuthKolProductGet$Response$Data$Item>?>?
    data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return ProductServiceProductNoAuthKolProductGet$Response(
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
class ProductServiceProductNoAuthPremierProductGet$Response {
  const ProductServiceProductNoAuthPremierProductGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory ProductServiceProductNoAuthPremierProductGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductNoAuthPremierProductGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$ProductServiceProductNoAuthPremierProductGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthPremierProductGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asDouble)
  final double? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final ProductServiceProductNoAuthPremierProductGet$Response$Data? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthPremierProductGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthPremierProductGet$Response &&
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

extension $ProductServiceProductNoAuthPremierProductGet$ResponseExtension
    on ProductServiceProductNoAuthPremierProductGet$Response {
  ProductServiceProductNoAuthPremierProductGet$Response copyWith({
    double? code,
    String? message,
    ProductServiceProductNoAuthPremierProductGet$Response$Data? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return ProductServiceProductNoAuthPremierProductGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  ProductServiceProductNoAuthPremierProductGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<ProductServiceProductNoAuthPremierProductGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return ProductServiceProductNoAuthPremierProductGet$Response(
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
class ProductServiceProductNoAuthPremierProductBrandGet$Response {
  const ProductServiceProductNoAuthPremierProductBrandGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory ProductServiceProductNoAuthPremierProductBrandGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductNoAuthPremierProductBrandGet$ResponseFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthPremierProductBrandGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthPremierProductBrandGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asDouble)
  final double? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(
    name: 'data',
    fromJson: JsonCoerce.asStringList,
    defaultValue: <String>[],
  )
  final List<String>? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthPremierProductBrandGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthPremierProductBrandGet$Response &&
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

extension $ProductServiceProductNoAuthPremierProductBrandGet$ResponseExtension
    on ProductServiceProductNoAuthPremierProductBrandGet$Response {
  ProductServiceProductNoAuthPremierProductBrandGet$Response copyWith({
    double? code,
    String? message,
    List<String>? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return ProductServiceProductNoAuthPremierProductBrandGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  ProductServiceProductNoAuthPremierProductBrandGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<List<String>?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return ProductServiceProductNoAuthPremierProductBrandGet$Response(
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
class ProductServiceRecommendNoAuthCategoryRecommendationGet$Response {
  const ProductServiceRecommendNoAuthCategoryRecommendationGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.success,
  });

  factory ProductServiceRecommendNoAuthCategoryRecommendationGet$Response.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceRecommendNoAuthCategoryRecommendationGet$ResponseFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceRecommendNoAuthCategoryRecommendationGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceRecommendNoAuthCategoryRecommendationGet$ResponseToJson(
        this,
      );

  @JsonKey(name: 'code', fromJson: JsonCoerce.asDouble)
  final double? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data?
  data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory =
      _$ProductServiceRecommendNoAuthCategoryRecommendationGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceRecommendNoAuthCategoryRecommendationGet$Response &&
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

extension $ProductServiceRecommendNoAuthCategoryRecommendationGet$ResponseExtension
    on ProductServiceRecommendNoAuthCategoryRecommendationGet$Response {
  ProductServiceRecommendNoAuthCategoryRecommendationGet$Response copyWith({
    double? code,
    String? message,
    ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data? data,
    String? traceId,
    bool? success,
  }) {
    return ProductServiceRecommendNoAuthCategoryRecommendationGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      success: success ?? this.success,
    );
  }

  ProductServiceRecommendNoAuthCategoryRecommendationGet$Response
  copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<
      ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data?
    >?
    data,
    Wrapped<String?>? traceId,
    Wrapped<bool?>? success,
  }) {
    return ProductServiceRecommendNoAuthCategoryRecommendationGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceRecommendNoAuthCategoryPost$Response {
  const ProductServiceRecommendNoAuthCategoryPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
  });

  factory ProductServiceRecommendNoAuthCategoryPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceRecommendNoAuthCategoryPost$ResponseFromJson(json);

  static const toJsonFactory =
      _$ProductServiceRecommendNoAuthCategoryPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceRecommendNoAuthCategoryPost$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final ProductServiceRecommendNoAuthCategoryPost$Response$Data? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  static const fromJsonFactory =
      _$ProductServiceRecommendNoAuthCategoryPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceRecommendNoAuthCategoryPost$Response &&
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

extension $ProductServiceRecommendNoAuthCategoryPost$ResponseExtension
    on ProductServiceRecommendNoAuthCategoryPost$Response {
  ProductServiceRecommendNoAuthCategoryPost$Response copyWith({
    int? code,
    String? message,
    ProductServiceRecommendNoAuthCategoryPost$Response$Data? data,
    String? traceId,
  }) {
    return ProductServiceRecommendNoAuthCategoryPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
    );
  }

  ProductServiceRecommendNoAuthCategoryPost$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<ProductServiceRecommendNoAuthCategoryPost$Response$Data?>? data,
    Wrapped<String?>? traceId,
  }) {
    return ProductServiceRecommendNoAuthCategoryPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceRecommendNoAuthShopPost$Response {
  const ProductServiceRecommendNoAuthShopPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
  });

  factory ProductServiceRecommendNoAuthShopPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceRecommendNoAuthShopPost$ResponseFromJson(json);

  static const toJsonFactory =
      _$ProductServiceRecommendNoAuthShopPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceRecommendNoAuthShopPost$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final ProductServiceRecommendNoAuthShopPost$Response$Data? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  static const fromJsonFactory =
      _$ProductServiceRecommendNoAuthShopPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceRecommendNoAuthShopPost$Response &&
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

extension $ProductServiceRecommendNoAuthShopPost$ResponseExtension
    on ProductServiceRecommendNoAuthShopPost$Response {
  ProductServiceRecommendNoAuthShopPost$Response copyWith({
    int? code,
    String? message,
    ProductServiceRecommendNoAuthShopPost$Response$Data? data,
    String? traceId,
  }) {
    return ProductServiceRecommendNoAuthShopPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
    );
  }

  ProductServiceRecommendNoAuthShopPost$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<ProductServiceRecommendNoAuthShopPost$Response$Data?>? data,
    Wrapped<String?>? traceId,
  }) {
    return ProductServiceRecommendNoAuthShopPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceRecommendNoAuthSimilarProductPost$Response {
  const ProductServiceRecommendNoAuthSimilarProductPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
  });

  factory ProductServiceRecommendNoAuthSimilarProductPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceRecommendNoAuthSimilarProductPost$ResponseFromJson(json);

  static const toJsonFactory =
      _$ProductServiceRecommendNoAuthSimilarProductPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceRecommendNoAuthSimilarProductPost$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final ProductServiceRecommendNoAuthSimilarProductPost$Response$Data? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  static const fromJsonFactory =
      _$ProductServiceRecommendNoAuthSimilarProductPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceRecommendNoAuthSimilarProductPost$Response &&
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

extension $ProductServiceRecommendNoAuthSimilarProductPost$ResponseExtension
    on ProductServiceRecommendNoAuthSimilarProductPost$Response {
  ProductServiceRecommendNoAuthSimilarProductPost$Response copyWith({
    int? code,
    String? message,
    ProductServiceRecommendNoAuthSimilarProductPost$Response$Data? data,
    String? traceId,
  }) {
    return ProductServiceRecommendNoAuthSimilarProductPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
    );
  }

  ProductServiceRecommendNoAuthSimilarProductPost$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<ProductServiceRecommendNoAuthSimilarProductPost$Response$Data?>?
    data,
    Wrapped<String?>? traceId,
  }) {
    return ProductServiceRecommendNoAuthSimilarProductPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductReviewNoAuthPageGet$Response$Data {
  const ProductServiceProductReviewNoAuthPageGet$Response$Data({
    this.current,
    this.size,
    this.total,
    this.pages,
    this.records,
  });

  factory ProductServiceProductReviewNoAuthPageGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductReviewNoAuthPageGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$ProductServiceProductReviewNoAuthPageGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductReviewNoAuthPageGet$Response$DataToJson(this);

  @JsonKey(name: 'current', fromJson: JsonCoerce.asDouble)
  final double? current;
  @JsonKey(name: 'size', fromJson: JsonCoerce.asDouble)
  final double? size;
  @JsonKey(name: 'total', fromJson: JsonCoerce.asDouble)
  final double? total;
  @JsonKey(name: 'pages', fromJson: JsonCoerce.asDouble)
  final double? pages;
  @JsonKey(name: 'records')
  final List<
    ProductServiceProductReviewNoAuthPageGet$Response$Data$Records$Item
  >?
  records;
  static const fromJsonFactory =
      _$ProductServiceProductReviewNoAuthPageGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductReviewNoAuthPageGet$Response$Data &&
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

extension $ProductServiceProductReviewNoAuthPageGet$Response$DataExtension
    on ProductServiceProductReviewNoAuthPageGet$Response$Data {
  ProductServiceProductReviewNoAuthPageGet$Response$Data copyWith({
    double? current,
    double? size,
    double? total,
    double? pages,
    List<ProductServiceProductReviewNoAuthPageGet$Response$Data$Records$Item>?
    records,
  }) {
    return ProductServiceProductReviewNoAuthPageGet$Response$Data(
      current: current ?? this.current,
      size: size ?? this.size,
      total: total ?? this.total,
      pages: pages ?? this.pages,
      records: records ?? this.records,
    );
  }

  ProductServiceProductReviewNoAuthPageGet$Response$Data copyWithWrapped({
    Wrapped<double?>? current,
    Wrapped<double?>? size,
    Wrapped<double?>? total,
    Wrapped<double?>? pages,
    Wrapped<
      List<ProductServiceProductReviewNoAuthPageGet$Response$Data$Records$Item>?
    >?
    records,
  }) {
    return ProductServiceProductReviewNoAuthPageGet$Response$Data(
      current: (current != null ? current.value : this.current),
      size: (size != null ? size.value : this.size),
      total: (total != null ? total.value : this.total),
      pages: (pages != null ? pages.value : this.pages),
      records: (records != null ? records.value : this.records),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductReviewNoAuthSummaryGet$Response$Data {
  const ProductServiceProductReviewNoAuthSummaryGet$Response$Data({
    this.productCode,
    this.reviewCount,
    this.averageScore,
    this.aiSummary,
    this.featuredReviews,
  });

  factory ProductServiceProductReviewNoAuthSummaryGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductReviewNoAuthSummaryGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$ProductServiceProductReviewNoAuthSummaryGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductReviewNoAuthSummaryGet$Response$DataToJson(this);

  @JsonKey(name: 'productCode', fromJson: JsonCoerce.asString)
  final String? productCode;
  @JsonKey(name: 'reviewCount', fromJson: JsonCoerce.asDouble)
  final double? reviewCount;
  @JsonKey(name: 'averageScore', fromJson: JsonCoerce.asDouble)
  final double? averageScore;
  @JsonKey(name: 'aiSummary', fromJson: JsonCoerce.asString)
  final String? aiSummary;
  @JsonKey(name: 'featuredReviews')
  final List<
    ProductServiceProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$Item
  >?
  featuredReviews;
  static const fromJsonFactory =
      _$ProductServiceProductReviewNoAuthSummaryGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductReviewNoAuthSummaryGet$Response$Data &&
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

extension $ProductServiceProductReviewNoAuthSummaryGet$Response$DataExtension
    on ProductServiceProductReviewNoAuthSummaryGet$Response$Data {
  ProductServiceProductReviewNoAuthSummaryGet$Response$Data copyWith({
    String? productCode,
    double? reviewCount,
    double? averageScore,
    String? aiSummary,
    List<
      ProductServiceProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$Item
    >?
    featuredReviews,
  }) {
    return ProductServiceProductReviewNoAuthSummaryGet$Response$Data(
      productCode: productCode ?? this.productCode,
      reviewCount: reviewCount ?? this.reviewCount,
      averageScore: averageScore ?? this.averageScore,
      aiSummary: aiSummary ?? this.aiSummary,
      featuredReviews: featuredReviews ?? this.featuredReviews,
    );
  }

  ProductServiceProductReviewNoAuthSummaryGet$Response$Data copyWithWrapped({
    Wrapped<String?>? productCode,
    Wrapped<double?>? reviewCount,
    Wrapped<double?>? averageScore,
    Wrapped<String?>? aiSummary,
    Wrapped<
      List<
        ProductServiceProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$Item
      >?
    >?
    featuredReviews,
  }) {
    return ProductServiceProductReviewNoAuthSummaryGet$Response$Data(
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
class ProductServiceCategoryNoAuthTreeGet$Response$Data {
  const ProductServiceCategoryNoAuthTreeGet$Response$Data({this.categoryList});

  factory ProductServiceCategoryNoAuthTreeGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceCategoryNoAuthTreeGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$ProductServiceCategoryNoAuthTreeGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceCategoryNoAuthTreeGet$Response$DataToJson(this);

  @JsonKey(name: 'categoryList')
  final List<
    ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item
  >?
  categoryList;
  static const fromJsonFactory =
      _$ProductServiceCategoryNoAuthTreeGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceCategoryNoAuthTreeGet$Response$Data &&
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

extension $ProductServiceCategoryNoAuthTreeGet$Response$DataExtension
    on ProductServiceCategoryNoAuthTreeGet$Response$Data {
  ProductServiceCategoryNoAuthTreeGet$Response$Data copyWith({
    List<ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item>?
    categoryList,
  }) {
    return ProductServiceCategoryNoAuthTreeGet$Response$Data(
      categoryList: categoryList ?? this.categoryList,
    );
  }

  ProductServiceCategoryNoAuthTreeGet$Response$Data copyWithWrapped({
    Wrapped<
      List<ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item>?
    >?
    categoryList,
  }) {
    return ProductServiceCategoryNoAuthTreeGet$Response$Data(
      categoryList: (categoryList != null
          ? categoryList.value
          : this.categoryList),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data {
  const ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data({
    this.pic,
    this.ruleLink,
    this.activities,
  });

  factory ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceActivityNoAuthFlashSaleActivityGet$Response$DataFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductServiceActivityNoAuthFlashSaleActivityGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceActivityNoAuthFlashSaleActivityGet$Response$DataToJson(
        this,
      );

  @JsonKey(name: 'pic', fromJson: JsonCoerce.asString)
  final String? pic;
  @JsonKey(name: 'ruleLink', fromJson: JsonCoerce.asString)
  final String? ruleLink;
  @JsonKey(name: 'activities')
  final List<
    ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$Item
  >?
  activities;
  static const fromJsonFactory =
      _$ProductServiceActivityNoAuthFlashSaleActivityGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data &&
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

extension $ProductServiceActivityNoAuthFlashSaleActivityGet$Response$DataExtension
    on ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data {
  ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data copyWith({
    String? pic,
    String? ruleLink,
    List<
      ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$Item
    >?
    activities,
  }) {
    return ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data(
      pic: pic ?? this.pic,
      ruleLink: ruleLink ?? this.ruleLink,
      activities: activities ?? this.activities,
    );
  }

  ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data
  copyWithWrapped({
    Wrapped<String?>? pic,
    Wrapped<String?>? ruleLink,
    Wrapped<
      List<
        ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$Item
      >?
    >?
    activities,
  }) {
    return ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data(
      pic: (pic != null ? pic.value : this.pic),
      ruleLink: (ruleLink != null ? ruleLink.value : this.ruleLink),
      activities: (activities != null ? activities.value : this.activities),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data {
  const ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data({
    this.records,
    this.total,
    this.pageSize,
    this.totalPages,
    this.current,
  });

  factory ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$DataFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$DataToJson(
        this,
      );

  @JsonKey(name: 'records')
  final List<
    ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item
  >?
  records;
  @JsonKey(name: 'total', fromJson: JsonCoerce.asInt)
  final int? total;
  @JsonKey(name: 'pageSize', fromJson: JsonCoerce.asInt)
  final int? pageSize;
  @JsonKey(name: 'totalPages', fromJson: JsonCoerce.asInt)
  final int? totalPages;
  @JsonKey(name: 'current', fromJson: JsonCoerce.asInt)
  final int? current;
  static const fromJsonFactory =
      _$ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data &&
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

extension $ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$DataExtension
    on ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data {
  ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data
  copyWith({
    List<
      ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item
    >?
    records,
    int? total,
    int? pageSize,
    int? totalPages,
    int? current,
  }) {
    return ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data(
      records: records ?? this.records,
      total: total ?? this.total,
      pageSize: pageSize ?? this.pageSize,
      totalPages: totalPages ?? this.totalPages,
      current: current ?? this.current,
    );
  }

  ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data
  copyWithWrapped({
    Wrapped<
      List<
        ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item
      >?
    >?
    records,
    Wrapped<int?>? total,
    Wrapped<int?>? pageSize,
    Wrapped<int?>? totalPages,
    Wrapped<int?>? current,
  }) {
    return ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data(
      records: (records != null ? records.value : this.records),
      total: (total != null ? total.value : this.total),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      totalPages: (totalPages != null ? totalPages.value : this.totalPages),
      current: (current != null ? current.value : this.current),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data {
  const ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data({
    this.total,
    this.pageSize,
    this.totalPages,
    this.current,
    this.records,
  });

  factory ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductPremiumDupeNoAuthPagePost$Response$DataFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthPagePost$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductPremiumDupeNoAuthPagePost$Response$DataToJson(
        this,
      );

  @JsonKey(name: 'total', fromJson: JsonCoerce.asInt)
  final int? total;
  @JsonKey(name: 'pageSize', fromJson: JsonCoerce.asInt)
  final int? pageSize;
  @JsonKey(name: 'totalPages', fromJson: JsonCoerce.asInt)
  final int? totalPages;
  @JsonKey(name: 'current', fromJson: JsonCoerce.asInt)
  final int? current;
  @JsonKey(name: 'records')
  final List<
    ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item
  >?
  records;
  static const fromJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthPagePost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data &&
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

extension $ProductServiceProductPremiumDupeNoAuthPagePost$Response$DataExtension
    on ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data {
  ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data copyWith({
    int? total,
    int? pageSize,
    int? totalPages,
    int? current,
    List<
      ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item
    >?
    records,
  }) {
    return ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data(
      total: total ?? this.total,
      pageSize: pageSize ?? this.pageSize,
      totalPages: totalPages ?? this.totalPages,
      current: current ?? this.current,
      records: records ?? this.records,
    );
  }

  ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data copyWithWrapped({
    Wrapped<int?>? total,
    Wrapped<int?>? pageSize,
    Wrapped<int?>? totalPages,
    Wrapped<int?>? current,
    Wrapped<
      List<
        ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item
      >?
    >?
    records,
  }) {
    return ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data(
      total: (total != null ? total.value : this.total),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      totalPages: (totalPages != null ? totalPages.value : this.totalPages),
      current: (current != null ? current.value : this.current),
      records: (records != null ? records.value : this.records),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data {
  const ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data({
    this.categories,
    this.sorts,
    this.config,
  });

  factory ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductPremiumDupeNoAuthMetaGet$Response$DataFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthMetaGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductPremiumDupeNoAuthMetaGet$Response$DataToJson(this);

  @JsonKey(name: 'categories')
  final List<
    ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$Item
  >?
  categories;
  @JsonKey(name: 'sorts')
  final List<
    ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$Item
  >?
  sorts;
  @JsonKey(name: 'config')
  final ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config?
  config;
  static const fromJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthMetaGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data &&
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

extension $ProductServiceProductPremiumDupeNoAuthMetaGet$Response$DataExtension
    on ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data {
  ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data copyWith({
    List<
      ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$Item
    >?
    categories,
    List<
      ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$Item
    >?
    sorts,
    ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config? config,
  }) {
    return ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data(
      categories: categories ?? this.categories,
      sorts: sorts ?? this.sorts,
      config: config ?? this.config,
    );
  }

  ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data copyWithWrapped({
    Wrapped<
      List<
        ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$Item
      >?
    >?
    categories,
    Wrapped<
      List<
        ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$Item
      >?
    >?
    sorts,
    Wrapped<
      ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config?
    >?
    config,
  }) {
    return ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data(
      categories: (categories != null ? categories.value : this.categories),
      sorts: (sorts != null ? sorts.value : this.sorts),
      config: (config != null ? config.value : this.config),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item {
  const ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item({
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

  factory ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$ItemToJson(
        this,
      );

  @JsonKey(name: 'productCode', fromJson: JsonCoerce.asString)
  final String? productCode;
  @JsonKey(name: 'productName', fromJson: JsonCoerce.asString)
  final String? productName;
  @JsonKey(name: 'image')
  final ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Image?
  image;
  @JsonKey(name: 'sourcePlatform', fromJson: JsonCoerce.asString)
  final String? sourcePlatform;
  @JsonKey(name: 'platformProductId', fromJson: JsonCoerce.asString)
  final String? platformProductId;
  @JsonKey(name: 'categoryTree', defaultValue: <Object>[])
  final List<Object>? categoryTree;
  @JsonKey(name: 'skuCode', fromJson: JsonCoerce.asString)
  final String? skuCode;
  @JsonKey(name: 'sellPriceCur', fromJson: JsonCoerce.asString)
  final String? sellPriceCur;
  @JsonKey(name: 'sellPrice', fromJson: JsonCoerce.asString)
  final String? sellPrice;
  @JsonKey(name: 'targetSellPrice', fromJson: JsonCoerce.asString)
  final String? targetSellPrice;
  @JsonKey(name: 'targetOriginPrice', fromJson: JsonCoerce.asString)
  final String? targetOriginPrice;
  @JsonKey(name: 'targetSellCur', fromJson: JsonCoerce.asString)
  final String? targetSellCur;
  @JsonKey(name: 'sellQuantity', fromJson: JsonCoerce.asString)
  final String? sellQuantity;
  @JsonKey(name: 'skuCount', fromJson: JsonCoerce.asInt)
  final int? skuCount;
  @JsonKey(name: 'marketingInfo', fromJson: JsonCoerce.asString)
  final String? marketingInfo;
  @JsonKey(name: 'tags')
  final List<
    ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$Item
  >?
  tags;
  @JsonKey(name: 'skuSourceCode', fromJson: JsonCoerce.asString)
  final String? skuSourceCode;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  static const fromJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item &&
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

extension $ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$ItemExtension
    on ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item {
  ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item
  copyWith({
    String? productCode,
    String? productName,
    ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Image?
    image,
    String? sourcePlatform,
    String? platformProductId,
    List<Object>? categoryTree,
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
      ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$Item
    >?
    tags,
    String? skuSourceCode,
    ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
  }) {
    return ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item(
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

  ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item
  copyWithWrapped({
    Wrapped<String?>? productCode,
    Wrapped<String?>? productName,
    Wrapped<
      ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Image?
    >?
    image,
    Wrapped<String?>? sourcePlatform,
    Wrapped<String?>? platformProductId,
    Wrapped<List<Object>?>? categoryTree,
    Wrapped<String?>? skuCode,
    Wrapped<String?>? sellPriceCur,
    Wrapped<String?>? sellPrice,
    Wrapped<String?>? targetSellPrice,
    Wrapped<String?>? targetOriginPrice,
    Wrapped<String?>? targetSellCur,
    Wrapped<String?>? sellQuantity,
    Wrapped<int?>? skuCount,
    Wrapped<String?>? marketingInfo,
    Wrapped<
      List<
        ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$Item
      >?
    >?
    tags,
    Wrapped<String?>? skuSourceCode,
    Wrapped<
      ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
  }) {
    return ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item(
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
class ProductServiceProductNoAuthPushProductGet$Response$Data {
  const ProductServiceProductNoAuthPushProductGet$Response$Data({
    this.total,
    this.pageSize,
    this.current,
    this.totalPages,
    this.records,
  });

  factory ProductServiceProductNoAuthPushProductGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductNoAuthPushProductGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$ProductServiceProductNoAuthPushProductGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthPushProductGet$Response$DataToJson(this);

  @JsonKey(name: 'total', fromJson: JsonCoerce.asInt)
  final int? total;
  @JsonKey(name: 'pageSize', fromJson: JsonCoerce.asInt)
  final int? pageSize;
  @JsonKey(name: 'current', fromJson: JsonCoerce.asInt)
  final int? current;
  @JsonKey(name: 'totalPages', fromJson: JsonCoerce.asInt)
  final int? totalPages;
  @JsonKey(name: 'records')
  final List<
    ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item
  >?
  records;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthPushProductGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthPushProductGet$Response$Data &&
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

extension $ProductServiceProductNoAuthPushProductGet$Response$DataExtension
    on ProductServiceProductNoAuthPushProductGet$Response$Data {
  ProductServiceProductNoAuthPushProductGet$Response$Data copyWith({
    int? total,
    int? pageSize,
    int? current,
    int? totalPages,
    List<ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item>?
    records,
  }) {
    return ProductServiceProductNoAuthPushProductGet$Response$Data(
      total: total ?? this.total,
      pageSize: pageSize ?? this.pageSize,
      current: current ?? this.current,
      totalPages: totalPages ?? this.totalPages,
      records: records ?? this.records,
    );
  }

  ProductServiceProductNoAuthPushProductGet$Response$Data copyWithWrapped({
    Wrapped<int?>? total,
    Wrapped<int?>? pageSize,
    Wrapped<int?>? current,
    Wrapped<int?>? totalPages,
    Wrapped<
      List<
        ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item
      >?
    >?
    records,
  }) {
    return ProductServiceProductNoAuthPushProductGet$Response$Data(
      total: (total != null ? total.value : this.total),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      current: (current != null ? current.value : this.current),
      totalPages: (totalPages != null ? totalPages.value : this.totalPages),
      records: (records != null ? records.value : this.records),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthSearchGet$Response$Data$Item {
  const ProductServiceProductNoAuthSearchGet$Response$Data$Item({
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
    this.marketingInfo,
    this.targetOriginPrice,
    this.premiumBrandInfo,
    this.sellPoints,
  });

  factory ProductServiceProductNoAuthSearchGet$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductNoAuthSearchGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$ProductServiceProductNoAuthSearchGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthSearchGet$Response$Data$ItemToJson(this);

  @JsonKey(name: 'shopCode', fromJson: JsonCoerce.asString)
  final String? shopCode;
  @JsonKey(name: 'productCode', fromJson: JsonCoerce.asString)
  final String? productCode;
  @JsonKey(name: 'productName', fromJson: JsonCoerce.asString)
  final String? productName;
  @JsonKey(name: 'tenantCode', fromJson: JsonCoerce.asString)
  final String? tenantCode;
  @JsonKey(name: 'brandName', fromJson: JsonCoerce.asString)
  final String? brandName;
  @JsonKey(name: 'mainImg')
  final ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainImg?
  mainImg;
  @JsonKey(name: 'subImg')
  final ProductServiceProductNoAuthSearchGet$Response$Data$Item$SubImg? subImg;
  @JsonKey(name: 'mainVideo')
  final ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainVideo?
  mainVideo;
  @JsonKey(name: 'imgCollection')
  final List<
    ProductServiceProductNoAuthSearchGet$Response$Data$Item$ImgCollection$Item
  >?
  imgCollection;
  @JsonKey(name: 'textDetail', fromJson: JsonCoerce.asString)
  final String? textDetail;
  @JsonKey(name: 'categoryId', fromJson: JsonCoerce.asString)
  final String? categoryId;
  @JsonKey(name: 'productOptions')
  final List<
    ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item
  >?
  productOptions;
  @JsonKey(name: 'productAttrs')
  final List<
    ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$Item
  >?
  productAttrs;
  @JsonKey(name: 'sourcePlatform', fromJson: JsonCoerce.asString)
  final String? sourcePlatform;
  @JsonKey(name: 'platformUrl', fromJson: JsonCoerce.asString)
  final String? platformUrl;
  @JsonKey(name: 'platformProductId', fromJson: JsonCoerce.asString)
  final String? platformProductId;
  @JsonKey(name: 'skuCode', fromJson: JsonCoerce.asString)
  final String? skuCode;
  @JsonKey(name: 'sellPriceCur', fromJson: JsonCoerce.asString)
  final String? sellPriceCur;
  @JsonKey(name: 'sellPrice', fromJson: JsonCoerce.asString)
  final String? sellPrice;
  @JsonKey(name: 'targetSellPrice', fromJson: JsonCoerce.asString)
  final String? targetSellPrice;
  @JsonKey(name: 'targetSellCur', fromJson: JsonCoerce.asString)
  final String? targetSellCur;
  @JsonKey(name: 'marketingInfo', fromJson: JsonCoerce.asString)
  final String? marketingInfo;
  @JsonKey(name: 'targetOriginPrice', fromJson: JsonCoerce.asString)
  final String? targetOriginPrice;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductServiceProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthSearchGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthSearchGet$Response$Data$Item &&
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

extension $ProductServiceProductNoAuthSearchGet$Response$Data$ItemExtension
    on ProductServiceProductNoAuthSearchGet$Response$Data$Item {
  ProductServiceProductNoAuthSearchGet$Response$Data$Item copyWith({
    String? shopCode,
    String? productCode,
    String? productName,
    String? tenantCode,
    String? brandName,
    ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainImg? mainImg,
    ProductServiceProductNoAuthSearchGet$Response$Data$Item$SubImg? subImg,
    ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainVideo?
    mainVideo,
    List<
      ProductServiceProductNoAuthSearchGet$Response$Data$Item$ImgCollection$Item
    >?
    imgCollection,
    String? textDetail,
    String? categoryId,
    List<
      ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item
    >?
    productOptions,
    List<
      ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$Item
    >?
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
    ProductServiceProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
  }) {
    return ProductServiceProductNoAuthSearchGet$Response$Data$Item(
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

  ProductServiceProductNoAuthSearchGet$Response$Data$Item copyWithWrapped({
    Wrapped<String?>? shopCode,
    Wrapped<String?>? productCode,
    Wrapped<String?>? productName,
    Wrapped<String?>? tenantCode,
    Wrapped<String?>? brandName,
    Wrapped<ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainImg?>?
    mainImg,
    Wrapped<ProductServiceProductNoAuthSearchGet$Response$Data$Item$SubImg?>?
    subImg,
    Wrapped<ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainVideo?>?
    mainVideo,
    Wrapped<
      List<
        ProductServiceProductNoAuthSearchGet$Response$Data$Item$ImgCollection$Item
      >?
    >?
    imgCollection,
    Wrapped<String?>? textDetail,
    Wrapped<String?>? categoryId,
    Wrapped<
      List<
        ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item
      >?
    >?
    productOptions,
    Wrapped<
      List<
        ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$Item
      >?
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
    Wrapped<String?>? marketingInfo,
    Wrapped<String?>? targetOriginPrice,
    Wrapped<
      ProductServiceProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
  }) {
    return ProductServiceProductNoAuthSearchGet$Response$Data$Item(
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
class ProductServiceProductNoAuthCombineSearchGet$Response$Data {
  const ProductServiceProductNoAuthCombineSearchGet$Response$Data({
    this.records,
    this.total,
    this.pageSize,
    this.current,
    this.totalPages,
  });

  factory ProductServiceProductNoAuthCombineSearchGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthCombineSearchGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$ProductServiceProductNoAuthCombineSearchGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthCombineSearchGet$Response$DataToJson(this);

  @JsonKey(name: 'records')
  final List<
    ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item
  >?
  records;
  @JsonKey(name: 'total', fromJson: JsonCoerce.asDouble)
  final double? total;
  @JsonKey(name: 'pageSize', fromJson: JsonCoerce.asDouble)
  final double? pageSize;
  @JsonKey(name: 'current', fromJson: JsonCoerce.asDouble)
  final double? current;
  @JsonKey(name: 'totalPages', fromJson: JsonCoerce.asDouble)
  final double? totalPages;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthCombineSearchGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthCombineSearchGet$Response$Data &&
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

extension $ProductServiceProductNoAuthCombineSearchGet$Response$DataExtension
    on ProductServiceProductNoAuthCombineSearchGet$Response$Data {
  ProductServiceProductNoAuthCombineSearchGet$Response$Data copyWith({
    List<
      ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item
    >?
    records,
    double? total,
    double? pageSize,
    double? current,
    double? totalPages,
  }) {
    return ProductServiceProductNoAuthCombineSearchGet$Response$Data(
      records: records ?? this.records,
      total: total ?? this.total,
      pageSize: pageSize ?? this.pageSize,
      current: current ?? this.current,
      totalPages: totalPages ?? this.totalPages,
    );
  }

  ProductServiceProductNoAuthCombineSearchGet$Response$Data copyWithWrapped({
    Wrapped<
      List<
        ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item
      >?
    >?
    records,
    Wrapped<double?>? total,
    Wrapped<double?>? pageSize,
    Wrapped<double?>? current,
    Wrapped<double?>? totalPages,
  }) {
    return ProductServiceProductNoAuthCombineSearchGet$Response$Data(
      records: (records != null ? records.value : this.records),
      total: (total != null ? total.value : this.total),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      current: (current != null ? current.value : this.current),
      totalPages: (totalPages != null ? totalPages.value : this.totalPages),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthNewArrivalProductGet$Response$Data {
  const ProductServiceProductNoAuthNewArrivalProductGet$Response$Data({
    this.total,
    this.pageSize,
    this.totalPages,
    this.current,
    this.records,
  });

  factory ProductServiceProductNoAuthNewArrivalProductGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductNoAuthNewArrivalProductGet$Response$DataFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$DataToJson(
        this,
      );

  @JsonKey(name: 'total', fromJson: JsonCoerce.asDouble)
  final double? total;
  @JsonKey(name: 'pageSize', fromJson: JsonCoerce.asDouble)
  final double? pageSize;
  @JsonKey(name: 'totalPages', fromJson: JsonCoerce.asDouble)
  final double? totalPages;
  @JsonKey(name: 'current', fromJson: JsonCoerce.asDouble)
  final double? current;
  @JsonKey(name: 'records')
  final List<
    ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item
  >?
  records;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthNewArrivalProductGet$Response$Data &&
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

extension $ProductServiceProductNoAuthNewArrivalProductGet$Response$DataExtension
    on ProductServiceProductNoAuthNewArrivalProductGet$Response$Data {
  ProductServiceProductNoAuthNewArrivalProductGet$Response$Data copyWith({
    double? total,
    double? pageSize,
    double? totalPages,
    double? current,
    List<
      ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item
    >?
    records,
  }) {
    return ProductServiceProductNoAuthNewArrivalProductGet$Response$Data(
      total: total ?? this.total,
      pageSize: pageSize ?? this.pageSize,
      totalPages: totalPages ?? this.totalPages,
      current: current ?? this.current,
      records: records ?? this.records,
    );
  }

  ProductServiceProductNoAuthNewArrivalProductGet$Response$Data
  copyWithWrapped({
    Wrapped<double?>? total,
    Wrapped<double?>? pageSize,
    Wrapped<double?>? totalPages,
    Wrapped<double?>? current,
    Wrapped<
      List<
        ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item
      >?
    >?
    records,
  }) {
    return ProductServiceProductNoAuthNewArrivalProductGet$Response$Data(
      total: (total != null ? total.value : this.total),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      totalPages: (totalPages != null ? totalPages.value : this.totalPages),
      current: (current != null ? current.value : this.current),
      records: (records != null ? records.value : this.records),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthSkuListGet$Response$Data$Item {
  const ProductServiceProductNoAuthSkuListGet$Response$Data$Item({
    this.productCode,
    this.skuCode,
    this.tenantCode,
    this.extUrl,
    this.skuImg,
    this.skuOptions,
    this.sellPrice,
    this.sellCur,
    this.targetSellPrice,
    this.targetSellCur,
    this.length,
    this.width,
    this.height,
    this.weight,
    this.estimateUnitFreight,
    this.marketingInfo,
    this.targetOriginPrice,
    this.skuSourceCode,
    this.flashSaleInfo,
  });

  factory ProductServiceProductNoAuthSkuListGet$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductNoAuthSkuListGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$ProductServiceProductNoAuthSkuListGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthSkuListGet$Response$Data$ItemToJson(this);

  @JsonKey(name: 'productCode', fromJson: JsonCoerce.asString)
  final String? productCode;
  @JsonKey(name: 'skuCode', fromJson: JsonCoerce.asString)
  final String? skuCode;
  @JsonKey(name: 'tenantCode', fromJson: JsonCoerce.asString)
  final String? tenantCode;
  @JsonKey(name: 'extUrl', fromJson: JsonCoerce.asString)
  final String? extUrl;
  @JsonKey(name: 'skuImg')
  final ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuImg? skuImg;
  @JsonKey(name: 'skuOptions')
  final List<
    ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$Item
  >?
  skuOptions;
  @JsonKey(name: 'sellPrice', fromJson: JsonCoerce.asString)
  final String? sellPrice;
  @JsonKey(name: 'sellCur', fromJson: JsonCoerce.asString)
  final String? sellCur;
  @JsonKey(name: 'targetSellPrice', fromJson: JsonCoerce.asString)
  final String? targetSellPrice;
  @JsonKey(name: 'targetSellCur', fromJson: JsonCoerce.asString)
  final String? targetSellCur;
  @JsonKey(name: 'length', fromJson: JsonCoerce.asString)
  final String? length;
  @JsonKey(name: 'width', fromJson: JsonCoerce.asString)
  final String? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asString)
  final String? height;
  @JsonKey(name: 'weight', fromJson: JsonCoerce.asString)
  final String? weight;
  @JsonKey(name: 'estimateUnitFreight', fromJson: JsonCoerce.asString)
  final String? estimateUnitFreight;
  @JsonKey(name: 'marketingInfo', fromJson: JsonCoerce.asString)
  final String? marketingInfo;
  @JsonKey(name: 'targetOriginPrice', fromJson: JsonCoerce.asString)
  final String? targetOriginPrice;
  @JsonKey(name: 'skuSourceCode', fromJson: JsonCoerce.asString)
  final String? skuSourceCode;
  @JsonKey(name: 'flashSaleInfo')
  final ProductServiceProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfo?
  flashSaleInfo;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthSkuListGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthSkuListGet$Response$Data$Item &&
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

extension $ProductServiceProductNoAuthSkuListGet$Response$Data$ItemExtension
    on ProductServiceProductNoAuthSkuListGet$Response$Data$Item {
  ProductServiceProductNoAuthSkuListGet$Response$Data$Item copyWith({
    String? productCode,
    String? skuCode,
    String? tenantCode,
    String? extUrl,
    ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuImg? skuImg,
    List<
      ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$Item
    >?
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
    ProductServiceProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfo?
    flashSaleInfo,
  }) {
    return ProductServiceProductNoAuthSkuListGet$Response$Data$Item(
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

  ProductServiceProductNoAuthSkuListGet$Response$Data$Item copyWithWrapped({
    Wrapped<String?>? productCode,
    Wrapped<String?>? skuCode,
    Wrapped<String?>? tenantCode,
    Wrapped<String?>? extUrl,
    Wrapped<ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuImg?>?
    skuImg,
    Wrapped<
      List<
        ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$Item
      >?
    >?
    skuOptions,
    Wrapped<String?>? sellPrice,
    Wrapped<String?>? sellCur,
    Wrapped<String?>? targetSellPrice,
    Wrapped<String?>? targetSellCur,
    Wrapped<String?>? length,
    Wrapped<String?>? width,
    Wrapped<String?>? height,
    Wrapped<String?>? weight,
    Wrapped<String?>? estimateUnitFreight,
    Wrapped<String?>? marketingInfo,
    Wrapped<String?>? targetOriginPrice,
    Wrapped<String?>? skuSourceCode,
    Wrapped<
      ProductServiceProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfo?
    >?
    flashSaleInfo,
  }) {
    return ProductServiceProductNoAuthSkuListGet$Response$Data$Item(
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
class ProductServiceProductNoAuthGetProductInfoGet$Response$Data {
  const ProductServiceProductNoAuthGetProductInfoGet$Response$Data({
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
    this.categoryTree,
    this.ext,
    this.productFlag,
    this.marketingInfo,
    this.targetOriginPrice,
    this.flashSale,
  });

  factory ProductServiceProductNoAuthGetProductInfoGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductNoAuthGetProductInfoGet$Response$DataFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$DataToJson(this);

  @JsonKey(name: 'shopCode', fromJson: JsonCoerce.asString)
  final String? shopCode;
  @JsonKey(name: 'productCode', fromJson: JsonCoerce.asString)
  final String? productCode;
  @JsonKey(name: 'productName', fromJson: JsonCoerce.asString)
  final String? productName;
  @JsonKey(name: 'tenantCode', fromJson: JsonCoerce.asString)
  final String? tenantCode;
  @JsonKey(name: 'brandName', fromJson: JsonCoerce.asString)
  final String? brandName;
  @JsonKey(name: 'mainImg')
  final List<
    ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainImg$Item
  >?
  mainImg;
  @JsonKey(name: 'subImg', fromJson: JsonCoerce.asString)
  final String? subImg;
  @JsonKey(name: 'mainVideo')
  final List<
    ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainVideo$Item
  >?
  mainVideo;
  @JsonKey(name: 'imgCollection')
  final List<
    ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$Item
  >?
  imgCollection;
  @JsonKey(name: 'textDetail', fromJson: JsonCoerce.asString)
  final String? textDetail;
  @JsonKey(name: 'imgDetail')
  final List<
    ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$Item
  >?
  imgDetail;
  @JsonKey(name: 'categoryId', fromJson: JsonCoerce.asDouble)
  final double? categoryId;
  @JsonKey(name: 'productOptions')
  final List<
    ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item
  >?
  productOptions;
  @JsonKey(name: 'productAttrs')
  final List<
    ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$Item
  >?
  productAttrs;
  @JsonKey(name: 'sourcePlatform', fromJson: JsonCoerce.asString)
  final String? sourcePlatform;
  @JsonKey(name: 'platformUrl', fromJson: JsonCoerce.asString)
  final String? platformUrl;
  @JsonKey(name: 'platformProductId', fromJson: JsonCoerce.asString)
  final String? platformProductId;
  @JsonKey(name: 'skuCode', fromJson: JsonCoerce.asString)
  final String? skuCode;
  @JsonKey(name: 'sellPriceCur', fromJson: JsonCoerce.asString)
  final String? sellPriceCur;
  @JsonKey(name: 'sellPrice', fromJson: JsonCoerce.asString)
  final String? sellPrice;
  @JsonKey(name: 'targetSellPrice', fromJson: JsonCoerce.asString)
  final String? targetSellPrice;
  @JsonKey(name: 'targetSellCur', fromJson: JsonCoerce.asString)
  final String? targetSellCur;
  @JsonKey(name: 'sellQuantity', fromJson: JsonCoerce.asString)
  final String? sellQuantity;
  @JsonKey(name: 'inspectImages')
  final List<
    ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item
  >?
  inspectImages;
  @JsonKey(name: 'tags')
  final List<
    ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Tags$Item
  >?
  tags;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductServiceProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(
    name: 'sellPoints',
    fromJson: JsonCoerce.asStringList,
    defaultValue: <String>[],
  )
  final List<String>? sellPoints;
  @JsonKey(
    name: 'categoryTree',
    fromJson: JsonCoerce.asDoubleList,
    defaultValue: <double>[],
  )
  final List<double>? categoryTree;
  @JsonKey(name: 'ext')
  final ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext? ext;
  @JsonKey(name: 'productFlag', fromJson: JsonCoerce.asString)
  final String? productFlag;
  @JsonKey(name: 'marketingInfo', fromJson: JsonCoerce.asString)
  final String? marketingInfo;
  @JsonKey(name: 'targetOriginPrice', fromJson: JsonCoerce.asString)
  final String? targetOriginPrice;
  @JsonKey(name: 'flashSale')
  final ProductServiceProductNoAuthGetProductInfoGet$Response$Data$FlashSale?
  flashSale;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthGetProductInfoGet$Response$Data &&
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

extension $ProductServiceProductNoAuthGetProductInfoGet$Response$DataExtension
    on ProductServiceProductNoAuthGetProductInfoGet$Response$Data {
  ProductServiceProductNoAuthGetProductInfoGet$Response$Data copyWith({
    String? shopCode,
    String? productCode,
    String? productName,
    String? tenantCode,
    String? brandName,
    List<
      ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainImg$Item
    >?
    mainImg,
    String? subImg,
    List<
      ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainVideo$Item
    >?
    mainVideo,
    List<
      ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$Item
    >?
    imgCollection,
    String? textDetail,
    List<
      ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$Item
    >?
    imgDetail,
    double? categoryId,
    List<
      ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item
    >?
    productOptions,
    List<
      ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$Item
    >?
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
    List<
      ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item
    >?
    inspectImages,
    List<ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Tags$Item>?
    tags,
    ProductServiceProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfo?
    premiumBrandInfo,
    List<String>? sellPoints,
    List<double>? categoryTree,
    ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext? ext,
    String? productFlag,
    String? marketingInfo,
    String? targetOriginPrice,
    ProductServiceProductNoAuthGetProductInfoGet$Response$Data$FlashSale?
    flashSale,
  }) {
    return ProductServiceProductNoAuthGetProductInfoGet$Response$Data(
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

  ProductServiceProductNoAuthGetProductInfoGet$Response$Data copyWithWrapped({
    Wrapped<String?>? shopCode,
    Wrapped<String?>? productCode,
    Wrapped<String?>? productName,
    Wrapped<String?>? tenantCode,
    Wrapped<String?>? brandName,
    Wrapped<
      List<
        ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainImg$Item
      >?
    >?
    mainImg,
    Wrapped<String?>? subImg,
    Wrapped<
      List<
        ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainVideo$Item
      >?
    >?
    mainVideo,
    Wrapped<
      List<
        ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$Item
      >?
    >?
    imgCollection,
    Wrapped<String?>? textDetail,
    Wrapped<
      List<
        ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$Item
      >?
    >?
    imgDetail,
    Wrapped<double?>? categoryId,
    Wrapped<
      List<
        ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item
      >?
    >?
    productOptions,
    Wrapped<
      List<
        ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$Item
      >?
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
      List<
        ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item
      >?
    >?
    inspectImages,
    Wrapped<
      List<
        ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Tags$Item
      >?
    >?
    tags,
    Wrapped<
      ProductServiceProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfo?
    >?
    premiumBrandInfo,
    Wrapped<List<String>?>? sellPoints,
    Wrapped<List<double>?>? categoryTree,
    Wrapped<ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext?>?
    ext,
    Wrapped<String?>? productFlag,
    Wrapped<String?>? marketingInfo,
    Wrapped<String?>? targetOriginPrice,
    Wrapped<
      ProductServiceProductNoAuthGetProductInfoGet$Response$Data$FlashSale?
    >?
    flashSale,
  }) {
    return ProductServiceProductNoAuthGetProductInfoGet$Response$Data(
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
class ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data {
  const ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data({
    this.categoryList,
  });

  factory ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthPremierProductCategoryGet$Response$DataFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthPremierProductCategoryGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthPremierProductCategoryGet$Response$DataToJson(
        this,
      );

  @JsonKey(name: 'categoryList')
  final List<
    ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item
  >?
  categoryList;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthPremierProductCategoryGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data &&
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

extension $ProductServiceProductNoAuthPremierProductCategoryGet$Response$DataExtension
    on ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data {
  ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data copyWith({
    List<
      ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item
    >?
    categoryList,
  }) {
    return ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data(
      categoryList: categoryList ?? this.categoryList,
    );
  }

  ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data
  copyWithWrapped({
    Wrapped<
      List<
        ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item
      >?
    >?
    categoryList,
  }) {
    return ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data(
      categoryList: (categoryList != null
          ? categoryList.value
          : this.categoryList),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthHotProductGet$Response$Data$Item {
  const ProductServiceProductNoAuthHotProductGet$Response$Data$Item({
    this.productCode,
    this.productName,
    this.image,
    this.skuCode,
    this.sellPriceCur,
    this.sellPrice,
    this.targetSellPrice,
    this.targetSellCur,
    this.sellQuantity,
    this.marketingInfo,
    this.targetOriginPrice,
    this.tags,
    this.premiumBrandInfo,
    this.sellPoints,
  });

  factory ProductServiceProductNoAuthHotProductGet$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductNoAuthHotProductGet$Response$Data$ItemFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthHotProductGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthHotProductGet$Response$Data$ItemToJson(this);

  @JsonKey(name: 'productCode', fromJson: JsonCoerce.asString)
  final String? productCode;
  @JsonKey(name: 'productName', fromJson: JsonCoerce.asString)
  final String? productName;
  @JsonKey(name: 'image')
  final ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Image?
  image;
  @JsonKey(name: 'skuCode', fromJson: JsonCoerce.asString)
  final String? skuCode;
  @JsonKey(name: 'sellPriceCur', fromJson: JsonCoerce.asString)
  final String? sellPriceCur;
  @JsonKey(name: 'sellPrice', fromJson: JsonCoerce.asString)
  final String? sellPrice;
  @JsonKey(name: 'targetSellPrice', fromJson: JsonCoerce.asString)
  final String? targetSellPrice;
  @JsonKey(name: 'targetSellCur', fromJson: JsonCoerce.asString)
  final String? targetSellCur;
  @JsonKey(name: 'sellQuantity', fromJson: JsonCoerce.asString)
  final String? sellQuantity;
  @JsonKey(name: 'marketingInfo', fromJson: JsonCoerce.asString)
  final String? marketingInfo;
  @JsonKey(name: 'targetOriginPrice', fromJson: JsonCoerce.asString)
  final String? targetOriginPrice;
  @JsonKey(name: 'tags')
  final List<
    ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Tags$Item
  >?
  tags;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductServiceProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthHotProductGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthHotProductGet$Response$Data$Item &&
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

extension $ProductServiceProductNoAuthHotProductGet$Response$Data$ItemExtension
    on ProductServiceProductNoAuthHotProductGet$Response$Data$Item {
  ProductServiceProductNoAuthHotProductGet$Response$Data$Item copyWith({
    String? productCode,
    String? productName,
    ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Image? image,
    String? skuCode,
    String? sellPriceCur,
    String? sellPrice,
    String? targetSellPrice,
    String? targetSellCur,
    String? sellQuantity,
    String? marketingInfo,
    String? targetOriginPrice,
    List<ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Tags$Item>?
    tags,
    ProductServiceProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
  }) {
    return ProductServiceProductNoAuthHotProductGet$Response$Data$Item(
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

  ProductServiceProductNoAuthHotProductGet$Response$Data$Item copyWithWrapped({
    Wrapped<String?>? productCode,
    Wrapped<String?>? productName,
    Wrapped<ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Image?>?
    image,
    Wrapped<String?>? skuCode,
    Wrapped<String?>? sellPriceCur,
    Wrapped<String?>? sellPrice,
    Wrapped<String?>? targetSellPrice,
    Wrapped<String?>? targetSellCur,
    Wrapped<String?>? sellQuantity,
    Wrapped<String?>? marketingInfo,
    Wrapped<String?>? targetOriginPrice,
    Wrapped<
      List<
        ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Tags$Item
      >?
    >?
    tags,
    Wrapped<
      ProductServiceProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
  }) {
    return ProductServiceProductNoAuthHotProductGet$Response$Data$Item(
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
class ProductServiceProductNoAuthHotProductV2Get$Response$Data {
  const ProductServiceProductNoAuthHotProductV2Get$Response$Data({
    this.total,
    this.pageSize,
    this.current,
    this.totalPages,
    this.records,
  });

  factory ProductServiceProductNoAuthHotProductV2Get$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductNoAuthHotProductV2Get$Response$DataFromJson(json);

  static const toJsonFactory =
      _$ProductServiceProductNoAuthHotProductV2Get$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthHotProductV2Get$Response$DataToJson(this);

  @JsonKey(name: 'total', fromJson: JsonCoerce.asInt)
  final int? total;
  @JsonKey(name: 'pageSize', fromJson: JsonCoerce.asInt)
  final int? pageSize;
  @JsonKey(name: 'current', fromJson: JsonCoerce.asInt)
  final int? current;
  @JsonKey(name: 'totalPages', fromJson: JsonCoerce.asInt)
  final int? totalPages;
  @JsonKey(name: 'records')
  final List<
    ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item
  >?
  records;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthHotProductV2Get$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthHotProductV2Get$Response$Data &&
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

extension $ProductServiceProductNoAuthHotProductV2Get$Response$DataExtension
    on ProductServiceProductNoAuthHotProductV2Get$Response$Data {
  ProductServiceProductNoAuthHotProductV2Get$Response$Data copyWith({
    int? total,
    int? pageSize,
    int? current,
    int? totalPages,
    List<ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item>?
    records,
  }) {
    return ProductServiceProductNoAuthHotProductV2Get$Response$Data(
      total: total ?? this.total,
      pageSize: pageSize ?? this.pageSize,
      current: current ?? this.current,
      totalPages: totalPages ?? this.totalPages,
      records: records ?? this.records,
    );
  }

  ProductServiceProductNoAuthHotProductV2Get$Response$Data copyWithWrapped({
    Wrapped<int?>? total,
    Wrapped<int?>? pageSize,
    Wrapped<int?>? current,
    Wrapped<int?>? totalPages,
    Wrapped<
      List<
        ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item
      >?
    >?
    records,
  }) {
    return ProductServiceProductNoAuthHotProductV2Get$Response$Data(
      total: (total != null ? total.value : this.total),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      current: (current != null ? current.value : this.current),
      totalPages: (totalPages != null ? totalPages.value : this.totalPages),
      records: (records != null ? records.value : this.records),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthHotProductV3Get$Response$Data {
  const ProductServiceProductNoAuthHotProductV3Get$Response$Data({
    this.total,
    this.pageSize,
    this.totalPages,
    this.current,
    this.records,
  });

  factory ProductServiceProductNoAuthHotProductV3Get$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductNoAuthHotProductV3Get$Response$DataFromJson(json);

  static const toJsonFactory =
      _$ProductServiceProductNoAuthHotProductV3Get$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthHotProductV3Get$Response$DataToJson(this);

  @JsonKey(name: 'total', fromJson: JsonCoerce.asDouble)
  final double? total;
  @JsonKey(name: 'pageSize', fromJson: JsonCoerce.asDouble)
  final double? pageSize;
  @JsonKey(name: 'totalPages', fromJson: JsonCoerce.asDouble)
  final double? totalPages;
  @JsonKey(name: 'current', fromJson: JsonCoerce.asDouble)
  final double? current;
  @JsonKey(name: 'records')
  final List<
    ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item
  >?
  records;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthHotProductV3Get$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthHotProductV3Get$Response$Data &&
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

extension $ProductServiceProductNoAuthHotProductV3Get$Response$DataExtension
    on ProductServiceProductNoAuthHotProductV3Get$Response$Data {
  ProductServiceProductNoAuthHotProductV3Get$Response$Data copyWith({
    double? total,
    double? pageSize,
    double? totalPages,
    double? current,
    List<ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item>?
    records,
  }) {
    return ProductServiceProductNoAuthHotProductV3Get$Response$Data(
      total: total ?? this.total,
      pageSize: pageSize ?? this.pageSize,
      totalPages: totalPages ?? this.totalPages,
      current: current ?? this.current,
      records: records ?? this.records,
    );
  }

  ProductServiceProductNoAuthHotProductV3Get$Response$Data copyWithWrapped({
    Wrapped<double?>? total,
    Wrapped<double?>? pageSize,
    Wrapped<double?>? totalPages,
    Wrapped<double?>? current,
    Wrapped<
      List<
        ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item
      >?
    >?
    records,
  }) {
    return ProductServiceProductNoAuthHotProductV3Get$Response$Data(
      total: (total != null ? total.value : this.total),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      totalPages: (totalPages != null ? totalPages.value : this.totalPages),
      current: (current != null ? current.value : this.current),
      records: (records != null ? records.value : this.records),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item {
  const ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item({
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
    this.tags,
    this.premiumBrandInfo,
    this.sellPoints,
  });

  factory ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$ItemToJson(
        this,
      );

  @JsonKey(name: 'shopCode', fromJson: JsonCoerce.asString)
  final String? shopCode;
  @JsonKey(name: 'productCode', fromJson: JsonCoerce.asString)
  final String? productCode;
  @JsonKey(name: 'productName', fromJson: JsonCoerce.asString)
  final String? productName;
  @JsonKey(name: 'tenantCode', fromJson: JsonCoerce.asString)
  final String? tenantCode;
  @JsonKey(name: 'brandName', fromJson: JsonCoerce.asString)
  final String? brandName;
  @JsonKey(name: 'mainImg')
  final List<
    ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$Item
  >?
  mainImg;
  @JsonKey(name: 'subImg')
  final Object? subImg;
  @JsonKey(name: 'mainVideo')
  final List<
    ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$Item
  >?
  mainVideo;
  @JsonKey(name: 'imgCollection')
  final List<
    ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$Item
  >?
  imgCollection;
  @JsonKey(name: 'textDetail', fromJson: JsonCoerce.asString)
  final String? textDetail;
  @JsonKey(name: 'imgDetail')
  final List<
    ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$Item
  >?
  imgDetail;
  @JsonKey(name: 'categoryId', fromJson: JsonCoerce.asDouble)
  final double? categoryId;
  @JsonKey(name: 'productOptions')
  final List<
    ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item
  >?
  productOptions;
  @JsonKey(name: 'productAttrs')
  final List<
    ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$Item
  >?
  productAttrs;
  @JsonKey(name: 'sourcePlatform', fromJson: JsonCoerce.asString)
  final String? sourcePlatform;
  @JsonKey(name: 'platformUrl', fromJson: JsonCoerce.asString)
  final String? platformUrl;
  @JsonKey(name: 'platformProductId', fromJson: JsonCoerce.asString)
  final String? platformProductId;
  @JsonKey(name: 'skuCode', fromJson: JsonCoerce.asString)
  final String? skuCode;
  @JsonKey(name: 'sellPriceCur', fromJson: JsonCoerce.asString)
  final String? sellPriceCur;
  @JsonKey(name: 'sellPrice', fromJson: JsonCoerce.asString)
  final String? sellPrice;
  @JsonKey(name: 'targetSellPrice', fromJson: JsonCoerce.asString)
  final String? targetSellPrice;
  @JsonKey(name: 'targetSellCur', fromJson: JsonCoerce.asString)
  final String? targetSellCur;
  @JsonKey(name: 'productFlag', fromJson: JsonCoerce.asString)
  final String? productFlag;
  @JsonKey(name: 'marketingInfo', fromJson: JsonCoerce.asString)
  final String? marketingInfo;
  @JsonKey(name: 'sellQuantity', fromJson: JsonCoerce.asString)
  final String? sellQuantity;
  @JsonKey(name: 'tags')
  final List<
    ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$Item
  >?
  tags;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item &&
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

extension $ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$ItemExtension
    on ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item {
  ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item copyWith({
    String? shopCode,
    String? productCode,
    String? productName,
    String? tenantCode,
    String? brandName,
    List<
      ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$Item
    >?
    mainImg,
    Object? subImg,
    List<
      ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$Item
    >?
    mainVideo,
    List<
      ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$Item
    >?
    imgCollection,
    String? textDetail,
    List<
      ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$Item
    >?
    imgDetail,
    double? categoryId,
    List<
      ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item
    >?
    productOptions,
    List<
      ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$Item
    >?
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
    List<
      ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$Item
    >?
    tags,
    ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
  }) {
    return ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item(
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

  ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item
  copyWithWrapped({
    Wrapped<String?>? shopCode,
    Wrapped<String?>? productCode,
    Wrapped<String?>? productName,
    Wrapped<String?>? tenantCode,
    Wrapped<String?>? brandName,
    Wrapped<
      List<
        ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$Item
      >?
    >?
    mainImg,
    Wrapped<Object?>? subImg,
    Wrapped<
      List<
        ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$Item
      >?
    >?
    mainVideo,
    Wrapped<
      List<
        ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$Item
      >?
    >?
    imgCollection,
    Wrapped<String?>? textDetail,
    Wrapped<
      List<
        ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$Item
      >?
    >?
    imgDetail,
    Wrapped<double?>? categoryId,
    Wrapped<
      List<
        ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item
      >?
    >?
    productOptions,
    Wrapped<
      List<
        ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$Item
      >?
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
    Wrapped<String?>? productFlag,
    Wrapped<String?>? marketingInfo,
    Wrapped<String?>? sellQuantity,
    Wrapped<
      List<
        ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$Item
      >?
    >?
    tags,
    Wrapped<
      ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
  }) {
    return ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item(
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
class ProductServiceProductNoAuthAlbumProductGet$Response$Data {
  const ProductServiceProductNoAuthAlbumProductGet$Response$Data({
    this.total,
    this.pageSize,
    this.totalPages,
    this.current,
    this.records,
  });

  factory ProductServiceProductNoAuthAlbumProductGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductNoAuthAlbumProductGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$ProductServiceProductNoAuthAlbumProductGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthAlbumProductGet$Response$DataToJson(this);

  @JsonKey(name: 'total', fromJson: JsonCoerce.asDouble)
  final double? total;
  @JsonKey(name: 'pageSize', fromJson: JsonCoerce.asDouble)
  final double? pageSize;
  @JsonKey(name: 'totalPages', fromJson: JsonCoerce.asDouble)
  final double? totalPages;
  @JsonKey(name: 'current', fromJson: JsonCoerce.asDouble)
  final double? current;
  @JsonKey(name: 'records')
  final List<
    ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item
  >?
  records;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthAlbumProductGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthAlbumProductGet$Response$Data &&
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

extension $ProductServiceProductNoAuthAlbumProductGet$Response$DataExtension
    on ProductServiceProductNoAuthAlbumProductGet$Response$Data {
  ProductServiceProductNoAuthAlbumProductGet$Response$Data copyWith({
    double? total,
    double? pageSize,
    double? totalPages,
    double? current,
    List<ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item>?
    records,
  }) {
    return ProductServiceProductNoAuthAlbumProductGet$Response$Data(
      total: total ?? this.total,
      pageSize: pageSize ?? this.pageSize,
      totalPages: totalPages ?? this.totalPages,
      current: current ?? this.current,
      records: records ?? this.records,
    );
  }

  ProductServiceProductNoAuthAlbumProductGet$Response$Data copyWithWrapped({
    Wrapped<double?>? total,
    Wrapped<double?>? pageSize,
    Wrapped<double?>? totalPages,
    Wrapped<double?>? current,
    Wrapped<
      List<
        ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item
      >?
    >?
    records,
  }) {
    return ProductServiceProductNoAuthAlbumProductGet$Response$Data(
      total: (total != null ? total.value : this.total),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      totalPages: (totalPages != null ? totalPages.value : this.totalPages),
      current: (current != null ? current.value : this.current),
      records: (records != null ? records.value : this.records),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceShopNoAuthGetThirdShopGet$Response$Data {
  const ProductServiceShopNoAuthGetThirdShopGet$Response$Data({
    this.shopCode,
    this.shopName,
    this.icon,
    this.recordSource,
    this.records,
  });

  factory ProductServiceShopNoAuthGetThirdShopGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceShopNoAuthGetThirdShopGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$ProductServiceShopNoAuthGetThirdShopGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceShopNoAuthGetThirdShopGet$Response$DataToJson(this);

  @JsonKey(name: 'shopCode', fromJson: JsonCoerce.asString)
  final String? shopCode;
  @JsonKey(name: 'shopName', fromJson: JsonCoerce.asString)
  final String? shopName;
  @JsonKey(name: 'icon', fromJson: JsonCoerce.asString)
  final String? icon;
  @JsonKey(name: 'recordSource', fromJson: JsonCoerce.asInt)
  final int? recordSource;
  @JsonKey(name: 'records')
  final List<
    ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item
  >?
  records;
  static const fromJsonFactory =
      _$ProductServiceShopNoAuthGetThirdShopGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceShopNoAuthGetThirdShopGet$Response$Data &&
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

extension $ProductServiceShopNoAuthGetThirdShopGet$Response$DataExtension
    on ProductServiceShopNoAuthGetThirdShopGet$Response$Data {
  ProductServiceShopNoAuthGetThirdShopGet$Response$Data copyWith({
    String? shopCode,
    String? shopName,
    String? icon,
    int? recordSource,
    List<ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item>?
    records,
  }) {
    return ProductServiceShopNoAuthGetThirdShopGet$Response$Data(
      shopCode: shopCode ?? this.shopCode,
      shopName: shopName ?? this.shopName,
      icon: icon ?? this.icon,
      recordSource: recordSource ?? this.recordSource,
      records: records ?? this.records,
    );
  }

  ProductServiceShopNoAuthGetThirdShopGet$Response$Data copyWithWrapped({
    Wrapped<String?>? shopCode,
    Wrapped<String?>? shopName,
    Wrapped<String?>? icon,
    Wrapped<int?>? recordSource,
    Wrapped<
      List<ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item>?
    >?
    records,
  }) {
    return ProductServiceShopNoAuthGetThirdShopGet$Response$Data(
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
class ProductServiceProductNoAuthKolProductGet$Response$Data$Item {
  const ProductServiceProductNoAuthKolProductGet$Response$Data$Item({
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
    this.tags,
    this.premiumBrandInfo,
    this.sellPoints,
  });

  factory ProductServiceProductNoAuthKolProductGet$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductNoAuthKolProductGet$Response$Data$ItemFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$ItemToJson(this);

  @JsonKey(name: 'shopCode', fromJson: JsonCoerce.asString)
  final String? shopCode;
  @JsonKey(name: 'productCode', fromJson: JsonCoerce.asString)
  final String? productCode;
  @JsonKey(name: 'productName', fromJson: JsonCoerce.asString)
  final String? productName;
  @JsonKey(name: 'tenantCode', fromJson: JsonCoerce.asString)
  final String? tenantCode;
  @JsonKey(name: 'brandName', fromJson: JsonCoerce.asString)
  final String? brandName;
  @JsonKey(name: 'mainImg')
  final List<
    ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainImg$Item
  >?
  mainImg;
  @JsonKey(name: 'subImg')
  final Object? subImg;
  @JsonKey(name: 'mainVideo')
  final List<
    ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainVideo$Item
  >?
  mainVideo;
  @JsonKey(name: 'imgCollection')
  final List<
    ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$Item
  >?
  imgCollection;
  @JsonKey(name: 'textDetail', fromJson: JsonCoerce.asString)
  final String? textDetail;
  @JsonKey(name: 'imgDetail')
  final List<
    ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$Item
  >?
  imgDetail;
  @JsonKey(name: 'categoryId', fromJson: JsonCoerce.asDouble)
  final double? categoryId;
  @JsonKey(name: 'productOptions')
  final List<
    ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item
  >?
  productOptions;
  @JsonKey(name: 'productAttrs')
  final List<
    ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$Item
  >?
  productAttrs;
  @JsonKey(name: 'sourcePlatform', fromJson: JsonCoerce.asString)
  final String? sourcePlatform;
  @JsonKey(name: 'platformUrl', fromJson: JsonCoerce.asString)
  final String? platformUrl;
  @JsonKey(name: 'platformProductId', fromJson: JsonCoerce.asString)
  final String? platformProductId;
  @JsonKey(name: 'skuCode', fromJson: JsonCoerce.asString)
  final String? skuCode;
  @JsonKey(name: 'sellPriceCur', fromJson: JsonCoerce.asString)
  final String? sellPriceCur;
  @JsonKey(name: 'sellPrice', fromJson: JsonCoerce.asString)
  final String? sellPrice;
  @JsonKey(name: 'targetSellPrice', fromJson: JsonCoerce.asString)
  final String? targetSellPrice;
  @JsonKey(name: 'targetSellCur', fromJson: JsonCoerce.asString)
  final String? targetSellCur;
  @JsonKey(name: 'productFlag', fromJson: JsonCoerce.asString)
  final String? productFlag;
  @JsonKey(name: 'marketingInfo', fromJson: JsonCoerce.asString)
  final String? marketingInfo;
  @JsonKey(name: 'sellQuantity', fromJson: JsonCoerce.asString)
  final String? sellQuantity;
  @JsonKey(name: 'tags')
  final List<
    ProductServiceProductNoAuthKolProductGet$Response$Data$Item$Tags$Item
  >?
  tags;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductServiceProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthKolProductGet$Response$Data$Item &&
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

extension $ProductServiceProductNoAuthKolProductGet$Response$Data$ItemExtension
    on ProductServiceProductNoAuthKolProductGet$Response$Data$Item {
  ProductServiceProductNoAuthKolProductGet$Response$Data$Item copyWith({
    String? shopCode,
    String? productCode,
    String? productName,
    String? tenantCode,
    String? brandName,
    List<
      ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainImg$Item
    >?
    mainImg,
    Object? subImg,
    List<
      ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainVideo$Item
    >?
    mainVideo,
    List<
      ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$Item
    >?
    imgCollection,
    String? textDetail,
    List<
      ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$Item
    >?
    imgDetail,
    double? categoryId,
    List<
      ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item
    >?
    productOptions,
    List<
      ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$Item
    >?
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
    List<ProductServiceProductNoAuthKolProductGet$Response$Data$Item$Tags$Item>?
    tags,
    ProductServiceProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
  }) {
    return ProductServiceProductNoAuthKolProductGet$Response$Data$Item(
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

  ProductServiceProductNoAuthKolProductGet$Response$Data$Item copyWithWrapped({
    Wrapped<String?>? shopCode,
    Wrapped<String?>? productCode,
    Wrapped<String?>? productName,
    Wrapped<String?>? tenantCode,
    Wrapped<String?>? brandName,
    Wrapped<
      List<
        ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainImg$Item
      >?
    >?
    mainImg,
    Wrapped<Object?>? subImg,
    Wrapped<
      List<
        ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainVideo$Item
      >?
    >?
    mainVideo,
    Wrapped<
      List<
        ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$Item
      >?
    >?
    imgCollection,
    Wrapped<String?>? textDetail,
    Wrapped<
      List<
        ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$Item
      >?
    >?
    imgDetail,
    Wrapped<double?>? categoryId,
    Wrapped<
      List<
        ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item
      >?
    >?
    productOptions,
    Wrapped<
      List<
        ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$Item
      >?
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
    Wrapped<String?>? productFlag,
    Wrapped<String?>? marketingInfo,
    Wrapped<String?>? sellQuantity,
    Wrapped<
      List<
        ProductServiceProductNoAuthKolProductGet$Response$Data$Item$Tags$Item
      >?
    >?
    tags,
    Wrapped<
      ProductServiceProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
  }) {
    return ProductServiceProductNoAuthKolProductGet$Response$Data$Item(
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
class ProductServiceProductNoAuthPremierProductGet$Response$Data {
  const ProductServiceProductNoAuthPremierProductGet$Response$Data({
    this.total,
    this.pageSize,
    this.totalPages,
    this.current,
    this.records,
  });

  factory ProductServiceProductNoAuthPremierProductGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductNoAuthPremierProductGet$Response$DataFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthPremierProductGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthPremierProductGet$Response$DataToJson(this);

  @JsonKey(name: 'total', fromJson: JsonCoerce.asDouble)
  final double? total;
  @JsonKey(name: 'pageSize', fromJson: JsonCoerce.asDouble)
  final double? pageSize;
  @JsonKey(name: 'totalPages', fromJson: JsonCoerce.asDouble)
  final double? totalPages;
  @JsonKey(name: 'current', fromJson: JsonCoerce.asDouble)
  final double? current;
  @JsonKey(name: 'records')
  final List<
    ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item
  >?
  records;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthPremierProductGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthPremierProductGet$Response$Data &&
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

extension $ProductServiceProductNoAuthPremierProductGet$Response$DataExtension
    on ProductServiceProductNoAuthPremierProductGet$Response$Data {
  ProductServiceProductNoAuthPremierProductGet$Response$Data copyWith({
    double? total,
    double? pageSize,
    double? totalPages,
    double? current,
    List<
      ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item
    >?
    records,
  }) {
    return ProductServiceProductNoAuthPremierProductGet$Response$Data(
      total: total ?? this.total,
      pageSize: pageSize ?? this.pageSize,
      totalPages: totalPages ?? this.totalPages,
      current: current ?? this.current,
      records: records ?? this.records,
    );
  }

  ProductServiceProductNoAuthPremierProductGet$Response$Data copyWithWrapped({
    Wrapped<double?>? total,
    Wrapped<double?>? pageSize,
    Wrapped<double?>? totalPages,
    Wrapped<double?>? current,
    Wrapped<
      List<
        ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item
      >?
    >?
    records,
  }) {
    return ProductServiceProductNoAuthPremierProductGet$Response$Data(
      total: (total != null ? total.value : this.total),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      totalPages: (totalPages != null ? totalPages.value : this.totalPages),
      current: (current != null ? current.value : this.current),
      records: (records != null ? records.value : this.records),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data {
  const ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data({
    this.timestamp,
    this.categories,
  });

  factory ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$DataFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$DataToJson(
        this,
      );

  @JsonKey(name: 'timestamp', fromJson: JsonCoerce.asString)
  final String? timestamp;
  @JsonKey(name: 'categories')
  final List<
    ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item
  >?
  categories;
  static const fromJsonFactory =
      _$ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data &&
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

extension $ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$DataExtension
    on ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data {
  ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data
  copyWith({
    String? timestamp,
    List<
      ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item
    >?
    categories,
  }) {
    return ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data(
      timestamp: timestamp ?? this.timestamp,
      categories: categories ?? this.categories,
    );
  }

  ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data
  copyWithWrapped({
    Wrapped<String?>? timestamp,
    Wrapped<
      List<
        ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item
      >?
    >?
    categories,
  }) {
    return ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data(
      timestamp: (timestamp != null ? timestamp.value : this.timestamp),
      categories: (categories != null ? categories.value : this.categories),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceRecommendNoAuthCategoryPost$Response$Data {
  const ProductServiceRecommendNoAuthCategoryPost$Response$Data({
    this.total,
    this.pageSize,
    this.totalPages,
    this.current,
    this.records,
  });

  factory ProductServiceRecommendNoAuthCategoryPost$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceRecommendNoAuthCategoryPost$Response$DataFromJson(json);

  static const toJsonFactory =
      _$ProductServiceRecommendNoAuthCategoryPost$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceRecommendNoAuthCategoryPost$Response$DataToJson(this);

  @JsonKey(name: 'total', fromJson: JsonCoerce.asString)
  final String? total;
  @JsonKey(name: 'pageSize', fromJson: JsonCoerce.asString)
  final String? pageSize;
  @JsonKey(name: 'totalPages', fromJson: JsonCoerce.asString)
  final String? totalPages;
  @JsonKey(name: 'current', fromJson: JsonCoerce.asString)
  final String? current;
  @JsonKey(name: 'records')
  final List<
    ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item
  >?
  records;
  static const fromJsonFactory =
      _$ProductServiceRecommendNoAuthCategoryPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceRecommendNoAuthCategoryPost$Response$Data &&
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

extension $ProductServiceRecommendNoAuthCategoryPost$Response$DataExtension
    on ProductServiceRecommendNoAuthCategoryPost$Response$Data {
  ProductServiceRecommendNoAuthCategoryPost$Response$Data copyWith({
    String? total,
    String? pageSize,
    String? totalPages,
    String? current,
    List<ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item>?
    records,
  }) {
    return ProductServiceRecommendNoAuthCategoryPost$Response$Data(
      total: total ?? this.total,
      pageSize: pageSize ?? this.pageSize,
      totalPages: totalPages ?? this.totalPages,
      current: current ?? this.current,
      records: records ?? this.records,
    );
  }

  ProductServiceRecommendNoAuthCategoryPost$Response$Data copyWithWrapped({
    Wrapped<String?>? total,
    Wrapped<String?>? pageSize,
    Wrapped<String?>? totalPages,
    Wrapped<String?>? current,
    Wrapped<
      List<
        ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item
      >?
    >?
    records,
  }) {
    return ProductServiceRecommendNoAuthCategoryPost$Response$Data(
      total: (total != null ? total.value : this.total),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      totalPages: (totalPages != null ? totalPages.value : this.totalPages),
      current: (current != null ? current.value : this.current),
      records: (records != null ? records.value : this.records),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceRecommendNoAuthShopPost$Response$Data {
  const ProductServiceRecommendNoAuthShopPost$Response$Data({
    this.total,
    this.pageSize,
    this.totalPages,
    this.current,
    this.records,
  });

  factory ProductServiceRecommendNoAuthShopPost$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceRecommendNoAuthShopPost$Response$DataFromJson(json);

  static const toJsonFactory =
      _$ProductServiceRecommendNoAuthShopPost$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceRecommendNoAuthShopPost$Response$DataToJson(this);

  @JsonKey(name: 'total', fromJson: JsonCoerce.asString)
  final String? total;
  @JsonKey(name: 'pageSize', fromJson: JsonCoerce.asString)
  final String? pageSize;
  @JsonKey(name: 'totalPages', fromJson: JsonCoerce.asString)
  final String? totalPages;
  @JsonKey(name: 'current', fromJson: JsonCoerce.asString)
  final String? current;
  @JsonKey(name: 'records')
  final List<ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item>?
  records;
  static const fromJsonFactory =
      _$ProductServiceRecommendNoAuthShopPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceRecommendNoAuthShopPost$Response$Data &&
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

extension $ProductServiceRecommendNoAuthShopPost$Response$DataExtension
    on ProductServiceRecommendNoAuthShopPost$Response$Data {
  ProductServiceRecommendNoAuthShopPost$Response$Data copyWith({
    String? total,
    String? pageSize,
    String? totalPages,
    String? current,
    List<ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item>?
    records,
  }) {
    return ProductServiceRecommendNoAuthShopPost$Response$Data(
      total: total ?? this.total,
      pageSize: pageSize ?? this.pageSize,
      totalPages: totalPages ?? this.totalPages,
      current: current ?? this.current,
      records: records ?? this.records,
    );
  }

  ProductServiceRecommendNoAuthShopPost$Response$Data copyWithWrapped({
    Wrapped<String?>? total,
    Wrapped<String?>? pageSize,
    Wrapped<String?>? totalPages,
    Wrapped<String?>? current,
    Wrapped<
      List<ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item>?
    >?
    records,
  }) {
    return ProductServiceRecommendNoAuthShopPost$Response$Data(
      total: (total != null ? total.value : this.total),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      totalPages: (totalPages != null ? totalPages.value : this.totalPages),
      current: (current != null ? current.value : this.current),
      records: (records != null ? records.value : this.records),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceRecommendNoAuthSimilarProductPost$Response$Data {
  const ProductServiceRecommendNoAuthSimilarProductPost$Response$Data({
    this.records,
    this.total,
    this.pageSize,
    this.totalPages,
    this.current,
  });

  factory ProductServiceRecommendNoAuthSimilarProductPost$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceRecommendNoAuthSimilarProductPost$Response$DataFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductServiceRecommendNoAuthSimilarProductPost$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceRecommendNoAuthSimilarProductPost$Response$DataToJson(
        this,
      );

  @JsonKey(name: 'records')
  final List<
    ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item
  >?
  records;
  @JsonKey(name: 'total', fromJson: JsonCoerce.asString)
  final String? total;
  @JsonKey(name: 'pageSize', fromJson: JsonCoerce.asString)
  final String? pageSize;
  @JsonKey(name: 'totalPages', fromJson: JsonCoerce.asString)
  final String? totalPages;
  @JsonKey(name: 'current', fromJson: JsonCoerce.asString)
  final String? current;
  static const fromJsonFactory =
      _$ProductServiceRecommendNoAuthSimilarProductPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceRecommendNoAuthSimilarProductPost$Response$Data &&
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

extension $ProductServiceRecommendNoAuthSimilarProductPost$Response$DataExtension
    on ProductServiceRecommendNoAuthSimilarProductPost$Response$Data {
  ProductServiceRecommendNoAuthSimilarProductPost$Response$Data copyWith({
    List<
      ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item
    >?
    records,
    String? total,
    String? pageSize,
    String? totalPages,
    String? current,
  }) {
    return ProductServiceRecommendNoAuthSimilarProductPost$Response$Data(
      records: records ?? this.records,
      total: total ?? this.total,
      pageSize: pageSize ?? this.pageSize,
      totalPages: totalPages ?? this.totalPages,
      current: current ?? this.current,
    );
  }

  ProductServiceRecommendNoAuthSimilarProductPost$Response$Data
  copyWithWrapped({
    Wrapped<
      List<
        ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item
      >?
    >?
    records,
    Wrapped<String?>? total,
    Wrapped<String?>? pageSize,
    Wrapped<String?>? totalPages,
    Wrapped<String?>? current,
  }) {
    return ProductServiceRecommendNoAuthSimilarProductPost$Response$Data(
      records: (records != null ? records.value : this.records),
      total: (total != null ? total.value : this.total),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      totalPages: (totalPages != null ? totalPages.value : this.totalPages),
      current: (current != null ? current.value : this.current),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductReviewNoAuthPageGet$Response$Data$Records$Item {
  const ProductServiceProductReviewNoAuthPageGet$Response$Data$Records$Item({
    this.id,
    this.username,
    this.comment,
    this.score,
    this.images,
    this.extraComment,
    this.reviewTime,
    this.salesQuantity,
  });

  factory ProductServiceProductReviewNoAuthPageGet$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductReviewNoAuthPageGet$Response$Data$Records$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductReviewNoAuthPageGet$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductReviewNoAuthPageGet$Response$Data$Records$ItemToJson(
        this,
      );

  @JsonKey(name: 'id', fromJson: JsonCoerce.asDouble)
  final double? id;
  @JsonKey(name: 'username', fromJson: JsonCoerce.asString)
  final String? username;
  @JsonKey(name: 'comment', fromJson: JsonCoerce.asString)
  final String? comment;
  @JsonKey(name: 'score', fromJson: JsonCoerce.asDouble)
  final double? score;
  @JsonKey(name: 'images', defaultValue: <Object>[])
  final List<Object>? images;
  @JsonKey(name: 'extraComment', fromJson: JsonCoerce.asString)
  final String? extraComment;
  @JsonKey(name: 'reviewTime', fromJson: JsonCoerce.asString)
  final String? reviewTime;
  @JsonKey(name: 'salesQuantity', fromJson: JsonCoerce.asDouble)
  final double? salesQuantity;
  static const fromJsonFactory =
      _$ProductServiceProductReviewNoAuthPageGet$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductReviewNoAuthPageGet$Response$Data$Records$Item &&
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

extension $ProductServiceProductReviewNoAuthPageGet$Response$Data$Records$ItemExtension
    on ProductServiceProductReviewNoAuthPageGet$Response$Data$Records$Item {
  ProductServiceProductReviewNoAuthPageGet$Response$Data$Records$Item copyWith({
    double? id,
    String? username,
    String? comment,
    double? score,
    List<Object>? images,
    String? extraComment,
    String? reviewTime,
    double? salesQuantity,
  }) {
    return ProductServiceProductReviewNoAuthPageGet$Response$Data$Records$Item(
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

  ProductServiceProductReviewNoAuthPageGet$Response$Data$Records$Item
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
    return ProductServiceProductReviewNoAuthPageGet$Response$Data$Records$Item(
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
class ProductServiceProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$Item {
  const ProductServiceProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$Item({
    this.id,
    this.username,
    this.comment,
    this.score,
    this.images,
    this.extraComment,
    this.reviewTime,
    this.salesQuantity,
  });

  factory ProductServiceProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$ItemToJson(
        this,
      );

  @JsonKey(name: 'id', fromJson: JsonCoerce.asDouble)
  final double? id;
  @JsonKey(name: 'username', fromJson: JsonCoerce.asString)
  final String? username;
  @JsonKey(name: 'comment', fromJson: JsonCoerce.asString)
  final String? comment;
  @JsonKey(name: 'score', fromJson: JsonCoerce.asDouble)
  final double? score;
  @JsonKey(name: 'images', defaultValue: <Object>[])
  final List<Object>? images;
  @JsonKey(name: 'extraComment', fromJson: JsonCoerce.asString)
  final String? extraComment;
  @JsonKey(name: 'reviewTime', fromJson: JsonCoerce.asString)
  final String? reviewTime;
  @JsonKey(name: 'salesQuantity', fromJson: JsonCoerce.asDouble)
  final double? salesQuantity;
  static const fromJsonFactory =
      _$ProductServiceProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$Item &&
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

extension $ProductServiceProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$ItemExtension
    on ProductServiceProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$Item {
  ProductServiceProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$Item
  copyWith({
    double? id,
    String? username,
    String? comment,
    double? score,
    List<Object>? images,
    String? extraComment,
    String? reviewTime,
    double? salesQuantity,
  }) {
    return ProductServiceProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$Item(
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

  ProductServiceProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$Item
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
    return ProductServiceProductReviewNoAuthSummaryGet$Response$Data$FeaturedReviews$Item(
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
class ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item {
  const ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item({
    this.id,
    this.parentId,
    this.level,
    this.showOrder,
    this.name,
    this.iconUrl,
    this.categoryList,
    this.brands,
  });

  factory ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$ItemToJson(
        this,
      );

  @JsonKey(name: 'id', fromJson: JsonCoerce.asDouble)
  final double? id;
  @JsonKey(name: 'parentId', fromJson: JsonCoerce.asDouble)
  final double? parentId;
  @JsonKey(name: 'level', fromJson: JsonCoerce.asDouble)
  final double? level;
  @JsonKey(name: 'showOrder', fromJson: JsonCoerce.asDouble)
  final double? showOrder;
  @JsonKey(name: 'name', fromJson: JsonCoerce.asString)
  final String? name;
  @JsonKey(name: 'iconUrl', fromJson: JsonCoerce.asString)
  final String? iconUrl;
  @JsonKey(name: 'categoryList')
  final List<
    ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item
  >?
  categoryList;
  @JsonKey(name: 'brands', defaultValue: <Object>[])
  final List<Object>? brands;
  static const fromJsonFactory =
      _$ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item &&
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

extension $ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$ItemExtension
    on ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item {
  ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item copyWith({
    double? id,
    double? parentId,
    double? level,
    double? showOrder,
    String? name,
    String? iconUrl,
    List<
      ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item
    >?
    categoryList,
    List<Object>? brands,
  }) {
    return ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item(
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

  ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item
  copyWithWrapped({
    Wrapped<double?>? id,
    Wrapped<double?>? parentId,
    Wrapped<double?>? level,
    Wrapped<double?>? showOrder,
    Wrapped<String?>? name,
    Wrapped<String?>? iconUrl,
    Wrapped<
      List<
        ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item
      >?
    >?
    categoryList,
    Wrapped<List<Object>?>? brands,
  }) {
    return ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item(
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
class ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$Item {
  const ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$Item({
    this.activityCode,
    this.title,
    this.status,
    this.startTime,
    this.endTime,
    this.names,
  });

  factory ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$ItemToJson(
        this,
      );

  @JsonKey(name: 'activityCode', fromJson: JsonCoerce.asString)
  final String? activityCode;
  @JsonKey(name: 'title', fromJson: JsonCoerce.asString)
  final String? title;
  @JsonKey(name: 'status', fromJson: JsonCoerce.asString)
  final String? status;
  @JsonKey(name: 'startTime', fromJson: JsonCoerce.asDouble)
  final double? startTime;
  @JsonKey(name: 'endTime', fromJson: JsonCoerce.asDouble)
  final double? endTime;
  @JsonKey(name: 'names', defaultValue: <Object>[])
  final List<Object>? names;
  static const fromJsonFactory =
      _$ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$Item &&
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

extension $ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$ItemExtension
    on ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$Item {
  ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$Item
  copyWith({
    String? activityCode,
    String? title,
    String? status,
    double? startTime,
    double? endTime,
    List<Object>? names,
  }) {
    return ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$Item(
      activityCode: activityCode ?? this.activityCode,
      title: title ?? this.title,
      status: status ?? this.status,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      names: names ?? this.names,
    );
  }

  ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$Item
  copyWithWrapped({
    Wrapped<String?>? activityCode,
    Wrapped<String?>? title,
    Wrapped<String?>? status,
    Wrapped<double?>? startTime,
    Wrapped<double?>? endTime,
    Wrapped<List<Object>?>? names,
  }) {
    return ProductServiceActivityNoAuthFlashSaleActivityGet$Response$Data$Activities$Item(
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
class ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item {
  const ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item({
    this.productCode,
    this.productName,
    this.image,
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
    this.flashSale,
  });

  factory ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$ItemToJson(
        this,
      );

  @JsonKey(name: 'productCode', fromJson: JsonCoerce.asString)
  final String? productCode;
  @JsonKey(name: 'productName', fromJson: JsonCoerce.asString)
  final String? productName;
  @JsonKey(name: 'image')
  final ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Image?
  image;
  @JsonKey(name: 'skuCode', fromJson: JsonCoerce.asString)
  final String? skuCode;
  @JsonKey(name: 'sellPriceCur', fromJson: JsonCoerce.asString)
  final String? sellPriceCur;
  @JsonKey(name: 'sellPrice', fromJson: JsonCoerce.asString)
  final String? sellPrice;
  @JsonKey(name: 'targetSellPrice', fromJson: JsonCoerce.asString)
  final String? targetSellPrice;
  @JsonKey(name: 'targetOriginPrice', fromJson: JsonCoerce.asString)
  final String? targetOriginPrice;
  @JsonKey(name: 'targetSellCur', fromJson: JsonCoerce.asString)
  final String? targetSellCur;
  @JsonKey(name: 'sellQuantity', fromJson: JsonCoerce.asString)
  final String? sellQuantity;
  @JsonKey(name: 'skuCount', fromJson: JsonCoerce.asInt)
  final int? skuCount;
  @JsonKey(name: 'marketingInfo', fromJson: JsonCoerce.asString)
  final String? marketingInfo;
  @JsonKey(name: 'tags')
  final List<
    ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$Item
  >?
  tags;
  @JsonKey(name: 'flashSale')
  final ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSale?
  flashSale;
  static const fromJsonFactory =
      _$ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item &&
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

extension $ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$ItemExtension
    on
        ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item {
  ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item
  copyWith({
    String? productCode,
    String? productName,
    ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Image?
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
      ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$Item
    >?
    tags,
    ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSale?
    flashSale,
  }) {
    return ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item(
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

  ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item
  copyWithWrapped({
    Wrapped<String?>? productCode,
    Wrapped<String?>? productName,
    Wrapped<
      ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Image?
    >?
    image,
    Wrapped<String?>? skuCode,
    Wrapped<String?>? sellPriceCur,
    Wrapped<String?>? sellPrice,
    Wrapped<String?>? targetSellPrice,
    Wrapped<String?>? targetOriginPrice,
    Wrapped<String?>? targetSellCur,
    Wrapped<String?>? sellQuantity,
    Wrapped<int?>? skuCount,
    Wrapped<String?>? marketingInfo,
    Wrapped<
      List<
        ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$Item
      >?
    >?
    tags,
    Wrapped<
      ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSale?
    >?
    flashSale,
  }) {
    return ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item(
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
class ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item {
  const ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item({
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

  factory ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$ItemToJson(
        this,
      );

  @JsonKey(name: 'productCode', fromJson: JsonCoerce.asString)
  final String? productCode;
  @JsonKey(name: 'productName', fromJson: JsonCoerce.asString)
  final String? productName;
  @JsonKey(name: 'image')
  final ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Image?
  image;
  @JsonKey(name: 'sourcePlatform', fromJson: JsonCoerce.asString)
  final String? sourcePlatform;
  @JsonKey(name: 'platformProductId', fromJson: JsonCoerce.asString)
  final String? platformProductId;
  @JsonKey(name: 'skuCode', fromJson: JsonCoerce.asString)
  final String? skuCode;
  @JsonKey(name: 'sellPriceCur', fromJson: JsonCoerce.asString)
  final String? sellPriceCur;
  @JsonKey(name: 'sellPrice', fromJson: JsonCoerce.asString)
  final String? sellPrice;
  @JsonKey(name: 'targetSellPrice', fromJson: JsonCoerce.asString)
  final String? targetSellPrice;
  @JsonKey(name: 'targetOriginPrice', fromJson: JsonCoerce.asString)
  final String? targetOriginPrice;
  @JsonKey(name: 'targetSellCur', fromJson: JsonCoerce.asString)
  final String? targetSellCur;
  @JsonKey(name: 'sellQuantity', fromJson: JsonCoerce.asString)
  final String? sellQuantity;
  @JsonKey(name: 'skuCount', fromJson: JsonCoerce.asInt)
  final int? skuCount;
  @JsonKey(name: 'marketingInfo', fromJson: JsonCoerce.asString)
  final String? marketingInfo;
  @JsonKey(name: 'tags')
  final List<
    ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$Item
  >?
  tags;
  @JsonKey(name: 'skuSourceCode', fromJson: JsonCoerce.asString)
  final String? skuSourceCode;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  static const fromJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item &&
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

extension $ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$ItemExtension
    on ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item {
  ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item
  copyWith({
    String? productCode,
    String? productName,
    ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Image?
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
    int? skuCount,
    String? marketingInfo,
    List<
      ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$Item
    >?
    tags,
    String? skuSourceCode,
    ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
  }) {
    return ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item(
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

  ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item
  copyWithWrapped({
    Wrapped<String?>? productCode,
    Wrapped<String?>? productName,
    Wrapped<
      ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Image?
    >?
    image,
    Wrapped<String?>? sourcePlatform,
    Wrapped<String?>? platformProductId,
    Wrapped<String?>? skuCode,
    Wrapped<String?>? sellPriceCur,
    Wrapped<String?>? sellPrice,
    Wrapped<String?>? targetSellPrice,
    Wrapped<String?>? targetOriginPrice,
    Wrapped<String?>? targetSellCur,
    Wrapped<String?>? sellQuantity,
    Wrapped<int?>? skuCount,
    Wrapped<String?>? marketingInfo,
    Wrapped<
      List<
        ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$Item
      >?
    >?
    tags,
    Wrapped<String?>? skuSourceCode,
    Wrapped<
      ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
  }) {
    return ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item(
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
class ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$Item {
  const ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$Item({
    this.categoryId,
    this.categoryName,
    this.count,
    this.categoryImage,
  });

  factory ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$ItemToJson(
        this,
      );

  @JsonKey(name: 'categoryId', fromJson: JsonCoerce.asInt)
  final int? categoryId;
  @JsonKey(name: 'categoryName', fromJson: JsonCoerce.asString)
  final String? categoryName;
  @JsonKey(name: 'count', fromJson: JsonCoerce.asInt)
  final int? count;
  @JsonKey(name: 'categoryImage', fromJson: JsonCoerce.asString)
  final String? categoryImage;
  static const fromJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$Item &&
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

extension $ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$ItemExtension
    on ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$Item {
  ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$Item
  copyWith({
    int? categoryId,
    String? categoryName,
    int? count,
    String? categoryImage,
  }) {
    return ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$Item(
      categoryId: categoryId ?? this.categoryId,
      categoryName: categoryName ?? this.categoryName,
      count: count ?? this.count,
      categoryImage: categoryImage ?? this.categoryImage,
    );
  }

  ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$Item
  copyWithWrapped({
    Wrapped<int?>? categoryId,
    Wrapped<String?>? categoryName,
    Wrapped<int?>? count,
    Wrapped<String?>? categoryImage,
  }) {
    return ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Categories$Item(
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
class ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$Item {
  const ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$Item({
    this.sort,
    this.order,
    this.label,
  });

  factory ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemToJson(
        this,
      );

  @JsonKey(
    name: 'sort',
    toJson:
        productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSortNullableToJson,
    fromJson:
        productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSortNullableFromJson,
  )
  final enums.ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort?
  sort;
  @JsonKey(
    name: 'order',
    toJson:
        productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrderNullableToJson,
    fromJson:
        productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrderNullableFromJson,
  )
  final enums.ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder?
  order;
  @JsonKey(name: 'label', fromJson: JsonCoerce.asString)
  final String? label;
  static const fromJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$Item &&
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

extension $ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemExtension
    on ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$Item {
  ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$Item
  copyWith({
    enums.ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort?
    sort,
    enums.ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder?
    order,
    String? label,
  }) {
    return ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$Item(
      sort: sort ?? this.sort,
      order: order ?? this.order,
      label: label ?? this.label,
    );
  }

  ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$Item
  copyWithWrapped({
    Wrapped<
      enums.ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort?
    >?
    sort,
    Wrapped<
      enums.ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder?
    >?
    order,
    Wrapped<String?>? label,
  }) {
    return ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$Item(
      sort: (sort != null ? sort.value : this.sort),
      order: (order != null ? order.value : this.order),
      label: (label != null ? label.value : this.label),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config {
  const ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config({
    this.list,
  });

  factory ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$ConfigFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$ConfigToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$ConfigToJson(
        this,
      );

  @JsonKey(name: 'list')
  final List<
    ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$Item
  >?
  list;
  static const fromJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$ConfigFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(list) ^ runtimeType.hashCode;
}

extension $ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$ConfigExtension
    on ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config {
  ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config copyWith({
    List<
      ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$Item
    >?
    list,
  }) {
    return ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config(
      list: list ?? this.list,
    );
  }

  ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config
  copyWithWrapped({
    Wrapped<
      List<
        ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$Item
      >?
    >?
    list,
  }) {
    return ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config(
      list: (list != null ? list.value : this.list),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Image {
  const ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Image({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Image.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$ImageFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$ImageToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$ImageToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asInt)
  final int? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asInt)
  final int? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$ImageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Image &&
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

extension $ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$ImageExtension
    on ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Image {
  ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Image
  copyWith({int? width, int? height, String? url}) {
    return ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Image(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Image
  copyWithWrapped({
    Wrapped<int?>? width,
    Wrapped<int?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Image(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$Item {
  const ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$Item({
    this.tagCode,
    this.tagImg,
    this.order,
    this.frontShow,
  });

  factory ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$ItemToJson(
        this,
      );

  @JsonKey(name: 'tagCode', fromJson: JsonCoerce.asString)
  final String? tagCode;
  @JsonKey(name: 'tagImg', fromJson: JsonCoerce.asString)
  final String? tagImg;
  @JsonKey(name: 'order', fromJson: JsonCoerce.asInt)
  final int? order;
  @JsonKey(name: 'frontShow', fromJson: JsonCoerce.asInt)
  final int? frontShow;
  static const fromJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$Item &&
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

extension $ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$ItemExtension
    on
        ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$Item {
  ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$Item
  copyWith({String? tagCode, String? tagImg, int? order, int? frontShow}) {
    return ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagImg: tagImg ?? this.tagImg,
      order: order ?? this.order,
      frontShow: frontShow ?? this.frontShow,
    );
  }

  ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$Item
  copyWithWrapped({
    Wrapped<String?>? tagCode,
    Wrapped<String?>? tagImg,
    Wrapped<int?>? order,
    Wrapped<int?>? frontShow,
  }) {
    return ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
      order: (order != null ? order.value : this.order),
      frontShow: (frontShow != null ? frontShow.value : this.frontShow),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfo {
  const ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode', fromJson: JsonCoerce.asString)
  final String? brandCode;
  @JsonKey(name: 'brandImg', fromJson: JsonCoerce.asString)
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfo &&
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

extension $ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfoExtension
    on
        ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfo {
  ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ProductServiceProductPremiumDupeNoAuthSelectionGet$Response$Data$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item {
  const ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item({
    this.productCode,
    this.productName,
    this.image,
    this.skuCode,
    this.sellPriceCur,
    this.sellPrice,
    this.targetSellPrice,
    this.targetSellCur,
    this.sellQuantity,
    this.tags,
    this.premiumBrandInfo,
    this.sellPoints,
    this.targetOriginPrice,
    this.marketingInfo,
  });

  factory ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthPushProductGet$Response$Data$Records$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthPushProductGet$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthPushProductGet$Response$Data$Records$ItemToJson(
        this,
      );

  @JsonKey(name: 'productCode', fromJson: JsonCoerce.asString)
  final String? productCode;
  @JsonKey(name: 'productName', fromJson: JsonCoerce.asString)
  final String? productName;
  @JsonKey(name: 'image')
  final ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Image?
  image;
  @JsonKey(name: 'skuCode', fromJson: JsonCoerce.asString)
  final String? skuCode;
  @JsonKey(name: 'sellPriceCur', fromJson: JsonCoerce.asString)
  final String? sellPriceCur;
  @JsonKey(name: 'sellPrice', fromJson: JsonCoerce.asString)
  final String? sellPrice;
  @JsonKey(name: 'targetSellPrice', fromJson: JsonCoerce.asString)
  final String? targetSellPrice;
  @JsonKey(name: 'targetSellCur', fromJson: JsonCoerce.asString)
  final String? targetSellCur;
  @JsonKey(name: 'sellQuantity', fromJson: JsonCoerce.asString)
  final String? sellQuantity;
  @JsonKey(name: 'tags')
  final List<
    ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$Item
  >?
  tags;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  @JsonKey(name: 'targetOriginPrice', fromJson: JsonCoerce.asString)
  final String? targetOriginPrice;
  @JsonKey(name: 'marketingInfo', fromJson: JsonCoerce.asString)
  final String? marketingInfo;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthPushProductGet$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item &&
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

extension $ProductServiceProductNoAuthPushProductGet$Response$Data$Records$ItemExtension
    on ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item {
  ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item
  copyWith({
    String? productCode,
    String? productName,
    ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Image?
    image,
    String? skuCode,
    String? sellPriceCur,
    String? sellPrice,
    String? targetSellPrice,
    String? targetSellCur,
    String? sellQuantity,
    List<
      ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$Item
    >?
    tags,
    ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
    String? targetOriginPrice,
    String? marketingInfo,
  }) {
    return ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item(
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

  ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item
  copyWithWrapped({
    Wrapped<String?>? productCode,
    Wrapped<String?>? productName,
    Wrapped<
      ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Image?
    >?
    image,
    Wrapped<String?>? skuCode,
    Wrapped<String?>? sellPriceCur,
    Wrapped<String?>? sellPrice,
    Wrapped<String?>? targetSellPrice,
    Wrapped<String?>? targetSellCur,
    Wrapped<String?>? sellQuantity,
    Wrapped<
      List<
        ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$Item
      >?
    >?
    tags,
    Wrapped<
      ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
    Wrapped<String?>? targetOriginPrice,
    Wrapped<String?>? marketingInfo,
  }) {
    return ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item(
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
class ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainImg {
  const ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainImg({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainImg.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainImgFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainImgToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainImgToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asInt)
  final int? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asInt)
  final int? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainImgFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainImg &&
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

extension $ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainImgExtension
    on ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainImg {
  ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainImg copyWith({
    int? width,
    int? height,
    String? url,
  }) {
    return ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainImg(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainImg
  copyWithWrapped({
    Wrapped<int?>? width,
    Wrapped<int?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainImg(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthSearchGet$Response$Data$Item$SubImg {
  const ProductServiceProductNoAuthSearchGet$Response$Data$Item$SubImg({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceProductNoAuthSearchGet$Response$Data$Item$SubImg.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductNoAuthSearchGet$Response$Data$Item$SubImgFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthSearchGet$Response$Data$Item$SubImgToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthSearchGet$Response$Data$Item$SubImgToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asInt)
  final int? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asInt)
  final int? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthSearchGet$Response$Data$Item$SubImgFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthSearchGet$Response$Data$Item$SubImg &&
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

extension $ProductServiceProductNoAuthSearchGet$Response$Data$Item$SubImgExtension
    on ProductServiceProductNoAuthSearchGet$Response$Data$Item$SubImg {
  ProductServiceProductNoAuthSearchGet$Response$Data$Item$SubImg copyWith({
    int? width,
    int? height,
    String? url,
  }) {
    return ProductServiceProductNoAuthSearchGet$Response$Data$Item$SubImg(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceProductNoAuthSearchGet$Response$Data$Item$SubImg
  copyWithWrapped({
    Wrapped<int?>? width,
    Wrapped<int?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceProductNoAuthSearchGet$Response$Data$Item$SubImg(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainVideo {
  const ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainVideo({
    this.videoUrl,
  });

  factory ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainVideo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainVideoFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainVideoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainVideoToJson(
        this,
      );

  @JsonKey(name: 'videoUrl', fromJson: JsonCoerce.asString)
  final String? videoUrl;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainVideoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainVideo &&
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

extension $ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainVideoExtension
    on ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainVideo {
  ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainVideo copyWith({
    String? videoUrl,
  }) {
    return ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainVideo(
      videoUrl: videoUrl ?? this.videoUrl,
    );
  }

  ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainVideo
  copyWithWrapped({Wrapped<String?>? videoUrl}) {
    return ProductServiceProductNoAuthSearchGet$Response$Data$Item$MainVideo(
      videoUrl: (videoUrl != null ? videoUrl.value : this.videoUrl),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthSearchGet$Response$Data$Item$ImgCollection$Item {
  const ProductServiceProductNoAuthSearchGet$Response$Data$Item$ImgCollection$Item({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceProductNoAuthSearchGet$Response$Data$Item$ImgCollection$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthSearchGet$Response$Data$Item$ImgCollection$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthSearchGet$Response$Data$Item$ImgCollection$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthSearchGet$Response$Data$Item$ImgCollection$ItemToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asString)
  final String? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asString)
  final String? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthSearchGet$Response$Data$Item$ImgCollection$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthSearchGet$Response$Data$Item$ImgCollection$Item &&
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

extension $ProductServiceProductNoAuthSearchGet$Response$Data$Item$ImgCollection$ItemExtension
    on ProductServiceProductNoAuthSearchGet$Response$Data$Item$ImgCollection$Item {
  ProductServiceProductNoAuthSearchGet$Response$Data$Item$ImgCollection$Item
  copyWith({String? width, String? height, String? url}) {
    return ProductServiceProductNoAuthSearchGet$Response$Data$Item$ImgCollection$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceProductNoAuthSearchGet$Response$Data$Item$ImgCollection$Item
  copyWithWrapped({
    Wrapped<String?>? width,
    Wrapped<String?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceProductNoAuthSearchGet$Response$Data$Item$ImgCollection$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item {
  const ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item({
    this.name,
    this.enName,
    this.styleType,
    this.type,
    this.optionValues,
  });

  factory ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$ItemToJson(
        this,
      );

  @JsonKey(name: 'name', fromJson: JsonCoerce.asString)
  final String? name;
  @JsonKey(name: 'enName', fromJson: JsonCoerce.asString)
  final String? enName;
  @JsonKey(name: 'styleType', fromJson: JsonCoerce.asInt)
  final int? styleType;
  @JsonKey(name: 'type', fromJson: JsonCoerce.asString)
  final String? type;
  @JsonKey(name: 'optionValues')
  final List<
    ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
  >?
  optionValues;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item &&
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

extension $ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$ItemExtension
    on ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item {
  ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item
  copyWith({
    String? name,
    String? enName,
    int? styleType,
    String? type,
    List<
      ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
    >?
    optionValues,
  }) {
    return ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item(
      name: name ?? this.name,
      enName: enName ?? this.enName,
      styleType: styleType ?? this.styleType,
      type: type ?? this.type,
      optionValues: optionValues ?? this.optionValues,
    );
  }

  ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item
  copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<String?>? enName,
    Wrapped<int?>? styleType,
    Wrapped<String?>? type,
    Wrapped<
      List<
        ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
      >?
    >?
    optionValues,
  }) {
    return ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item(
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
class ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$Item {
  const ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$Item({
    this.name,
    this.value,
  });

  factory ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$ItemToJson(
        this,
      );

  @JsonKey(name: 'name', fromJson: JsonCoerce.asString)
  final String? name;
  @JsonKey(name: 'value', fromJson: JsonCoerce.asString)
  final String? value;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$Item &&
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

extension $ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$ItemExtension
    on ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$Item {
  ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$Item
  copyWith({String? name, String? value}) {
    return ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$Item(
      name: name ?? this.name,
      value: value ?? this.value,
    );
  }

  ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$Item
  copyWithWrapped({Wrapped<String?>? name, Wrapped<String?>? value}) {
    return ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductAttrs$Item(
      name: (name != null ? name.value : this.name),
      value: (value != null ? value.value : this.value),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfo {
  const ProductServiceProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductServiceProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode', fromJson: JsonCoerce.asString)
  final String? brandCode;
  @JsonKey(name: 'brandImg', fromJson: JsonCoerce.asString)
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfo &&
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

extension $ProductServiceProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfoExtension
    on ProductServiceProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfo {
  ProductServiceProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return ProductServiceProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductServiceProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ProductServiceProductNoAuthSearchGet$Response$Data$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item {
  const ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item({
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
    this.tags,
    this.premiumBrandInfo,
    this.sellPoints,
  });

  factory ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$ItemToJson(
        this,
      );

  @JsonKey(name: 'shopCode', fromJson: JsonCoerce.asString)
  final String? shopCode;
  @JsonKey(name: 'productCode', fromJson: JsonCoerce.asString)
  final String? productCode;
  @JsonKey(name: 'productName', fromJson: JsonCoerce.asString)
  final String? productName;
  @JsonKey(name: 'tenantCode', fromJson: JsonCoerce.asString)
  final String? tenantCode;
  @JsonKey(name: 'brandName', fromJson: JsonCoerce.asString)
  final String? brandName;
  @JsonKey(name: 'mainImg')
  final List<
    ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$Item
  >?
  mainImg;
  @JsonKey(name: 'subImg')
  final Object? subImg;
  @JsonKey(name: 'mainVideo')
  final List<
    ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$Item
  >?
  mainVideo;
  @JsonKey(name: 'imgCollection')
  final List<
    ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$Item
  >?
  imgCollection;
  @JsonKey(name: 'textDetail')
  final Object? textDetail;
  @JsonKey(name: 'imgDetail')
  final List<
    ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$Item
  >?
  imgDetail;
  @JsonKey(name: 'categoryId', fromJson: JsonCoerce.asDouble)
  final double? categoryId;
  @JsonKey(name: 'productOptions')
  final List<
    ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item
  >?
  productOptions;
  @JsonKey(name: 'productAttrs', defaultValue: <Object>[])
  final List<Object>? productAttrs;
  @JsonKey(name: 'sourcePlatform', fromJson: JsonCoerce.asString)
  final String? sourcePlatform;
  @JsonKey(name: 'platformUrl', fromJson: JsonCoerce.asString)
  final String? platformUrl;
  @JsonKey(name: 'platformProductId', fromJson: JsonCoerce.asString)
  final String? platformProductId;
  @JsonKey(name: 'skuCode', fromJson: JsonCoerce.asString)
  final String? skuCode;
  @JsonKey(name: 'sellPriceCur', fromJson: JsonCoerce.asString)
  final String? sellPriceCur;
  @JsonKey(name: 'sellPrice', fromJson: JsonCoerce.asString)
  final String? sellPrice;
  @JsonKey(name: 'targetSellPrice', fromJson: JsonCoerce.asString)
  final String? targetSellPrice;
  @JsonKey(name: 'targetSellCur', fromJson: JsonCoerce.asString)
  final String? targetSellCur;
  @JsonKey(name: 'sellQuantity', fromJson: JsonCoerce.asString)
  final String? sellQuantity;
  @JsonKey(name: 'tags')
  final List<
    ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$Item
  >?
  tags;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item &&
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

extension $ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$ItemExtension
    on ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item {
  ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item
  copyWith({
    String? shopCode,
    String? productCode,
    String? productName,
    String? tenantCode,
    String? brandName,
    List<
      ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$Item
    >?
    mainImg,
    Object? subImg,
    List<
      ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$Item
    >?
    mainVideo,
    List<
      ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$Item
    >?
    imgCollection,
    Object? textDetail,
    List<
      ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$Item
    >?
    imgDetail,
    double? categoryId,
    List<
      ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item
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
    List<
      ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$Item
    >?
    tags,
    ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
  }) {
    return ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item(
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

  ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item
  copyWithWrapped({
    Wrapped<String?>? shopCode,
    Wrapped<String?>? productCode,
    Wrapped<String?>? productName,
    Wrapped<String?>? tenantCode,
    Wrapped<String?>? brandName,
    Wrapped<
      List<
        ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$Item
      >?
    >?
    mainImg,
    Wrapped<Object?>? subImg,
    Wrapped<
      List<
        ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$Item
      >?
    >?
    mainVideo,
    Wrapped<
      List<
        ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$Item
      >?
    >?
    imgCollection,
    Wrapped<Object?>? textDetail,
    Wrapped<
      List<
        ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$Item
      >?
    >?
    imgDetail,
    Wrapped<double?>? categoryId,
    Wrapped<
      List<
        ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item
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
    Wrapped<String?>? sellQuantity,
    Wrapped<
      List<
        ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$Item
      >?
    >?
    tags,
    Wrapped<
      ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
  }) {
    return ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item(
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
class ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item {
  const ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item({
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

  factory ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$ItemToJson(
        this,
      );

  @JsonKey(name: 'shopCode')
  final Object? shopCode;
  @JsonKey(name: 'productCode', fromJson: JsonCoerce.asString)
  final String? productCode;
  @JsonKey(name: 'productName', fromJson: JsonCoerce.asString)
  final String? productName;
  @JsonKey(name: 'tenantCode', fromJson: JsonCoerce.asString)
  final String? tenantCode;
  @JsonKey(name: 'brandName')
  final Object? brandName;
  @JsonKey(name: 'mainImg')
  final List<
    ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$Item
  >?
  mainImg;
  @JsonKey(name: 'subImg')
  final Object? subImg;
  @JsonKey(name: 'mainVideo', defaultValue: <Object>[])
  final List<Object>? mainVideo;
  @JsonKey(name: 'imgCollection')
  final List<
    ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$Item
  >?
  imgCollection;
  @JsonKey(name: 'textDetail')
  final Object? textDetail;
  @JsonKey(name: 'imgDetail')
  final List<
    ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$Item
  >?
  imgDetail;
  @JsonKey(name: 'categoryId', fromJson: JsonCoerce.asDouble)
  final double? categoryId;
  @JsonKey(name: 'productOptions')
  final List<
    ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item
  >?
  productOptions;
  @JsonKey(name: 'productAttrs', defaultValue: <Object>[])
  final List<Object>? productAttrs;
  @JsonKey(name: 'sourcePlatform', fromJson: JsonCoerce.asString)
  final String? sourcePlatform;
  @JsonKey(name: 'platformUrl', fromJson: JsonCoerce.asString)
  final String? platformUrl;
  @JsonKey(name: 'platformProductId', fromJson: JsonCoerce.asString)
  final String? platformProductId;
  @JsonKey(name: 'skuCode', fromJson: JsonCoerce.asString)
  final String? skuCode;
  @JsonKey(name: 'sellPriceCur', fromJson: JsonCoerce.asString)
  final String? sellPriceCur;
  @JsonKey(name: 'sellPrice', fromJson: JsonCoerce.asString)
  final String? sellPrice;
  @JsonKey(name: 'targetSellPrice', fromJson: JsonCoerce.asString)
  final String? targetSellPrice;
  @JsonKey(name: 'targetSellCur', fromJson: JsonCoerce.asString)
  final String? targetSellCur;
  @JsonKey(name: 'productFlag', fromJson: JsonCoerce.asString)
  final String? productFlag;
  @JsonKey(name: 'marketingInfo', fromJson: JsonCoerce.asString)
  final String? marketingInfo;
  @JsonKey(name: 'sellQuantity', fromJson: JsonCoerce.asString)
  final String? sellQuantity;
  @JsonKey(name: 'targetOriginPrice', fromJson: JsonCoerce.asString)
  final String? targetOriginPrice;
  @JsonKey(name: 'tags')
  final List<
    ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$Item
  >?
  tags;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item &&
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

extension $ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$ItemExtension
    on ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item {
  ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item
  copyWith({
    Object? shopCode,
    String? productCode,
    String? productName,
    String? tenantCode,
    Object? brandName,
    List<
      ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$Item
    >?
    mainImg,
    Object? subImg,
    List<Object>? mainVideo,
    List<
      ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$Item
    >?
    imgCollection,
    Object? textDetail,
    List<
      ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$Item
    >?
    imgDetail,
    double? categoryId,
    List<
      ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item
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
      ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$Item
    >?
    tags,
    ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
  }) {
    return ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item(
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

  ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item
  copyWithWrapped({
    Wrapped<Object?>? shopCode,
    Wrapped<String?>? productCode,
    Wrapped<String?>? productName,
    Wrapped<String?>? tenantCode,
    Wrapped<Object?>? brandName,
    Wrapped<
      List<
        ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$Item
      >?
    >?
    mainImg,
    Wrapped<Object?>? subImg,
    Wrapped<List<Object>?>? mainVideo,
    Wrapped<
      List<
        ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$Item
      >?
    >?
    imgCollection,
    Wrapped<Object?>? textDetail,
    Wrapped<
      List<
        ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$Item
      >?
    >?
    imgDetail,
    Wrapped<double?>? categoryId,
    Wrapped<
      List<
        ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item
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
        ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$Item
      >?
    >?
    tags,
    Wrapped<
      ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
  }) {
    return ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item(
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
class ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuImg {
  const ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuImg({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuImg.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuImgFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuImgToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuImgToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asInt)
  final int? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asInt)
  final int? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuImgFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuImg &&
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

extension $ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuImgExtension
    on ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuImg {
  ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuImg copyWith({
    int? width,
    int? height,
    String? url,
  }) {
    return ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuImg(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuImg
  copyWithWrapped({
    Wrapped<int?>? width,
    Wrapped<int?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuImg(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$Item {
  const ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$Item({
    this.name,
    this.value,
  });

  factory ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$ItemToJson(
        this,
      );

  @JsonKey(name: 'name', fromJson: JsonCoerce.asString)
  final String? name;
  @JsonKey(name: 'value', fromJson: JsonCoerce.asString)
  final String? value;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$Item &&
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

extension $ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$ItemExtension
    on ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$Item {
  ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$Item
  copyWith({String? name, String? value}) {
    return ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$Item(
      name: name ?? this.name,
      value: value ?? this.value,
    );
  }

  ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$Item
  copyWithWrapped({Wrapped<String?>? name, Wrapped<String?>? value}) {
    return ProductServiceProductNoAuthSkuListGet$Response$Data$Item$SkuOptions$Item(
      name: (name != null ? name.value : this.name),
      value: (value != null ? value.value : this.value),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfo {
  const ProductServiceProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfo({
    this.activityCode,
    this.activityTitle,
    this.startTime,
    this.endTime,
    this.progressPercent,
    this.progressText,
    this.marketingIcon,
  });

  factory ProductServiceProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfoToJson(
        this,
      );

  @JsonKey(name: 'activityCode', fromJson: JsonCoerce.asString)
  final String? activityCode;
  @JsonKey(name: 'activityTitle', fromJson: JsonCoerce.asString)
  final String? activityTitle;
  @JsonKey(name: 'startTime', fromJson: JsonCoerce.asInt)
  final int? startTime;
  @JsonKey(name: 'endTime', fromJson: JsonCoerce.asInt)
  final int? endTime;
  @JsonKey(name: 'progressPercent', fromJson: JsonCoerce.asInt)
  final int? progressPercent;
  @JsonKey(name: 'progressText', fromJson: JsonCoerce.asString)
  final String? progressText;
  @JsonKey(name: 'marketingIcon', fromJson: JsonCoerce.asString)
  final String? marketingIcon;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfo &&
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

extension $ProductServiceProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfoExtension
    on ProductServiceProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfo {
  ProductServiceProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfo
  copyWith({
    String? activityCode,
    String? activityTitle,
    int? startTime,
    int? endTime,
    int? progressPercent,
    String? progressText,
    String? marketingIcon,
  }) {
    return ProductServiceProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfo(
      activityCode: activityCode ?? this.activityCode,
      activityTitle: activityTitle ?? this.activityTitle,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      progressPercent: progressPercent ?? this.progressPercent,
      progressText: progressText ?? this.progressText,
      marketingIcon: marketingIcon ?? this.marketingIcon,
    );
  }

  ProductServiceProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfo
  copyWithWrapped({
    Wrapped<String?>? activityCode,
    Wrapped<String?>? activityTitle,
    Wrapped<int?>? startTime,
    Wrapped<int?>? endTime,
    Wrapped<int?>? progressPercent,
    Wrapped<String?>? progressText,
    Wrapped<String?>? marketingIcon,
  }) {
    return ProductServiceProductNoAuthSkuListGet$Response$Data$Item$FlashSaleInfo(
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
class ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainImg$Item {
  const ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainImg$Item({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainImg$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainImg$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainImg$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainImg$ItemToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asDouble)
  final double? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asDouble)
  final double? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainImg$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainImg$Item &&
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

extension $ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainImg$ItemExtension
    on ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainImg$Item {
  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainImg$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainImg$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainImg$Item
  copyWithWrapped({
    Wrapped<double?>? width,
    Wrapped<double?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainImg$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainVideo$Item {
  const ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainVideo$Item({
    this.videoUrl,
    this.vodUrl,
    this.previewUrl,
    this.width,
    this.height,
  });

  factory ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainVideo$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainVideo$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainVideo$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainVideo$ItemToJson(
        this,
      );

  @JsonKey(name: 'videoUrl', fromJson: JsonCoerce.asString)
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
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainVideo$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainVideo$Item &&
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

extension $ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainVideo$ItemExtension
    on ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainVideo$Item {
  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainVideo$Item
  copyWith({
    String? videoUrl,
    Object? vodUrl,
    Object? previewUrl,
    Object? width,
    Object? height,
  }) {
    return ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainVideo$Item(
      videoUrl: videoUrl ?? this.videoUrl,
      vodUrl: vodUrl ?? this.vodUrl,
      previewUrl: previewUrl ?? this.previewUrl,
      width: width ?? this.width,
      height: height ?? this.height,
    );
  }

  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainVideo$Item
  copyWithWrapped({
    Wrapped<String?>? videoUrl,
    Wrapped<Object?>? vodUrl,
    Wrapped<Object?>? previewUrl,
    Wrapped<Object?>? width,
    Wrapped<Object?>? height,
  }) {
    return ProductServiceProductNoAuthGetProductInfoGet$Response$Data$MainVideo$Item(
      videoUrl: (videoUrl != null ? videoUrl.value : this.videoUrl),
      vodUrl: (vodUrl != null ? vodUrl.value : this.vodUrl),
      previewUrl: (previewUrl != null ? previewUrl.value : this.previewUrl),
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$Item {
  const ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$Item({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$ItemToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asDouble)
  final double? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asDouble)
  final double? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$Item &&
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

extension $ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$ItemExtension
    on ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$Item {
  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$Item
  copyWithWrapped({
    Wrapped<double?>? width,
    Wrapped<double?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgCollection$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$Item {
  const ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$Item({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$ItemToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asDouble)
  final double? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asDouble)
  final double? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$Item &&
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

extension $ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$ItemExtension
    on ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$Item {
  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$Item
  copyWithWrapped({
    Wrapped<double?>? width,
    Wrapped<double?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ImgDetail$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item {
  const ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item({
    this.name,
    this.type,
    this.optionValues,
  });

  factory ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$ItemToJson(
        this,
      );

  @JsonKey(name: 'name', fromJson: JsonCoerce.asString)
  final String? name;
  @JsonKey(name: 'type', fromJson: JsonCoerce.asDouble)
  final double? type;
  @JsonKey(name: 'optionValues')
  final List<
    ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$Item
  >?
  optionValues;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item &&
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

extension $ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$ItemExtension
    on ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item {
  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item
  copyWith({
    String? name,
    double? type,
    List<
      ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$Item
    >?
    optionValues,
  }) {
    return ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item(
      name: name ?? this.name,
      type: type ?? this.type,
      optionValues: optionValues ?? this.optionValues,
    );
  }

  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item
  copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<double?>? type,
    Wrapped<
      List<
        ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$Item
      >?
    >?
    optionValues,
  }) {
    return ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item(
      name: (name != null ? name.value : this.name),
      type: (type != null ? type.value : this.type),
      optionValues: (optionValues != null
          ? optionValues.value
          : this.optionValues),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$Item {
  const ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$Item({
    this.name,
    this.value,
  });

  factory ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$ItemToJson(
        this,
      );

  @JsonKey(name: 'name', fromJson: JsonCoerce.asString)
  final String? name;
  @JsonKey(name: 'value', fromJson: JsonCoerce.asString)
  final String? value;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$Item &&
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

extension $ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$ItemExtension
    on ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$Item {
  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$Item
  copyWith({String? name, String? value}) {
    return ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$Item(
      name: name ?? this.name,
      value: value ?? this.value,
    );
  }

  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$Item
  copyWithWrapped({Wrapped<String?>? name, Wrapped<String?>? value}) {
    return ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductAttrs$Item(
      name: (name != null ? name.value : this.name),
      value: (value != null ? value.value : this.value),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item {
  const ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item({
    this.images,
    this.skuOption,
  });

  factory ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$ItemToJson(
        this,
      );

  @JsonKey(name: 'images', defaultValue: <Object>[])
  final List<Object>? images;
  @JsonKey(name: 'skuOption')
  final ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOption?
  skuOption;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item &&
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

extension $ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$ItemExtension
    on ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item {
  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item
  copyWith({
    List<Object>? images,
    ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOption?
    skuOption,
  }) {
    return ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item(
      images: images ?? this.images,
      skuOption: skuOption ?? this.skuOption,
    );
  }

  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item
  copyWithWrapped({
    Wrapped<List<Object>?>? images,
    Wrapped<
      ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOption?
    >?
    skuOption,
  }) {
    return ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item(
      images: (images != null ? images.value : this.images),
      skuOption: (skuOption != null ? skuOption.value : this.skuOption),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Tags$Item {
  const ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Tags$Item({
    this.tagCode,
    this.tagName,
    this.tagImg,
  });

  factory ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Tags$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Tags$ItemToJson(
        this,
      );

  @JsonKey(name: 'tagCode', fromJson: JsonCoerce.asString)
  final String? tagCode;
  @JsonKey(name: 'tagName', fromJson: JsonCoerce.asString)
  final String? tagName;
  @JsonKey(name: 'tagImg', fromJson: JsonCoerce.asString)
  final String? tagImg;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Tags$Item &&
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

extension $ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Tags$ItemExtension
    on ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Tags$Item {
  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Tags$Item
  copyWith({String? tagCode, String? tagName, String? tagImg}) {
    return ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagName: tagName ?? this.tagName,
      tagImg: tagImg ?? this.tagImg,
    );
  }

  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Tags$Item
  copyWithWrapped({
    Wrapped<String?>? tagCode,
    Wrapped<String?>? tagName,
    Wrapped<String?>? tagImg,
  }) {
    return ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagName: (tagName != null ? tagName.value : this.tagName),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfo {
  const ProductServiceProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductServiceProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode', fromJson: JsonCoerce.asString)
  final String? brandCode;
  @JsonKey(name: 'brandImg', fromJson: JsonCoerce.asString)
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfo &&
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

extension $ProductServiceProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfoExtension
    on ProductServiceProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfo {
  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return ProductServiceProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ProductServiceProductNoAuthGetProductInfoGet$Response$Data$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext {
  const ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext({
    this.sizeHelperOptionName,
    this.sizeHelperType,
    this.brand,
  });

  factory ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ExtFromJson(
    json,
  );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ExtToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ExtToJson(
        this,
      );

  @JsonKey(name: 'sizeHelperOptionName', fromJson: JsonCoerce.asString)
  final String? sizeHelperOptionName;
  @JsonKey(name: 'sizeHelperType', fromJson: JsonCoerce.asInt)
  final int? sizeHelperType;
  @JsonKey(name: 'brand')
  final ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext$Brand?
  brand;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ExtFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext &&
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

extension $ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ExtExtension
    on ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext {
  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext copyWith({
    String? sizeHelperOptionName,
    int? sizeHelperType,
    ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext$Brand? brand,
  }) {
    return ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext(
      sizeHelperOptionName: sizeHelperOptionName ?? this.sizeHelperOptionName,
      sizeHelperType: sizeHelperType ?? this.sizeHelperType,
      brand: brand ?? this.brand,
    );
  }

  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext
  copyWithWrapped({
    Wrapped<String?>? sizeHelperOptionName,
    Wrapped<int?>? sizeHelperType,
    Wrapped<
      ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext$Brand?
    >?
    brand,
  }) {
    return ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext(
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
class ProductServiceProductNoAuthGetProductInfoGet$Response$Data$FlashSale {
  const ProductServiceProductNoAuthGetProductInfoGet$Response$Data$FlashSale({
    this.activityCode,
    this.activityTitle,
    this.startTime,
    this.endTime,
    this.progressPercent,
    this.progressText,
    this.marketingIcon,
    this.discountExpr,
  });

  factory ProductServiceProductNoAuthGetProductInfoGet$Response$Data$FlashSale.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$FlashSaleFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$FlashSaleToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$FlashSaleToJson(
        this,
      );

  @JsonKey(name: 'activityCode', fromJson: JsonCoerce.asString)
  final String? activityCode;
  @JsonKey(name: 'activityTitle', fromJson: JsonCoerce.asString)
  final String? activityTitle;
  @JsonKey(name: 'startTime', fromJson: JsonCoerce.asString)
  final String? startTime;
  @JsonKey(name: 'endTime', fromJson: JsonCoerce.asString)
  final String? endTime;
  @JsonKey(name: 'progressPercent', fromJson: JsonCoerce.asString)
  final String? progressPercent;
  @JsonKey(name: 'progressText', fromJson: JsonCoerce.asString)
  final String? progressText;
  @JsonKey(name: 'marketingIcon', fromJson: JsonCoerce.asString)
  final String? marketingIcon;
  @JsonKey(name: 'discountExpr', fromJson: JsonCoerce.asString)
  final String? discountExpr;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$FlashSaleFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthGetProductInfoGet$Response$Data$FlashSale &&
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

extension $ProductServiceProductNoAuthGetProductInfoGet$Response$Data$FlashSaleExtension
    on ProductServiceProductNoAuthGetProductInfoGet$Response$Data$FlashSale {
  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$FlashSale
  copyWith({
    String? activityCode,
    String? activityTitle,
    String? startTime,
    String? endTime,
    String? progressPercent,
    String? progressText,
    String? marketingIcon,
    String? discountExpr,
  }) {
    return ProductServiceProductNoAuthGetProductInfoGet$Response$Data$FlashSale(
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

  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$FlashSale
  copyWithWrapped({
    Wrapped<String?>? activityCode,
    Wrapped<String?>? activityTitle,
    Wrapped<String?>? startTime,
    Wrapped<String?>? endTime,
    Wrapped<String?>? progressPercent,
    Wrapped<String?>? progressText,
    Wrapped<String?>? marketingIcon,
    Wrapped<String?>? discountExpr,
  }) {
    return ProductServiceProductNoAuthGetProductInfoGet$Response$Data$FlashSale(
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
class ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item {
  const ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item({
    this.id,
    this.parentId,
    this.level,
    this.showOrder,
    this.name,
    this.iconUrl,
    this.categoryList,
    this.brands,
  });

  factory ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$ItemToJson(
        this,
      );

  @JsonKey(name: 'id', fromJson: JsonCoerce.asDouble)
  final double? id;
  @JsonKey(name: 'parentId', fromJson: JsonCoerce.asDouble)
  final double? parentId;
  @JsonKey(name: 'level', fromJson: JsonCoerce.asDouble)
  final double? level;
  @JsonKey(name: 'showOrder', fromJson: JsonCoerce.asDouble)
  final double? showOrder;
  @JsonKey(name: 'name', fromJson: JsonCoerce.asString)
  final String? name;
  @JsonKey(name: 'iconUrl', fromJson: JsonCoerce.asString)
  final String? iconUrl;
  @JsonKey(name: 'categoryList')
  final List<
    ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$Item
  >?
  categoryList;
  @JsonKey(name: 'brands', defaultValue: <Object>[])
  final List<Object>? brands;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item &&
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

extension $ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$ItemExtension
    on
        ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item {
  ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item
  copyWith({
    double? id,
    double? parentId,
    double? level,
    double? showOrder,
    String? name,
    String? iconUrl,
    List<
      ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$Item
    >?
    categoryList,
    List<Object>? brands,
  }) {
    return ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item(
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

  ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item
  copyWithWrapped({
    Wrapped<double?>? id,
    Wrapped<double?>? parentId,
    Wrapped<double?>? level,
    Wrapped<double?>? showOrder,
    Wrapped<String?>? name,
    Wrapped<String?>? iconUrl,
    Wrapped<
      List<
        ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$Item
      >?
    >?
    categoryList,
    Wrapped<List<Object>?>? brands,
  }) {
    return ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item(
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
class ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Image {
  const ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Image({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Image.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthHotProductGet$Response$Data$Item$ImageFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthHotProductGet$Response$Data$Item$ImageToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthHotProductGet$Response$Data$Item$ImageToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asInt)
  final int? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asInt)
  final int? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthHotProductGet$Response$Data$Item$ImageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Image &&
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

extension $ProductServiceProductNoAuthHotProductGet$Response$Data$Item$ImageExtension
    on ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Image {
  ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Image copyWith({
    int? width,
    int? height,
    String? url,
  }) {
    return ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Image(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Image
  copyWithWrapped({
    Wrapped<int?>? width,
    Wrapped<int?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Image(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Tags$Item {
  const ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Tags$Item({
    this.tagCode,
    this.tagImg,
  });

  factory ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Tags$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Tags$ItemToJson(
        this,
      );

  @JsonKey(name: 'tagCode', fromJson: JsonCoerce.asString)
  final String? tagCode;
  @JsonKey(name: 'tagImg', fromJson: JsonCoerce.asString)
  final String? tagImg;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Tags$Item &&
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

extension $ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Tags$ItemExtension
    on ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Tags$Item {
  ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Tags$Item
  copyWith({String? tagCode, String? tagImg}) {
    return ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagImg: tagImg ?? this.tagImg,
    );
  }

  ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Tags$Item
  copyWithWrapped({Wrapped<String?>? tagCode, Wrapped<String?>? tagImg}) {
    return ProductServiceProductNoAuthHotProductGet$Response$Data$Item$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfo {
  const ProductServiceProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductServiceProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode', fromJson: JsonCoerce.asString)
  final String? brandCode;
  @JsonKey(name: 'brandImg', fromJson: JsonCoerce.asString)
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfo &&
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

extension $ProductServiceProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfoExtension
    on ProductServiceProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfo {
  ProductServiceProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return ProductServiceProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductServiceProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ProductServiceProductNoAuthHotProductGet$Response$Data$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item {
  const ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item({
    this.productCode,
    this.productName,
    this.image,
    this.skuCode,
    this.sellPriceCur,
    this.sellPrice,
    this.targetSellPrice,
    this.targetSellCur,
    this.sellQuantity,
    this.tags,
    this.premiumBrandInfo,
    this.sellPoints,
    this.rate,
    this.flashSale,
    this.targetOriginPrice,
    this.marketingInfo,
  });

  factory ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$ItemToJson(
        this,
      );

  @JsonKey(name: 'productCode', fromJson: JsonCoerce.asString)
  final String? productCode;
  @JsonKey(name: 'productName', fromJson: JsonCoerce.asString)
  final String? productName;
  @JsonKey(name: 'image')
  final ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Image?
  image;
  @JsonKey(name: 'skuCode', fromJson: JsonCoerce.asString)
  final String? skuCode;
  @JsonKey(name: 'sellPriceCur', fromJson: JsonCoerce.asString)
  final String? sellPriceCur;
  @JsonKey(name: 'sellPrice', fromJson: JsonCoerce.asString)
  final String? sellPrice;
  @JsonKey(name: 'targetSellPrice', fromJson: JsonCoerce.asString)
  final String? targetSellPrice;
  @JsonKey(name: 'targetSellCur', fromJson: JsonCoerce.asString)
  final String? targetSellCur;
  @JsonKey(name: 'sellQuantity', fromJson: JsonCoerce.asString)
  final String? sellQuantity;
  @JsonKey(name: 'tags')
  final List<
    ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$Item
  >?
  tags;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  @JsonKey(name: 'rate', fromJson: JsonCoerce.asString)
  final String? rate;
  @JsonKey(name: 'flashSale')
  final ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSale?
  flashSale;
  @JsonKey(name: 'targetOriginPrice', fromJson: JsonCoerce.asString)
  final String? targetOriginPrice;
  @JsonKey(name: 'marketingInfo', fromJson: JsonCoerce.asString)
  final String? marketingInfo;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item &&
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

extension $ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$ItemExtension
    on ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item {
  ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item
  copyWith({
    String? productCode,
    String? productName,
    ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Image?
    image,
    String? skuCode,
    String? sellPriceCur,
    String? sellPrice,
    String? targetSellPrice,
    String? targetSellCur,
    String? sellQuantity,
    List<
      ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$Item
    >?
    tags,
    ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
    String? rate,
    ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSale?
    flashSale,
    String? targetOriginPrice,
    String? marketingInfo,
  }) {
    return ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item(
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

  ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item
  copyWithWrapped({
    Wrapped<String?>? productCode,
    Wrapped<String?>? productName,
    Wrapped<
      ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Image?
    >?
    image,
    Wrapped<String?>? skuCode,
    Wrapped<String?>? sellPriceCur,
    Wrapped<String?>? sellPrice,
    Wrapped<String?>? targetSellPrice,
    Wrapped<String?>? targetSellCur,
    Wrapped<String?>? sellQuantity,
    Wrapped<
      List<
        ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$Item
      >?
    >?
    tags,
    Wrapped<
      ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
    Wrapped<String?>? rate,
    Wrapped<
      ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSale?
    >?
    flashSale,
    Wrapped<String?>? targetOriginPrice,
    Wrapped<String?>? marketingInfo,
  }) {
    return ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item(
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
class ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item {
  const ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item({
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
    this.premiumBrandInfo,
    this.sellPoints,
    this.rate,
    this.flashSale,
  });

  factory ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$ItemToJson(
        this,
      );

  @JsonKey(name: 'productCode', fromJson: JsonCoerce.asString)
  final String? productCode;
  @JsonKey(name: 'productName', fromJson: JsonCoerce.asString)
  final String? productName;
  @JsonKey(name: 'image')
  final ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Image?
  image;
  @JsonKey(name: 'sourcePlatform', fromJson: JsonCoerce.asString)
  final String? sourcePlatform;
  @JsonKey(name: 'platformProductId', fromJson: JsonCoerce.asString)
  final String? platformProductId;
  @JsonKey(name: 'skuCode', fromJson: JsonCoerce.asString)
  final String? skuCode;
  @JsonKey(name: 'sellPriceCur', fromJson: JsonCoerce.asString)
  final String? sellPriceCur;
  @JsonKey(name: 'sellPrice', fromJson: JsonCoerce.asString)
  final String? sellPrice;
  @JsonKey(name: 'targetSellPrice', fromJson: JsonCoerce.asString)
  final String? targetSellPrice;
  @JsonKey(name: 'targetOriginPrice', fromJson: JsonCoerce.asString)
  final String? targetOriginPrice;
  @JsonKey(name: 'targetSellCur', fromJson: JsonCoerce.asString)
  final String? targetSellCur;
  @JsonKey(name: 'sellQuantity', fromJson: JsonCoerce.asString)
  final String? sellQuantity;
  @JsonKey(name: 'skuCount', fromJson: JsonCoerce.asDouble)
  final double? skuCount;
  @JsonKey(name: 'marketingInfo', fromJson: JsonCoerce.asString)
  final String? marketingInfo;
  @JsonKey(name: 'tags')
  final List<
    ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$Item
  >?
  tags;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  @JsonKey(name: 'rate', fromJson: JsonCoerce.asString)
  final String? rate;
  @JsonKey(name: 'flashSale')
  final ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSale?
  flashSale;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item &&
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

extension $ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$ItemExtension
    on ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item {
  ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item
  copyWith({
    String? productCode,
    String? productName,
    ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Image?
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
    List<
      ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$Item
    >?
    tags,
    ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
    String? rate,
    ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSale?
    flashSale,
  }) {
    return ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item(
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

  ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item
  copyWithWrapped({
    Wrapped<String?>? productCode,
    Wrapped<String?>? productName,
    Wrapped<
      ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Image?
    >?
    image,
    Wrapped<String?>? sourcePlatform,
    Wrapped<String?>? platformProductId,
    Wrapped<String?>? skuCode,
    Wrapped<String?>? sellPriceCur,
    Wrapped<String?>? sellPrice,
    Wrapped<String?>? targetSellPrice,
    Wrapped<String?>? targetOriginPrice,
    Wrapped<String?>? targetSellCur,
    Wrapped<String?>? sellQuantity,
    Wrapped<double?>? skuCount,
    Wrapped<String?>? marketingInfo,
    Wrapped<
      List<
        ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$Item
      >?
    >?
    tags,
    Wrapped<
      ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
    Wrapped<String?>? rate,
    Wrapped<
      ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSale?
    >?
    flashSale,
  }) {
    return ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item(
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
class ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$Item {
  const ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$Item({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$ItemToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asDouble)
  final double? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asDouble)
  final double? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$Item &&
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

extension $ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$ItemExtension
    on ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$Item {
  ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$Item
  copyWithWrapped({
    Wrapped<double?>? width,
    Wrapped<double?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainImg$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$Item {
  const ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$Item({
    this.videoUrl,
    this.vodUrl,
    this.previewUrl,
    this.width,
    this.height,
  });

  factory ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$ItemToJson(
        this,
      );

  @JsonKey(name: 'videoUrl', fromJson: JsonCoerce.asString)
  final String? videoUrl;
  @JsonKey(name: 'vodUrl', fromJson: JsonCoerce.asString)
  final String? vodUrl;
  @JsonKey(name: 'previewUrl', fromJson: JsonCoerce.asString)
  final String? previewUrl;
  @JsonKey(name: 'width', fromJson: JsonCoerce.asDouble)
  final double? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asDouble)
  final double? height;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$Item &&
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

extension $ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$ItemExtension
    on
        ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$Item {
  ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$Item
  copyWith({
    String? videoUrl,
    String? vodUrl,
    String? previewUrl,
    double? width,
    double? height,
  }) {
    return ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$Item(
      videoUrl: videoUrl ?? this.videoUrl,
      vodUrl: vodUrl ?? this.vodUrl,
      previewUrl: previewUrl ?? this.previewUrl,
      width: width ?? this.width,
      height: height ?? this.height,
    );
  }

  ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$Item
  copyWithWrapped({
    Wrapped<String?>? videoUrl,
    Wrapped<String?>? vodUrl,
    Wrapped<String?>? previewUrl,
    Wrapped<double?>? width,
    Wrapped<double?>? height,
  }) {
    return ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$MainVideo$Item(
      videoUrl: (videoUrl != null ? videoUrl.value : this.videoUrl),
      vodUrl: (vodUrl != null ? vodUrl.value : this.vodUrl),
      previewUrl: (previewUrl != null ? previewUrl.value : this.previewUrl),
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$Item {
  const ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$Item({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$ItemToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asDouble)
  final double? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asDouble)
  final double? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$Item &&
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

extension $ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$ItemExtension
    on
        ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$Item {
  ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$Item
  copyWithWrapped({
    Wrapped<double?>? width,
    Wrapped<double?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgCollection$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$Item {
  const ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$Item({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$ItemToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asDouble)
  final double? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asDouble)
  final double? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$Item &&
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

extension $ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$ItemExtension
    on
        ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$Item {
  ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$Item
  copyWithWrapped({
    Wrapped<double?>? width,
    Wrapped<double?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ImgDetail$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item {
  const ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item({
    this.name,
    this.type,
    this.optionValues,
  });

  factory ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$ItemToJson(
        this,
      );

  @JsonKey(name: 'name', fromJson: JsonCoerce.asString)
  final String? name;
  @JsonKey(name: 'type', fromJson: JsonCoerce.asDouble)
  final double? type;
  @JsonKey(name: 'optionValues')
  final List<
    ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
  >?
  optionValues;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item &&
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

extension $ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$ItemExtension
    on
        ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item {
  ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item
  copyWith({
    String? name,
    double? type,
    List<
      ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
    >?
    optionValues,
  }) {
    return ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item(
      name: name ?? this.name,
      type: type ?? this.type,
      optionValues: optionValues ?? this.optionValues,
    );
  }

  ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item
  copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<double?>? type,
    Wrapped<
      List<
        ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
      >?
    >?
    optionValues,
  }) {
    return ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item(
      name: (name != null ? name.value : this.name),
      type: (type != null ? type.value : this.type),
      optionValues: (optionValues != null
          ? optionValues.value
          : this.optionValues),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$Item {
  const ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$Item({
    this.name,
    this.value,
  });

  factory ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$ItemToJson(
        this,
      );

  @JsonKey(name: 'name', fromJson: JsonCoerce.asString)
  final String? name;
  @JsonKey(name: 'value', fromJson: JsonCoerce.asString)
  final String? value;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$Item &&
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

extension $ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$ItemExtension
    on
        ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$Item {
  ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$Item
  copyWith({String? name, String? value}) {
    return ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$Item(
      name: name ?? this.name,
      value: value ?? this.value,
    );
  }

  ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$Item
  copyWithWrapped({Wrapped<String?>? name, Wrapped<String?>? value}) {
    return ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductAttrs$Item(
      name: (name != null ? name.value : this.name),
      value: (value != null ? value.value : this.value),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$Item {
  const ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$Item({
    this.tagCode,
    this.tagImg,
  });

  factory ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$ItemToJson(
        this,
      );

  @JsonKey(name: 'tagCode', fromJson: JsonCoerce.asString)
  final String? tagCode;
  @JsonKey(name: 'tagImg', fromJson: JsonCoerce.asString)
  final String? tagImg;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$Item &&
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

extension $ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$ItemExtension
    on ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$Item {
  ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$Item
  copyWith({String? tagCode, String? tagImg}) {
    return ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagImg: tagImg ?? this.tagImg,
    );
  }

  ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$Item
  copyWithWrapped({Wrapped<String?>? tagCode, Wrapped<String?>? tagImg}) {
    return ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfo {
  const ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode', fromJson: JsonCoerce.asString)
  final String? brandCode;
  @JsonKey(name: 'brandImg', fromJson: JsonCoerce.asString)
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfo &&
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

extension $ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfoExtension
    on
        ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfo {
  ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item {
  const ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item({
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

  factory ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$ItemToJson(
        this,
      );

  @JsonKey(name: 'shopCode')
  final Object? shopCode;
  @JsonKey(name: 'productCode', fromJson: JsonCoerce.asString)
  final String? productCode;
  @JsonKey(name: 'productName', fromJson: JsonCoerce.asString)
  final String? productName;
  @JsonKey(name: 'tenantCode', fromJson: JsonCoerce.asString)
  final String? tenantCode;
  @JsonKey(name: 'brandName')
  final Object? brandName;
  @JsonKey(name: 'mainImg')
  final List<
    ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$Item
  >?
  mainImg;
  @JsonKey(name: 'subImg')
  final Object? subImg;
  @JsonKey(name: 'mainVideo', defaultValue: <Object>[])
  final List<Object>? mainVideo;
  @JsonKey(name: 'imgCollection')
  final List<
    ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$Item
  >?
  imgCollection;
  @JsonKey(name: 'textDetail')
  final Object? textDetail;
  @JsonKey(name: 'imgDetail')
  final List<
    ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$Item
  >?
  imgDetail;
  @JsonKey(name: 'categoryId', fromJson: JsonCoerce.asDouble)
  final double? categoryId;
  @JsonKey(name: 'productOptions')
  final List<
    ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item
  >?
  productOptions;
  @JsonKey(name: 'productAttrs', defaultValue: <Object>[])
  final List<Object>? productAttrs;
  @JsonKey(name: 'sourcePlatform', fromJson: JsonCoerce.asString)
  final String? sourcePlatform;
  @JsonKey(name: 'platformUrl', fromJson: JsonCoerce.asString)
  final String? platformUrl;
  @JsonKey(name: 'platformProductId', fromJson: JsonCoerce.asString)
  final String? platformProductId;
  @JsonKey(name: 'skuCode', fromJson: JsonCoerce.asString)
  final String? skuCode;
  @JsonKey(name: 'sellPriceCur', fromJson: JsonCoerce.asString)
  final String? sellPriceCur;
  @JsonKey(name: 'sellPrice', fromJson: JsonCoerce.asString)
  final String? sellPrice;
  @JsonKey(name: 'targetSellPrice', fromJson: JsonCoerce.asString)
  final String? targetSellPrice;
  @JsonKey(name: 'targetSellCur', fromJson: JsonCoerce.asString)
  final String? targetSellCur;
  @JsonKey(name: 'productFlag', fromJson: JsonCoerce.asString)
  final String? productFlag;
  @JsonKey(name: 'marketingInfo', fromJson: JsonCoerce.asString)
  final String? marketingInfo;
  @JsonKey(name: 'sellQuantity', fromJson: JsonCoerce.asString)
  final String? sellQuantity;
  @JsonKey(name: 'targetOriginPrice', fromJson: JsonCoerce.asString)
  final String? targetOriginPrice;
  @JsonKey(name: 'tags')
  final List<
    ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$Item
  >?
  tags;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item &&
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

extension $ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$ItemExtension
    on ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item {
  ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item
  copyWith({
    Object? shopCode,
    String? productCode,
    String? productName,
    String? tenantCode,
    Object? brandName,
    List<
      ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$Item
    >?
    mainImg,
    Object? subImg,
    List<Object>? mainVideo,
    List<
      ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$Item
    >?
    imgCollection,
    Object? textDetail,
    List<
      ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$Item
    >?
    imgDetail,
    double? categoryId,
    List<
      ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item
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
      ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$Item
    >?
    tags,
    ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
  }) {
    return ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item(
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

  ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item
  copyWithWrapped({
    Wrapped<Object?>? shopCode,
    Wrapped<String?>? productCode,
    Wrapped<String?>? productName,
    Wrapped<String?>? tenantCode,
    Wrapped<Object?>? brandName,
    Wrapped<
      List<
        ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$Item
      >?
    >?
    mainImg,
    Wrapped<Object?>? subImg,
    Wrapped<List<Object>?>? mainVideo,
    Wrapped<
      List<
        ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$Item
      >?
    >?
    imgCollection,
    Wrapped<Object?>? textDetail,
    Wrapped<
      List<
        ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$Item
      >?
    >?
    imgDetail,
    Wrapped<double?>? categoryId,
    Wrapped<
      List<
        ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item
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
        ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$Item
      >?
    >?
    tags,
    Wrapped<
      ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
  }) {
    return ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item(
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
class ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item {
  const ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item({
    this.productCode,
    this.productName,
    this.image,
    this.skuCode,
    this.sellPriceCur,
    this.sellPrice,
    this.targetSellPrice,
    this.targetSellCur,
    this.sellQuantity,
    this.marketingInfo,
    this.targetOriginPrice,
    this.premiumBrandInfo,
    this.sellPoints,
  });

  factory ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$ItemToJson(
        this,
      );

  @JsonKey(name: 'productCode', fromJson: JsonCoerce.asString)
  final String? productCode;
  @JsonKey(name: 'productName', fromJson: JsonCoerce.asString)
  final String? productName;
  @JsonKey(name: 'image')
  final ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$Image?
  image;
  @JsonKey(name: 'skuCode', fromJson: JsonCoerce.asString)
  final String? skuCode;
  @JsonKey(name: 'sellPriceCur', fromJson: JsonCoerce.asString)
  final String? sellPriceCur;
  @JsonKey(name: 'sellPrice', fromJson: JsonCoerce.asString)
  final String? sellPrice;
  @JsonKey(name: 'targetSellPrice', fromJson: JsonCoerce.asString)
  final String? targetSellPrice;
  @JsonKey(name: 'targetSellCur', fromJson: JsonCoerce.asString)
  final String? targetSellCur;
  @JsonKey(name: 'sellQuantity', fromJson: JsonCoerce.asString)
  final String? sellQuantity;
  @JsonKey(name: 'marketingInfo', fromJson: JsonCoerce.asString)
  final String? marketingInfo;
  @JsonKey(name: 'targetOriginPrice', fromJson: JsonCoerce.asString)
  final String? targetOriginPrice;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  static const fromJsonFactory =
      _$ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item &&
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

extension $ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$ItemExtension
    on ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item {
  ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item copyWith({
    String? productCode,
    String? productName,
    ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$Image?
    image,
    String? skuCode,
    String? sellPriceCur,
    String? sellPrice,
    String? targetSellPrice,
    String? targetSellCur,
    String? sellQuantity,
    String? marketingInfo,
    String? targetOriginPrice,
    ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
  }) {
    return ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item(
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

  ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item
  copyWithWrapped({
    Wrapped<String?>? productCode,
    Wrapped<String?>? productName,
    Wrapped<
      ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$Image?
    >?
    image,
    Wrapped<String?>? skuCode,
    Wrapped<String?>? sellPriceCur,
    Wrapped<String?>? sellPrice,
    Wrapped<String?>? targetSellPrice,
    Wrapped<String?>? targetSellCur,
    Wrapped<String?>? sellQuantity,
    Wrapped<String?>? marketingInfo,
    Wrapped<String?>? targetOriginPrice,
    Wrapped<
      ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
  }) {
    return ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item(
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
class ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainImg$Item {
  const ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainImg$Item({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainImg$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainImg$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainImg$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainImg$ItemToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asDouble)
  final double? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asDouble)
  final double? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainImg$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainImg$Item &&
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

extension $ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainImg$ItemExtension
    on ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainImg$Item {
  ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainImg$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainImg$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainImg$Item
  copyWithWrapped({
    Wrapped<double?>? width,
    Wrapped<double?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainImg$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainVideo$Item {
  const ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainVideo$Item({
    this.videoUrl,
    this.vodUrl,
    this.previewUrl,
    this.width,
    this.height,
  });

  factory ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainVideo$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainVideo$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainVideo$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainVideo$ItemToJson(
        this,
      );

  @JsonKey(name: 'videoUrl', fromJson: JsonCoerce.asString)
  final String? videoUrl;
  @JsonKey(name: 'vodUrl', fromJson: JsonCoerce.asString)
  final String? vodUrl;
  @JsonKey(name: 'previewUrl', fromJson: JsonCoerce.asString)
  final String? previewUrl;
  @JsonKey(name: 'width', fromJson: JsonCoerce.asDouble)
  final double? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asDouble)
  final double? height;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainVideo$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainVideo$Item &&
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

extension $ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainVideo$ItemExtension
    on ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainVideo$Item {
  ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainVideo$Item
  copyWith({
    String? videoUrl,
    String? vodUrl,
    String? previewUrl,
    double? width,
    double? height,
  }) {
    return ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainVideo$Item(
      videoUrl: videoUrl ?? this.videoUrl,
      vodUrl: vodUrl ?? this.vodUrl,
      previewUrl: previewUrl ?? this.previewUrl,
      width: width ?? this.width,
      height: height ?? this.height,
    );
  }

  ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainVideo$Item
  copyWithWrapped({
    Wrapped<String?>? videoUrl,
    Wrapped<String?>? vodUrl,
    Wrapped<String?>? previewUrl,
    Wrapped<double?>? width,
    Wrapped<double?>? height,
  }) {
    return ProductServiceProductNoAuthKolProductGet$Response$Data$Item$MainVideo$Item(
      videoUrl: (videoUrl != null ? videoUrl.value : this.videoUrl),
      vodUrl: (vodUrl != null ? vodUrl.value : this.vodUrl),
      previewUrl: (previewUrl != null ? previewUrl.value : this.previewUrl),
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$Item {
  const ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$Item({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$ItemToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asDouble)
  final double? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asDouble)
  final double? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$Item &&
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

extension $ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$ItemExtension
    on ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$Item {
  ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$Item
  copyWithWrapped({
    Wrapped<double?>? width,
    Wrapped<double?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgCollection$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$Item {
  const ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$Item({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$ItemToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asDouble)
  final double? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asDouble)
  final double? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$Item &&
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

extension $ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$ItemExtension
    on ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$Item {
  ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$Item
  copyWithWrapped({
    Wrapped<double?>? width,
    Wrapped<double?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ImgDetail$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item {
  const ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item({
    this.name,
    this.type,
    this.optionValues,
  });

  factory ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$ItemToJson(
        this,
      );

  @JsonKey(name: 'name', fromJson: JsonCoerce.asString)
  final String? name;
  @JsonKey(name: 'type', fromJson: JsonCoerce.asDouble)
  final double? type;
  @JsonKey(name: 'optionValues')
  final List<
    ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
  >?
  optionValues;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item &&
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

extension $ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$ItemExtension
    on
        ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item {
  ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item
  copyWith({
    String? name,
    double? type,
    List<
      ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
    >?
    optionValues,
  }) {
    return ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item(
      name: name ?? this.name,
      type: type ?? this.type,
      optionValues: optionValues ?? this.optionValues,
    );
  }

  ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item
  copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<double?>? type,
    Wrapped<
      List<
        ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
      >?
    >?
    optionValues,
  }) {
    return ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item(
      name: (name != null ? name.value : this.name),
      type: (type != null ? type.value : this.type),
      optionValues: (optionValues != null
          ? optionValues.value
          : this.optionValues),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$Item {
  const ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$Item({
    this.name,
    this.value,
  });

  factory ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$ItemToJson(
        this,
      );

  @JsonKey(name: 'name', fromJson: JsonCoerce.asString)
  final String? name;
  @JsonKey(name: 'value', fromJson: JsonCoerce.asString)
  final String? value;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$Item &&
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

extension $ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$ItemExtension
    on ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$Item {
  ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$Item
  copyWith({String? name, String? value}) {
    return ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$Item(
      name: name ?? this.name,
      value: value ?? this.value,
    );
  }

  ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$Item
  copyWithWrapped({Wrapped<String?>? name, Wrapped<String?>? value}) {
    return ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductAttrs$Item(
      name: (name != null ? name.value : this.name),
      value: (value != null ? value.value : this.value),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthKolProductGet$Response$Data$Item$Tags$Item {
  const ProductServiceProductNoAuthKolProductGet$Response$Data$Item$Tags$Item({
    this.tagCode,
    this.tagImg,
  });

  factory ProductServiceProductNoAuthKolProductGet$Response$Data$Item$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$Tags$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$Tags$ItemToJson(
        this,
      );

  @JsonKey(name: 'tagCode', fromJson: JsonCoerce.asString)
  final String? tagCode;
  @JsonKey(name: 'tagImg', fromJson: JsonCoerce.asString)
  final String? tagImg;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthKolProductGet$Response$Data$Item$Tags$Item &&
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

extension $ProductServiceProductNoAuthKolProductGet$Response$Data$Item$Tags$ItemExtension
    on ProductServiceProductNoAuthKolProductGet$Response$Data$Item$Tags$Item {
  ProductServiceProductNoAuthKolProductGet$Response$Data$Item$Tags$Item
  copyWith({String? tagCode, String? tagImg}) {
    return ProductServiceProductNoAuthKolProductGet$Response$Data$Item$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagImg: tagImg ?? this.tagImg,
    );
  }

  ProductServiceProductNoAuthKolProductGet$Response$Data$Item$Tags$Item
  copyWithWrapped({Wrapped<String?>? tagCode, Wrapped<String?>? tagImg}) {
    return ProductServiceProductNoAuthKolProductGet$Response$Data$Item$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfo {
  const ProductServiceProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductServiceProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode', fromJson: JsonCoerce.asString)
  final String? brandCode;
  @JsonKey(name: 'brandImg', fromJson: JsonCoerce.asString)
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfo &&
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

extension $ProductServiceProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfoExtension
    on ProductServiceProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfo {
  ProductServiceProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return ProductServiceProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductServiceProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ProductServiceProductNoAuthKolProductGet$Response$Data$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item {
  const ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item({
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

  factory ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$ItemToJson(
        this,
      );

  @JsonKey(name: 'shopCode')
  final Object? shopCode;
  @JsonKey(name: 'productCode', fromJson: JsonCoerce.asString)
  final String? productCode;
  @JsonKey(name: 'productName', fromJson: JsonCoerce.asString)
  final String? productName;
  @JsonKey(name: 'tenantCode', fromJson: JsonCoerce.asString)
  final String? tenantCode;
  @JsonKey(name: 'brandName')
  final Object? brandName;
  @JsonKey(name: 'mainImg')
  final List<
    ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$Item
  >?
  mainImg;
  @JsonKey(name: 'subImg')
  final Object? subImg;
  @JsonKey(name: 'mainVideo', defaultValue: <Object>[])
  final List<Object>? mainVideo;
  @JsonKey(name: 'imgCollection')
  final List<
    ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$Item
  >?
  imgCollection;
  @JsonKey(name: 'textDetail')
  final Object? textDetail;
  @JsonKey(name: 'imgDetail')
  final List<
    ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$Item
  >?
  imgDetail;
  @JsonKey(name: 'categoryId', fromJson: JsonCoerce.asDouble)
  final double? categoryId;
  @JsonKey(name: 'productOptions')
  final List<
    ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item
  >?
  productOptions;
  @JsonKey(name: 'productAttrs', defaultValue: <Object>[])
  final List<Object>? productAttrs;
  @JsonKey(name: 'sourcePlatform', fromJson: JsonCoerce.asString)
  final String? sourcePlatform;
  @JsonKey(name: 'platformUrl', fromJson: JsonCoerce.asString)
  final String? platformUrl;
  @JsonKey(name: 'platformProductId', fromJson: JsonCoerce.asString)
  final String? platformProductId;
  @JsonKey(name: 'skuCode', fromJson: JsonCoerce.asString)
  final String? skuCode;
  @JsonKey(name: 'sellPriceCur', fromJson: JsonCoerce.asString)
  final String? sellPriceCur;
  @JsonKey(name: 'sellPrice', fromJson: JsonCoerce.asString)
  final String? sellPrice;
  @JsonKey(name: 'targetSellPrice', fromJson: JsonCoerce.asString)
  final String? targetSellPrice;
  @JsonKey(name: 'targetSellCur', fromJson: JsonCoerce.asString)
  final String? targetSellCur;
  @JsonKey(name: 'productFlag', fromJson: JsonCoerce.asString)
  final String? productFlag;
  @JsonKey(name: 'marketingInfo', fromJson: JsonCoerce.asString)
  final String? marketingInfo;
  @JsonKey(name: 'sellQuantity', fromJson: JsonCoerce.asString)
  final String? sellQuantity;
  @JsonKey(name: 'targetOriginPrice', fromJson: JsonCoerce.asString)
  final String? targetOriginPrice;
  @JsonKey(name: 'tags')
  final List<
    ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$Item
  >?
  tags;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item &&
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

extension $ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$ItemExtension
    on ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item {
  ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item
  copyWith({
    Object? shopCode,
    String? productCode,
    String? productName,
    String? tenantCode,
    Object? brandName,
    List<
      ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$Item
    >?
    mainImg,
    Object? subImg,
    List<Object>? mainVideo,
    List<
      ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$Item
    >?
    imgCollection,
    Object? textDetail,
    List<
      ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$Item
    >?
    imgDetail,
    double? categoryId,
    List<
      ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item
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
      ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$Item
    >?
    tags,
    ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
  }) {
    return ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item(
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

  ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item
  copyWithWrapped({
    Wrapped<Object?>? shopCode,
    Wrapped<String?>? productCode,
    Wrapped<String?>? productName,
    Wrapped<String?>? tenantCode,
    Wrapped<Object?>? brandName,
    Wrapped<
      List<
        ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$Item
      >?
    >?
    mainImg,
    Wrapped<Object?>? subImg,
    Wrapped<List<Object>?>? mainVideo,
    Wrapped<
      List<
        ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$Item
      >?
    >?
    imgCollection,
    Wrapped<Object?>? textDetail,
    Wrapped<
      List<
        ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$Item
      >?
    >?
    imgDetail,
    Wrapped<double?>? categoryId,
    Wrapped<
      List<
        ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item
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
        ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$Item
      >?
    >?
    tags,
    Wrapped<
      ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
  }) {
    return ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item(
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
class ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item {
  const ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item({
    this.categoryName,
    this.productInfos,
    this.recommendationReason,
  });

  factory ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$ItemToJson(
        this,
      );

  @JsonKey(name: 'categoryName', fromJson: JsonCoerce.asString)
  final String? categoryName;
  @JsonKey(name: 'productInfos')
  final List<
    ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item
  >?
  productInfos;
  @JsonKey(name: 'recommendationReason', fromJson: JsonCoerce.asString)
  final String? recommendationReason;
  static const fromJsonFactory =
      _$ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item &&
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

extension $ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$ItemExtension
    on
        ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item {
  ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item
  copyWith({
    String? categoryName,
    List<
      ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item
    >?
    productInfos,
    String? recommendationReason,
  }) {
    return ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item(
      categoryName: categoryName ?? this.categoryName,
      productInfos: productInfos ?? this.productInfos,
      recommendationReason: recommendationReason ?? this.recommendationReason,
    );
  }

  ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item
  copyWithWrapped({
    Wrapped<String?>? categoryName,
    Wrapped<
      List<
        ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item
      >?
    >?
    productInfos,
    Wrapped<String?>? recommendationReason,
  }) {
    return ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item(
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
class ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item {
  const ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item({
    this.productCode,
    this.productName,
    this.image,
    this.skuCode,
    this.sellPriceCur,
    this.sellPrice,
    this.targetSellPrice,
    this.targetSellCur,
    this.sellQuantity,
    this.skuCount,
    this.tags,
    this.premiumBrandInfo,
    this.sellPoints,
  });

  factory ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$ItemToJson(
        this,
      );

  @JsonKey(name: 'productCode', fromJson: JsonCoerce.asString)
  final String? productCode;
  @JsonKey(name: 'productName', fromJson: JsonCoerce.asString)
  final String? productName;
  @JsonKey(name: 'image')
  final ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Image?
  image;
  @JsonKey(name: 'skuCode', fromJson: JsonCoerce.asString)
  final String? skuCode;
  @JsonKey(name: 'sellPriceCur', fromJson: JsonCoerce.asString)
  final String? sellPriceCur;
  @JsonKey(name: 'sellPrice', fromJson: JsonCoerce.asString)
  final String? sellPrice;
  @JsonKey(name: 'targetSellPrice', fromJson: JsonCoerce.asString)
  final String? targetSellPrice;
  @JsonKey(name: 'targetSellCur', fromJson: JsonCoerce.asString)
  final String? targetSellCur;
  @JsonKey(name: 'sellQuantity', fromJson: JsonCoerce.asString)
  final String? sellQuantity;
  @JsonKey(name: 'skuCount', fromJson: JsonCoerce.asInt)
  final int? skuCount;
  @JsonKey(name: 'tags')
  final List<
    ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$Item
  >?
  tags;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  static const fromJsonFactory =
      _$ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item &&
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

extension $ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$ItemExtension
    on ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item {
  ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item
  copyWith({
    String? productCode,
    String? productName,
    ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Image?
    image,
    String? skuCode,
    String? sellPriceCur,
    String? sellPrice,
    String? targetSellPrice,
    String? targetSellCur,
    String? sellQuantity,
    int? skuCount,
    List<
      ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$Item
    >?
    tags,
    ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
  }) {
    return ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item(
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

  ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item
  copyWithWrapped({
    Wrapped<String?>? productCode,
    Wrapped<String?>? productName,
    Wrapped<
      ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Image?
    >?
    image,
    Wrapped<String?>? skuCode,
    Wrapped<String?>? sellPriceCur,
    Wrapped<String?>? sellPrice,
    Wrapped<String?>? targetSellPrice,
    Wrapped<String?>? targetSellCur,
    Wrapped<String?>? sellQuantity,
    Wrapped<int?>? skuCount,
    Wrapped<
      List<
        ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$Item
      >?
    >?
    tags,
    Wrapped<
      ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
  }) {
    return ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item(
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
class ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item {
  const ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item({
    this.productCode,
    this.productName,
    this.image,
    this.skuCode,
    this.sellPriceCur,
    this.sellPrice,
    this.targetSellPrice,
    this.targetSellCur,
    this.sellQuantity,
    this.skuCount,
    this.marketingInfo,
    this.targetOriginPrice,
    this.tags,
    this.premiumBrandInfo,
    this.sellPoints,
  });

  factory ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceRecommendNoAuthShopPost$Response$Data$Records$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceRecommendNoAuthShopPost$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceRecommendNoAuthShopPost$Response$Data$Records$ItemToJson(
        this,
      );

  @JsonKey(name: 'productCode', fromJson: JsonCoerce.asString)
  final String? productCode;
  @JsonKey(name: 'productName', fromJson: JsonCoerce.asString)
  final String? productName;
  @JsonKey(name: 'image')
  final ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Image?
  image;
  @JsonKey(name: 'skuCode', fromJson: JsonCoerce.asString)
  final String? skuCode;
  @JsonKey(name: 'sellPriceCur', fromJson: JsonCoerce.asString)
  final String? sellPriceCur;
  @JsonKey(name: 'sellPrice', fromJson: JsonCoerce.asString)
  final String? sellPrice;
  @JsonKey(name: 'targetSellPrice', fromJson: JsonCoerce.asString)
  final String? targetSellPrice;
  @JsonKey(name: 'targetSellCur', fromJson: JsonCoerce.asString)
  final String? targetSellCur;
  @JsonKey(name: 'sellQuantity', fromJson: JsonCoerce.asString)
  final String? sellQuantity;
  @JsonKey(name: 'skuCount', fromJson: JsonCoerce.asInt)
  final int? skuCount;
  @JsonKey(name: 'marketingInfo', fromJson: JsonCoerce.asString)
  final String? marketingInfo;
  @JsonKey(name: 'targetOriginPrice', fromJson: JsonCoerce.asString)
  final String? targetOriginPrice;
  @JsonKey(name: 'tags')
  final List<
    ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Tags$Item
  >?
  tags;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  static const fromJsonFactory =
      _$ProductServiceRecommendNoAuthShopPost$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item &&
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

extension $ProductServiceRecommendNoAuthShopPost$Response$Data$Records$ItemExtension
    on ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item {
  ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item copyWith({
    String? productCode,
    String? productName,
    ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Image?
    image,
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
      ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Tags$Item
    >?
    tags,
    ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
  }) {
    return ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item(
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

  ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item
  copyWithWrapped({
    Wrapped<String?>? productCode,
    Wrapped<String?>? productName,
    Wrapped<
      ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Image?
    >?
    image,
    Wrapped<String?>? skuCode,
    Wrapped<String?>? sellPriceCur,
    Wrapped<String?>? sellPrice,
    Wrapped<String?>? targetSellPrice,
    Wrapped<String?>? targetSellCur,
    Wrapped<String?>? sellQuantity,
    Wrapped<int?>? skuCount,
    Wrapped<String?>? marketingInfo,
    Wrapped<String?>? targetOriginPrice,
    Wrapped<
      List<
        ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Tags$Item
      >?
    >?
    tags,
    Wrapped<
      ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
  }) {
    return ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item(
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
class ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item {
  const ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item({
    this.productCode,
    this.productName,
    this.image,
    this.skuCode,
    this.sellPriceCur,
    this.sellPrice,
    this.targetSellPrice,
    this.targetSellCur,
    this.sellQuantity,
    this.skuCount,
    this.marketingInfo,
    this.targetOriginPrice,
    this.tags,
    this.premiumBrandInfo,
    this.sellPoints,
  });

  factory ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$ItemToJson(
        this,
      );

  @JsonKey(name: 'productCode', fromJson: JsonCoerce.asString)
  final String? productCode;
  @JsonKey(name: 'productName', fromJson: JsonCoerce.asString)
  final String? productName;
  @JsonKey(name: 'image')
  final ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Image?
  image;
  @JsonKey(name: 'skuCode', fromJson: JsonCoerce.asString)
  final String? skuCode;
  @JsonKey(name: 'sellPriceCur', fromJson: JsonCoerce.asString)
  final String? sellPriceCur;
  @JsonKey(name: 'sellPrice', fromJson: JsonCoerce.asString)
  final String? sellPrice;
  @JsonKey(name: 'targetSellPrice', fromJson: JsonCoerce.asString)
  final String? targetSellPrice;
  @JsonKey(name: 'targetSellCur', fromJson: JsonCoerce.asString)
  final String? targetSellCur;
  @JsonKey(name: 'sellQuantity', fromJson: JsonCoerce.asString)
  final String? sellQuantity;
  @JsonKey(name: 'skuCount', fromJson: JsonCoerce.asInt)
  final int? skuCount;
  @JsonKey(name: 'marketingInfo', fromJson: JsonCoerce.asString)
  final String? marketingInfo;
  @JsonKey(name: 'targetOriginPrice', fromJson: JsonCoerce.asString)
  final String? targetOriginPrice;
  @JsonKey(name: 'tags')
  final List<
    ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$Item
  >?
  tags;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfo?
  premiumBrandInfo;
  @JsonKey(name: 'sellPoints', defaultValue: <Object>[])
  final List<Object>? sellPoints;
  static const fromJsonFactory =
      _$ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item &&
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

extension $ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$ItemExtension
    on ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item {
  ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item
  copyWith({
    String? productCode,
    String? productName,
    ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Image?
    image,
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
      ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$Item
    >?
    tags,
    ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfo?
    premiumBrandInfo,
    List<Object>? sellPoints,
  }) {
    return ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item(
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

  ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item
  copyWithWrapped({
    Wrapped<String?>? productCode,
    Wrapped<String?>? productName,
    Wrapped<
      ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Image?
    >?
    image,
    Wrapped<String?>? skuCode,
    Wrapped<String?>? sellPriceCur,
    Wrapped<String?>? sellPrice,
    Wrapped<String?>? targetSellPrice,
    Wrapped<String?>? targetSellCur,
    Wrapped<String?>? sellQuantity,
    Wrapped<int?>? skuCount,
    Wrapped<String?>? marketingInfo,
    Wrapped<String?>? targetOriginPrice,
    Wrapped<
      List<
        ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$Item
      >?
    >?
    tags,
    Wrapped<
      ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
    Wrapped<List<Object>?>? sellPoints,
  }) {
    return ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item(
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
class ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item {
  const ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item({
    this.id,
    this.parentId,
    this.level,
    this.showOrder,
    this.name,
    this.iconUrl,
    this.categoryList,
    this.brands,
  });

  factory ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$ItemToJson(
        this,
      );

  @JsonKey(name: 'id', fromJson: JsonCoerce.asDouble)
  final double? id;
  @JsonKey(name: 'parentId', fromJson: JsonCoerce.asDouble)
  final double? parentId;
  @JsonKey(name: 'level', fromJson: JsonCoerce.asDouble)
  final double? level;
  @JsonKey(name: 'showOrder', fromJson: JsonCoerce.asDouble)
  final double? showOrder;
  @JsonKey(name: 'name', fromJson: JsonCoerce.asString)
  final String? name;
  @JsonKey(name: 'iconUrl', fromJson: JsonCoerce.asString)
  final String? iconUrl;
  @JsonKey(name: 'categoryList')
  final List<
    ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item
  >?
  categoryList;
  @JsonKey(name: 'brands', defaultValue: <Object>[])
  final List<Object>? brands;
  static const fromJsonFactory =
      _$ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item &&
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

extension $ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$ItemExtension
    on
        ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item {
  ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item
  copyWith({
    double? id,
    double? parentId,
    double? level,
    double? showOrder,
    String? name,
    String? iconUrl,
    List<
      ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item
    >?
    categoryList,
    List<Object>? brands,
  }) {
    return ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item(
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

  ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item
  copyWithWrapped({
    Wrapped<double?>? id,
    Wrapped<double?>? parentId,
    Wrapped<double?>? level,
    Wrapped<double?>? showOrder,
    Wrapped<String?>? name,
    Wrapped<String?>? iconUrl,
    Wrapped<
      List<
        ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item
      >?
    >?
    categoryList,
    Wrapped<List<Object>?>? brands,
  }) {
    return ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item(
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
class ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Image {
  const ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Image({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Image.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$ImageFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$ImageToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$ImageToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asInt)
  final int? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asInt)
  final int? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$ImageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Image &&
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

extension $ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$ImageExtension
    on
        ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Image {
  ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Image
  copyWith({int? width, int? height, String? url}) {
    return ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Image(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Image
  copyWithWrapped({
    Wrapped<int?>? width,
    Wrapped<int?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Image(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$Item {
  const ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$Item({
    this.tagCode,
    this.tagImg,
    this.order,
    this.frontShow,
  });

  factory ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$ItemToJson(
        this,
      );

  @JsonKey(name: 'tagCode', fromJson: JsonCoerce.asString)
  final String? tagCode;
  @JsonKey(name: 'tagImg', fromJson: JsonCoerce.asString)
  final String? tagImg;
  @JsonKey(name: 'order', fromJson: JsonCoerce.asInt)
  final int? order;
  @JsonKey(name: 'frontShow', fromJson: JsonCoerce.asInt)
  final int? frontShow;
  static const fromJsonFactory =
      _$ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$Item &&
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

extension $ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$ItemExtension
    on
        ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$Item {
  ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$Item
  copyWith({String? tagCode, String? tagImg, int? order, int? frontShow}) {
    return ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagImg: tagImg ?? this.tagImg,
      order: order ?? this.order,
      frontShow: frontShow ?? this.frontShow,
    );
  }

  ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$Item
  copyWithWrapped({
    Wrapped<String?>? tagCode,
    Wrapped<String?>? tagImg,
    Wrapped<int?>? order,
    Wrapped<int?>? frontShow,
  }) {
    return ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
      order: (order != null ? order.value : this.order),
      frontShow: (frontShow != null ? frontShow.value : this.frontShow),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSale {
  const ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSale({
    this.activityCode,
    this.activityTitle,
    this.startTime,
    this.endTime,
    this.progressPercent,
    this.progressText,
    this.marketingIcon,
  });

  factory ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSale.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSaleFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSaleToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSaleToJson(
        this,
      );

  @JsonKey(name: 'activityCode', fromJson: JsonCoerce.asString)
  final String? activityCode;
  @JsonKey(name: 'activityTitle', fromJson: JsonCoerce.asString)
  final String? activityTitle;
  @JsonKey(name: 'startTime', fromJson: JsonCoerce.asInt)
  final int? startTime;
  @JsonKey(name: 'endTime', fromJson: JsonCoerce.asInt)
  final int? endTime;
  @JsonKey(name: 'progressPercent', fromJson: JsonCoerce.asInt)
  final int? progressPercent;
  @JsonKey(name: 'progressText', fromJson: JsonCoerce.asString)
  final String? progressText;
  @JsonKey(name: 'marketingIcon', fromJson: JsonCoerce.asString)
  final String? marketingIcon;
  static const fromJsonFactory =
      _$ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSaleFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSale &&
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

extension $ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSaleExtension
    on
        ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSale {
  ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSale
  copyWith({
    String? activityCode,
    String? activityTitle,
    int? startTime,
    int? endTime,
    int? progressPercent,
    String? progressText,
    String? marketingIcon,
  }) {
    return ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSale(
      activityCode: activityCode ?? this.activityCode,
      activityTitle: activityTitle ?? this.activityTitle,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      progressPercent: progressPercent ?? this.progressPercent,
      progressText: progressText ?? this.progressText,
      marketingIcon: marketingIcon ?? this.marketingIcon,
    );
  }

  ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSale
  copyWithWrapped({
    Wrapped<String?>? activityCode,
    Wrapped<String?>? activityTitle,
    Wrapped<int?>? startTime,
    Wrapped<int?>? endTime,
    Wrapped<int?>? progressPercent,
    Wrapped<String?>? progressText,
    Wrapped<String?>? marketingIcon,
  }) {
    return ProductServiceActivityNoAuthFlashSaleActivityProductGet$Response$Data$Records$Item$FlashSale(
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
class ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Image {
  const ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Image({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Image.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$ImageFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$ImageToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$ImageToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asInt)
  final int? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asInt)
  final int? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$ImageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Image &&
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

extension $ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$ImageExtension
    on
        ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Image {
  ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Image
  copyWith({int? width, int? height, String? url}) {
    return ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Image(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Image
  copyWithWrapped({
    Wrapped<int?>? width,
    Wrapped<int?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Image(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$Item {
  const ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$Item({
    this.tagCode,
    this.tagImg,
    this.order,
    this.frontShow,
  });

  factory ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$ItemToJson(
        this,
      );

  @JsonKey(name: 'tagCode', fromJson: JsonCoerce.asString)
  final String? tagCode;
  @JsonKey(name: 'tagImg', fromJson: JsonCoerce.asString)
  final String? tagImg;
  @JsonKey(name: 'order', fromJson: JsonCoerce.asInt)
  final int? order;
  @JsonKey(name: 'frontShow', fromJson: JsonCoerce.asInt)
  final int? frontShow;
  static const fromJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$Item &&
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

extension $ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$ItemExtension
    on
        ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$Item {
  ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$Item
  copyWith({String? tagCode, String? tagImg, int? order, int? frontShow}) {
    return ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagImg: tagImg ?? this.tagImg,
      order: order ?? this.order,
      frontShow: frontShow ?? this.frontShow,
    );
  }

  ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$Item
  copyWithWrapped({
    Wrapped<String?>? tagCode,
    Wrapped<String?>? tagImg,
    Wrapped<int?>? order,
    Wrapped<int?>? frontShow,
  }) {
    return ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
      order: (order != null ? order.value : this.order),
      frontShow: (frontShow != null ? frontShow.value : this.frontShow),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfo {
  const ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode', fromJson: JsonCoerce.asString)
  final String? brandCode;
  @JsonKey(name: 'brandImg', fromJson: JsonCoerce.asString)
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfo &&
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

extension $ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfoExtension
    on
        ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfo {
  ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ProductServiceProductPremiumDupeNoAuthPagePost$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$Item {
  const ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$Item({
    this.img,
    this.tabNormalColor,
    this.tabSelectedColor,
    this.tabsBackgroundColor,
  });

  factory ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$ItemToJson(
        this,
      );

  @JsonKey(name: 'img', fromJson: JsonCoerce.asString)
  final String? img;
  @JsonKey(name: 'tabNormalColor', fromJson: JsonCoerce.asString)
  final String? tabNormalColor;
  @JsonKey(name: 'tabSelectedColor', fromJson: JsonCoerce.asString)
  final String? tabSelectedColor;
  @JsonKey(name: 'tabsBackgroundColor', fromJson: JsonCoerce.asString)
  final String? tabsBackgroundColor;
  static const fromJsonFactory =
      _$ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$Item &&
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

extension $ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$ItemExtension
    on ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$Item {
  ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$Item
  copyWith({
    String? img,
    String? tabNormalColor,
    String? tabSelectedColor,
    String? tabsBackgroundColor,
  }) {
    return ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$Item(
      img: img ?? this.img,
      tabNormalColor: tabNormalColor ?? this.tabNormalColor,
      tabSelectedColor: tabSelectedColor ?? this.tabSelectedColor,
      tabsBackgroundColor: tabsBackgroundColor ?? this.tabsBackgroundColor,
    );
  }

  ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$Item
  copyWithWrapped({
    Wrapped<String?>? img,
    Wrapped<String?>? tabNormalColor,
    Wrapped<String?>? tabSelectedColor,
    Wrapped<String?>? tabsBackgroundColor,
  }) {
    return ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Config$List$Item(
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
class ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Image {
  const ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Image({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Image.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$ImageFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$ImageToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$ImageToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asInt)
  final int? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asInt)
  final int? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$ImageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Image &&
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

extension $ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$ImageExtension
    on ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Image {
  ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Image
  copyWith({int? width, int? height, String? url}) {
    return ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Image(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Image
  copyWithWrapped({
    Wrapped<int?>? width,
    Wrapped<int?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Image(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$Item {
  const ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$Item({
    this.tagCode,
    this.tagImg,
  });

  factory ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$ItemToJson(
        this,
      );

  @JsonKey(name: 'tagCode', fromJson: JsonCoerce.asString)
  final String? tagCode;
  @JsonKey(name: 'tagImg', fromJson: JsonCoerce.asString)
  final String? tagImg;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$Item &&
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

extension $ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$ItemExtension
    on ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$Item {
  ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$Item
  copyWith({String? tagCode, String? tagImg}) {
    return ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagImg: tagImg ?? this.tagImg,
    );
  }

  ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$Item
  copyWithWrapped({Wrapped<String?>? tagCode, Wrapped<String?>? tagImg}) {
    return ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfo {
  const ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode', fromJson: JsonCoerce.asString)
  final String? brandCode;
  @JsonKey(name: 'brandImg', fromJson: JsonCoerce.asString)
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfo &&
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

extension $ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfoExtension
    on
        ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfo {
  ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ProductServiceProductNoAuthPushProductGet$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item {
  const ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item({
    this.value,
    this.enValue,
    this.image,
    this.imageWidth,
    this.imageHeight,
  });

  factory ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemToJson(
        this,
      );

  @JsonKey(name: 'value', fromJson: JsonCoerce.asString)
  final String? value;
  @JsonKey(name: 'enValue', fromJson: JsonCoerce.asString)
  final String? enValue;
  @JsonKey(name: 'image', fromJson: JsonCoerce.asString)
  final String? image;
  @JsonKey(name: 'imageWidth', fromJson: JsonCoerce.asInt)
  final int? imageWidth;
  @JsonKey(name: 'imageHeight', fromJson: JsonCoerce.asInt)
  final int? imageHeight;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item &&
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

extension $ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemExtension
    on
        ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item {
  ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
  copyWith({
    String? value,
    String? enValue,
    String? image,
    int? imageWidth,
    int? imageHeight,
  }) {
    return ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item(
      value: value ?? this.value,
      enValue: enValue ?? this.enValue,
      image: image ?? this.image,
      imageWidth: imageWidth ?? this.imageWidth,
      imageHeight: imageHeight ?? this.imageHeight,
    );
  }

  ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
  copyWithWrapped({
    Wrapped<String?>? value,
    Wrapped<String?>? enValue,
    Wrapped<String?>? image,
    Wrapped<int?>? imageWidth,
    Wrapped<int?>? imageHeight,
  }) {
    return ProductServiceProductNoAuthSearchGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item(
      value: (value != null ? value.value : this.value),
      enValue: (enValue != null ? enValue.value : this.enValue),
      image: (image != null ? image.value : this.image),
      imageWidth: (imageWidth != null ? imageWidth.value : this.imageWidth),
      imageHeight: (imageHeight != null ? imageHeight.value : this.imageHeight),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$Item {
  const ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$Item({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$ItemToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asDouble)
  final double? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asDouble)
  final double? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$Item &&
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

extension $ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$ItemExtension
    on
        ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$Item {
  ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$Item
  copyWithWrapped({
    Wrapped<double?>? width,
    Wrapped<double?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainImg$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$Item {
  const ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$Item({
    this.videoUrl,
    this.vodUrl,
    this.previewUrl,
    this.width,
    this.height,
  });

  factory ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$ItemToJson(
        this,
      );

  @JsonKey(name: 'videoUrl', fromJson: JsonCoerce.asString)
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
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$Item &&
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

extension $ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$ItemExtension
    on
        ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$Item {
  ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$Item
  copyWith({
    String? videoUrl,
    Object? vodUrl,
    Object? previewUrl,
    Object? width,
    Object? height,
  }) {
    return ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$Item(
      videoUrl: videoUrl ?? this.videoUrl,
      vodUrl: vodUrl ?? this.vodUrl,
      previewUrl: previewUrl ?? this.previewUrl,
      width: width ?? this.width,
      height: height ?? this.height,
    );
  }

  ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$Item
  copyWithWrapped({
    Wrapped<String?>? videoUrl,
    Wrapped<Object?>? vodUrl,
    Wrapped<Object?>? previewUrl,
    Wrapped<Object?>? width,
    Wrapped<Object?>? height,
  }) {
    return ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$MainVideo$Item(
      videoUrl: (videoUrl != null ? videoUrl.value : this.videoUrl),
      vodUrl: (vodUrl != null ? vodUrl.value : this.vodUrl),
      previewUrl: (previewUrl != null ? previewUrl.value : this.previewUrl),
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$Item {
  const ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$Item({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$ItemToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asDouble)
  final double? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asDouble)
  final double? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$Item &&
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

extension $ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$ItemExtension
    on
        ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$Item {
  ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$Item
  copyWithWrapped({
    Wrapped<double?>? width,
    Wrapped<double?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgCollection$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$Item {
  const ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$Item({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$ItemToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asDouble)
  final double? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asDouble)
  final double? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$Item &&
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

extension $ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$ItemExtension
    on
        ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$Item {
  ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$Item
  copyWithWrapped({
    Wrapped<double?>? width,
    Wrapped<double?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ImgDetail$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item {
  const ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item({
    this.name,
    this.type,
    this.optionValues,
  });

  factory ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$ItemToJson(
        this,
      );

  @JsonKey(name: 'name', fromJson: JsonCoerce.asString)
  final String? name;
  @JsonKey(name: 'type', fromJson: JsonCoerce.asDouble)
  final double? type;
  @JsonKey(name: 'optionValues')
  final List<
    ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
  >?
  optionValues;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item &&
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

extension $ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$ItemExtension
    on
        ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item {
  ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item
  copyWith({
    String? name,
    double? type,
    List<
      ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
    >?
    optionValues,
  }) {
    return ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item(
      name: name ?? this.name,
      type: type ?? this.type,
      optionValues: optionValues ?? this.optionValues,
    );
  }

  ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item
  copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<double?>? type,
    Wrapped<
      List<
        ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
      >?
    >?
    optionValues,
  }) {
    return ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item(
      name: (name != null ? name.value : this.name),
      type: (type != null ? type.value : this.type),
      optionValues: (optionValues != null
          ? optionValues.value
          : this.optionValues),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$Item {
  const ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$Item({
    this.tagCode,
    this.tagImg,
  });

  factory ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$ItemToJson(
        this,
      );

  @JsonKey(name: 'tagCode', fromJson: JsonCoerce.asString)
  final String? tagCode;
  @JsonKey(name: 'tagImg', fromJson: JsonCoerce.asString)
  final String? tagImg;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$Item &&
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

extension $ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$ItemExtension
    on
        ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$Item {
  ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$Item
  copyWith({String? tagCode, String? tagImg}) {
    return ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagImg: tagImg ?? this.tagImg,
    );
  }

  ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$Item
  copyWithWrapped({Wrapped<String?>? tagCode, Wrapped<String?>? tagImg}) {
    return ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfo {
  const ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode', fromJson: JsonCoerce.asString)
  final String? brandCode;
  @JsonKey(name: 'brandImg', fromJson: JsonCoerce.asString)
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfo &&
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

extension $ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfoExtension
    on
        ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfo {
  ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$Item {
  const ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$Item({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$ItemToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asDouble)
  final double? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asDouble)
  final double? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$Item &&
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

extension $ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$ItemExtension
    on
        ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$Item {
  ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$Item
  copyWithWrapped({
    Wrapped<double?>? width,
    Wrapped<double?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$MainImg$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$Item {
  const ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$Item({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$ItemToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asDouble)
  final double? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asDouble)
  final double? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$Item &&
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

extension $ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$ItemExtension
    on
        ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$Item {
  ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$Item
  copyWithWrapped({
    Wrapped<double?>? width,
    Wrapped<double?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgCollection$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$Item {
  const ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$Item({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$ItemToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asDouble)
  final double? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asDouble)
  final double? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$Item &&
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

extension $ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$ItemExtension
    on
        ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$Item {
  ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$Item
  copyWithWrapped({
    Wrapped<double?>? width,
    Wrapped<double?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ImgDetail$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item {
  const ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item({
    this.name,
    this.type,
    this.optionValues,
  });

  factory ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$ItemToJson(
        this,
      );

  @JsonKey(name: 'name', fromJson: JsonCoerce.asString)
  final String? name;
  @JsonKey(name: 'type', fromJson: JsonCoerce.asDouble)
  final double? type;
  @JsonKey(name: 'optionValues')
  final List<
    ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
  >?
  optionValues;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item &&
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

extension $ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$ItemExtension
    on
        ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item {
  ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item
  copyWith({
    String? name,
    double? type,
    List<
      ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
    >?
    optionValues,
  }) {
    return ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item(
      name: name ?? this.name,
      type: type ?? this.type,
      optionValues: optionValues ?? this.optionValues,
    );
  }

  ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item
  copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<double?>? type,
    Wrapped<
      List<
        ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
      >?
    >?
    optionValues,
  }) {
    return ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item(
      name: (name != null ? name.value : this.name),
      type: (type != null ? type.value : this.type),
      optionValues: (optionValues != null
          ? optionValues.value
          : this.optionValues),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$Item {
  const ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$Item({
    this.tagCode,
    this.tagImg,
  });

  factory ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$ItemToJson(
        this,
      );

  @JsonKey(name: 'tagCode', fromJson: JsonCoerce.asString)
  final String? tagCode;
  @JsonKey(name: 'tagImg', fromJson: JsonCoerce.asString)
  final String? tagImg;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$Item &&
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

extension $ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$ItemExtension
    on
        ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$Item {
  ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$Item
  copyWith({String? tagCode, String? tagImg}) {
    return ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagImg: tagImg ?? this.tagImg,
    );
  }

  ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$Item
  copyWithWrapped({Wrapped<String?>? tagCode, Wrapped<String?>? tagImg}) {
    return ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfo {
  const ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode', fromJson: JsonCoerce.asString)
  final String? brandCode;
  @JsonKey(name: 'brandImg', fromJson: JsonCoerce.asString)
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfo &&
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

extension $ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfoExtension
    on
        ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfo {
  ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$Item {
  const ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$Item({
    this.value,
    this.image,
    this.imageWidth,
    this.imageHeight,
  });

  factory ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$ItemToJson(
        this,
      );

  @JsonKey(name: 'value', fromJson: JsonCoerce.asString)
  final String? value;
  @JsonKey(name: 'image', fromJson: JsonCoerce.asString)
  final String? image;
  @JsonKey(name: 'imageWidth')
  final Object? imageWidth;
  @JsonKey(name: 'imageHeight')
  final Object? imageHeight;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$Item &&
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

extension $ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$ItemExtension
    on
        ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$Item {
  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$Item
  copyWith({
    String? value,
    String? image,
    Object? imageWidth,
    Object? imageHeight,
  }) {
    return ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$Item(
      value: value ?? this.value,
      image: image ?? this.image,
      imageWidth: imageWidth ?? this.imageWidth,
      imageHeight: imageHeight ?? this.imageHeight,
    );
  }

  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$Item
  copyWithWrapped({
    Wrapped<String?>? value,
    Wrapped<String?>? image,
    Wrapped<Object?>? imageWidth,
    Wrapped<Object?>? imageHeight,
  }) {
    return ProductServiceProductNoAuthGetProductInfoGet$Response$Data$ProductOptions$Item$OptionValues$Item(
      value: (value != null ? value.value : this.value),
      image: (image != null ? image.value : this.image),
      imageWidth: (imageWidth != null ? imageWidth.value : this.imageWidth),
      imageHeight: (imageHeight != null ? imageHeight.value : this.imageHeight),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOption {
  const ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOption({
    this.name,
    this.value,
  });

  factory ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOption.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOptionFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOptionToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOptionToJson(
        this,
      );

  @JsonKey(name: 'name', fromJson: JsonCoerce.asString)
  final String? name;
  @JsonKey(name: 'value', fromJson: JsonCoerce.asString)
  final String? value;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOptionFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOption &&
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

extension $ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOptionExtension
    on
        ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOption {
  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOption
  copyWith({String? name, String? value}) {
    return ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOption(
      name: name ?? this.name,
      value: value ?? this.value,
    );
  }

  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOption
  copyWithWrapped({Wrapped<String?>? name, Wrapped<String?>? value}) {
    return ProductServiceProductNoAuthGetProductInfoGet$Response$Data$InspectImages$Item$SkuOption(
      name: (name != null ? name.value : this.name),
      value: (value != null ? value.value : this.value),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext$Brand {
  const ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext$Brand({
    this.brandTitle,
    this.brandName,
    this.background,
    this.qualityAssured,
    this.qualityAssuredUrl,
    this.deliverAssured,
  });

  factory ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext$Brand.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext$BrandFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext$BrandToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext$BrandToJson(
        this,
      );

  @JsonKey(name: 'brandTitle', fromJson: JsonCoerce.asString)
  final String? brandTitle;
  @JsonKey(name: 'brandName', fromJson: JsonCoerce.asString)
  final String? brandName;
  @JsonKey(name: 'background', fromJson: JsonCoerce.asString)
  final String? background;
  @JsonKey(name: 'qualityAssured', fromJson: JsonCoerce.asString)
  final String? qualityAssured;
  @JsonKey(name: 'qualityAssuredUrl', fromJson: JsonCoerce.asString)
  final String? qualityAssuredUrl;
  @JsonKey(name: 'deliverAssured', fromJson: JsonCoerce.asString)
  final String? deliverAssured;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext$BrandFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext$Brand &&
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

extension $ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext$BrandExtension
    on ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext$Brand {
  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext$Brand
  copyWith({
    String? brandTitle,
    String? brandName,
    String? background,
    String? qualityAssured,
    String? qualityAssuredUrl,
    String? deliverAssured,
  }) {
    return ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext$Brand(
      brandTitle: brandTitle ?? this.brandTitle,
      brandName: brandName ?? this.brandName,
      background: background ?? this.background,
      qualityAssured: qualityAssured ?? this.qualityAssured,
      qualityAssuredUrl: qualityAssuredUrl ?? this.qualityAssuredUrl,
      deliverAssured: deliverAssured ?? this.deliverAssured,
    );
  }

  ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext$Brand
  copyWithWrapped({
    Wrapped<String?>? brandTitle,
    Wrapped<String?>? brandName,
    Wrapped<String?>? background,
    Wrapped<String?>? qualityAssured,
    Wrapped<String?>? qualityAssuredUrl,
    Wrapped<String?>? deliverAssured,
  }) {
    return ProductServiceProductNoAuthGetProductInfoGet$Response$Data$Ext$Brand(
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
class ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$Item {
  const ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$Item({
    this.id,
    this.parentId,
    this.level,
    this.showOrder,
    this.name,
    this.iconUrl,
    this.categoryList,
    this.brands,
  });

  factory ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$ItemToJson(
        this,
      );

  @JsonKey(name: 'id', fromJson: JsonCoerce.asDouble)
  final double? id;
  @JsonKey(name: 'parentId', fromJson: JsonCoerce.asDouble)
  final double? parentId;
  @JsonKey(name: 'level', fromJson: JsonCoerce.asDouble)
  final double? level;
  @JsonKey(name: 'showOrder', fromJson: JsonCoerce.asDouble)
  final double? showOrder;
  @JsonKey(name: 'name', fromJson: JsonCoerce.asString)
  final String? name;
  @JsonKey(name: 'iconUrl', fromJson: JsonCoerce.asString)
  final String? iconUrl;
  @JsonKey(name: 'categoryList', defaultValue: <Object>[])
  final List<Object>? categoryList;
  @JsonKey(name: 'brands', defaultValue: <Object>[])
  final List<Object>? brands;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$Item &&
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

extension $ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$ItemExtension
    on
        ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$Item {
  ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$Item
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
    return ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$Item(
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

  ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$Item
  copyWithWrapped({
    Wrapped<double?>? id,
    Wrapped<double?>? parentId,
    Wrapped<double?>? level,
    Wrapped<double?>? showOrder,
    Wrapped<String?>? name,
    Wrapped<String?>? iconUrl,
    Wrapped<List<Object>?>? categoryList,
    Wrapped<List<Object>?>? brands,
  }) {
    return ProductServiceProductNoAuthPremierProductCategoryGet$Response$Data$CategoryList$Item$CategoryList$Item(
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
class ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Image {
  const ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Image({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Image.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$ImageFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$ImageToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$ImageToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asInt)
  final int? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asInt)
  final int? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$ImageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Image &&
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

extension $ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$ImageExtension
    on ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Image {
  ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Image
  copyWith({int? width, int? height, String? url}) {
    return ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Image(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Image
  copyWithWrapped({
    Wrapped<int?>? width,
    Wrapped<int?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Image(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$Item {
  const ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$Item({
    this.tagCode,
    this.tagImg,
  });

  factory ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$ItemToJson(
        this,
      );

  @JsonKey(name: 'tagCode', fromJson: JsonCoerce.asString)
  final String? tagCode;
  @JsonKey(name: 'tagImg', fromJson: JsonCoerce.asString)
  final String? tagImg;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$Item &&
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

extension $ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$ItemExtension
    on
        ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$Item {
  ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$Item
  copyWith({String? tagCode, String? tagImg}) {
    return ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagImg: tagImg ?? this.tagImg,
    );
  }

  ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$Item
  copyWithWrapped({Wrapped<String?>? tagCode, Wrapped<String?>? tagImg}) {
    return ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfo {
  const ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode', fromJson: JsonCoerce.asString)
  final String? brandCode;
  @JsonKey(name: 'brandImg', fromJson: JsonCoerce.asString)
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfo &&
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

extension $ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfoExtension
    on
        ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfo {
  ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSale {
  const ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSale({
    this.activityCode,
    this.activityTitle,
    this.startTime,
    this.endTime,
    this.progressPercent,
    this.progressText,
    this.marketingIcon,
    this.discountExpr,
  });

  factory ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSale.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSaleFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSaleToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSaleToJson(
        this,
      );

  @JsonKey(name: 'activityCode', fromJson: JsonCoerce.asString)
  final String? activityCode;
  @JsonKey(name: 'activityTitle', fromJson: JsonCoerce.asString)
  final String? activityTitle;
  @JsonKey(name: 'startTime', fromJson: JsonCoerce.asInt)
  final int? startTime;
  @JsonKey(name: 'endTime', fromJson: JsonCoerce.asInt)
  final int? endTime;
  @JsonKey(name: 'progressPercent', fromJson: JsonCoerce.asInt)
  final int? progressPercent;
  @JsonKey(name: 'progressText', fromJson: JsonCoerce.asString)
  final String? progressText;
  @JsonKey(name: 'marketingIcon', fromJson: JsonCoerce.asString)
  final String? marketingIcon;
  @JsonKey(name: 'discountExpr', fromJson: JsonCoerce.asString)
  final String? discountExpr;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSaleFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSale &&
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

extension $ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSaleExtension
    on
        ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSale {
  ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSale
  copyWith({
    String? activityCode,
    String? activityTitle,
    int? startTime,
    int? endTime,
    int? progressPercent,
    String? progressText,
    String? marketingIcon,
    String? discountExpr,
  }) {
    return ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSale(
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

  ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSale
  copyWithWrapped({
    Wrapped<String?>? activityCode,
    Wrapped<String?>? activityTitle,
    Wrapped<int?>? startTime,
    Wrapped<int?>? endTime,
    Wrapped<int?>? progressPercent,
    Wrapped<String?>? progressText,
    Wrapped<String?>? marketingIcon,
    Wrapped<String?>? discountExpr,
  }) {
    return ProductServiceProductNoAuthHotProductV2Get$Response$Data$Records$Item$FlashSale(
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
class ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Image {
  const ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Image({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Image.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$ImageFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$ImageToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$ImageToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asDouble)
  final double? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asDouble)
  final double? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$ImageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Image &&
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

extension $ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$ImageExtension
    on ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Image {
  ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Image
  copyWith({double? width, double? height, String? url}) {
    return ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Image(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Image
  copyWithWrapped({
    Wrapped<double?>? width,
    Wrapped<double?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Image(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$Item {
  const ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$Item({
    this.tagCode,
    this.tagImg,
    this.order,
    this.frontShow,
  });

  factory ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$ItemToJson(
        this,
      );

  @JsonKey(name: 'tagCode', fromJson: JsonCoerce.asString)
  final String? tagCode;
  @JsonKey(name: 'tagImg', fromJson: JsonCoerce.asString)
  final String? tagImg;
  @JsonKey(name: 'order', fromJson: JsonCoerce.asDouble)
  final double? order;
  @JsonKey(name: 'frontShow', fromJson: JsonCoerce.asDouble)
  final double? frontShow;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$Item &&
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

extension $ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$ItemExtension
    on
        ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$Item {
  ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$Item
  copyWith({
    String? tagCode,
    String? tagImg,
    double? order,
    double? frontShow,
  }) {
    return ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagImg: tagImg ?? this.tagImg,
      order: order ?? this.order,
      frontShow: frontShow ?? this.frontShow,
    );
  }

  ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$Item
  copyWithWrapped({
    Wrapped<String?>? tagCode,
    Wrapped<String?>? tagImg,
    Wrapped<double?>? order,
    Wrapped<double?>? frontShow,
  }) {
    return ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
      order: (order != null ? order.value : this.order),
      frontShow: (frontShow != null ? frontShow.value : this.frontShow),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfo {
  const ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode', fromJson: JsonCoerce.asString)
  final String? brandCode;
  @JsonKey(name: 'brandImg', fromJson: JsonCoerce.asString)
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfo &&
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

extension $ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfoExtension
    on
        ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfo {
  ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSale {
  const ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSale({
    this.activityCode,
    this.activityTitle,
    this.startTime,
    this.endTime,
    this.progressPercent,
    this.progressText,
    this.marketingIcon,
  });

  factory ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSale.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSaleFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSaleToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSaleToJson(
        this,
      );

  @JsonKey(name: 'activityCode', fromJson: JsonCoerce.asString)
  final String? activityCode;
  @JsonKey(name: 'activityTitle', fromJson: JsonCoerce.asString)
  final String? activityTitle;
  @JsonKey(name: 'startTime', fromJson: JsonCoerce.asInt)
  final int? startTime;
  @JsonKey(name: 'endTime', fromJson: JsonCoerce.asInt)
  final int? endTime;
  @JsonKey(name: 'progressPercent', fromJson: JsonCoerce.asInt)
  final int? progressPercent;
  @JsonKey(name: 'progressText', fromJson: JsonCoerce.asString)
  final String? progressText;
  @JsonKey(name: 'marketingIcon', fromJson: JsonCoerce.asString)
  final String? marketingIcon;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSaleFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSale &&
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

extension $ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSaleExtension
    on
        ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSale {
  ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSale
  copyWith({
    String? activityCode,
    String? activityTitle,
    int? startTime,
    int? endTime,
    int? progressPercent,
    String? progressText,
    String? marketingIcon,
  }) {
    return ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSale(
      activityCode: activityCode ?? this.activityCode,
      activityTitle: activityTitle ?? this.activityTitle,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      progressPercent: progressPercent ?? this.progressPercent,
      progressText: progressText ?? this.progressText,
      marketingIcon: marketingIcon ?? this.marketingIcon,
    );
  }

  ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSale
  copyWithWrapped({
    Wrapped<String?>? activityCode,
    Wrapped<String?>? activityTitle,
    Wrapped<int?>? startTime,
    Wrapped<int?>? endTime,
    Wrapped<int?>? progressPercent,
    Wrapped<String?>? progressText,
    Wrapped<String?>? marketingIcon,
  }) {
    return ProductServiceProductNoAuthHotProductV3Get$Response$Data$Records$Item$FlashSale(
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
class ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item {
  const ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item({
    this.value,
    this.image,
    this.imageWidth,
    this.imageHeight,
  });

  factory ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemToJson(
        this,
      );

  @JsonKey(name: 'value', fromJson: JsonCoerce.asString)
  final String? value;
  @JsonKey(name: 'image', fromJson: JsonCoerce.asString)
  final String? image;
  @JsonKey(name: 'imageWidth', fromJson: JsonCoerce.asDouble)
  final double? imageWidth;
  @JsonKey(name: 'imageHeight', fromJson: JsonCoerce.asDouble)
  final double? imageHeight;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item &&
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

extension $ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemExtension
    on
        ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item {
  ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
  copyWith({
    String? value,
    String? image,
    double? imageWidth,
    double? imageHeight,
  }) {
    return ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item(
      value: value ?? this.value,
      image: image ?? this.image,
      imageWidth: imageWidth ?? this.imageWidth,
      imageHeight: imageHeight ?? this.imageHeight,
    );
  }

  ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
  copyWithWrapped({
    Wrapped<String?>? value,
    Wrapped<String?>? image,
    Wrapped<double?>? imageWidth,
    Wrapped<double?>? imageHeight,
  }) {
    return ProductServiceProductNoAuthFlashSaleProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item(
      value: (value != null ? value.value : this.value),
      image: (image != null ? image.value : this.image),
      imageWidth: (imageWidth != null ? imageWidth.value : this.imageWidth),
      imageHeight: (imageHeight != null ? imageHeight.value : this.imageHeight),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$Item {
  const ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$Item({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$ItemToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asDouble)
  final double? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asDouble)
  final double? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$Item &&
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

extension $ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$ItemExtension
    on
        ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$Item {
  ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$Item
  copyWithWrapped({
    Wrapped<double?>? width,
    Wrapped<double?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$MainImg$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$Item {
  const ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$Item({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$ItemToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asDouble)
  final double? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asDouble)
  final double? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$Item &&
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

extension $ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$ItemExtension
    on
        ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$Item {
  ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$Item
  copyWithWrapped({
    Wrapped<double?>? width,
    Wrapped<double?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgCollection$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$Item {
  const ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$Item({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$ItemToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asDouble)
  final double? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asDouble)
  final double? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$Item &&
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

extension $ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$ItemExtension
    on
        ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$Item {
  ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$Item
  copyWithWrapped({
    Wrapped<double?>? width,
    Wrapped<double?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ImgDetail$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item {
  const ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item({
    this.name,
    this.type,
    this.optionValues,
  });

  factory ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$ItemToJson(
        this,
      );

  @JsonKey(name: 'name', fromJson: JsonCoerce.asString)
  final String? name;
  @JsonKey(name: 'type', fromJson: JsonCoerce.asDouble)
  final double? type;
  @JsonKey(name: 'optionValues')
  final List<
    ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
  >?
  optionValues;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item &&
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

extension $ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$ItemExtension
    on
        ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item {
  ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item
  copyWith({
    String? name,
    double? type,
    List<
      ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
    >?
    optionValues,
  }) {
    return ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item(
      name: name ?? this.name,
      type: type ?? this.type,
      optionValues: optionValues ?? this.optionValues,
    );
  }

  ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item
  copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<double?>? type,
    Wrapped<
      List<
        ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
      >?
    >?
    optionValues,
  }) {
    return ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item(
      name: (name != null ? name.value : this.name),
      type: (type != null ? type.value : this.type),
      optionValues: (optionValues != null
          ? optionValues.value
          : this.optionValues),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$Item {
  const ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$Item({
    this.tagCode,
    this.tagImg,
  });

  factory ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$ItemToJson(
        this,
      );

  @JsonKey(name: 'tagCode', fromJson: JsonCoerce.asString)
  final String? tagCode;
  @JsonKey(name: 'tagImg', fromJson: JsonCoerce.asString)
  final String? tagImg;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$Item &&
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

extension $ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$ItemExtension
    on
        ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$Item {
  ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$Item
  copyWith({String? tagCode, String? tagImg}) {
    return ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagImg: tagImg ?? this.tagImg,
    );
  }

  ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$Item
  copyWithWrapped({Wrapped<String?>? tagCode, Wrapped<String?>? tagImg}) {
    return ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfo {
  const ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode', fromJson: JsonCoerce.asString)
  final String? brandCode;
  @JsonKey(name: 'brandImg', fromJson: JsonCoerce.asString)
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfo &&
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

extension $ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfoExtension
    on
        ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfo {
  ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$Image {
  const ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$Image({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$Image.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$ImageFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$ImageToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$ImageToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asInt)
  final int? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asInt)
  final int? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$ImageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$Image &&
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

extension $ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$ImageExtension
    on ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$Image {
  ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$Image
  copyWith({int? width, int? height, String? url}) {
    return ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$Image(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$Image
  copyWithWrapped({
    Wrapped<int?>? width,
    Wrapped<int?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$Image(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfo {
  const ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode', fromJson: JsonCoerce.asString)
  final String? brandCode;
  @JsonKey(name: 'brandImg', fromJson: JsonCoerce.asString)
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfo &&
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

extension $ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfoExtension
    on
        ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfo {
  ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ProductServiceShopNoAuthGetThirdShopGet$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item {
  const ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item({
    this.value,
    this.image,
    this.imageWidth,
    this.imageHeight,
  });

  factory ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemToJson(
        this,
      );

  @JsonKey(name: 'value', fromJson: JsonCoerce.asString)
  final String? value;
  @JsonKey(name: 'image', fromJson: JsonCoerce.asString)
  final String? image;
  @JsonKey(name: 'imageWidth', fromJson: JsonCoerce.asDouble)
  final double? imageWidth;
  @JsonKey(name: 'imageHeight', fromJson: JsonCoerce.asDouble)
  final double? imageHeight;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item &&
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

extension $ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$ItemExtension
    on
        ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item {
  ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
  copyWith({
    String? value,
    String? image,
    double? imageWidth,
    double? imageHeight,
  }) {
    return ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item(
      value: value ?? this.value,
      image: image ?? this.image,
      imageWidth: imageWidth ?? this.imageWidth,
      imageHeight: imageHeight ?? this.imageHeight,
    );
  }

  ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item
  copyWithWrapped({
    Wrapped<String?>? value,
    Wrapped<String?>? image,
    Wrapped<double?>? imageWidth,
    Wrapped<double?>? imageHeight,
  }) {
    return ProductServiceProductNoAuthKolProductGet$Response$Data$Item$ProductOptions$Item$OptionValues$Item(
      value: (value != null ? value.value : this.value),
      image: (image != null ? image.value : this.image),
      imageWidth: (imageWidth != null ? imageWidth.value : this.imageWidth),
      imageHeight: (imageHeight != null ? imageHeight.value : this.imageHeight),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$Item {
  const ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$Item({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$ItemToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asDouble)
  final double? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asDouble)
  final double? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$Item &&
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

extension $ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$ItemExtension
    on
        ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$Item {
  ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$Item
  copyWithWrapped({
    Wrapped<double?>? width,
    Wrapped<double?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$MainImg$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$Item {
  const ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$Item({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$ItemToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asDouble)
  final double? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asDouble)
  final double? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$Item &&
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

extension $ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$ItemExtension
    on
        ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$Item {
  ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$Item
  copyWithWrapped({
    Wrapped<double?>? width,
    Wrapped<double?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgCollection$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$Item {
  const ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$Item({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$ItemToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asDouble)
  final double? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asDouble)
  final double? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$Item &&
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

extension $ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$ItemExtension
    on
        ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$Item {
  ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$Item
  copyWith({double? width, double? height, String? url}) {
    return ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$Item(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$Item
  copyWithWrapped({
    Wrapped<double?>? width,
    Wrapped<double?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ImgDetail$Item(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item {
  const ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item({
    this.name,
    this.type,
    this.optionValues,
  });

  factory ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$ItemToJson(
        this,
      );

  @JsonKey(name: 'name', fromJson: JsonCoerce.asString)
  final String? name;
  @JsonKey(name: 'type', fromJson: JsonCoerce.asDouble)
  final double? type;
  @JsonKey(name: 'optionValues')
  final List<
    ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
  >?
  optionValues;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item &&
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

extension $ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$ItemExtension
    on
        ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item {
  ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item
  copyWith({
    String? name,
    double? type,
    List<
      ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
    >?
    optionValues,
  }) {
    return ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item(
      name: name ?? this.name,
      type: type ?? this.type,
      optionValues: optionValues ?? this.optionValues,
    );
  }

  ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item
  copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<double?>? type,
    Wrapped<
      List<
        ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
      >?
    >?
    optionValues,
  }) {
    return ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item(
      name: (name != null ? name.value : this.name),
      type: (type != null ? type.value : this.type),
      optionValues: (optionValues != null
          ? optionValues.value
          : this.optionValues),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$Item {
  const ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$Item({
    this.tagCode,
    this.tagImg,
  });

  factory ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$ItemToJson(
        this,
      );

  @JsonKey(name: 'tagCode', fromJson: JsonCoerce.asString)
  final String? tagCode;
  @JsonKey(name: 'tagImg', fromJson: JsonCoerce.asString)
  final String? tagImg;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$Item &&
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

extension $ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$ItemExtension
    on
        ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$Item {
  ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$Item
  copyWith({String? tagCode, String? tagImg}) {
    return ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagImg: tagImg ?? this.tagImg,
    );
  }

  ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$Item
  copyWithWrapped({Wrapped<String?>? tagCode, Wrapped<String?>? tagImg}) {
    return ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfo {
  const ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode', fromJson: JsonCoerce.asString)
  final String? brandCode;
  @JsonKey(name: 'brandImg', fromJson: JsonCoerce.asString)
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfo &&
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

extension $ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfoExtension
    on
        ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfo {
  ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item {
  const ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item({
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
    this.premiumBrandInfo,
  });

  factory ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$ItemToJson(
        this,
      );

  @JsonKey(name: 'productCode', fromJson: JsonCoerce.asString)
  final String? productCode;
  @JsonKey(name: 'productName', fromJson: JsonCoerce.asString)
  final String? productName;
  @JsonKey(name: 'image')
  final ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$Image?
  image;
  @JsonKey(name: 'sourcePlatform', fromJson: JsonCoerce.asString)
  final String? sourcePlatform;
  @JsonKey(name: 'platformProductId', fromJson: JsonCoerce.asString)
  final String? platformProductId;
  @JsonKey(name: 'skuCode', fromJson: JsonCoerce.asString)
  final String? skuCode;
  @JsonKey(name: 'sellPriceCur', fromJson: JsonCoerce.asString)
  final String? sellPriceCur;
  @JsonKey(name: 'sellPrice', fromJson: JsonCoerce.asString)
  final String? sellPrice;
  @JsonKey(name: 'targetSellPrice', fromJson: JsonCoerce.asString)
  final String? targetSellPrice;
  @JsonKey(name: 'targetOriginPrice', fromJson: JsonCoerce.asString)
  final String? targetOriginPrice;
  @JsonKey(name: 'targetSellCur', fromJson: JsonCoerce.asString)
  final String? targetSellCur;
  @JsonKey(name: 'sellQuantity', fromJson: JsonCoerce.asString)
  final String? sellQuantity;
  @JsonKey(name: 'skuCount', fromJson: JsonCoerce.asDouble)
  final double? skuCount;
  @JsonKey(name: 'marketingInfo', fromJson: JsonCoerce.asString)
  final String? marketingInfo;
  @JsonKey(name: 'tags', defaultValue: <Object>[])
  final List<Object>? tags;
  @JsonKey(name: 'premiumBrandInfo')
  final ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfo?
  premiumBrandInfo;
  static const fromJsonFactory =
      _$ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item &&
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

extension $ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$ItemExtension
    on
        ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item {
  ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item
  copyWith({
    String? productCode,
    String? productName,
    ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$Image?
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
    ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfo?
    premiumBrandInfo,
  }) {
    return ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item(
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

  ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item
  copyWithWrapped({
    Wrapped<String?>? productCode,
    Wrapped<String?>? productName,
    Wrapped<
      ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$Image?
    >?
    image,
    Wrapped<String?>? sourcePlatform,
    Wrapped<String?>? platformProductId,
    Wrapped<String?>? skuCode,
    Wrapped<String?>? sellPriceCur,
    Wrapped<String?>? sellPrice,
    Wrapped<String?>? targetSellPrice,
    Wrapped<String?>? targetOriginPrice,
    Wrapped<String?>? targetSellCur,
    Wrapped<String?>? sellQuantity,
    Wrapped<double?>? skuCount,
    Wrapped<String?>? marketingInfo,
    Wrapped<List<Object>?>? tags,
    Wrapped<
      ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfo?
    >?
    premiumBrandInfo,
  }) {
    return ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item(
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
class ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Image {
  const ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Image({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Image.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$ImageFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$ImageToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$ImageToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asInt)
  final int? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asInt)
  final int? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$ImageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Image &&
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

extension $ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$ImageExtension
    on ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Image {
  ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Image
  copyWith({int? width, int? height, String? url}) {
    return ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Image(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Image
  copyWithWrapped({
    Wrapped<int?>? width,
    Wrapped<int?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Image(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$Item {
  const ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$Item({
    this.tagCode,
    this.tagImg,
  });

  factory ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$ItemToJson(
        this,
      );

  @JsonKey(name: 'tagCode', fromJson: JsonCoerce.asString)
  final String? tagCode;
  @JsonKey(name: 'tagImg', fromJson: JsonCoerce.asString)
  final String? tagImg;
  static const fromJsonFactory =
      _$ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$Item &&
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

extension $ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$ItemExtension
    on ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$Item {
  ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$Item
  copyWith({String? tagCode, String? tagImg}) {
    return ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagImg: tagImg ?? this.tagImg,
    );
  }

  ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$Item
  copyWithWrapped({Wrapped<String?>? tagCode, Wrapped<String?>? tagImg}) {
    return ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfo {
  const ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode', fromJson: JsonCoerce.asString)
  final String? brandCode;
  @JsonKey(name: 'brandImg', fromJson: JsonCoerce.asString)
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfo &&
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

extension $ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfoExtension
    on
        ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfo {
  ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ProductServiceRecommendNoAuthCategoryPost$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Image {
  const ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Image({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Image.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$ImageFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$ImageToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$ImageToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asInt)
  final int? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asInt)
  final int? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$ImageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Image &&
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

extension $ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$ImageExtension
    on ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Image {
  ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Image
  copyWith({int? width, int? height, String? url}) {
    return ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Image(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Image
  copyWithWrapped({
    Wrapped<int?>? width,
    Wrapped<int?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Image(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Tags$Item {
  const ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Tags$Item({
    this.tagCode,
    this.tagImg,
  });

  factory ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Tags$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Tags$ItemToJson(
        this,
      );

  @JsonKey(name: 'tagCode', fromJson: JsonCoerce.asString)
  final String? tagCode;
  @JsonKey(name: 'tagImg', fromJson: JsonCoerce.asString)
  final String? tagImg;
  static const fromJsonFactory =
      _$ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Tags$Item &&
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

extension $ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Tags$ItemExtension
    on ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Tags$Item {
  ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Tags$Item
  copyWith({String? tagCode, String? tagImg}) {
    return ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagImg: tagImg ?? this.tagImg,
    );
  }

  ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Tags$Item
  copyWithWrapped({Wrapped<String?>? tagCode, Wrapped<String?>? tagImg}) {
    return ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfo {
  const ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode', fromJson: JsonCoerce.asString)
  final String? brandCode;
  @JsonKey(name: 'brandImg', fromJson: JsonCoerce.asString)
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfo &&
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

extension $ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfoExtension
    on
        ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfo {
  ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ProductServiceRecommendNoAuthShopPost$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Image {
  const ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Image({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Image.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$ImageFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$ImageToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$ImageToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asInt)
  final int? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asInt)
  final int? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$ImageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Image &&
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

extension $ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$ImageExtension
    on
        ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Image {
  ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Image
  copyWith({int? width, int? height, String? url}) {
    return ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Image(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Image
  copyWithWrapped({
    Wrapped<int?>? width,
    Wrapped<int?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Image(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$Item {
  const ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$Item({
    this.tagCode,
    this.tagImg,
  });

  factory ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$ItemToJson(
        this,
      );

  @JsonKey(name: 'tagCode', fromJson: JsonCoerce.asString)
  final String? tagCode;
  @JsonKey(name: 'tagImg', fromJson: JsonCoerce.asString)
  final String? tagImg;
  static const fromJsonFactory =
      _$ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$Item &&
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

extension $ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$ItemExtension
    on
        ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$Item {
  ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$Item
  copyWith({String? tagCode, String? tagImg}) {
    return ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$Item(
      tagCode: tagCode ?? this.tagCode,
      tagImg: tagImg ?? this.tagImg,
    );
  }

  ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$Item
  copyWithWrapped({Wrapped<String?>? tagCode, Wrapped<String?>? tagImg}) {
    return ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$Tags$Item(
      tagCode: (tagCode != null ? tagCode.value : this.tagCode),
      tagImg: (tagImg != null ? tagImg.value : this.tagImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfo {
  const ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode', fromJson: JsonCoerce.asString)
  final String? brandCode;
  @JsonKey(name: 'brandImg', fromJson: JsonCoerce.asString)
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfo &&
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

extension $ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfoExtension
    on
        ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfo {
  ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ProductServiceRecommendNoAuthSimilarProductPost$Response$Data$Records$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item {
  const ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item({
    this.id,
    this.name,
    this.iconUrl,
    this.parentId,
    this.level,
  });

  factory ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$ItemToJson(
        this,
      );

  @JsonKey(name: 'id', fromJson: JsonCoerce.asDouble)
  final double? id;
  @JsonKey(name: 'name', fromJson: JsonCoerce.asString)
  final String? name;
  @JsonKey(name: 'iconUrl', fromJson: JsonCoerce.asString)
  final String? iconUrl;
  @JsonKey(name: 'parentId', fromJson: JsonCoerce.asDouble)
  final double? parentId;
  @JsonKey(name: 'level', fromJson: JsonCoerce.asDouble)
  final double? level;
  static const fromJsonFactory =
      _$ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item &&
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

extension $ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$ItemExtension
    on
        ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item {
  ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item
  copyWith({
    double? id,
    String? name,
    String? iconUrl,
    double? parentId,
    double? level,
  }) {
    return ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item(
      id: id ?? this.id,
      name: name ?? this.name,
      iconUrl: iconUrl ?? this.iconUrl,
      parentId: parentId ?? this.parentId,
      level: level ?? this.level,
    );
  }

  ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item
  copyWithWrapped({
    Wrapped<double?>? id,
    Wrapped<String?>? name,
    Wrapped<String?>? iconUrl,
    Wrapped<double?>? parentId,
    Wrapped<double?>? level,
  }) {
    return ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item(
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
      iconUrl: (iconUrl != null ? iconUrl.value : this.iconUrl),
      parentId: (parentId != null ? parentId.value : this.parentId),
      level: (level != null ? level.value : this.level),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item {
  const ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item({
    this.value,
    this.image,
    this.imageWidth,
    this.imageHeight,
  });

  factory ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemToJson(
        this,
      );

  @JsonKey(name: 'value', fromJson: JsonCoerce.asString)
  final String? value;
  @JsonKey(name: 'image', fromJson: JsonCoerce.asString)
  final String? image;
  @JsonKey(name: 'imageWidth')
  final Object? imageWidth;
  @JsonKey(name: 'imageHeight')
  final Object? imageHeight;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item &&
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

extension $ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemExtension
    on
        ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item {
  ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
  copyWith({
    String? value,
    String? image,
    Object? imageWidth,
    Object? imageHeight,
  }) {
    return ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item(
      value: value ?? this.value,
      image: image ?? this.image,
      imageWidth: imageWidth ?? this.imageWidth,
      imageHeight: imageHeight ?? this.imageHeight,
    );
  }

  ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
  copyWithWrapped({
    Wrapped<String?>? value,
    Wrapped<String?>? image,
    Wrapped<Object?>? imageWidth,
    Wrapped<Object?>? imageHeight,
  }) {
    return ProductServiceProductNoAuthCombineSearchGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item(
      value: (value != null ? value.value : this.value),
      image: (image != null ? image.value : this.image),
      imageWidth: (imageWidth != null ? imageWidth.value : this.imageWidth),
      imageHeight: (imageHeight != null ? imageHeight.value : this.imageHeight),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item {
  const ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item({
    this.value,
    this.image,
    this.imageWidth,
    this.imageHeight,
  });

  factory ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemToJson(
        this,
      );

  @JsonKey(name: 'value', fromJson: JsonCoerce.asString)
  final String? value;
  @JsonKey(name: 'image')
  final Object? image;
  @JsonKey(name: 'imageWidth')
  final Object? imageWidth;
  @JsonKey(name: 'imageHeight')
  final Object? imageHeight;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item &&
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

extension $ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemExtension
    on
        ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item {
  ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
  copyWith({
    String? value,
    Object? image,
    Object? imageWidth,
    Object? imageHeight,
  }) {
    return ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item(
      value: value ?? this.value,
      image: image ?? this.image,
      imageWidth: imageWidth ?? this.imageWidth,
      imageHeight: imageHeight ?? this.imageHeight,
    );
  }

  ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
  copyWithWrapped({
    Wrapped<String?>? value,
    Wrapped<Object?>? image,
    Wrapped<Object?>? imageWidth,
    Wrapped<Object?>? imageHeight,
  }) {
    return ProductServiceProductNoAuthNewArrivalProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item(
      value: (value != null ? value.value : this.value),
      image: (image != null ? image.value : this.image),
      imageWidth: (imageWidth != null ? imageWidth.value : this.imageWidth),
      imageHeight: (imageHeight != null ? imageHeight.value : this.imageHeight),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item {
  const ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item({
    this.value,
    this.image,
    this.imageWidth,
    this.imageHeight,
  });

  factory ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemToJson(
        this,
      );

  @JsonKey(name: 'value', fromJson: JsonCoerce.asString)
  final String? value;
  @JsonKey(name: 'image')
  final Object? image;
  @JsonKey(name: 'imageWidth')
  final Object? imageWidth;
  @JsonKey(name: 'imageHeight')
  final Object? imageHeight;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item &&
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

extension $ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemExtension
    on
        ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item {
  ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
  copyWith({
    String? value,
    Object? image,
    Object? imageWidth,
    Object? imageHeight,
  }) {
    return ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item(
      value: value ?? this.value,
      image: image ?? this.image,
      imageWidth: imageWidth ?? this.imageWidth,
      imageHeight: imageHeight ?? this.imageHeight,
    );
  }

  ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
  copyWithWrapped({
    Wrapped<String?>? value,
    Wrapped<Object?>? image,
    Wrapped<Object?>? imageWidth,
    Wrapped<Object?>? imageHeight,
  }) {
    return ProductServiceProductNoAuthAlbumProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item(
      value: (value != null ? value.value : this.value),
      image: (image != null ? image.value : this.image),
      imageWidth: (imageWidth != null ? imageWidth.value : this.imageWidth),
      imageHeight: (imageHeight != null ? imageHeight.value : this.imageHeight),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item {
  const ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item({
    this.value,
    this.image,
    this.imageWidth,
    this.imageHeight,
  });

  factory ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemToJson(
        this,
      );

  @JsonKey(name: 'value', fromJson: JsonCoerce.asString)
  final String? value;
  @JsonKey(name: 'image')
  final Object? image;
  @JsonKey(name: 'imageWidth')
  final Object? imageWidth;
  @JsonKey(name: 'imageHeight')
  final Object? imageHeight;
  static const fromJsonFactory =
      _$ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item &&
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

extension $ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$ItemExtension
    on
        ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item {
  ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
  copyWith({
    String? value,
    Object? image,
    Object? imageWidth,
    Object? imageHeight,
  }) {
    return ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item(
      value: value ?? this.value,
      image: image ?? this.image,
      imageWidth: imageWidth ?? this.imageWidth,
      imageHeight: imageHeight ?? this.imageHeight,
    );
  }

  ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item
  copyWithWrapped({
    Wrapped<String?>? value,
    Wrapped<Object?>? image,
    Wrapped<Object?>? imageWidth,
    Wrapped<Object?>? imageHeight,
  }) {
    return ProductServiceProductNoAuthPremierProductGet$Response$Data$Records$Item$ProductOptions$Item$OptionValues$Item(
      value: (value != null ? value.value : this.value),
      image: (image != null ? image.value : this.image),
      imageWidth: (imageWidth != null ? imageWidth.value : this.imageWidth),
      imageHeight: (imageHeight != null ? imageHeight.value : this.imageHeight),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$Image {
  const ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$Image({
    this.width,
    this.height,
    this.url,
  });

  factory ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$Image.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$ImageFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$ImageToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$ImageToJson(
        this,
      );

  @JsonKey(name: 'width', fromJson: JsonCoerce.asDouble)
  final double? width;
  @JsonKey(name: 'height', fromJson: JsonCoerce.asDouble)
  final double? height;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$ImageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$Image &&
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

extension $ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$ImageExtension
    on
        ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$Image {
  ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$Image
  copyWith({double? width, double? height, String? url}) {
    return ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$Image(
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$Image
  copyWithWrapped({
    Wrapped<double?>? width,
    Wrapped<double?>? height,
    Wrapped<String?>? url,
  }) {
    return ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$Image(
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfo {
  const ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfo({
    this.brandCode,
    this.brandImg,
  });

  factory ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfoToJson;
  Map<String, dynamic> toJson() =>
      _$ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfoToJson(
        this,
      );

  @JsonKey(name: 'brandCode', fromJson: JsonCoerce.asString)
  final String? brandCode;
  @JsonKey(name: 'brandImg', fromJson: JsonCoerce.asString)
  final String? brandImg;
  static const fromJsonFactory =
      _$ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfo &&
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

extension $ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfoExtension
    on
        ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfo {
  ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfo
  copyWith({String? brandCode, String? brandImg}) {
    return ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfo(
      brandCode: brandCode ?? this.brandCode,
      brandImg: brandImg ?? this.brandImg,
    );
  }

  ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfo
  copyWithWrapped({Wrapped<String?>? brandCode, Wrapped<String?>? brandImg}) {
    return ProductServiceRecommendNoAuthCategoryRecommendationGet$Response$Data$Categories$Item$ProductInfos$Item$PremiumBrandInfo(
      brandCode: (brandCode != null ? brandCode.value : this.brandCode),
      brandImg: (brandImg != null ? brandImg.value : this.brandImg),
    );
  }
}

String?
productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSortNullableToJson(
  enums.ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort?
  productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort,
) {
  return productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort
      ?.value;
}

String?
productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSortToJson(
  enums.ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort
  productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort,
) {
  return productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort
      .value;
}

enums.ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort
productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSortFromJson(
  Object?
  productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort, [
  enums.ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort?
  defaultValue,
]) {
  return enums
          .ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort
          .values
          .firstWhereOrNull(
            (e) =>
                e.value ==
                productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort,
          ) ??
      defaultValue ??
      enums
          .ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort
          .swaggerGeneratedUnknown;
}

enums.ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort?
productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSortNullableFromJson(
  Object?
  productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort, [
  enums.ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort?
  defaultValue,
]) {
  if (productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort ==
      null) {
    return null;
  }
  return enums
          .ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort
          .values
          .firstWhereOrNull(
            (e) =>
                e.value ==
                productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort,
          ) ??
      defaultValue;
}

String
productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSortExplodedListToJson(
  List<
    enums.ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort
  >?
  productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort,
) {
  return productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String>
productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSortListToJson(
  List<
    enums.ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort
  >?
  productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort,
) {
  if (productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort ==
      null) {
    return [];
  }

  return productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort
      .map((e) => e.value!)
      .toList();
}

List<
  enums.ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort
>
productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSortListFromJson(
  List?
  productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort, [
  List<
    enums.ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort
  >?
  defaultValue,
]) {
  if (productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort ==
      null) {
    return defaultValue ?? [];
  }

  return productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort
      .map(
        (e) =>
            productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSortFromJson(
              e.toString(),
            ),
      )
      .toList();
}

List<
  enums.ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort
>?
productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSortNullableListFromJson(
  List?
  productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort, [
  List<
    enums.ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort
  >?
  defaultValue,
]) {
  if (productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort ==
      null) {
    return defaultValue;
  }

  return productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort
      .map(
        (e) =>
            productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSortFromJson(
              e.toString(),
            ),
      )
      .toList();
}

String?
productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrderNullableToJson(
  enums.ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder?
  productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder,
) {
  return productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder
      ?.value;
}

String?
productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrderToJson(
  enums.ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder
  productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder,
) {
  return productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder
      .value;
}

enums.ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder
productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrderFromJson(
  Object?
  productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder, [
  enums.ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder?
  defaultValue,
]) {
  return enums
          .ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder
          .values
          .firstWhereOrNull(
            (e) =>
                e.value ==
                productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder,
          ) ??
      defaultValue ??
      enums
          .ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder
          .swaggerGeneratedUnknown;
}

enums.ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder?
productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrderNullableFromJson(
  Object?
  productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder, [
  enums.ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder?
  defaultValue,
]) {
  if (productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder ==
      null) {
    return null;
  }
  return enums
          .ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder
          .values
          .firstWhereOrNull(
            (e) =>
                e.value ==
                productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder,
          ) ??
      defaultValue;
}

String
productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrderExplodedListToJson(
  List<
    enums.ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder
  >?
  productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder,
) {
  return productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String>
productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrderListToJson(
  List<
    enums.ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder
  >?
  productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder,
) {
  if (productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder ==
      null) {
    return [];
  }

  return productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder
      .map((e) => e.value!)
      .toList();
}

List<
  enums.ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder
>
productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrderListFromJson(
  List?
  productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder, [
  List<
    enums.ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder
  >?
  defaultValue,
]) {
  if (productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder ==
      null) {
    return defaultValue ?? [];
  }

  return productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder
      .map(
        (e) =>
            productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrderFromJson(
              e.toString(),
            ),
      )
      .toList();
}

List<
  enums.ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder
>?
productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrderNullableListFromJson(
  List?
  productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder, [
  List<
    enums.ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder
  >?
  defaultValue,
]) {
  if (productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder ==
      null) {
    return defaultValue;
  }

  return productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder
      .map(
        (e) =>
            productServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrderFromJson(
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
