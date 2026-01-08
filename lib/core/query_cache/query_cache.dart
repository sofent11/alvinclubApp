import 'package:flutter_riverpod/flutter_riverpod.dart';

class CacheEntry<T> {
  CacheEntry({required this.value, required this.createdAt, required this.staleTime});

  final T value;
  final DateTime createdAt;
  final Duration staleTime;

  bool get isStale => DateTime.now().difference(createdAt) > staleTime;
}

class QueryCache {
  final Map<String, CacheEntry<dynamic>> _entries = <String, CacheEntry<dynamic>>{};

  T? get<T>(String key) {
    final entry = _entries[key];
    if (entry == null) return null;
    return entry.value as T;
  }

  bool isFresh(String key) {
    final entry = _entries[key];
    if (entry == null) return false;
    return !entry.isStale;
  }

  void set<T>(String key, T value, {Duration staleTime = const Duration(seconds: 0)}) {
    _entries[key] = CacheEntry<T>(
      value: value,
      createdAt: DateTime.now(),
      staleTime: staleTime,
    );
  }

  void invalidate(String key) {
    _entries.remove(key);
  }

  void clear() {
    _entries.clear();
  }
}

final queryCacheProvider = Provider<QueryCache>((ref) => QueryCache());
