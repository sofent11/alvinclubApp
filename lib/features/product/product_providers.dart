import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/product_repository.dart';
import '../favorites/application/favorites_notifier.dart';

final productDetailProvider = FutureProvider.family<ProductDetail, String>((ref, productCode) async {
  final repo = ref.watch(productRepositoryProvider);
  return repo.getProductDetail(productCode);
});

final productSkusProvider = FutureProvider.family<List<ProductSku>, String>((ref, productCode) async {
  final repo = ref.watch(productRepositoryProvider);
  return repo.getProductSkus(productCode);
});

final productReviewsProvider = FutureProvider.family<({List<ProductReview> reviews, int total}), String>((ref, productCode) async {
  final repo = ref.watch(productRepositoryProvider);
  final result = await repo.getProductReviews(productCode, pageSize: 3);
  return (reviews: result.reviews, total: result.total);
});

final similarProductsProvider = FutureProvider.family<List<ProductItem>, String>((ref, productCode) async {
  final repo = ref.watch(productRepositoryProvider);
  return repo.getSimilarProducts(productCode);
});

final isFavoriteProvider = Provider.family<AsyncValue<bool>, String>((ref, productCode) {
  final favoritesState = ref.watch(favoritesNotifierProvider);
  return favoritesState.whenData(
    (items) => items.any((item) => item.productCode == productCode),
  );
});