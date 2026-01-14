import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/error/api_error.dart';
import '../api/generated/swaggerApiProduct.swagger.dart' as product;
import '../api/generated/swaggerApiProduct.enums.swagger.dart' as enums;
import '../api/swagger_client.dart';

class ProductListResponse {
  const ProductListResponse({
    required this.products,
    required this.total,
    required this.hasMore,
  });

  final List<ProductItem> products;
  final int total;
  final bool hasMore;
}

class ProductItem {
  const ProductItem({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    this.originalPrice,
    this.currency,
    this.images,
    this.sales,
    this.stock,
    this.tags,
    this.brandName,
    this.categoryId,
    this.categoryName,
    this.rating,
    this.reviewCount,
    this.skuCode,
    this.recommendedSkuCode,
    this.discount,
    this.flashSaleStartTimeMillis,
    this.flashSaleEndTimeMillis,
    this.flashSaleActivityCode,
  });

  final String id;
  final String name;
  final double price;
  final double? originalPrice;
  final String? currency;
  final String imageUrl;
  final List<String>? images;
  final int? sales;
  final int? stock;
  final List<String>? tags;
  final String? brandName;
  final String? categoryId;
  final String? categoryName;
  final double? rating;
  final int? reviewCount;
  final String? skuCode;
  final String? recommendedSkuCode;
  final String? discount;
  final int? flashSaleStartTimeMillis;
  final int? flashSaleEndTimeMillis;
  final String? flashSaleActivityCode;
}

class CategoryItem {
  const CategoryItem({
    required this.id,
    required this.name,
    this.iconUrl,
    this.parentId,
    this.level,
    this.children,
    this.brands,
  });

  final String id;
  final String name;
  final String? iconUrl;
  final String? parentId;
  final int? level;
  final List<CategoryItem>? children;
  final List<String>? brands;
}

class PremiumDupeCategory {
  const PremiumDupeCategory({
    required this.id,
    required this.name,
    this.count,
    this.imageUrl,
  });

  final String id;
  final String name;
  final int? count;
  final String? imageUrl;
}

class PremiumDupeProduct {
  const PremiumDupeProduct({
    required this.id,
    required this.name,
    required this.price,
    required this.currency,
    required this.imageUrl,
    this.originalPrice,
    this.sales,
    this.marketingInfo,
    this.premiumBrandInfo,
  });

  final String id;
  final String name;
  final double price;
  final double? originalPrice;
  final String currency;
  final String imageUrl;
  final String? sales;
  final String? marketingInfo;
  final Map<String, dynamic>? premiumBrandInfo;
}

class PremiumDupePage {
  const PremiumDupePage({
    required this.products,
    required this.total,
    required this.pageSize,
    required this.totalPages,
    required this.current,
  });

  final List<PremiumDupeProduct> products;
  final int total;
  final int pageSize;
  final int totalPages;
  final int current;
}

class PremiumDupePageParams {
  const PremiumDupePageParams({
    this.current,
    this.pageSize,
    this.categoryId,
    this.sort,
    this.order,
    this.productCode,
  });

  final int? current;
  final int? pageSize;
  final int? categoryId;
  final String? sort;
  final String? order;
  final String? productCode;
}

class ProductOptionValue {
  const ProductOptionValue({required this.value, this.image});

  final String value;
  final String? image;
}

class ProductOption {
  const ProductOption({
    required this.name,
    required this.type,
    required this.values,
  });

  final String name;
  final int type;
  final List<ProductOptionValue> values;
}

class ProductAttribute {
  const ProductAttribute({required this.name, required this.value});

  final String name;
  final String value;
}

class ProductSku {
  const ProductSku({
    required this.code,
    required this.productCode,
    required this.price,
    required this.options,
    this.imageUrl,
    this.originalPrice,
    this.currency,
    this.targetCurrency,
    this.length,
    this.width,
    this.height,
    this.weight,
    this.estimateUnitFreight,
    this.marketingInfo,
    this.sourceCode,
    this.externalUrl,
  });

  final String code;
  final String productCode;
  final String? imageUrl;
  final double price;
  final double? originalPrice;
  final String? currency;
  final String? targetCurrency;
  final Map<String, String> options;
  final String? length;
  final String? width;
  final String? height;
  final String? weight;
  final String? estimateUnitFreight;
  final String? marketingInfo;
  final String? sourceCode;
  final String? externalUrl;
}

class ProductDetail {
  const ProductDetail({
    required this.id,
    required this.name,
    required this.images,
    required this.detailImages,
    required this.options,
    required this.attributes,
    required this.price,
    this.brandName,
    this.shopCode,
    this.categoryId,
    this.description,
    this.htmlDetail,
    this.videoUrls,
    this.tags,
    this.originalPrice,
    this.currency,
    this.recommendedSkuCode,
    this.sellQuantity,
    this.sourcePlatform,
    this.sourceProductUrl,
    this.sizeHelperOptionName,
    this.sizeHelperType,
  });

  final String id;
  final String name;
  final String? brandName;
  final String? shopCode;
  final String? categoryId;
  final String? description;
  final String? htmlDetail;
  final List<String> images;
  final List<String> detailImages;
  final List<String>? videoUrls;
  final List<String>? tags;
  final List<ProductOption> options;
  final List<ProductAttribute> attributes;
  final double price;
  final double? originalPrice;
  final String? currency;
  final String? recommendedSkuCode;
  final int? sellQuantity;
  final String? sourcePlatform;
  final String? sourceProductUrl;
  final String? sizeHelperOptionName;
  final int? sizeHelperType;
}

class ProductReview {
  const ProductReview({
    required this.id,
    required this.userId,
    required this.userName,
    required this.rating,
    required this.content,
    required this.createdAt,
    this.userAvatar,
    this.images,
    this.helpfulCount,
    this.specInfo,
  });

  final String id;
  final String userId;
  final String userName;
  final String? userAvatar;
  final int rating;
  final String content;
  final List<String>? images;
  final String createdAt;
  final int? helpfulCount;
  final String? specInfo;
}

class ProductReviewSummary {
  const ProductReviewSummary({
    required this.averageRating,
    required this.totalReviews,
    required this.ratingDistribution,
    required this.positiveRate,
    this.aiSummary,
    this.featuredReviews = const [],
  });

  final double averageRating;
  final int totalReviews;
  final List<ProductReviewDistribution> ratingDistribution;
  final int positiveRate;
  final String? aiSummary;
  final List<ProductReview> featuredReviews;
}

class ProductReviewDistribution {
  const ProductReviewDistribution({
    required this.rating,
    required this.count,
    required this.percentage,
  });

  final int rating;
  final int count;
  final int percentage;
}

class FlashSaleActivity {
  const FlashSaleActivity({
    required this.id,
    required this.title,
    required this.startTime,
    required this.endTime,
    required this.status, // 1: upcoming, 2: ongoing, 3: ended
    this.banner,
  });

  final String id;
  final String title;
  final String startTime;
  final String endTime;
  final int status;
  final String? banner;
}

class ProductListParams {
  const ProductListParams({
    this.page,
    this.pageSize,
    this.categoryId,
    this.brandId,
    this.sortBy,
    this.sortOrder,
    this.productCode,
  });

  final int? page;
  final int? pageSize;
  final String? categoryId;
  final String? brandId;
  final String? sortBy;
  final String? sortOrder;
  final String? productCode;
}

class CategoryProductsParams {
  const CategoryProductsParams({
    this.page,
    this.pageSize,
    required this.categoryId,
    this.brandName,
    this.sortBy,
    this.sortOrder,
  });

  final int? page;
  final int? pageSize;
  final String categoryId;
  final String? brandName;
  final String? sortBy;
  final String? sortOrder;
}

class CategoryRecommendParams {
  const CategoryRecommendParams({
    this.page,
    this.pageSize,
    this.categoryId,
    this.categoryIds,
    this.brandName,
    this.sortBy,
    this.sortOrder,
    this.productCode,
  });

  final int? page;
  final int? pageSize;
  final String? categoryId;
  final List<String>? categoryIds;
  final String? brandName;
  final String? sortBy;
  final String? sortOrder;
  final String? productCode;
}

class SearchProductsParams {
  const SearchProductsParams({
    this.query,
    this.page,
    this.pageSize,
    this.categoryId,
    this.minPrice,
    this.maxPrice,
    this.filterProductType,
    this.sort,
    this.order,
    this.brandName,
  });

  final String? query;
  final int? page;
  final int? pageSize;
  final String? categoryId;
  final double? minPrice;
  final double? maxPrice;
  final String? filterProductType;
  final String? sort;
  final String? order;
  final String? brandName;
}

class ProductRepository {
  ProductRepository(this._ref);

  final Ref _ref;

  ApiError _createApiError(String message, Object? raw) {
    return ApiError(status: 400, message: message, raw: raw);
  }

  Future<ProductListResponse> getHotProductsV2({
    ProductListParams? params,
  }) async {
    final api = _ref.read(swaggerProductApiProvider);

    final response = await api.productServiceProductNoAuthHotProductV2Get(
      current: (params?.page ?? 1).toString(),
      size: (params?.pageSize ?? 20).toString(),
      categoryId: params?.categoryId,
    );

    if (!response.isSuccessful || response.body == null) {
      throw _createApiError('获取热门商品失败', {
        'statusCode': response.statusCode,
        'error': response.error,
      });
    }

    final body = response.body!;
    final code = body.code ?? -1;
    final message = body.message ?? '';
    if (code != 0) {
      throw _createApiError(message.isNotEmpty ? message : '获取热门商品失败', body);
    }

    final data = body.data;
    final records = data?.records ?? const [];
    if (records.isEmpty) {
      return const ProductListResponse(products: [], total: 0, hasMore: false);
    }

    final products = records.map((item) {
      final tagCodes = (item.tags ?? const [])
          .map((t) => t.tagCode)
          .whereType<String>()
          .map((t) => t.trim())
          .where((t) => t.isNotEmpty)
          .toList();
      final imageUrl = item.image?.url ?? '';
      return ProductItem(
        id: item.productCode ?? '',
        skuCode: item.skuCode,
        recommendedSkuCode: item.skuCode,
        name: item.productName ?? '',
        price: _parsePrice(item.targetSellPrice),
        originalPrice: _parseOptionalPrice(item.targetOriginPrice),
        currency: item.targetSellCur ?? '',
        imageUrl: imageUrl,
        images: imageUrl.isNotEmpty ? [imageUrl] : const [],
        sales: _parseInt(item.sellQuantity),
        tags: tagCodes.isEmpty ? null : tagCodes,
        rating: _parsePrice(item.rate) > 0
            ? _parsePrice(item.rate)
            : _getMockRating(item.productCode ?? ''),
      );
    }).toList();

    final total = data?.total?.toInt() ?? 0;
    final current = data?.current?.toInt() ?? 0;
    final pageSizeValue = data?.pageSize?.toInt() ?? 0;

    return ProductListResponse(
      products: products,
      total: total,
      hasMore: current * pageSizeValue < total,
    );
  }

  Future<ProductListResponse> getHotProductsV3({
    ProductListParams? params,
  }) async {
    final api = _ref.read(swaggerProductApiProvider);

    final response = await api.productServiceProductNoAuthHotProductV3Get(
      current: (params?.page ?? 1).toString(),
      size: (params?.pageSize ?? 20).toString(),
    );

    if (!response.isSuccessful || response.body == null) {
      throw _createApiError('获取热门商品V3失败', {
        'statusCode': response.statusCode,
        'error': response.error,
      });
    }

    final body = response.body!;
    final code = body.code ?? -1;
    final message = body.message ?? '';
    if (code != 0) {
      throw _createApiError(message.isNotEmpty ? message : '获取热门商品V3失败', body);
    }

    final data = body.data;
    final records = data?.records ?? const [];
    if (records.isEmpty) {
      return const ProductListResponse(products: [], total: 0, hasMore: false);
    }

    final products = records.map((item) {
      final tagCodes = (item.tags ?? const [])
          .map((t) => t.tagCode)
          .whereType<String>()
          .map((t) => t.trim())
          .where((t) => t.isNotEmpty)
          .toList();
      final imageUrl = item.image?.url ?? '';

      // Map imgCollection from the new V3 field
      final imgCollection = (item.imgCollection ?? const [])
          .map((img) => img.url)
          .whereType<String>()
          .where((url) => url.isNotEmpty)
          .toList();

      // Use imgCollection if available, otherwise fallback to main image
      final images = imgCollection.isNotEmpty
          ? imgCollection
          : (imageUrl.isNotEmpty ? [imageUrl] : const <String>[]);

      return ProductItem(
        id: item.productCode ?? '',
        skuCode: item.skuCode,
        recommendedSkuCode: item.skuCode,
        name: item.productName ?? '',
        price: _parsePrice(item.targetSellPrice),
        originalPrice: _parseOptionalPrice(item.targetOriginPrice),
        currency: item.targetSellCur ?? '',
        imageUrl: imageUrl,
        images: images,
        sales: _parseInt(item.sellQuantity),
        tags: tagCodes.isEmpty ? null : tagCodes,
        rating: _parsePrice(item.rate) > 0
            ? _parsePrice(item.rate)
            : _getMockRating(item.productCode ?? ''),
        discount: item.marketingInfo,
      );
    }).toList();

    final total = data?.total?.toInt() ?? 0;
    final current = data?.current?.toInt() ?? 0;
    final pageSizeValue = data?.pageSize?.toInt() ?? 0;

    return ProductListResponse(
      products: products,
      total: total,
      hasMore: current * pageSizeValue < total,
    );
  }

  Future<ProductListResponse> getFlashSaleProducts({
    ProductListParams? params,
  }) async {
    final api = _ref.read(swaggerProductApiProvider);

    final response = await api.productServiceProductNoAuthFlashSaleProductGet(
      current: (params?.page ?? 1).toString(),
      size: (params?.pageSize ?? 10).toString(),
    );

    if (!response.isSuccessful || response.body == null) {
      throw _createApiError('获取特价商品失败', {
        'statusCode': response.statusCode,
        'error': response.error,
      });
    }

    final body = response.body!;
    final code = body.code?.toInt() ?? -1;
    if (code != 0) {
      throw _createApiError(body.message ?? '获取特价商品失败', body);
    }

    final dataList = body.data ?? const [];
    if (dataList.isEmpty) {
      return const ProductListResponse(products: [], total: 0, hasMore: false);
    }

    final products = dataList.map((item) {
      final imageUrls = (item.mainImg ?? const [])
          .map((img) => img.url)
          .whereType<String>()
          .map((u) => u.trim())
          .where((u) => u.isNotEmpty)
          .toList();
      final tagCodes = (item.tags ?? const [])
          .map((t) => t.tagCode)
          .whereType<String>()
          .map((t) => t.trim())
          .where((t) => t.isNotEmpty)
          .toList();

      return ProductItem(
        id: item.productCode ?? '',
        skuCode: item.skuCode,
        recommendedSkuCode: item.skuCode,
        name: item.productName ?? '',
        price: _parsePrice(item.targetSellPrice),
        originalPrice: _parsePrice(item.sellPrice),
        currency: item.targetSellCur ?? '',
        imageUrl: imageUrls.isNotEmpty ? imageUrls.first : '',
        images: imageUrls,
        sales: _parseInt(item.sellQuantity),
        brandName: item.brandName,
        categoryId: (item.categoryId ?? '').toString(),
        tags: tagCodes.isEmpty ? null : tagCodes,
        rating: _getMockRating(item.productCode ?? ''),
        discount: item.marketingInfo,
      );
    }).toList();

    return ProductListResponse(
      products: products,
      total: products.length,
      hasMore: false,
    );
  }

  Future<List<FlashSaleActivity>> getFlashSaleActivities() async {
    final api = _ref.read(swaggerProductApiProvider);

    final response = await api
        .productServiceActivityNoAuthFlashSaleActivityGet();

    if (!response.isSuccessful || response.body == null) {
      throw _createApiError('获取秒杀活动失败', {
        'statusCode': response.statusCode,
        'error': response.error,
      });
    }

    final body = response.body!;
    final code = body.code?.toInt() ?? -1;
    if (code != 0) {
      throw _createApiError(body.message ?? '获取秒杀活动失败', body);
    }

    final activities = body.data?.activities ?? const [];
    return activities
        .map((item) {
          final id = item.activityCode ?? '';
          final title = item.title ?? '';
          if (id.isEmpty || title.isEmpty) return null;
          return FlashSaleActivity(
            id: id,
            title: title,
            startTime: item.startTime?.toString() ?? '',
            endTime: item.endTime?.toString() ?? '',
            status: _parseInt(item.status),
            banner: body.data?.pic,
          );
        })
        .whereType<FlashSaleActivity>()
        .toList();
  }

  Future<ProductListResponse> getFlashSaleActivityProducts(
    String activityId, {
    String? categoryName,
    String? productCode,
    int page = 1,
    int pageSize = 20,
  }) async {
    final api = _ref.read(swaggerProductApiProvider);
    final response = await api
        .productServiceActivityNoAuthFlashSaleActivityProductGet(
          activityCode: activityId,
          name: categoryName,
          productCode: productCode,
          current: page.toString(),
          size: pageSize.toString(),
        );

    if (!response.isSuccessful || response.body == null) {
      throw _createApiError('获取秒杀商品失败', {
        'statusCode': response.statusCode,
        'error': response.error,
      });
    }

    final body = response.body!;
    final code = int.tryParse(body.code ?? '') ?? -1;
    if (code != 0) {
      final message = body.message ?? '';
      throw _createApiError(message.isNotEmpty ? message : '获取秒杀商品失败', body);
    }

    final data = body.data;
    final records = data?.records ?? const [];
    if (records.isEmpty) {
      return const ProductListResponse(products: [], total: 0, hasMore: false);
    }

    final products = records.map((item) {
      final tagCodes = (item.tags ?? const [])
          .map((t) => t.tagCode)
          .whereType<String>()
          .map((t) => t.trim())
          .where((t) => t.isNotEmpty)
          .toList();
      final imageUrl = item.image?.url ?? '';
      return ProductItem(
        id: item.productCode ?? '',
        skuCode: item.skuCode,
        name: item.productName ?? '',
        price: _parsePrice(item.targetSellPrice),
        originalPrice: _parseOptionalPrice(item.targetOriginPrice),
        currency: item.targetSellCur ?? '',
        imageUrl: imageUrl,
        images: imageUrl.isNotEmpty ? [imageUrl] : const [],
        sales: _parseInt(item.sellQuantity),
        tags: tagCodes.isEmpty ? null : tagCodes,
        stock: null,
        rating: _getMockRating(item.productCode ?? ''),
        discount: item.marketingInfo,
      );
    }).toList();

    final total = data?.total ?? 0;
    final current = data?.current ?? 0;
    final pageSizeValue = data?.pageSize ?? 0;

    return ProductListResponse(
      products: products,
      total: total,
      hasMore: current * pageSizeValue < total,
    );
  }

  Future<ProductListResponse> getPremierProducts({
    ProductListParams? params,
  }) async {
    final api = _ref.read(swaggerProductApiProvider);
    final response = await api.productServiceProductNoAuthPremierProductGet(
      pageNum: (params?.page ?? 1).toString(),
      pageSize: (params?.pageSize ?? 10).toString(),
      categoryId: params?.categoryId,
    );

    final body = response.body;
    if (body == null) {
      throw _createApiError('获取优选商品失败', response.error);
    }
    if (_parseInt(body.code) != 0) {
      throw _createApiError(body.message ?? '获取优选商品失败', body);
    }

    final data = body.data;
    final records = data?.records ?? const [];
    if (records.isEmpty) {
      return const ProductListResponse(products: [], total: 0, hasMore: false);
    }

    final total = data?.total?.toInt() ?? 0;
    final pageSizeValue = data?.pageSize?.toInt() ?? (params?.pageSize ?? 10);
    final current = data?.current?.toInt() ?? (params?.page ?? 1);

    final products = records.map((item) {
      final imageUrls = (item.mainImg ?? const [])
          .map((img) => img.url)
          .whereType<String>()
          .map((u) => u.trim())
          .where((u) => u.isNotEmpty)
          .toList();
      final tagCodes = (item.tags ?? const [])
          .map((t) => t.tagCode)
          .whereType<String>()
          .map((t) => t.trim())
          .where((t) => t.isNotEmpty)
          .toList();

      return ProductItem(
        id: item.productCode ?? '',
        skuCode: item.skuCode,
        recommendedSkuCode: item.skuCode,
        name: item.productName ?? '',
        price: _parsePrice(item.targetSellPrice ?? item.sellPrice),
        originalPrice: _parseOptionalPrice(item.targetOriginPrice),
        currency: item.targetSellCur ?? item.sellPriceCur,
        imageUrl: imageUrls.isNotEmpty ? imageUrls.first : '',
        images: imageUrls,
        sales: _parseInt(item.sellQuantity),
        tags: tagCodes.isEmpty ? null : tagCodes,
        brandName: item.brandName?.toString(),
        categoryId: item.categoryId?.toInt().toString(),
        rating: _getMockRating(item.productCode ?? ''),
      );
    }).toList();

    return ProductListResponse(
      products: products,
      total: total,
      hasMore: current * pageSizeValue < total,
    );
  }

  Future<List<CategoryItem>> getProductCategories() async {
    final api = _ref.read(swaggerProductApiProvider);
    final response = await api.productServiceCategoryNoAuthTreeGet();

    final body = response.body;
    if (body == null) {
      throw _createApiError('获取分类列表失败', response.error);
    }
    if (_parseInt(body.code) != 0) {
      throw _createApiError(body.message ?? '获取分类列表失败', body);
    }

    final categoryList = body.data?.categoryList ?? const [];
    if (categoryList.isEmpty) return [];

    return categoryList
        .map(_mapCategoryLevel1)
        .whereType<CategoryItem>()
        .toList();
  }

  Future<ProductListResponse> getCategoryProducts(
    CategoryProductsParams params,
  ) async {
    if (params.categoryId.isEmpty) {
      throw _createApiError('categoryId is required', params);
    }

    final api = _ref.read(swaggerProductApiProvider);
    final response = await api.productServiceRecommendNoAuthCategoryPost(
      root: product.ProductServiceRecommendNoAuthCategoryPostRequest(
        current: params.page ?? 1,
        pageSize: params.pageSize ?? 20,
        categoryId: int.tryParse(params.categoryId),
        brandName: params.brandName,
        sortedField: params.sortBy == null
            ? null
            : product.ProductServiceRecommendNoAuthCategoryPostRequest$SortedField(
                name: params.sortBy,
                order: (params.sortOrder ?? 'asc').toUpperCase(),
              ),
      ),
    );

    final body = response.body;
    if (body == null) {
      throw _createApiError('获取分类商品失败', response.error);
    }
    if (_parseInt(body.code) != 0) {
      throw _createApiError(body.message ?? '获取分类商品失败', body);
    }

    final data = body.data;
    final records = data?.records ?? const [];
    if (records.isEmpty) {
      return const ProductListResponse(products: [], total: 0, hasMore: false);
    }

    final total = _parseInt(data?.total);
    final pageSizeValue = _parseInt(
      data?.pageSize,
      fallback: params.pageSize ?? 20,
    );
    final current = _parseInt(data?.current, fallback: params.page ?? 1);

    final products = records.map((item) {
      final imageUrl = item.image?.url ?? '';
      final tagCodes = (item.tags ?? const [])
          .map((t) => t.tagCode)
          .whereType<String>()
          .map((t) => t.trim())
          .where((t) => t.isNotEmpty)
          .toList();

      return ProductItem(
        id: item.productCode ?? item.skuCode ?? '',
        skuCode: item.skuCode,
        recommendedSkuCode: item.skuCode,
        name: item.productName ?? '',
        price: _parsePrice(item.targetSellPrice ?? item.sellPrice),
        originalPrice: null,
        currency: item.targetSellCur ?? item.sellPriceCur ?? 'USD',
        imageUrl: imageUrl,
        images: imageUrl.isNotEmpty ? [imageUrl] : const [],
        sales: _parseInt(item.sellQuantity),
        tags: tagCodes.isEmpty ? null : tagCodes,
        categoryId: params.categoryId,
        rating: _getMockRating(item.productCode ?? item.skuCode ?? ''),
      );
    }).toList();

    return ProductListResponse(
      products: products,
      total: total,
      hasMore: current * pageSizeValue < total,
    );
  }

  Future<ProductListResponse> getCategoryRecommendProducts(
    CategoryRecommendParams params,
  ) async {
    final categoryId = params.categoryId == null
        ? null
        : int.tryParse(params.categoryId!);
    final categoryIds = params.categoryIds
        ?.map(int.tryParse)
        .whereType<int>()
        .toList();

    final api = _ref.read(swaggerProductApiProvider);
    final response = await api.productServiceRecommendNoAuthCategoryPost(
      root: product.ProductServiceRecommendNoAuthCategoryPostRequest(
        current: params.page ?? 1,
        pageSize: params.pageSize ?? 20,
        categoryId: categoryId,
        categoryIds: categoryId == null
            ? categoryIds?.map((e) => e.toDouble()).toList()
            : null,
        brandName: params.brandName,
        productCode: params.productCode,
        sortedField: params.sortBy == null
            ? null
            : product.ProductServiceRecommendNoAuthCategoryPostRequest$SortedField(
                name: params.sortBy,
                order: (params.sortOrder ?? 'asc').toUpperCase(),
              ),
      ),
    );

    final body = response.body;
    if (body == null) {
      throw _createApiError('获取分类推荐商品失败', response.error);
    }
    if (_parseInt(body.code) != 0) {
      throw _createApiError(body.message ?? '获取分类推荐商品失败', body);
    }

    final data = body.data;
    final records = data?.records ?? const [];
    if (records.isEmpty) {
      return const ProductListResponse(products: [], total: 0, hasMore: false);
    }

    final total = _parseInt(data?.total);
    final pageSizeValue = _parseInt(
      data?.pageSize,
      fallback: params.pageSize ?? 20,
    );
    final current = _parseInt(data?.current, fallback: params.page ?? 1);

    final products = records.map((item) {
      final imageUrl = item.image?.url ?? '';
      final tagCodes = (item.tags ?? const [])
          .map((t) => t.tagCode)
          .whereType<String>()
          .map((t) => t.trim())
          .where((t) => t.isNotEmpty)
          .toList();

      return ProductItem(
        id: item.productCode ?? item.skuCode ?? '',
        skuCode: item.skuCode,
        recommendedSkuCode: item.skuCode,
        name: item.productName ?? '',
        price: _parsePrice(item.targetSellPrice ?? item.sellPrice),
        originalPrice: null,
        currency: item.targetSellCur ?? item.sellPriceCur ?? 'USD',
        imageUrl: imageUrl,
        images: imageUrl.isNotEmpty ? [imageUrl] : const [],
        sales: _parseInt(item.sellQuantity),
        tags: tagCodes.isEmpty ? null : tagCodes,
        categoryId: params.categoryId,
        rating: _getMockRating(item.productCode ?? item.skuCode ?? ''),
      );
    }).toList();

    return ProductListResponse(
      products: products,
      total: total,
      hasMore: current * pageSizeValue < total,
    );
  }

  Future<List<PremiumDupeProduct>> getPremiumDupeSelection() async {
    final api = _ref.read(swaggerProductApiProvider);

    final response = await api
        .productServiceProductPremiumDupeNoAuthSelectionGet();

    if (!response.isSuccessful || response.body == null) {
      throw _createApiError('获取精选平替商品失败', {
        'statusCode': response.statusCode,
        'error': response.error,
      });
    }

    final body = response.body!;
    final code = body.code ?? -1;
    if (code != 0) {
      throw _createApiError(body.message ?? '获取精选平替商品失败', body);
    }

    final data = body.data ?? const [];
    if (data.isEmpty) return [];

    return data.map((item) {
      final premiumBrandInfo = item.premiumBrandInfo;
      return PremiumDupeProduct(
        id: item.productCode ?? '',
        name: item.productName ?? '',
        price: _parsePrice(item.targetSellPrice ?? item.sellPrice),
        originalPrice: _parseOptionalPrice(item.targetOriginPrice),
        currency: item.targetSellCur ?? item.sellPriceCur ?? 'USD',
        imageUrl: item.image?.url ?? '',
        sales: item.sellQuantity,
        marketingInfo: item.marketingInfo,
        premiumBrandInfo: premiumBrandInfo == null
            ? null
            : {
                'brandCode': premiumBrandInfo.brandCode,
                'brandImg': premiumBrandInfo.brandImg,
              },
      );
    }).toList();
  }

  Future<List<PremiumDupeCategory>> getPremiumDupeMeta() async {
    final api = _ref.read(swaggerProductApiProvider);

    final response = await api.productServiceProductPremiumDupeNoAuthMetaGet();

    if (!response.isSuccessful || response.body == null) {
      throw _createApiError('获取平替分类失败', {
        'statusCode': response.statusCode,
        'error': response.error,
      });
    }

    final body = response.body!;
    final code = body.code ?? -1;
    if (code != 0) {
      throw _createApiError(body.message ?? '获取平替分类失败', body);
    }

    final categories = body.data?.categories ?? const [];
    if (categories.isEmpty) return [];

    return categories
        .map((item) {
          return PremiumDupeCategory(
            id: item.categoryId?.toString() ?? '',
            name: item.categoryName ?? '',
            count: item.count ?? 0,
            imageUrl: item.categoryImage,
          );
        })
        .where((item) => item.id.isNotEmpty && item.name.isNotEmpty)
        .toList();
  }

  Future<PremiumDupePage> getPremiumDupePage(
    PremiumDupePageParams params,
  ) async {
    final api = _ref.read(swaggerProductApiProvider);

    final response = await api.productServiceProductPremiumDupeNoAuthPagePost(
      root: product.ProductServiceProductPremiumDupeNoAuthPagePostRequest(
        current: params.current ?? 1,
        pageSize: params.pageSize ?? 20,
        categoryId: params.categoryId,
        sort: params.sort == null
            ? null
            : enums
                  .ProductServiceProductPremiumDupeNoAuthPagePostRequestSort
                  .values
                  .firstWhere(
                    (e) => e.value == params.sort,
                    orElse: () => enums
                        .ProductServiceProductPremiumDupeNoAuthPagePostRequestSort
                        .swaggerGeneratedUnknown,
                  ),
        order: params.order == null
            ? null
            : enums
                  .ProductServiceProductPremiumDupeNoAuthPagePostRequestOrder
                  .values
                  .firstWhere(
                    (e) => e.value == params.order,
                    orElse: () => enums
                        .ProductServiceProductPremiumDupeNoAuthPagePostRequestOrder
                        .swaggerGeneratedUnknown,
                  ),
        productCode: params.productCode,
      ),
    );

    if (!response.isSuccessful || response.body == null) {
      throw _createApiError('获取平替商品失败', {
        'statusCode': response.statusCode,
        'error': response.error,
      });
    }

    final body = response.body!;
    final code = body.code ?? -1;
    if (code != 0) {
      throw _createApiError(body.message ?? '获取平替商品失败', body);
    }

    final data = body.data;
    final records = data?.records ?? const [];
    final products = records.map((item) {
      final premiumBrandInfo = item.premiumBrandInfo;
      return PremiumDupeProduct(
        id: item.productCode ?? '',
        name: item.productName ?? '',
        price: _parsePrice(item.targetSellPrice ?? item.sellPrice),
        originalPrice: _parseOptionalPrice(item.targetOriginPrice),
        currency: item.targetSellCur ?? item.sellPriceCur ?? 'USD',
        imageUrl: item.image?.url ?? '',
        sales: item.sellQuantity,
        marketingInfo: item.marketingInfo,
        premiumBrandInfo: premiumBrandInfo == null
            ? null
            : {
                'brandCode': premiumBrandInfo.brandCode,
                'brandImg': premiumBrandInfo.brandImg,
              },
      );
    }).toList();

    return PremiumDupePage(
      products: products,
      total: data?.total ?? 0,
      pageSize: data?.pageSize ?? (params.pageSize ?? 20),
      totalPages: data?.totalPages ?? 0,
      current: data?.current ?? (params.current ?? 1),
    );
  }

  Future<ProductListResponse> searchProducts(
    SearchProductsParams params,
  ) async {
    final api = _ref.read(swaggerProductApiProvider);
    final response = await api.productServiceProductNoAuthCombineSearchGet(
      query: params.query,
      current: (params.page ?? 1).toString(),
      pageSize: (params.pageSize ?? 20).toString(),
      categoryId: params.categoryId,
      minPriceBegin: params.minPrice?.toString(),
      minPriceEnd: params.maxPrice?.toString(),
      filterProductType: params.filterProductType ?? '1',
    );

    final body = response.body;
    if (body == null) {
      throw _createApiError('搜索失败', response.error);
    }
    if (_parseInt(body.code) != 0) {
      throw _createApiError(body.message ?? '搜索失败', body);
    }

    final data = body.data;
    final records = data?.records ?? const [];
    if (records.isEmpty) {
      return const ProductListResponse(products: [], total: 0, hasMore: false);
    }

    final total = data?.total?.toInt() ?? 0;
    final pageSizeValue = data?.pageSize?.toInt() ?? (params.pageSize ?? 20);
    final current = data?.current?.toInt() ?? (params.page ?? 1);

    final products = records.map((item) {
      final imageUrls = (item.mainImg ?? const [])
          .map((img) => img.url)
          .whereType<String>()
          .map((u) => u.trim())
          .where((u) => u.isNotEmpty)
          .toList();
      final tagCodes = (item.tags ?? const [])
          .map((t) => t.tagCode)
          .whereType<String>()
          .map((t) => t.trim())
          .where((t) => t.isNotEmpty)
          .toList();
      return ProductItem(
        id: item.productCode ?? '',
        skuCode: item.skuCode,
        recommendedSkuCode: item.skuCode,
        name: item.productName ?? '',
        price: _parsePrice(item.targetSellPrice ?? item.sellPrice),
        originalPrice: null,
        currency: item.targetSellCur ?? item.sellPriceCur,
        imageUrl: imageUrls.isNotEmpty ? imageUrls.first : '',
        images: imageUrls,
        sales: _parseInt(item.sellQuantity),
        brandName: item.brandName,
        categoryId: item.categoryId?.toInt().toString(),
        tags: tagCodes.isEmpty ? null : tagCodes,
        rating: _getMockRating(item.productCode ?? ''),
      );
    }).toList();

    return ProductListResponse(
      products: products,
      total: total,
      hasMore: current * pageSizeValue < total,
    );
  }

  Future<ProductDetail> getProductDetail(String productCode) async {
    if (productCode.isEmpty) {
      throw _createApiError('productCode is required to fetch product detail', {
        'productCode': productCode,
      });
    }

    final api = _ref.read(swaggerProductApiProvider);
    final response = await api.productServiceProductNoAuthGetProductInfoGet(
      productCode: productCode,
    );

    final body = response.body;
    if (body == null) {
      throw _createApiError('获取商品详情失败', response.error);
    }
    if (_parseInt(body.code) != 0 || body.data == null) {
      throw _createApiError(body.message ?? '获取商品详情失败', body);
    }

    final data = body.data!;
    final mainImages = (data.mainImg ?? const [])
        .map((img) => img.url)
        .whereType<String>()
        .toList();
    final collectionImages = (data.imgCollection ?? const [])
        .map((img) => img.url)
        .whereType<String>()
        .toList();
    final subImages = _splitComma(data.subImg);
    final detailImages = (data.imgDetail ?? const [])
        .map((img) => img.url)
        .whereType<String>()
        .toList();
    final gallery = {
      ...mainImages,
      ...collectionImages,
      ...subImages,
    }.where((url) => url.isNotEmpty).toList();

    final options = (data.productOptions ?? const [])
        .map((option) {
          final name = option.name;
          if (name == null || name.isEmpty) {
            return null;
          }

          final values = (option.optionValues ?? const [])
              .map((value) {
                final valueText = value.value;
                if (valueText == null || valueText.isEmpty) {
                  return null;
                }
                return ProductOptionValue(value: valueText, image: value.image);
              })
              .whereType<ProductOptionValue>()
              .toList();

          if (values.isEmpty) {
            return null;
          }
          return ProductOption(
            name: name,
            type: _parseInt(option.type),
            values: values,
          );
        })
        .whereType<ProductOption>()
        .toList();

    final attributes = (data.productAttrs ?? const [])
        .map((attr) {
          final name = attr.name;
          final value = attr.value;
          if (name == null || value == null || name.isEmpty || value.isEmpty) {
            return null;
          }
          return ProductAttribute(name: name, value: value);
        })
        .whereType<ProductAttribute>()
        .toList();

    final tags = (data.tags ?? const [])
        .map((tag) => tag.tagName ?? tag.tagCode)
        .whereType<String>()
        .map((t) => t.trim())
        .where((t) => t.isNotEmpty)
        .toList();

    final videoUrls = (data.mainVideo ?? const [])
        .map((video) => video.videoUrl)
        .whereType<String>()
        .map((t) => t.trim())
        .where((t) => t.isNotEmpty)
        .toList();

    return ProductDetail(
      id: data.productCode ?? productCode,
      name: data.productName ?? '',
      brandName: data.brandName,
      shopCode: data.shopCode,
      categoryId: data.categoryId?.toInt().toString(),
      description: data.textDetail,
      htmlDetail: data.textDetail,
      images: gallery.isNotEmpty ? gallery : detailImages,
      detailImages: detailImages,
      videoUrls: videoUrls.isEmpty ? null : videoUrls,
      tags: tags.isEmpty ? null : tags,
      options: options,
      attributes: attributes,
      price: _parsePrice(data.targetSellPrice ?? data.sellPrice),
      originalPrice: _parseOptionalPrice(data.targetOriginPrice),
      currency: data.targetSellCur ?? data.sellPriceCur,
      recommendedSkuCode: data.skuCode,
      sellQuantity: _parseOptionalInt(data.sellQuantity),
      sourcePlatform: data.sourcePlatform,
      sourceProductUrl: data.platformUrl,
      sizeHelperOptionName: data.ext?.sizeHelperOptionName,
      sizeHelperType: _parseOptionalInt(data.ext?.sizeHelperType),
    );
  }

  Future<List<ProductSku>> getProductSkus(String productCode) async {
    if (productCode.isEmpty) {
      throw _createApiError(
        'productCode is required to fetch product sku list',
        {'productCode': productCode},
      );
    }

    final api = _ref.read(swaggerProductApiProvider);
    final response = await api.productServiceProductNoAuthSkuListGet(
      productCode: productCode,
    );

    final body = response.body;
    if (body == null) {
      throw _createApiError('获取商品SKU失败', response.error);
    }
    if (_parseInt(body.code) != 0) {
      throw _createApiError(body.message ?? '获取商品SKU失败', body);
    }

    final dataList = body.data ?? const [];
    if (dataList.isEmpty) return [];

    return dataList.map((item) {
      final options = <String, String>{};
      for (final option in item.skuOptions ?? const []) {
        final name = option.name;
        final value = option.value;
        if (name != null && value != null) {
          options[name] = value;
        }
      }

      return ProductSku(
        code: item.skuCode ?? '',
        productCode: item.productCode ?? productCode,
        imageUrl: item.skuImg?.url,
        price: _parsePrice(item.targetSellPrice ?? item.sellPrice),
        originalPrice: _parseOptionalPrice(item.targetOriginPrice),
        currency: item.targetSellCur ?? item.sellCur ?? 'USD',
        targetCurrency: item.targetSellCur,
        options: options,
        length: item.length,
        width: item.width,
        height: item.height,
        weight: item.weight,
        estimateUnitFreight: item.estimateUnitFreight,
        marketingInfo: item.marketingInfo,
        sourceCode: item.skuSourceCode,
        externalUrl: item.extUrl,
      );
    }).toList();
  }

  Future<({List<ProductReview> reviews, int total, bool hasMore})>
  getProductReviews(
    String productCode, {
    int page = 1,
    int pageSize = 10,
  }) async {
    if (productCode.isEmpty) {
      throw _createApiError(
        'productCode is required to fetch product reviews',
        {'productCode': productCode},
      );
    }

    final api = _ref.read(swaggerProductApiProvider);
    final response = await api.productServiceProductReviewNoAuthPageGet(
      productCode: productCode,
      current: page.toString(),
      size: pageSize.toString(),
      root: null,
    );

    final body = response.body;
    if (body == null) {
      final errorDetail = response.error?.toString() ?? 'Unknown error';
      throw _createApiError('获取商品评论失败 ($errorDetail)', response.error);
    }
    if (_parseInt(body.code) != 0) {
      throw _createApiError(body.message ?? '获取商品评论失败', body);
    }

    final data = body.data;
    final records = data?.records ?? const [];
    if (records.isEmpty) {
      return (reviews: <ProductReview>[], total: 0, hasMore: false);
    }

    final reviews = records.map((item) {
      final images = (item.images ?? const [])
          .whereType<String>()
          .map((s) => s.trim())
          .where((s) => s.isNotEmpty)
          .toList();

      final id = item.id?.toInt().toString() ?? '';
      return ProductReview(
        id: id,
        userId: id,
        userName: item.username ?? '匿名用户',
        userAvatar: images.isNotEmpty ? images.first : null,
        rating: item.score?.toInt() ?? 0,
        content: item.comment ?? '',
        images: images.isEmpty ? null : images,
        createdAt: item.reviewTime ?? '',
        helpfulCount: 0,
        specInfo: item.extraComment,
      );
    }).toList();

    final total = data?.total?.toInt() ?? 0;
    final sizeFromApi = data?.size?.toInt() ?? pageSize;
    final current = data?.current?.toInt() ?? page;

    return (
      reviews: reviews,
      total: total,
      hasMore: current * sizeFromApi < total,
    );
  }

  Future<ProductReviewSummary?> getProductReviewSummary(
    String productCode,
  ) async {
    if (productCode.isEmpty) {
      throw _createApiError(
        'productCode is required to fetch product review summary',
        {'productCode': productCode},
      );
    }

    final api = _ref.read(swaggerProductApiProvider);
    final response = await api.productServiceProductReviewNoAuthSummaryGet(
      productCode: productCode,
      root: null,
    );

    final body = response.body;
    if (body == null || _parseInt(body.code) != 0 || body.data == null) {
      return null;
    }

    final data = body.data!;
    final totalReviews = data.reviewCount?.toInt() ?? 0;
    final averageRating = data.averageScore ?? 0;

    final distribution = <ProductReviewDistribution>[];
    if (totalReviews > 0) {
      final rounded = averageRating.round();
      for (var rating = 5; rating >= 1; rating--) {
        int percentage;
        if (rating == rounded) {
          percentage = 60;
        } else if (rating == rounded + 1 || rating == rounded - 1) {
          percentage = 20;
        } else {
          percentage = 10;
        }
        distribution.add(
          ProductReviewDistribution(
            rating: rating,
            count: (totalReviews * percentage / 100).floor(),
            percentage: percentage,
          ),
        );
      }
    }

    final positiveRate = totalReviews > 0
        ? ((distribution[0].count + distribution[1].count) / totalReviews * 100)
              .round()
        : 0;

    final featuredReviews = (data.featuredReviews ?? const []).map((item) {
      final images = (item.images ?? const [])
          .whereType<String>()
          .map((s) => s.trim())
          .where((s) => s.isNotEmpty)
          .toList();

      final id = item.id?.toInt().toString() ?? '';
      return ProductReview(
        id: id,
        userId: id,
        userName: item.username ?? '匿名用户',
        userAvatar: null,
        rating: item.score?.toInt() ?? 0,
        content: item.comment ?? '',
        images: images.isEmpty ? null : images,
        createdAt: item.reviewTime ?? '',
        helpfulCount: 0,
        specInfo: item.extraComment,
      );
    }).toList();

    return ProductReviewSummary(
      averageRating: averageRating,
      totalReviews: totalReviews,
      ratingDistribution: distribution,
      positiveRate: positiveRate,
      aiSummary: data.aiSummary,
      featuredReviews: featuredReviews,
    );
  }

  Future<List<ProductItem>> getSimilarProducts(
    String productCode, {
    int limit = 10,
  }) async {
    if (productCode.isEmpty) {
      throw _createApiError(
        'productCode is required to fetch similar products',
        {'productCode': productCode},
      );
    }

    final api = _ref.read(swaggerProductApiProvider);
    final response = await api.productServiceRecommendNoAuthSimilarProductPost(
      root: product.ProductServiceRecommendNoAuthSimilarproductPostRequest(
        productCode: productCode,
      ),
    );

    final body = response.body;
    if (body == null || _parseInt(body.code) != 0 || body.data == null) {
      return [];
    }

    final records = body.data?.records ?? const [];
    if (records.isEmpty) return [];

    return records.take(limit).map((item) {
      final imageUrl = item.image?.url ?? '';
      final tagCodes = (item.tags ?? const [])
          .map((t) => t.tagCode)
          .whereType<String>()
          .map((t) => t.trim())
          .where((t) => t.isNotEmpty)
          .toList();

      return ProductItem(
        id: item.productCode ?? '',
        skuCode: item.skuCode,
        recommendedSkuCode: item.skuCode,
        name: item.productName ?? '',
        price: _parsePrice(item.targetSellPrice ?? item.sellPrice),
        originalPrice: _parseOptionalPrice(item.targetOriginPrice),
        currency: item.targetSellCur ?? item.sellPriceCur,
        imageUrl: imageUrl,
        images: imageUrl.isNotEmpty ? [imageUrl] : const [],
        sales: _parseInt(item.sellQuantity),
        tags: tagCodes.isEmpty ? null : tagCodes,
        rating: _getMockRating(item.productCode ?? ''),
      );
    }).toList();
  }

  CategoryItem? _mapCategoryLevel1(
    product.ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item
    item,
  ) {
    final id = item.id?.toInt().toString() ?? '';
    final name = item.name ?? '';
    if (id.isEmpty || name.isEmpty) return null;

    final children = (item.categoryList ?? const [])
        .map(_mapCategoryLevel2)
        .whereType<CategoryItem>()
        .toList();

    return CategoryItem(
      id: id,
      name: name,
      iconUrl: item.iconUrl,
      parentId: item.parentId?.toInt().toString(),
      level: item.level?.toInt(),
      brands: _normalizeBrands(item.brands),
      children: children.isEmpty ? null : children,
    );
  }

  CategoryItem? _mapCategoryLevel2(
    product.ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item
    item,
  ) {
    final id = item.id?.toInt().toString() ?? '';
    final name = item.name ?? '';
    if (id.isEmpty || name.isEmpty) return null;

    final children = (item.categoryList ?? const [])
        .map(_mapCategoryLevel3)
        .whereType<CategoryItem>()
        .toList();

    return CategoryItem(
      id: id,
      name: name,
      iconUrl: item.iconUrl,
      parentId: item.parentId?.toInt().toString(),
      level: item.level?.toInt(),
      brands: _normalizeBrands(item.brands),
      children: children.isEmpty ? null : children,
    );
  }

  CategoryItem? _mapCategoryLevel3(
    product.ProductServiceCategoryNoAuthTreeGet$Response$Data$CategoryList$Item$CategoryList$Item$CategoryList$Item
    item,
  ) {
    final id = item.id?.toInt().toString() ?? '';
    final name = item.name ?? '';
    if (id.isEmpty || name.isEmpty) return null;

    return CategoryItem(
      id: id,
      name: name,
      iconUrl: item.iconUrl,
      parentId: item.parentId?.toInt().toString(),
      level: item.level?.toInt(),
      children: null,
      brands: null,
    );
  }

  List<String>? _normalizeBrands(List<Object>? brands) {
    final list = brands ?? const [];
    if (list.isEmpty) return null;

    final normalized = list
        .whereType<String>()
        .map((s) => s.trim())
        .where((s) => s.isNotEmpty)
        .toList();

    return normalized.isEmpty ? null : normalized;
  }
}

final productRepositoryProvider = Provider<ProductRepository>((ref) {
  return ProductRepository(ref);
});

double _parsePrice(Object? value) {
  if (value == null || value == '') {
    return 0;
  }
  if (value is num) {
    return value.isFinite ? value.toDouble() : 0;
  }
  final parsed = double.tryParse(value.toString());
  return parsed ?? 0;
}

double _getMockRating(String id) {
  // Deterministic rating between 4.1 and 5.0 based on id
  final hash = id.hashCode.abs();
  return 4.1 + (hash % 10) / 10.0;
}

double? _parseOptionalPrice(Object? value) {
  if (value == null || value == '') {
    return null;
  }
  if (value is num) {
    return value.isFinite ? value.toDouble() : null;
  }
  return double.tryParse(value.toString());
}

int _parseInt(Object? value, {int fallback = 0}) {
  if (value == null || value == '') {
    return fallback;
  }
  if (value is int) {
    return value;
  }
  if (value is num) {
    return value.toInt();
  }
  return int.tryParse(value.toString()) ?? fallback;
}

int? _parseOptionalInt(Object? value) {
  if (value == null || value == '') {
    return null;
  }
  if (value is int) {
    return value;
  }
  if (value is num) {
    return value.toInt();
  }
  return int.tryParse(value.toString());
}

List<String> _splitComma(Object? value) {
  if (value is String) {
    return value
        .split(',')
        .map((item) => item.trim())
        .where((item) => item.isNotEmpty)
        .toList();
  }
  return [];
}
