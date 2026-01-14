import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/cart_repository.dart';
import 'cart_controller.dart';

final cartProvider = FutureProvider<CartPayload>((ref) async {
  final repo = ref.watch(cartRepositoryProvider);
  return repo.getCart();
});

final cartPricingProvider = FutureProvider<CartPricing>((ref) async {
  final selection = ref.watch(cartControllerProvider).selectedSkuCodes;
  final cartValue = ref.watch(cartProvider).valueOrNull;

  if (selection.isEmpty || cartValue == null) {
    return const CartPricing(settlementAmount: 0);
  }

  final itemsToPrice = cartValue.items
      .where((item) => selection.contains(item.skuCode))
      .map(
        (item) => CartPricingRequestItem(
          skuCode: item.skuCode,
          quantity: item.quantity,
        ),
      )
      .toList();

  if (itemsToPrice.isEmpty) {
    return const CartPricing(settlementAmount: 0);
  }

  final repo = ref.watch(cartRepositoryProvider);
  return repo.calculateCartPricing(itemsToPrice);
});
