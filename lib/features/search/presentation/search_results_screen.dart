import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

import '../../../core/navigation/route_paths.dart';
import '../../../shared/widgets/product_card.dart';
import '../../../shared/widgets/empty_state.dart';
import '../application/search_history_notifier.dart';
import '../application/search_providers.dart';

class SearchResultsScreen extends ConsumerStatefulWidget {
  const SearchResultsScreen({super.key, required this.query});

  final String query;

  @override
  ConsumerState<SearchResultsScreen> createState() =>
      _SearchResultsScreenState();
}

class _SearchResultsScreenState extends ConsumerState<SearchResultsScreen> {
  late TextEditingController _controller;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.query);
    _scrollController.addListener(_onScroll);

    // Initial search
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(searchControllerProvider.notifier).search(widget.query);
    });
  }

  @override
  void didUpdateWidget(SearchResultsScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.query != widget.query) {
      _controller.text = widget.query;
      ref.read(searchControllerProvider.notifier).search(widget.query);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      ref.read(searchControllerProvider.notifier).loadMore();
    }
  }

  void _onSearch(String query) {
    if (query.trim().isEmpty) return;

    // Add to history
    ref.read(searchHistoryNotifierProvider.notifier).add(query);

    // Update URL and trigger search
    context.pushReplacement(
      Uri(
        path: RoutePaths.searchResults,
        queryParameters: {'q': query},
      ).toString(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(searchControllerProvider);

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 16),
          child: TextField(
            controller: _controller,
            textInputAction: TextInputAction.search,
            onSubmitted: _onSearch,
            decoration: InputDecoration(
              hintText: 'Search products...',
              prefixIcon: const Icon(Icons.search, color: Colors.grey),
              suffixIcon: IconButton(
                icon: const Icon(Icons.close, color: Colors.grey),
                onPressed: () {
                  _controller.clear();
                  context.pop(); // Go back to search screen? Or just clear?
                },
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
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: _buildFilterBar(state),
        ),
      ),
      body: _buildBody(state),
    );
  }

  Widget _buildFilterBar(SearchState state) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey[200]!)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _FilterButton(
            label: 'Relevance',
            isSelected: state.sortBy == null,
            onTap: () => ref
                .read(searchControllerProvider.notifier)
                .updateFilters(sortBy: null, sortOrder: null),
          ),
          _FilterButton(
            label: 'Price',
            isSelected: state.sortBy == 'price',
            icon: state.sortBy == 'price'
                ? (state.sortOrder == 'asc'
                      ? Icons.arrow_upward
                      : Icons.arrow_downward)
                : null,
            onTap: () {
              final newOrder =
                  (state.sortBy == 'price' && state.sortOrder == 'asc')
                  ? 'desc'
                  : 'asc';
              ref
                  .read(searchControllerProvider.notifier)
                  .updateFilters(sortBy: 'price', sortOrder: newOrder);
            },
          ),
          _FilterButton(
            label: 'New',
            isSelected: state.sortBy == 'new',
            onTap: () => ref
                .read(searchControllerProvider.notifier)
                .updateFilters(
                  sortBy:
                      'createTime', // Assuming backend uses createTime or similar
                  sortOrder: 'desc',
                ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody(SearchState state) {
    if (state.isLoading && state.results.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.error != null && state.results.isEmpty) {
      return ErrorState(
        title: 'Unable to load results',
        description: state.error,
        onRetry: () =>
            ref.read(searchControllerProvider.notifier).search(state.query),
      );
    }

    if (state.results.isEmpty) {
      return EmptySearchState(
        query: state.query,
        onClear: () {
          _controller.clear();
          context.pop();
        },
      );
    }

    return MasonryGridView.count(
      controller: _scrollController,
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      padding: const EdgeInsets.all(10),
      itemCount: state.results.length + (state.isLoading ? 1 : 0),
      itemBuilder: (context, index) {
        if (index == state.results.length) {
          return const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: CircularProgressIndicator(),
            ),
          );
        }
        final product = state.results[index];
        return ProductCard(
          product: product,
          aspectRatio: _staggeredAspectRatio(index),
          onTap: () => context.pushNamed(
            RoutePaths.productDetail,
            pathParameters: {'productCode': product.id},
          ),
        );
      },
    );
  }
}

double _staggeredAspectRatio(int index) {
  if (index % 3 == 0) return 1;
  if (index % 2 == 0) return 1.2;
  return 0.8;
}

class _FilterButton extends StatelessWidget {
  const _FilterButton({
    required this.label,
    required this.isSelected,
    this.icon,
    this.onTap,
  });

  final String label;
  final bool isSelected;
  final IconData? icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            Text(
              label,
              style: TextStyle(
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                color: isSelected ? Colors.black : Colors.grey,
              ),
            ),
            if (icon != null) ...[
              const SizedBox(width: 4),
              Icon(
                icon,
                size: 16,
                color: isSelected ? Colors.black : Colors.grey,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
