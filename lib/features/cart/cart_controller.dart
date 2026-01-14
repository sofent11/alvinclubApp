import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/cart_repository.dart';
import 'cart_providers.dart';

class CartState {
  const CartState({this.selectedSkuCodes = const {}, this.isUpdating = false});

  final Set<String> selectedSkuCodes;
  final bool isUpdating;

  CartState copyWith({Set<String>? selectedSkuCodes, bool? isUpdating}) {
    return CartState(
      selectedSkuCodes: selectedSkuCodes ?? this.selectedSkuCodes,
      isUpdating: isUpdating ?? this.isUpdating,
    );
  }
}

class CartController extends StateNotifier<CartState> {
  CartController(this._ref) : super(const CartState());

  final Ref _ref;
  bool _initialized = false;

  void init(List<CartLineItem> items) {
    if (_initialized) return;
    final available = items
        .where((item) => item.status == 'available')
        .map((item) => item.skuCode)
        .toSet();
    state = state.copyWith(selectedSkuCodes: available);
    _initialized = true;
  }

  void toggleItem(String skuCode) {
    final current = Set<String>.from(state.selectedSkuCodes);
    if (current.contains(skuCode)) {
      current.remove(skuCode);
    } else {
      current.add(skuCode);
    }
    state = state.copyWith(selectedSkuCodes: current);
  }

  void toggleAll(List<CartLineItem> items) {
    final available = items
        .where((item) => item.status == 'available')
        .toList();
    final allSelected = available.every(
      (item) => state.selectedSkuCodes.contains(item.skuCode),
    );

    if (allSelected) {
      state = state.copyWith(selectedSkuCodes: {});
    } else {
      final allCodes = available.map((item) => item.skuCode).toSet();
      state = state.copyWith(selectedSkuCodes: allCodes);
    }
  }

  Future<void> updateQuantity(String skuCode, int quantity) async {
    state = state.copyWith(isUpdating: true);
    try {
      final repo = _ref.read(cartRepositoryProvider);
      await repo.updateCart(
        UpdateCartInput(
          type: 'update',
          items: [UpdateCartItem(skuCode: skuCode, quantity: quantity)],
        ),
      );
      _ref.invalidate(cartProvider);
    } finally {
      state = state.copyWith(isUpdating: false);
    }
  }

  Future<void> removeItems(List<String> skuCodes) async {
    state = state.copyWith(isUpdating: true);
    try {
      final repo = _ref.read(cartRepositoryProvider);
      await repo.updateCart(
        UpdateCartInput(
          type: 'delete',
          items: skuCodes.map((code) => UpdateCartItem(skuCode: code)).toList(),
        ),
      );

      final nextSelection = Set<String>.from(state.selectedSkuCodes);
      nextSelection.removeAll(skuCodes);
      state = state.copyWith(selectedSkuCodes: nextSelection);

      _ref.invalidate(cartProvider);
    } finally {
      state = state.copyWith(isUpdating: false);
    }
  }
}

final cartControllerProvider = StateNotifierProvider<CartController, CartState>(
  (ref) {
    return CartController(ref);
  },
);
