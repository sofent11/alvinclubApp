import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/product_repository.dart';

class ProductDetailState {
  const ProductDetailState({
    required this.selectedOptions,
    this.selectedSku,
    this.quantity = 1,
  });

  final Map<String, String> selectedOptions;
  final ProductSku? selectedSku;
  final int quantity;

  ProductDetailState copyWith({
    Map<String, String>? selectedOptions,
    ProductSku? selectedSku,
    int? quantity,
  }) {
    return ProductDetailState(
      selectedOptions: selectedOptions ?? this.selectedOptions,
      selectedSku: selectedSku ?? this.selectedSku,
      quantity: quantity ?? this.quantity,
    );
  }
}

class ProductDetailController extends StateNotifier<ProductDetailState> {
  ProductDetailController()
    : super(const ProductDetailState(selectedOptions: {}));

  void init(ProductDetail detail, List<ProductSku> skus) {
    if (state.selectedSku != null) return; // Already initialized

    Map<String, String> initialOptions = {};
    ProductSku? initialSku;

    // 1. Try recommended SKU
    if (detail.recommendedSkuCode != null) {
      try {
        initialSku = skus.firstWhere(
          (s) => s.code == detail.recommendedSkuCode,
        );
      } catch (_) {}
    }

    // 2. If no recommended, try first SKU (or if only one SKU)
    if (initialSku == null && skus.isNotEmpty) {
      initialSku = skus.first;
    }

    if (initialSku != null) {
      initialOptions = Map.from(initialSku.options);
    }

    state = state.copyWith(
      selectedOptions: initialOptions,
      selectedSku: initialSku,
      quantity: 1,
    );
  }

  void selectOption(String optionName, String value, List<ProductSku> skus) {
    final nextOptions = Map<String, String>.from(state.selectedOptions);
    nextOptions[optionName] = value;

    // Find matching SKU
    ProductSku? matchingSku;
    try {
      matchingSku = skus.firstWhere((sku) {
        if (sku.options.length != nextOptions.length) return false;
        for (final entry in nextOptions.entries) {
          if (sku.options[entry.key] != entry.value) return false;
        }
        return true;
      });
    } catch (_) {
      matchingSku = null;
    }

    state = state.copyWith(
      selectedOptions: nextOptions,
      selectedSku: matchingSku,
    );
  }

  void updateQuantity(int quantity) {
    if (quantity < 1) return;
    state = state.copyWith(quantity: quantity);
  }
}

final productDetailControllerProvider =
    StateNotifierProvider.autoDispose<
      ProductDetailController,
      ProductDetailState
    >((ref) {
      return ProductDetailController();
    });
