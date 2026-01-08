import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/storage/favorites_store.dart';
import '../../data/repositories/product_repository.dart';

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

final isFavoriteProvider = FutureProvider.family<bool, String>((ref, productCode) async {
  final store = ref.watch(favoritesStoreProvider);
  return store.isFavorite(productCode);
});