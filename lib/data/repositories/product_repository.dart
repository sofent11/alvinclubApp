import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/error/api_error.dart';
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

class ProductOptionValue {
  const ProductOptionValue({required this.value, this.image});

  final String value;
  final String? image;
}

class ProductOption {
  const ProductOption({required this.name, required this.type, required this.values});

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
  });

  final double averageRating;
  final int totalReviews;
  final List<ProductReviewDistribution> ratingDistribution;
  final int positiveRate;
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

class ProductListParams {
  const ProductListParams({
    this.page,
    this.pageSize,
    this.categoryId,
    this.brandId,
    this.sortBy,
    this.sortOrder,
  });

  final int? page;
  final int? pageSize;
  final String? categoryId;
  final String? brandId;
  final String? sortBy;
  final String? sortOrder;
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

  Future<ProductListResponse> getHotProductsV2({ProductListParams? params}) async {
    final api = _ref.read(swaggerProductApiProvider);
    final response = await api.productNoAuthHotProductV2Get(
      current: (params?.page ?? 1).toString(),
      size: (params?.pageSize ?? 20).toString(),
      categoryId: params?.categoryId,
    );

    final body = _toMap(response.body);
    final code = _parseInt(body?['code']);
    if (code != 0) {
      throw _createApiError(body?['message']?.toString() ?? '获取热门商品失败', body);
    }

    final data = _toMap(body?['data']);
    final records = _toMapList(data?['records']);
    if (records.isEmpty) {
      return const ProductListResponse(products: [], total: 0, hasMore: false);
    }

    final total = _parseInt(data?['total']);
    final pageSize = _parseInt(data?['pageSize'], fallback: params?.pageSize ?? 20);
    final current = _parseInt(data?['current'], fallback: params?.page ?? 1);

    final products = records.map((item) {
      final image = _toMap(item['image']);
      return ProductItem(
        id: item['productCode']?.toString() ?? '',
        skuCode: item['skuCode']?.toString(),
        recommendedSkuCode: item['skuCode']?.toString(),
        name: item['productName']?.toString() ?? '',
        price: _parsePrice(item['targetSellPrice']),
        originalPrice: _extractTargetOriginPrice(item),
        currency: item['targetSellCur']?.toString(),
        imageUrl: image?['url']?.toString() ?? '',
        images: image?['url'] != null ? [image!['url'].toString()] : [],
        sales: _parseInt(item['sellQuantity']),
        tags: _extractTags(item['tags']),
      );
    }).toList();

    return ProductListResponse(
      products: products,
      total: total,
      hasMore: current * pageSize < total,
    );
  }

  Future<ProductListResponse> getFlashSaleProducts({ProductListParams? params}) async {
    final api = _ref.read(swaggerProductApiProvider);
    final response = await api.productNoAuthFlashSaleProductGet(
      current: (params?.page ?? 1).toString(),
      size: (params?.pageSize ?? 10).toString(),
    );

    final body = _toMap(response.body);
    final code = _parseInt(body?['code']);
    if (code != 0) {
      throw _createApiError(body?['message']?.toString() ?? '获取特价商品失败', body);
    }

    final dataList = _toList(body?['data']);
    if (dataList.isEmpty) {
      return const ProductListResponse(products: [], total: 0, hasMore: false);
    }

    final products = dataList.map((raw) {
      final item = _toMap(raw) ?? const {};
      final mainImg = _toList(item['mainImg']);
      final imageUrls = mainImg
          .map((img) => _toMap(img)?['url']?.toString())
          .whereType<String>()
          .toList();
      return ProductItem(
        id: item['productCode']?.toString() ?? '',
        skuCode: item['skuCode']?.toString(),
        recommendedSkuCode: item['skuCode']?.toString(),
        name: item['productName']?.toString() ?? '',
        price: _parsePrice(item['targetSellPrice']),
        originalPrice: _extractTargetOriginPrice(item),
        currency: item['targetSellCur']?.toString(),
        imageUrl: imageUrls.isNotEmpty ? imageUrls.first : '',
        images: imageUrls,
        sales: _parseInt(item['sellQuantity']),
        brandName: item['brandName']?.toString(),
        categoryId: item['categoryId']?.toString(),
        tags: _extractTags(item['tags']),
      );
    }).toList();

    return ProductListResponse(
      products: products,
      total: products.length,
      hasMore: false,
    );
  }

  Future<ProductListResponse> getPremierProducts({ProductListParams? params}) async {
    final api = _ref.read(swaggerProductApiProvider);
    final response = await api.productNoAuthPremierProductGet(
      pageNum: (params?.page ?? 1).toString(),
      pageSize: (params?.pageSize ?? 10).toString(),
      categoryId: params?.categoryId,
    );

    final body = _toMap(response.body);
    final code = _parseInt(body?['code']);
    if (code != 0) {
      throw _createApiError(body?['message']?.toString() ?? '获取优选商品失败', body);
    }

    final data = _toMap(body?['data']);
    final records = _toMapList(data?['records']);
    if (records.isEmpty) {
      return const ProductListResponse(products: [], total: 0, hasMore: false);
    }

    final total = _parseInt(data?['total']);
    final pageSize = _parseInt(data?['pageSize'], fallback: params?.pageSize ?? 10);
    final current = _parseInt(data?['current'], fallback: params?.page ?? 1);

    final products = records.map((item) {
      final mainImg = _toList(item['mainImg']);
      final imageUrls = mainImg
          .map((img) => _toMap(img)?['url']?.toString())
          .whereType<String>()
          .toList();
      return ProductItem(
        id: item['productCode']?.toString() ?? '',
        skuCode: item['skuCode']?.toString(),
        recommendedSkuCode: item['skuCode']?.toString(),
        name: item['productName']?.toString() ?? '',
        price: _parsePrice(item['targetSellPrice']),
        originalPrice: _extractTargetOriginPrice(item),
        currency: item['targetSellCur']?.toString(),
        imageUrl: imageUrls.isNotEmpty ? imageUrls.first : '',
        images: imageUrls,
        brandName: item['brandName']?.toString(),
        categoryId: item['categoryId']?.toString(),
      );
    }).toList();

    return ProductListResponse(
      products: products,
      total: total,
      hasMore: current * pageSize < total,
    );
  }

  Future<List<CategoryItem>> getProductCategories() async {
    final api = _ref.read(swaggerProductApiProvider);
    final response = await api.categoryNoAuthTreeGet();

    final body = _toMap(response.body);
    final code = _parseInt(body?['code']);
    if (code != 0) {
      throw _createApiError(body?['message']?.toString() ?? '获取分类列表失败', body);
    }

    final data = _toMap(body?['data']);
    final categoryList = _toList(data?['categoryList']);
    if (categoryList.isEmpty) {
      return [];
    }

    return categoryList
        .map((item) => _mapCategoryItem(_toMap(item)))
        .whereType<CategoryItem>()
        .toList();
  }

  Future<ProductListResponse> getCategoryProducts(CategoryProductsParams params) async {
    if (params.categoryId.isEmpty) {
      throw _createApiError('categoryId is required', params);
    }

    final api = _ref.read(swaggerProductApiProvider);
    final response = await api.recommendNoAuthCategoryPost(
      root: {
        'current': params.page ?? 1,
        'pageSize': params.pageSize ?? 20,
        'categoryId': int.tryParse(params.categoryId),
        'brandName': params.brandName,
        'sortedField': params.sortBy == null
            ? null
            : {
                'name': params.sortBy,
                'order': (params.sortOrder ?? 'asc').toUpperCase(),
              },
      },
    );

    final body = _toMap(response.body);
    final code = _parseInt(body?['code']);
    if (code != 0) {
      throw _createApiError(body?['message']?.toString() ?? '获取分类商品失败', body);
    }

    final data = _toMap(body?['data']);
    final records = _toMapList(data?['records']);
    if (records.isEmpty) {
      return const ProductListResponse(products: [], total: 0, hasMore: false);
    }

    final total = _parseInt(data?['total']);
    final pageSize = _parseInt(data?['pageSize'], fallback: params.pageSize ?? 20);
    final current = _parseInt(data?['current'], fallback: params.page ?? 1);

    final products = records.map((item) {
      final image = _toMap(item['image']);
      return ProductItem(
        id: item['productCode']?.toString() ?? item['skuCode']?.toString() ?? '',
        skuCode: item['skuCode']?.toString(),
        recommendedSkuCode: item['skuCode']?.toString(),
        name: item['productName']?.toString() ?? '',
        price: _parsePrice(item['targetSellPrice'] ?? item['sellPrice']),
        originalPrice: _extractTargetOriginPrice(item),
        currency: item['targetSellCur']?.toString() ?? item['sellPriceCur']?.toString() ?? 'USD',
        imageUrl: image?['url']?.toString() ?? '',
        images: image?['url'] != null ? [image!['url'].toString()] : [],
        sales: _parseInt(item['sellQuantity']),
        tags: _extractTags(item['tags']),
        categoryId: params.categoryId,
      );
    }).toList();

    return ProductListResponse(
      products: products,
      total: total,
      hasMore: current * pageSize < total,
    );
  }

  Future<ProductListResponse> getCategoryRecommendProducts(CategoryRecommendParams params) async {
    final categoryId = params.categoryId == null ? null : int.tryParse(params.categoryId!);
    final categoryIds = params.categoryIds
        ?.map(int.tryParse)
        .whereType<int>()
        .toList();

    final api = _ref.read(swaggerProductApiProvider);
    final response = await api.recommendNoAuthCategoryPost(
      root: {
        'current': params.page ?? 1,
        'pageSize': params.pageSize ?? 20,
        'categoryId': categoryId,
        'categoryIds': categoryId == null ? categoryIds : null,
        'brandName': params.brandName,
        'productCode': params.productCode,
        'sortedField': params.sortBy == null
            ? null
            : {
                'name': params.sortBy,
                'order': (params.sortOrder ?? 'asc').toUpperCase(),
              },
      },
    );

    final body = _toMap(response.body);
    final code = _parseInt(body?['code']);
    if (code != 0) {
      throw _createApiError(body?['message']?.toString() ?? '获取分类推荐商品失败', body);
    }

    final data = _toMap(body?['data']);
    final records = _toMapList(data?['records']);
    if (records.isEmpty) {
      return const ProductListResponse(products: [], total: 0, hasMore: false);
    }

    final total = _parseInt(data?['total']);
    final pageSize = _parseInt(data?['pageSize'], fallback: params.pageSize ?? 20);
    final current = _parseInt(data?['current'], fallback: params.page ?? 1);

    final products = records.map((item) {
      final image = _toMap(item['image']);
      return ProductItem(
        id: item['productCode']?.toString() ?? item['skuCode']?.toString() ?? '',
        skuCode: item['skuCode']?.toString(),
        recommendedSkuCode: item['skuCode']?.toString(),
        name: item['productName']?.toString() ?? '',
        price: _parsePrice(item['targetSellPrice'] ?? item['sellPrice']),
        originalPrice: _extractTargetOriginPrice(item),
        currency: item['targetSellCur']?.toString() ?? item['sellPriceCur']?.toString() ?? 'USD',
        imageUrl: image?['url']?.toString() ?? '',
        images: image?['url'] != null ? [image!['url'].toString()] : [],
        sales: _parseInt(item['sellQuantity']),
        tags: _extractTags(item['tags']),
        categoryId: params.categoryId,
      );
    }).toList();

    return ProductListResponse(
      products: products,
      total: total,
      hasMore: current * pageSize < total,
    );
  }

  Future<ProductListResponse> searchProducts(SearchProductsParams params) async {
    final api = _ref.read(swaggerProductApiProvider);
    final response = await api.productNoAuthCombineSearchGet(
      query: params.query,
      current: (params.page ?? 1).toString(),
      pageSize: (params.pageSize ?? 20).toString(),
      categoryId: params.categoryId,
      minPriceBegin: params.minPrice?.toString(),
      minPriceEnd: params.maxPrice?.toString(),
      filterProductType: params.filterProductType ?? '1',
    );

    final body = _toMap(response.body);
    final code = _parseInt(body?['code']);
    if (code != 0) {
      throw _createApiError(body?['message']?.toString() ?? '搜索失败', body);
    }

    final data = _toMap(body?['data']);
    final records = _toMapList(data?['records']);
    if (records.isEmpty) {
      return const ProductListResponse(products: [], total: 0, hasMore: false);
    }

    final total = _parseInt(data?['total']);
    final pageSize = _parseInt(data?['pageSize'], fallback: params.pageSize ?? 20);
    final current = _parseInt(data?['current'], fallback: params.page ?? 1);

    final products = records.map((item) {
      final mainImg = _toList(item['mainImg']);
      final imageUrls = mainImg
          .map((img) => _toMap(img)?['url']?.toString())
          .whereType<String>()
          .toList();
      return ProductItem(
        id: item['productCode']?.toString() ?? '',
        skuCode: item['skuCode']?.toString(),
        recommendedSkuCode: item['skuCode']?.toString(),
        name: item['productName']?.toString() ?? '',
        price: _parsePrice(item['targetSellPrice']),
        originalPrice: _extractTargetOriginPrice(item),
        currency: item['targetSellCur']?.toString(),
        imageUrl: imageUrls.isNotEmpty ? imageUrls.first : '',
        images: imageUrls,
        sales: _parseInt(item['sellQuantity']),
        brandName: item['brandName']?.toString(),
        categoryId: item['categoryId']?.toString(),
        tags: _extractTags(item['tags']),
      );
    }).toList();

    return ProductListResponse(
      products: products,
      total: total,
      hasMore: current * pageSize < total,
    );
  }

  Future<ProductDetail> getProductDetail(String productCode) async {
    if (productCode.isEmpty) {
      throw _createApiError('productCode is required to fetch product detail', {
        'productCode': productCode,
      });
    }

    final api = _ref.read(swaggerProductApiProvider);
    final response = await api.productNoAuthGetProductInfoGet(productCode: productCode);

    final body = _toMap(response.body);
    final code = _parseInt(body?['code']);
    if (code != 0 || body?['data'] == null) {
      throw _createApiError(body?['message']?.toString() ?? '获取商品详情失败', body);
    }

    final data = _toMap(body?['data']) ?? const {};
    final mainImages = _toList(data['mainImg'])
        .map((img) => _toMap(img)?['url']?.toString())
        .whereType<String>()
        .toList();
    final collectionImages = _toList(data['imgCollection'])
        .map((img) => _toMap(img)?['url']?.toString())
        .whereType<String>()
        .toList();
    final subImages = _splitComma(data['subImg']);
    final detailImages = _toList(data['imgDetail'])
        .map((img) => _toMap(img)?['url']?.toString())
        .whereType<String>()
        .toList();
    final gallery = {...mainImages, ...collectionImages, ...subImages}.where((url) => url.isNotEmpty).toList();

    final options = _toList(data['productOptions']).map((optionRaw) {
      final option = _toMap(optionRaw);
      final name = option?['name']?.toString();
      if (name == null || name.isEmpty) {
        return null;
      }
      final values = _toList(option?['optionValues']).map((valueRaw) {
        final value = _toMap(valueRaw);
        final valueText = value?['value']?.toString();
        if (valueText == null || valueText.isEmpty) {
          return null;
        }
        return ProductOptionValue(
          value: valueText,
          image: value?['image']?.toString(),
        );
      }).whereType<ProductOptionValue>().toList();

      if (values.isEmpty) {
        return null;
      }
      return ProductOption(
        name: name,
        type: _parseInt(option?['type']),
        values: values,
      );
    }).whereType<ProductOption>().toList();

    final attributes = _toList(data['productAttrs']).map((attrRaw) {
      final attr = _toMap(attrRaw);
      final name = attr?['name']?.toString();
      final value = attr?['value']?.toString();
      if (name == null || value == null || name.isEmpty || value.isEmpty) {
        return null;
      }
      return ProductAttribute(name: name, value: value);
    }).whereType<ProductAttribute>().toList();

    final tags = _toList(data['tags'])
        .map((tag) {
          final map = _toMap(tag);
          return map?['tagName']?.toString() ?? map?['tagCode']?.toString();
        })
        .whereType<String>()
        .where((tag) => tag.trim().isNotEmpty)
        .toList();

    final videoUrls = _toList(data['mainVideo'])
        .map((video) => _toMap(video)?['videoUrl']?.toString())
        .whereType<String>()
        .where((url) => url.trim().isNotEmpty)
        .toList();

    return ProductDetail(
      id: data['productCode']?.toString() ?? productCode,
      name: data['productName']?.toString() ?? '',
      brandName: data['brandName']?.toString(),
      shopCode: data['shopCode']?.toString(),
      categoryId: data['categoryId']?.toString(),
      description: data['textDetail']?.toString(),
      htmlDetail: data['textDetail']?.toString(),
      images: gallery.isNotEmpty ? gallery : detailImages,
      detailImages: detailImages,
      videoUrls: videoUrls.isEmpty ? null : videoUrls,
      tags: tags.isEmpty ? null : tags,
      options: options,
      attributes: attributes,
      price: _parsePrice(data['targetSellPrice'] ?? data['sellPrice']),
      originalPrice: _extractTargetOriginPrice(data),
      currency: data['targetSellCur']?.toString() ?? data['sellPriceCur']?.toString(),
      recommendedSkuCode: data['skuCode']?.toString(),
      sellQuantity: data['sellQuantity'] == null ? null : _parseInt(data['sellQuantity']),
      sourcePlatform: data['sourcePlatform']?.toString(),
      sourceProductUrl: data['platformUrl']?.toString(),
      sizeHelperOptionName: _toMap(data['ext'])?['sizeHelperOptionName']?.toString(),
      sizeHelperType: _parseOptionalInt(_toMap(data['ext'])?['sizeHelperType']),
    );
  }

  Future<List<ProductSku>> getProductSkus(String productCode) async {
    if (productCode.isEmpty) {
      throw _createApiError('productCode is required to fetch product sku list', {
        'productCode': productCode,
      });
    }

    final api = _ref.read(swaggerProductApiProvider);
    final response = await api.productNoAuthSkuListGet(productCode: productCode);

    final body = _toMap(response.body);
    final code = _parseInt(body?['code']);
    if (code != 0) {
      throw _createApiError(body?['message']?.toString() ?? '获取商品SKU失败', body);
    }

    final dataList = _toList(body?['data']);
    if (dataList.isEmpty) {
      return [];
    }

    return dataList.map((raw) {
      final item = _toMap(raw) ?? const {};
      final skuOptions = _toList(item['skuOptions']);
      final options = <String, String>{};
      for (final optionRaw in skuOptions) {
        final option = _toMap(optionRaw);
        final name = option?['name']?.toString();
        final value = option?['value']?.toString();
        if (name != null && value != null) {
          options[name] = value;
        }
      }

      return ProductSku(
        code: item['skuCode']?.toString() ?? '',
        productCode: item['productCode']?.toString() ?? productCode,
        imageUrl: _toMap(item['skuImg'])?['url']?.toString(),
        price: _parsePrice(item['targetSellPrice'] ?? item['sellPrice']),
        originalPrice: _parseOptionalPrice(item['targetOriginPrice']),
        currency: item['targetSellCur']?.toString() ?? item['sellCur']?.toString() ?? 'USD',
        targetCurrency: item['targetSellCur']?.toString(),
        options: options,
        length: item['length']?.toString(),
        width: item['width']?.toString(),
        height: item['height']?.toString(),
        weight: item['weight']?.toString(),
        estimateUnitFreight: item['estimateUnitFreight']?.toString(),
        marketingInfo: item['marketingInfo']?.toString(),
        sourceCode: item['skuSourceCode']?.toString(),
        externalUrl: item['extUrl']?.toString(),
      );
    }).toList();
  }

  Future<({List<ProductReview> reviews, int total, bool hasMore})> getProductReviews(
    String productCode, {
    int page = 1,
    int pageSize = 10,
  }) async {
    if (productCode.isEmpty) {
      throw _createApiError('productCode is required to fetch product reviews', {
        'productCode': productCode,
      });
    }

    final api = _ref.read(swaggerProductApiProvider);
    final response = await api.productReviewNoAuthPageGet(
      productCode: productCode,
      current: page.toString(),
      size: pageSize.toString(),
      root: {
        'current': page,
        'pageSize': pageSize,
        'categoryId': 0,
      },
    );

    final body = _toMap(response.body);
    final code = _parseInt(body?['code']);
    if (code != 0) {
      throw _createApiError(body?['message']?.toString() ?? '获取商品评论失败', body);
    }

    final data = _toMap(body?['data']);
    final records = _toMapList(data?['records']);
    if (records.isEmpty) {
      return (reviews: <ProductReview>[], total: 0, hasMore: false);
    }

    final reviews = records.map((item) {
      final images = _toList(item['images'])
          .map((value) => value?.toString())
          .whereType<String>()
          .toList();
      return ProductReview(
        id: item['id']?.toString() ?? '',
        userId: item['id']?.toString() ?? '',
        userName: item['username']?.toString() ?? '匿名用户',
        userAvatar: images.isNotEmpty ? images.first : null,
        rating: _parseInt(item['score'], fallback: 0),
        content: item['comment']?.toString() ?? '',
        images: images.isEmpty ? null : images,
        createdAt: item['reviewTime']?.toString() ?? '',
        helpfulCount: 0,
        specInfo: item['extraComment']?.toString(),
      );
    }).toList();

    final total = _parseInt(data?['total']);
    final sizeFromApi = _parseInt(data?['size'], fallback: pageSize);
    final current = _parseInt(data?['current'], fallback: page);

    return (
      reviews: reviews,
      total: total,
      hasMore: current * sizeFromApi < total,
    );
  }

  Future<ProductReviewSummary?> getProductReviewSummary(String productCode) async {
    if (productCode.isEmpty) {
      throw _createApiError('productCode is required to fetch product review summary', {
        'productCode': productCode,
      });
    }

    final api = _ref.read(swaggerProductApiProvider);
    final response = await api.productReviewNoAuthSummaryGet(
      productCode: productCode,
      root: {
        'current': 1,
        'pageSize': 1,
        'categoryId': 0,
      },
    );

    final body = _toMap(response.body);
    final code = _parseInt(body?['code']);
    if (code != 0 || body?['data'] == null) {
      return null;
    }

    final data = _toMap(body?['data']) ?? const {};
    final totalReviews = _parseInt(data['reviewCount']);
    final averageRating = _parseDouble(data['averageScore']);

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
        distribution.add(ProductReviewDistribution(
          rating: rating,
          count: (totalReviews * percentage / 100).floor(),
          percentage: percentage,
        ));
      }
    }

    final positiveRate = totalReviews > 0
        ? ((distribution[0].count + distribution[1].count) / totalReviews * 100).round()
        : 0;

    return ProductReviewSummary(
      averageRating: averageRating,
      totalReviews: totalReviews,
      ratingDistribution: distribution,
      positiveRate: positiveRate,
    );
  }

  Future<List<ProductItem>> getSimilarProducts(String productCode, {int limit = 10}) async {
    if (productCode.isEmpty) {
      throw _createApiError('productCode is required to fetch similar products', {
        'productCode': productCode,
      });
    }

    final api = _ref.read(swaggerProductApiProvider);
    final response = await api.recommendNoAuthSimilarProductPost(
      root: {
        'productCode': productCode,
      },
    );

    final body = _toMap(response.body);
    final code = _parseInt(body?['code']);
    if (code != 0 || body?['data'] == null) {
      return [];
    }

    final data = _toMap(body?['data']);
    final records = _toMapList(data?['records']);
    if (records.isEmpty) {
      return [];
    }

    return records.take(limit).map((item) {
      final image = _toMap(item['image']);
      return ProductItem(
        id: item['productCode']?.toString() ?? '',
        skuCode: item['skuCode']?.toString(),
        recommendedSkuCode: item['skuCode']?.toString(),
        name: item['productName']?.toString() ?? '',
        price: _parsePrice(item['targetSellPrice']),
        originalPrice: _extractTargetOriginPrice(item),
        currency: item['targetSellCur']?.toString(),
        imageUrl: image?['url']?.toString() ?? '',
        images: image?['url'] != null ? [image!['url'].toString()] : [],
        sales: _parseInt(item['sellQuantity']),
        tags: _extractTags(item['tags']),
        brandName: item['brandName']?.toString(),
        categoryId: item['categoryId']?.toString(),
      );
    }).toList();
  }

  CategoryItem? _mapCategoryItem(Map<String, dynamic>? item) {
    if (item == null) return null;

    final brands = _normalizeBrands(_toList(item['brands']));
    final children = _toList(item['categoryList'])
        .map((child) => _mapCategoryItem(_toMap(child)))
        .whereType<CategoryItem>()
        .toList();

    return CategoryItem(
      id: item['id']?.toString() ?? '',
      name: item['name']?.toString() ?? '',
      iconUrl: item['iconUrl']?.toString(),
      parentId: item['parentId']?.toString(),
      level: _parseInt(item['level']),
      brands: brands,
      children: children.isEmpty ? null : children,
    );
  }

  List<String>? _normalizeBrands(List<dynamic> brands) {
    if (brands.isEmpty) {
      return null;
    }

    final normalized = brands
        .map((brand) {
          if (brand is String) {
            return brand.trim();
          }
          final map = _toMap(brand);
          return map?['name']?.toString().trim() ?? '';
        })
        .where((name) => name.isNotEmpty)
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

double? _parseOptionalPrice(Object? value) {
  if (value == null || value == '') {
    return null;
  }
  if (value is num) {
    return value.isFinite ? value.toDouble() : null;
  }
  return double.tryParse(value.toString());
}

double? _extractTargetOriginPrice(Map<String, dynamic> source) {
  final raw = source['targetOriginPrice'];
  return _parseOptionalPrice(raw);
}

List<String>? _extractTags(Object? rawTags) {
  final tags = _toList(rawTags)
      .map((tag) => _toMap(tag)?['tagCode']?.toString() ?? '')
      .where((tag) => tag.isNotEmpty)
      .toList();
  return tags.isEmpty ? null : tags;
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

double _parseDouble(Object? value, {double fallback = 0}) {
  if (value == null || value == '') {
    return fallback;
  }
  if (value is num) {
    return value.toDouble();
  }
  return double.tryParse(value.toString()) ?? fallback;
}

Map<String, dynamic>? _toMap(Object? value) {
  if (value == null) return null;
  if (value is Map<String, dynamic>) return value;
  try {
    final encoded = jsonEncode(value);
    final decoded = jsonDecode(encoded);
    if (decoded is Map<String, dynamic>) {
      return decoded;
    }
  } catch (_) {
    return null;
  }
  return null;
}

List<dynamic> _toList(Object? value) {
  if (value == null) return [];
  if (value is List) return value;
  try {
    final encoded = jsonEncode(value);
    final decoded = jsonDecode(encoded);
    if (decoded is List) {
      return decoded;
    }
  } catch (_) {
    return [];
  }
  return [];
}

List<Map<String, dynamic>> _toMapList(Object? value) {
  return _toList(value)
      .map((item) => _toMap(item))
      .whereType<Map<String, dynamic>>()
      .toList();
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
