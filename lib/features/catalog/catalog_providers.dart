import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/product_repository.dart';

final categoriesProvider = FutureProvider<List<CategoryItem>>((ref) async {
  final repo = ref.watch(productRepositoryProvider);
  return repo.getProductCategories();
});
