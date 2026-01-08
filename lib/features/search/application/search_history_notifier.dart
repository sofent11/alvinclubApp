import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/storage/search_history_store.dart';

class SearchHistoryNotifier extends StateNotifier<AsyncValue<List<String>>> {
  SearchHistoryNotifier(this._store) : super(const AsyncValue.loading()) {
    _load();
  }

  final SearchHistoryStore _store;

  Future<void> _load() async {
    try {
      final history = await _store.get();
      state = AsyncValue.data(history);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> add(String keyword) async {
    try {
      await _store.add(keyword);
      await _load();
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> remove(String keyword) async {
    try {
      await _store.remove(keyword);
      await _load();
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> clear() async {
    try {
      await _store.clear();
      await _load();
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}

final searchHistoryNotifierProvider =
    StateNotifierProvider<SearchHistoryNotifier, AsyncValue<List<String>>>((ref) {
  final store = ref.watch(searchHistoryProvider);
  return SearchHistoryNotifier(store);
});
