import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/navigation/route_paths.dart';
import '../../../core/storage/search_history_store.dart';
import '../../../shared/widgets/themed_text.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    // Auto focus the search field
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _onSearch(String query) {
    if (query.trim().isEmpty) return;
    ref.read(searchHistoryProvider).add(query);
    context.push(
      Uri(path: RoutePaths.searchResults, queryParameters: {'q': query}).toString(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Padding(
          padding: const EdgeInsets.only(right: 16),
          child: TextField(
            controller: _controller,
            focusNode: _focusNode,
            textInputAction: TextInputAction.search,
            onSubmitted: _onSearch,
            decoration: InputDecoration(
              hintText: 'Search products...',
              prefixIcon: const Icon(Icons.search, color: Colors.grey),
              suffixIcon: IconButton(
                icon: const Icon(Icons.close, color: Colors.grey),
                onPressed: () => _controller.clear(),
              ),
              filled: true,
              fillColor: Colors.grey[100],
              contentPadding: EdgeInsets.zero,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ),
      body: _buildHistory(),
    );
  }

  Widget _buildHistory() {
    final historyFuture = ref.watch(searchHistoryFutureProvider);

    return historyFuture.when(
      data: (history) {
        if (history.isEmpty) return const SizedBox.shrink();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ThemedText('Search History', type: ThemedTextType.defaultSemiBold),
                  GestureDetector(
                    onTap: () {
                      ref.read(searchHistoryProvider).clear();
                      ref.invalidate(searchHistoryFutureProvider);
                    },
                    child: const Icon(Icons.delete_outline, size: 20, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: history.map((keyword) {
                return Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: ActionChip(
                    label: Text(keyword),
                    onPressed: () {
                      _controller.text = keyword;
                      _onSearch(keyword);
                    },
                    avatar: const Icon(Icons.history, size: 16, color: Colors.grey),
                    backgroundColor: Colors.grey[100],
                    side: BorderSide.none,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                );
              }).toList(),
            ),
          ],
        );
      },
      loading: () => const SizedBox.shrink(),
      error: (e, s) => const SizedBox.shrink(),
    );
  }
}

// Helper provider to watch history changes
final searchHistoryFutureProvider = FutureProvider.autoDispose<List<String>>((ref) {
  final store = ref.watch(searchHistoryProvider);
  return store.get();
});
