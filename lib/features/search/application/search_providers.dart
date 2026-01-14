import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/repositories/product_repository.dart';

class SearchState {
  const SearchState({
    this.results = const [],
    this.total = 0,
    this.hasMore = false,
    this.page = 1,
    this.isLoading = false,
    this.error,
    this.query = '',
    this.sortBy,
    this.sortOrder,
    this.minPrice,
    this.maxPrice,
    this.filterProductType,
  });

  final List<ProductItem> results;
  final int total;
  final bool hasMore;
  final int page;
  final bool isLoading;
  final String? error;
  final String query;
  final String? sortBy;
  final String? sortOrder;
  final double? minPrice;
  final double? maxPrice;
  final String? filterProductType;

  SearchState copyWith({
    List<ProductItem>? results,
    int? total,
    bool? hasMore,
    int? page,
    bool? isLoading,
    String? error,
    String? query,
    String? sortBy,
    String? sortOrder,
    double? minPrice,
    double? maxPrice,
    String? filterProductType,
  }) {
    return SearchState(
      results: results ?? this.results,
      total: total ?? this.total,
      hasMore: hasMore ?? this.hasMore,
      page: page ?? this.page,
      isLoading: isLoading ?? this.isLoading,
      error:
          error, // If not provided, it clears error? No, let's keep it simple.
      query: query ?? this.query,
      sortBy: sortBy ?? this.sortBy,
      sortOrder: sortOrder ?? this.sortOrder,
      minPrice: minPrice ?? this.minPrice,
      maxPrice: maxPrice ?? this.maxPrice,
      filterProductType: filterProductType ?? this.filterProductType,
    );
  }
}

class SearchController extends StateNotifier<SearchState> {
  SearchController(this._repository) : super(const SearchState());

  final ProductRepository _repository;
  static const int _pageSize = 20;

  Future<void> search(String query) async {
    if (query.trim().isEmpty) return;

    state = state.copyWith(
      query: query,
      page: 1,
      isLoading: true,
      error: null,
      results: [], // Clear previous results immediately for new search
    );

    try {
      final response = await _repository.searchProducts(
        SearchProductsParams(
          query: query,
          page: 1,
          pageSize: _pageSize,
          sort: state.sortBy,
          order: state.sortOrder,
          minPrice: state.minPrice,
          maxPrice: state.maxPrice,
          filterProductType: state.filterProductType,
        ),
      );

      state = state.copyWith(
        results: response.products,
        total: response.total,
        hasMore: response.hasMore,
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
      final response = await _repository.searchProducts(
        SearchProductsParams(
          query: state.query,
          page: nextPage,
          pageSize: _pageSize,
          sort: state.sortBy,
          order: state.sortOrder,
          minPrice: state.minPrice,
          maxPrice: state.maxPrice,
          filterProductType: state.filterProductType,
        ),
      );

      state = state.copyWith(
        results: [...state.results, ...response.products],
        total: response.total,
        hasMore: response.hasMore,
        page: nextPage,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> updateFilters({
    String? sortBy,
    String? sortOrder,
    double? minPrice,
    double? maxPrice,
    String? filterProductType,
  }) async {
    state = state.copyWith(
      sortBy: sortBy,
      sortOrder: sortOrder,
      minPrice: minPrice,
      maxPrice: maxPrice,
      filterProductType: filterProductType,
    );
    // Re-trigger search with new filters if we have a query
    if (state.query.isNotEmpty) {
      await search(state.query);
    }
  }

  void clear() {
    state = const SearchState();
  }
}

final searchControllerProvider =
    StateNotifierProvider.autoDispose<SearchController, SearchState>((ref) {
      final repository = ref.watch(productRepositoryProvider);
      return SearchController(repository);
    });
