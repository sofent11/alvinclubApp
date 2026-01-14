import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'shared_storage.dart';
import 'storage_keys.dart';

class FavoriteItem {
  FavoriteItem({
    required this.productCode,
    required this.productName,
    required this.imageUrl,
    required this.price,
    required this.addedAt,
    this.currency,
  });

  final String productCode;
  final String productName;
  final String imageUrl;
  final double price;
  final String addedAt;
  final String? currency;

  factory FavoriteItem.fromJson(Map<String, dynamic> json) {
    return FavoriteItem(
      productCode: json['productCode']?.toString() ?? '',
      productName: json['productName']?.toString() ?? '',
      imageUrl: json['imageUrl']?.toString() ?? '',
      price: _parseDouble(json['price']),
      currency: json['currency']?.toString(),
      addedAt: json['addedAt']?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
    'productCode': productCode,
    'productName': productName,
    'imageUrl': imageUrl,
    'price': price,
    'currency': currency,
    'addedAt': addedAt,
  };
}

class FavoritesStore {
  FavoritesStore(this._storage);

  final SharedStorage _storage;

  Future<List<FavoriteItem>> getFavorites() async {
    try {
      final data = await _storage.getString(StorageKeys.favorites);
      if (data == null || data.isEmpty) {
        return [];
      }
      final decoded = jsonDecode(data);
      if (decoded is List) {
        return decoded
            .whereType<Map<String, dynamic>>()
            .map(FavoriteItem.fromJson)
            .toList();
      }
      return [];
    } catch (error) {
      if (kDebugMode) {
        debugPrint('Failed to get favorites: $error');
      }
      return [];
    }
  }

  Future<bool> isFavorite(String productCode) async {
    try {
      final favorites = await getFavorites();
      return favorites.any((item) => item.productCode == productCode);
    } catch (error) {
      if (kDebugMode) {
        debugPrint('Failed to check favorite status: $error');
      }
      return false;
    }
  }

  Future<bool> addFavorite({
    required String productCode,
    required String productName,
    required String imageUrl,
    required double price,
    String? currency,
  }) async {
    try {
      final favorites = await getFavorites();
      if (favorites.any((item) => item.productCode == productCode)) {
        return true;
      }

      final newFavorite = FavoriteItem(
        productCode: productCode,
        productName: productName,
        imageUrl: imageUrl,
        price: price,
        currency: currency,
        addedAt: DateTime.now().toIso8601String(),
      );

      favorites.insert(0, newFavorite);
      await _storage.setString(
        StorageKeys.favorites,
        jsonEncode(favorites.map((item) => item.toJson()).toList()),
      );
      return true;
    } catch (error) {
      if (kDebugMode) {
        debugPrint('Failed to add favorite: $error');
      }
      return false;
    }
  }

  Future<bool> removeFavorite(String productCode) async {
    try {
      final favorites = await getFavorites();
      final next = favorites
          .where((item) => item.productCode != productCode)
          .toList();

      if (next.length == favorites.length) {
        return false;
      }

      await _storage.setString(
        StorageKeys.favorites,
        jsonEncode(next.map((item) => item.toJson()).toList()),
      );
      return true;
    } catch (error) {
      if (kDebugMode) {
        debugPrint('Failed to remove favorite: $error');
      }
      return false;
    }
  }

  Future<bool> toggleFavorite({
    required String productCode,
    required String productName,
    required String imageUrl,
    required double price,
    String? currency,
  }) async {
    final currentlyFavorite = await isFavorite(productCode);
    if (currentlyFavorite) {
      return removeFavorite(productCode);
    }
    return addFavorite(
      productCode: productCode,
      productName: productName,
      imageUrl: imageUrl,
      price: price,
      currency: currency,
    );
  }

  Future<bool> clearFavorites() async {
    try {
      await _storage.remove(StorageKeys.favorites);
      return true;
    } catch (error) {
      if (kDebugMode) {
        debugPrint('Failed to clear favorites: $error');
      }
      return false;
    }
  }
}

final favoritesStoreProvider = Provider<FavoritesStore>((ref) {
  return FavoritesStore(ref.read(sharedStorageProvider));
});

double _parseDouble(Object? value) {
  if (value is num) {
    return value.toDouble();
  }
  if (value is String) {
    return double.tryParse(value) ?? 0;
  }
  return 0;
}
