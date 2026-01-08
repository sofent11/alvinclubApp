import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'shared_storage.dart';
import 'storage_keys.dart';

class SearchHistoryStore {
  SearchHistoryStore(this._storage);

  static const int _maxItems = 10;
  final SharedStorage _storage;

  Future<List<String>> get() async {
    try {
      final data = await _storage.getString(StorageKeys.searchHistory);
      if (data == null || data.isEmpty) {
        return [];
      }
      final decoded = jsonDecode(data);
      if (decoded is List) {
        return decoded.whereType<String>().toList();
      }
      return [];
    } catch (error) {
      if (kDebugMode) {
        debugPrint('Failed to get search history: $error');
      }
      return [];
    }
  }

  Future<void> add(String keyword) async {
    final trimmed = keyword.trim();
    if (trimmed.isEmpty) return;

    try {
      final history = await get();
      final next = [trimmed, ...history.where((item) => item != trimmed)].take(_maxItems).toList();
      await _storage.setString(StorageKeys.searchHistory, jsonEncode(next));
    } catch (error) {
      if (kDebugMode) {
        debugPrint('Failed to add search history: $error');
      }
    }
  }

  Future<void> remove(String keyword) async {
    try {
      final history = await get();
      final next = history.where((item) => item != keyword).toList();
      await _storage.setString(StorageKeys.searchHistory, jsonEncode(next));
    } catch (error) {
      if (kDebugMode) {
        debugPrint('Failed to remove search history: $error');
      }
    }
  }

  Future<void> clear() async {
    try {
      await _storage.remove(StorageKeys.searchHistory);
    } catch (error) {
      if (kDebugMode) {
        debugPrint('Failed to clear search history: $error');
      }
    }
  }
}

final searchHistoryProvider = Provider<SearchHistoryStore>((ref) {
  return SearchHistoryStore(ref.read(sharedStorageProvider));
});
