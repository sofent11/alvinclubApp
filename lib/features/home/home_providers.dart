import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/home_repository.dart';
import '../../data/repositories/product_repository.dart';
import 'home_models.dart';

final homeConfigProvider = FutureProvider<Map<String, dynamic>>((ref) async {
  final repo = ref.watch(homeRepositoryProvider);
  return repo.getHomeConfig();
});

final homeTopNavProvider = FutureProvider<List<HomeTopNavItem>>((ref) async {
  final repo = ref.watch(homeRepositoryProvider);
  final config = await repo.getHomeTopNavConfig();
  final rawList = config['list'];
  if (rawList is! List) {
    debugPrint(
      '[HomeTopNav] config has no list field or is not a List: ${config.keys}',
    );
    return [];
  }
  final items = rawList
      .whereType<Map>()
      .map((item) => HomeTopNavItem.fromJson(Map<String, dynamic>.from(item)))
      .where((item) => item.title.isNotEmpty)
      .toList();
  debugPrint(
    '[HomeTopNav] Loaded ${items.length} remote nav items: ${items.map((e) => e.title).toList()}',
  );
  return items;
});

final homeAlbumProvider = FutureProvider<List<HomeAlbumItem>>((ref) async {
  final repo = ref.watch(homeRepositoryProvider);
  final config = await repo.getHomeAlbumConfig();
  final rawList = config['list'];
  if (rawList is! List) {
    debugPrint('[HomeAlbum] config has no list field or is not a List');
    return [];
  }
  return rawList
      .whereType<Map>()
      .map((item) => HomeAlbumItem.fromJson(Map<String, dynamic>.from(item)))
      .where((item) => item.title.isNotEmpty && item.albumCode.isNotEmpty)
      .toList();
});

final premiumInspiredConfigProvider =
    FutureProvider<List<PremiumInspiredConfigItem>>((ref) async {
      final repo = ref.watch(homeRepositoryProvider);
      final config = await repo.getPremiumInspiredConfig();
      final rawList = config['list'];
      if (rawList is! List) {
        debugPrint('[PremiumInspired] config has no list field');
        return [];
      }
      return rawList
          .whereType<Map>()
          .map(
            (item) => PremiumInspiredConfigItem.fromJson(
              Map<String, dynamic>.from(item),
            ),
          )
          .toList();
    });

final premiumDupeSelectionProvider = FutureProvider<List<PremiumDupeProduct>>((
  ref,
) async {
  final repo = ref.watch(productRepositoryProvider);
  final products = await repo.getPremiumDupeSelection();
  debugPrint('[PremiumDupeSelection] Loaded ${products.length} products');
  return products;
});

final premiumDupeMetaProvider = FutureProvider<List<PremiumDupeCategory>>((
  ref,
) async {
  final repo = ref.watch(productRepositoryProvider);
  return repo.getPremiumDupeMeta();
});

class PagedProductsState {
  const PagedProductsState({
    this.products = const [],
    this.isLoading = false,
    this.hasMore = false,
    this.page = 1,
    this.error,
  });

  final List<ProductItem> products;
  final bool isLoading;
  final bool hasMore;
  final int page;
  final String? error;

  PagedProductsState copyWith({
    List<ProductItem>? products,
    bool? isLoading,
    bool? hasMore,
    int? page,
    String? error,
  }) {
    return PagedProductsState(
      products: products ?? this.products,
      isLoading: isLoading ?? this.isLoading,
      hasMore: hasMore ?? this.hasMore,
      page: page ?? this.page,
      error: error,
    );
  }
}

class HomeHotProductsNotifier extends StateNotifier<PagedProductsState> {
  HomeHotProductsNotifier(this._repository)
    : super(const PagedProductsState()) {
    loadFirstPage();
  }

  final ProductRepository _repository;
  static const int _pageSize = 20;

  Future<void> loadFirstPage() async {
    state = state.copyWith(isLoading: true, error: null, products: []);
    try {
      final response = await _repository.getHotProductsV2(
        params: ProductListParams(pageSize: _pageSize),
      );
      state = state.copyWith(
        products: response.products,
        hasMore: response.hasMore,
        page: 1,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> loadMore() async {
    if (state.isLoading || !state.hasMore) return;

    final nextPage = state.page + 1;
    state = state.copyWith(isLoading: true, error: null);

    try {
      final response = await _repository.getHotProductsV2(
        params: ProductListParams(page: nextPage, pageSize: _pageSize),
      );
      state = state.copyWith(
        products: [...state.products, ...response.products],
        hasMore: response.hasMore,
        page: nextPage,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
}

final homeHotProductsProvider =
    StateNotifierProvider<HomeHotProductsNotifier, PagedProductsState>((ref) {
      final repo = ref.watch(productRepositoryProvider);
      return HomeHotProductsNotifier(repo);
    });

class HomeRecommendParams {
  const HomeRecommendParams({this.categoryId, this.categoryIds});

  final String? categoryId;
  final List<String>? categoryIds;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! HomeRecommendParams) return false;
    if (categoryId != other.categoryId) return false;
    final left = categoryIds ?? const [];
    final right = other.categoryIds ?? const [];
    if (left.length != right.length) return false;
    for (var i = 0; i < left.length; i += 1) {
      if (left[i] != right[i]) return false;
    }
    return true;
  }

  @override
  int get hashCode =>
      Object.hash(categoryId, Object.hashAll(categoryIds ?? const []));
}

class HomeRecommendProductsNotifier extends StateNotifier<PagedProductsState> {
  HomeRecommendProductsNotifier(this._repository, this._params)
    : super(const PagedProductsState()) {
    loadFirstPage();
  }

  final ProductRepository _repository;
  final HomeRecommendParams _params;
  static const int _pageSize = 20;

  Future<void> loadFirstPage() async {
    if ((_params.categoryId == null || _params.categoryId!.isEmpty) &&
        (_params.categoryIds == null || _params.categoryIds!.isEmpty)) {
      state = state.copyWith(products: [], hasMore: false, isLoading: false);
      return;
    }

    state = state.copyWith(isLoading: true, error: null, products: []);
    try {
      final response = await _repository.getCategoryRecommendProducts(
        CategoryRecommendParams(
          categoryId: _params.categoryId,
          categoryIds: _params.categoryIds,
          page: 1,
          pageSize: _pageSize,
        ),
      );
      state = state.copyWith(
        products: response.products,
        hasMore: response.hasMore,
        page: 1,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> loadMore() async {
    if (state.isLoading || !state.hasMore) return;

    final nextPage = state.page + 1;
    state = state.copyWith(isLoading: true, error: null);

    try {
      final response = await _repository.getCategoryRecommendProducts(
        CategoryRecommendParams(
          categoryId: _params.categoryId,
          categoryIds: _params.categoryIds,
          page: nextPage,
          pageSize: _pageSize,
        ),
      );
      state = state.copyWith(
        products: [...state.products, ...response.products],
        hasMore: response.hasMore,
        page: nextPage,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
}

final homeRecommendProductsProvider = StateNotifierProvider.family
    .autoDispose<
      HomeRecommendProductsNotifier,
      PagedProductsState,
      HomeRecommendParams
    >((ref, params) {
      final repo = ref.watch(productRepositoryProvider);
      return HomeRecommendProductsNotifier(repo, params);
    });

class PremiumDupePageState {
  const PremiumDupePageState({
    this.products = const [],
    this.isLoading = false,
    this.hasMore = false,
    this.page = 1,
    this.error,
  });

  final List<PremiumDupeProduct> products;
  final bool isLoading;
  final bool hasMore;
  final int page;
  final String? error;

  PremiumDupePageState copyWith({
    List<PremiumDupeProduct>? products,
    bool? isLoading,
    bool? hasMore,
    int? page,
    String? error,
  }) {
    return PremiumDupePageState(
      products: products ?? this.products,
      isLoading: isLoading ?? this.isLoading,
      hasMore: hasMore ?? this.hasMore,
      page: page ?? this.page,
      error: error,
    );
  }
}

class PremiumDupePageNotifier extends StateNotifier<PremiumDupePageState> {
  PremiumDupePageNotifier(this._repository, this._categoryId)
    : super(const PremiumDupePageState()) {
    loadFirstPage();
  }

  final ProductRepository _repository;
  final int? _categoryId;
  static const int _pageSize = 20;

  Future<void> loadFirstPage() async {
    state = state.copyWith(isLoading: true, error: null, products: []);
    try {
      final response = await _repository.getPremiumDupePage(
        PremiumDupePageParams(
          current: 1,
          pageSize: _pageSize,
          categoryId: _categoryId,
        ),
      );
      state = state.copyWith(
        products: response.products,
        hasMore: response.current < response.totalPages,
        page: response.current,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> loadMore() async {
    if (state.isLoading || !state.hasMore) return;

    final nextPage = state.page + 1;
    state = state.copyWith(isLoading: true, error: null);

    try {
      final response = await _repository.getPremiumDupePage(
        PremiumDupePageParams(
          current: nextPage,
          pageSize: _pageSize,
          categoryId: _categoryId,
        ),
      );
      state = state.copyWith(
        products: [...state.products, ...response.products],
        hasMore: response.current < response.totalPages,
        page: response.current,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
}

final premiumDupePageProvider = StateNotifierProvider.family
    .autoDispose<PremiumDupePageNotifier, PremiumDupePageState, int?>((
      ref,
      categoryId,
    ) {
      final repo = ref.watch(productRepositoryProvider);
      return PremiumDupePageNotifier(repo, categoryId);
    });

final flashSaleProductsProvider = FutureProvider<List<ProductItem>>((
  ref,
) async {
  final repo = ref.watch(productRepositoryProvider);
  final response = await repo.getFlashSaleProducts(
    params: const ProductListParams(pageSize: 10),
  );
  return response.products;
});
