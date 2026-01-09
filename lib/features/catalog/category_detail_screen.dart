import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

import '../../core/navigation/route_paths.dart';
import '../../shared/widgets/empty_state.dart';
import '../../shared/widgets/product_card.dart';
import 'catalog_providers.dart';

class CategoryDetailScreen extends ConsumerStatefulWidget {
  const CategoryDetailScreen({super.key, required this.id, this.title});

  final String id;
  final String? title;

  @override
  ConsumerState<CategoryDetailScreen> createState() => _CategoryDetailScreenState();
}

class _CategoryDetailScreenState extends ConsumerState<CategoryDetailScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 200) {
      ref.read(categoryProductsProvider(widget.id).notifier).loadMore();
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(categoryProductsProvider(widget.id));

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title ?? 'Category'),
      ),
      body: _buildBody(state),
    );
  }

  Widget _buildBody(CategoryProductsState state) {
    if (state.isLoading && state.products.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.error != null && state.products.isEmpty) {
      return ErrorState(
        title: 'Unable to load products',
        description: state.error,
        onRetry: () => ref.read(categoryProductsProvider(widget.id).notifier).loadFirstPage(),
      );
    }

    if (state.products.isEmpty) {
      return const EmptyState(
        type: EmptyStateType.search,
        title: 'No products found',
        description: 'Try a different category or check back later.',
      );
    }

    return MasonryGridView.count(
      controller: _scrollController,
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      padding: const EdgeInsets.all(10),
      itemCount: state.products.length + (state.isLoading ? 1 : 0),
      itemBuilder: (context, index) {
        if (index == state.products.length) {
          return const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: CircularProgressIndicator(),
            ),
          );
        }
        final product = state.products[index];
        return ProductCard(
          product: product,
          onTap: () => context.pushNamed(
            RoutePaths.productDetail,
            pathParameters: {'productCode': product.id},
          ),
        );
      },
    );
  }
}
