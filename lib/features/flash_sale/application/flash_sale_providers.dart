import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/repositories/product_repository.dart';

final flashSaleActivitiesProvider =
    FutureProvider.autoDispose<List<FlashSaleActivity>>((ref) async {
      final repo = ref.watch(productRepositoryProvider);
      return repo.getFlashSaleActivities();
    });

final flashSaleCategoriesProvider =
    FutureProvider.autoDispose<List<CategoryItem>>((ref) async {
      final repo = ref.watch(productRepositoryProvider);
      return repo.getProductCategories();
    });

class FlashSaleProductsState {
  const FlashSaleProductsState({
    this.products = const [],
    this.isLoading = false,
    this.hasMore = false,
    this.page = 1,
    this.error,
    this.categoryName,
    this.targetProductCode,
  });

  final List<ProductItem> products;
  final bool isLoading;
  final bool hasMore;
  final int page;
  final String? error;
  final String? categoryName;
  final String? targetProductCode;

  FlashSaleProductsState copyWith({
    List<ProductItem>? products,
    bool? isLoading,
    bool? hasMore,
    int? page,
    String? error,
    String? categoryName,
    String? targetProductCode,
  }) {
    return FlashSaleProductsState(
      products: products ?? this.products,
      isLoading: isLoading ?? this.isLoading,
      hasMore: hasMore ?? this.hasMore,
      page: page ?? this.page,
      error: error,
      categoryName: categoryName ?? this.categoryName,
      targetProductCode: targetProductCode ?? this.targetProductCode,
    );
  }
}

class FlashSaleProductsNotifier extends StateNotifier<FlashSaleProductsState> {
  FlashSaleProductsNotifier(this._repository, this._activityId)
    : super(const FlashSaleProductsState()) {
    loadFirstPage();
  }

  final ProductRepository _repository;
  final String _activityId;
  static const int _pageSize = 20;

  void setCategory(String? categoryName) {
    if (state.categoryName == categoryName) return;
    state = state.copyWith(categoryName: categoryName);
    loadFirstPage();
  }

  void setTargetProductCode(String? productCode) {
    if (state.targetProductCode == productCode) return;
    state = state.copyWith(targetProductCode: productCode);
    loadFirstPage();
  }

  Future<void> loadFirstPage() async {
    state = state.copyWith(isLoading: true, error: null, products: []);
    try {
      final response = await _repository.getFlashSaleActivityProducts(
        _activityId,
        page: 1,
        pageSize: _pageSize,
        categoryName: state.categoryName,
        productCode: state.targetProductCode,
      );
      if (!mounted) return;
      state = state.copyWith(
        products: response.products,
        hasMore: response.hasMore,
        page: 1,
        isLoading: false,
      );
    } catch (e) {
      if (!mounted) return;
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> loadMore() async {
    if (state.isLoading || !state.hasMore) return;

    final nextPage = state.page + 1;
    state = state.copyWith(isLoading: true);

    try {
      final response = await _repository.getFlashSaleActivityProducts(
        _activityId,
        page: nextPage,
        pageSize: _pageSize,
        categoryName: state.categoryName,
        productCode: state.targetProductCode,
      );
      if (!mounted) return;
      state = state.copyWith(
        products: [...state.products, ...response.products],
        hasMore: response.hasMore,
        page: nextPage,
        isLoading: false,
      );
    } catch (e) {
      if (!mounted) return;
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
}

final flashSaleProductsProvider = StateNotifierProvider.family
    .autoDispose<FlashSaleProductsNotifier, FlashSaleProductsState, String>((
      ref,
      activityId,
    ) {
      final repo = ref.watch(productRepositoryProvider);
      return FlashSaleProductsNotifier(repo, activityId);
    });
