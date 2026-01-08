import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/storage/favorites_store.dart';

class FavoritesNotifier extends StateNotifier<AsyncValue<List<FavoriteItem>>> {
  FavoritesNotifier(this._store) : super(const AsyncValue.loading()) {
    _load();
  }

  final FavoritesStore _store;

  Future<void> _load() async {
    try {
      final favorites = await _store.getFavorites();
      state = AsyncValue.data(favorites);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> add(FavoriteItem item) async {
    try {
      await _store.addFavorite(
        productCode: item.productCode,
        productName: item.productName,
        imageUrl: item.imageUrl,
        price: item.price,
        currency: item.currency,
      );
      await _load();
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> remove(String productCode) async {
    try {
      await _store.removeFavorite(productCode);
      await _load();
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> toggle(FavoriteItem item) async {
    try {
      await _store.toggleFavorite(
        productCode: item.productCode,
        productName: item.productName,
        imageUrl: item.imageUrl,
        price: item.price,
        currency: item.currency,
      );
      await _load();
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> clear() async {
    try {
      await _store.clearFavorites();
      await _load();
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  bool isFavorite(String productCode) {
    return state.value?.any((item) => item.productCode == productCode) ?? false;
  }
}

final favoritesNotifierProvider =
    StateNotifierProvider<FavoritesNotifier, AsyncValue<List<FavoriteItem>>>((
      ref,
    ) {
      final store = ref.watch(favoritesStoreProvider);
      return FavoritesNotifier(store);
    });

final isFavoriteProvider = Provider.family<bool, String>((ref, productCode) {
  final favorites = ref.watch(favoritesNotifierProvider);
  return favorites.value?.any((item) => item.productCode == productCode) ??
      false;
});
