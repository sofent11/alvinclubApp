import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/home_repository.dart';
import '../../data/repositories/product_repository.dart';

final homeConfigProvider = FutureProvider<Map<String, dynamic>>((ref) async {
  final repo = ref.watch(homeRepositoryProvider);
  return repo.getHomeConfig();
});

final hotProductsProvider = FutureProvider<List<ProductItem>>((ref) async {
  final repo = ref.watch(productRepositoryProvider);
  final response = await repo.getHotProductsV2(params: const ProductListParams(pageSize: 20));
  return response.products;
});

final flashSaleProductsProvider = FutureProvider<List<ProductItem>>((ref) async {
  final repo = ref.watch(productRepositoryProvider);
  final response = await repo.getFlashSaleProducts(params: const ProductListParams(pageSize: 10));
  return response.products;
});
