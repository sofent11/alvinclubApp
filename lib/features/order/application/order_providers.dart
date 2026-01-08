import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/repositories/order_repository.dart';

// --- Providers ---

final orderStatusCountProvider = FutureProvider.autoDispose<OrderStatusCount>((ref) async {
  final repo = ref.watch(orderRepositoryProvider);
  return repo.getOrderStatusCount();
});

class OrderListState {
  const OrderListState({
    this.orders = const [],
    this.total = 0,
    this.page = 1,
    this.hasMore = false,
    this.isLoading = false,
    this.error,
    this.frontStatus,
  });

  final List<OrderListItem> orders;
  final int total;
  final int page;
  final bool hasMore;
  final bool isLoading;
  final String? error;
  final String? frontStatus;

  OrderListState copyWith({
    List<OrderListItem>? orders,
    int? total,
    int? page,
    bool? hasMore,
    bool? isLoading,
    String? error,
    String? frontStatus,
  }) {
    return OrderListState(
      orders: orders ?? this.orders,
      total: total ?? this.total,
      page: page ?? this.page,
      hasMore: hasMore ?? this.hasMore,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      frontStatus: frontStatus ?? this.frontStatus,
    );
  }
}

class OrderListNotifier extends StateNotifier<OrderListState> {
  OrderListNotifier(this._repository, {String? frontStatus})
      : super(OrderListState(frontStatus: frontStatus)) {
    loadFirstPage();
  }

  final OrderRepository _repository;
  static const int _pageSize = 10;

  Future<void> loadFirstPage() async {
    state = state.copyWith(isLoading: true, error: null, page: 1, orders: []);
    try {
      final response = await _repository.getOrderList(
        OrderListParams(
          page: 1,
          pageSize: _pageSize,
          frontStatus: state.frontStatus,
        ),
      );
      state = state.copyWith(
        orders: response.records,
        total: response.total,
        page: 1,
        hasMore: response.current * response.pageSize < response.total,
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
      final response = await _repository.getOrderList(
        OrderListParams(
          page: nextPage,
          pageSize: _pageSize,
          frontStatus: state.frontStatus,
        ),
      );

      state = state.copyWith(
        orders: [...state.orders, ...response.records],
        total: response.total,
        page: nextPage,
        hasMore: response.current * response.pageSize < response.total,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> refresh() async {
    await loadFirstPage();
  }
}

// Family provider to cache order lists by status
final orderListProvider =
    StateNotifierProvider.family.autoDispose<OrderListNotifier, OrderListState, String?>(
  (ref, frontStatus) {
    final repo = ref.watch(orderRepositoryProvider);
    return OrderListNotifier(repo, frontStatus: frontStatus);
  },
);