import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/product_repository.dart';

final categoriesProvider = FutureProvider<List<CategoryItem>>((ref) async {
  final repo = ref.watch(productRepositoryProvider);
  return repo.getProductCategories();
});

class CategoryProductsState {
  const CategoryProductsState({
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

  CategoryProductsState copyWith({
    List<ProductItem>? products,
    bool? isLoading,
    bool? hasMore,
    int? page,
    String? error,
  }) {
    return CategoryProductsState(
      products: products ?? this.products,
      isLoading: isLoading ?? this.isLoading,
      hasMore: hasMore ?? this.hasMore,
      page: page ?? this.page,
      error: error,
    );
  }
}

class CategoryProductsNotifier extends StateNotifier<CategoryProductsState> {
  CategoryProductsNotifier(this._repository, this._categoryId)
    : super(const CategoryProductsState()) {
    loadFirstPage();
  }

  final ProductRepository _repository;
  final String _categoryId;
  static const int _pageSize = 20;

  Future<void> loadFirstPage() async {
    state = state.copyWith(isLoading: true, error: null, products: []);
    try {
      final response = await _repository.getCategoryProducts(
        CategoryProductsParams(
          categoryId: _categoryId,
          page: 1,
          pageSize: _pageSize,
        ),
      );
      if (mounted) {
        state = state.copyWith(
          products: response.products,
          hasMore: response.hasMore,
          page: 1,
          isLoading: false,
        );
      }
    } catch (e) {
      if (mounted) {
        state = state.copyWith(isLoading: false, error: e.toString());
      }
    }
  }

  Future<void> loadMore() async {
    if (state.isLoading || !state.hasMore) return;

    final nextPage = state.page + 1;
    state = state.copyWith(isLoading: true);

    try {
      final response = await _repository.getCategoryProducts(
        CategoryProductsParams(
          categoryId: _categoryId,
          page: nextPage,
          pageSize: _pageSize,
        ),
      );
      if (mounted) {
        state = state.copyWith(
          products: [...state.products, ...response.products],
          hasMore: response.hasMore,
          page: nextPage,
          isLoading: false,
        );
      }
    } catch (e) {
      if (mounted) {
        state = state.copyWith(isLoading: false, error: e.toString());
      }
    }
  }
}

final categoryProductsProvider = StateNotifierProvider.family
    .autoDispose<CategoryProductsNotifier, CategoryProductsState, String>((
      ref,
      categoryId,
    ) {
      final repo = ref.watch(productRepositoryProvider);
      return CategoryProductsNotifier(repo, categoryId);
    });

class CategoryHotProductsNotifier extends StateNotifier<CategoryProductsState> {
  CategoryHotProductsNotifier(this._repository, this._categoryId)
    : super(const CategoryProductsState()) {
    loadFirstPage();
  }

  final ProductRepository _repository;
  final String _categoryId;
  static const int _pageSize = 20;

  Future<void> loadFirstPage() async {
    state = state.copyWith(isLoading: true, error: null, products: []);
    try {
      final response = await _repository.getHotProductsV2(
        params: ProductListParams(
          page: 1,
          pageSize: _pageSize,
          categoryId: _categoryId,
        ),
      );
      if (mounted) {
        state = state.copyWith(
          products: response.products,
          hasMore: response.hasMore,
          page: 1,
          isLoading: false,
        );
      }
    } catch (e) {
      if (mounted) {
        state = state.copyWith(isLoading: false, error: e.toString());
      }
    }
  }

  Future<void> loadMore() async {
    if (state.isLoading || !state.hasMore) return;

    final nextPage = state.page + 1;
    state = state.copyWith(isLoading: true);

    try {
      final response = await _repository.getHotProductsV2(
        params: ProductListParams(
          page: nextPage,
          pageSize: _pageSize,
          categoryId: _categoryId,
        ),
      );
      if (mounted) {
        state = state.copyWith(
          products: [...state.products, ...response.products],
          hasMore: response.hasMore,
          page: nextPage,
          isLoading: false,
        );
      }
    } catch (e) {
      if (mounted) {
        state = state.copyWith(isLoading: false, error: e.toString());
      }
    }
  }
}

final categoryHotProductsProvider = StateNotifierProvider.family
    .autoDispose<CategoryHotProductsNotifier, CategoryProductsState, String>((
      ref,
      categoryId,
    ) {
      final repo = ref.watch(productRepositoryProvider);
      return CategoryHotProductsNotifier(repo, categoryId);
    });
