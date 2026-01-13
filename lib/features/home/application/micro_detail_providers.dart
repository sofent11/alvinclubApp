import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/repositories/product_repository.dart';

class MicroDetailState {
  const MicroDetailState({
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

  MicroDetailState copyWith({
    List<ProductItem>? products,
    bool? isLoading,
    bool? hasMore,
    int? page,
    String? error,
  }) {
    return MicroDetailState(
      products: products ?? this.products,
      isLoading: isLoading ?? this.isLoading,
      hasMore: hasMore ?? this.hasMore,
      page: page ?? this.page,
      error: error,
    );
  }
}

class MicroDetailNotifier extends StateNotifier<MicroDetailState> {
  MicroDetailNotifier(this._repository, this._initialProduct)
    : super(
        MicroDetailState(products: [_initialProduct], hasMore: true, page: 0),
      ) {
    loadMore();
  }

  final ProductRepository _repository;
  final ProductItem _initialProduct;
  static const int _pageSize = 10;

  Future<void> loadMore() async {
    if (state.isLoading || !state.hasMore) return;

    final nextPage = state.page + 1;
    // We don't want to show full loading indicator since we have at least one item
    state = state.copyWith(isLoading: true, error: null);

    try {
      final response = await _repository.getHotProductsV3(
        params: ProductListParams(page: nextPage, pageSize: _pageSize),
      );

      // Filter out the initial product if it exists in the response to avoid duplicates
      final newProducts = response.products
          .where((p) => p.id != _initialProduct.id)
          .toList();

      state = state.copyWith(
        products: [...state.products, ...newProducts],
        hasMore: response.hasMore,
        page: nextPage,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
}

final microDetailProvider = StateNotifierProvider.family
    .autoDispose<MicroDetailNotifier, MicroDetailState, ProductItem>((
      ref,
      product,
    ) {
      final repo = ref.watch(productRepositoryProvider);
      return MicroDetailNotifier(repo, product);
    });
