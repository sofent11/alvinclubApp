import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

import '../../core/navigation/route_paths.dart';
import '../../core/theme/app_theme.dart';
import '../../data/repositories/product_repository.dart';
import '../../shared/widgets/empty_state.dart';
import '../../shared/widgets/product_card.dart';
import 'catalog_providers.dart';

class CategoryDetailScreen extends ConsumerStatefulWidget {
  const CategoryDetailScreen({
    super.key,
    required this.id,
    this.title,
    this.selectedId,
  });

  final String id;
  final String? title;
  final String? selectedId;

  @override
  ConsumerState<CategoryDetailScreen> createState() =>
      _CategoryDetailScreenState();
}

class _CategoryDetailScreenState extends ConsumerState<CategoryDetailScreen> {
  final ScrollController _scrollController = ScrollController();
  String? _selectedCategoryId;

  @override
  void initState() {
    super.initState();
    _selectedCategoryId =
        (widget.selectedId == null || widget.selectedId!.isEmpty)
        ? widget.id
        : widget.selectedId;
    _scrollController.addListener(_onScroll);
  }

  @override
  void didUpdateWidget(covariant CategoryDetailScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.id != widget.id ||
        oldWidget.selectedId != widget.selectedId) {
      setState(() {
        _selectedCategoryId =
            (widget.selectedId == null || widget.selectedId!.isEmpty)
            ? widget.id
            : widget.selectedId;
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      final activeId = _selectedCategoryId ?? widget.id;
      ref.read(categoryProductsProvider(activeId).notifier).loadMore();
    }
  }

  @override
  Widget build(BuildContext context) {
    final activeId = _selectedCategoryId ?? widget.id;
    final state = ref.watch(categoryProductsProvider(activeId));
    final categoriesAsync = ref.watch(categoriesProvider);

    return Scaffold(
      appBar: AppBar(title: Text(widget.title ?? 'Category')),
      body: Column(
        children: [
          categoriesAsync.when(
            data: (categories) {
              final currentCategory = _findCategory(categories, widget.id);
              final children =
                  currentCategory?.children ?? const <CategoryItem>[];
              if (children.isEmpty) return const SizedBox.shrink();
              return _SubCategorySelector(
                items: children,
                parentId: widget.id,
                parentName: widget.title ?? currentCategory?.name ?? 'Category',
                selectedId: activeId,
                onSelected: (id) {
                  setState(() {
                    _selectedCategoryId = id;
                  });
                  if (_scrollController.hasClients) {
                    _scrollController.jumpTo(0);
                  }
                },
              );
            },
            loading: () => const SizedBox.shrink(),
            error: (error, stack) => const SizedBox.shrink(),
          ),
          Expanded(child: _buildBody(state, activeId)),
        ],
      ),
    );
  }

  Widget _buildBody(CategoryProductsState state, String categoryId) {
    if (state.isLoading && state.products.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.error != null && state.products.isEmpty) {
      return ErrorState(
        title: 'Unable to load products',
        description: state.error,
        onRetry: () => ref
            .read(categoryProductsProvider(categoryId).notifier)
            .loadFirstPage(),
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

CategoryItem? _findCategory(List<CategoryItem> categories, String id) {
  for (final category in categories) {
    if (category.id == id) return category;
    final children = category.children;
    if (children != null && children.isNotEmpty) {
      final result = _findCategory(children, id);
      if (result != null) return result;
    }
  }
  return null;
}

class _SubCategorySelector extends StatelessWidget {
  const _SubCategorySelector({
    required this.items,
    required this.parentId,
    required this.parentName,
    required this.selectedId,
    required this.onSelected,
  });

  final List<CategoryItem> items;
  final String parentId;
  final String parentName;
  final String selectedId;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return Container(
      height: 110,
      color: colors.background,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        itemCount: items.length + 1,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final isAll = index == 0;
          final item = isAll ? null : items[index - 1];
          final itemId = isAll ? parentId : item!.id;
          final isSelected = selectedId == itemId;

          return InkWell(
            onTap: () => onSelected(itemId),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    color: colors.mutedBackground,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: isSelected ? colors.text : colors.border,
                      width: isSelected ? 2 : 1,
                    ),
                  ),
                  child: isAll
                      ? Icon(
                          Icons.grid_view_rounded,
                          color: isSelected ? colors.text : colors.textMuted,
                          size: 26,
                        )
                      : ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: item?.iconUrl != null
                              ? CachedNetworkImage(
                                  imageUrl: item!.iconUrl!,
                                  fit: BoxFit.cover,
                                  errorWidget: (context, url, error) => Icon(
                                    Icons.image_not_supported,
                                    color: colors.textMuted,
                                  ),
                                )
                              : Icon(Icons.category, color: colors.textMuted),
                        ),
                ),
                const SizedBox(height: 6),
                SizedBox(
                  width: 64,
                  child: Text(
                    isAll ? 'ALL' : item?.name ?? parentName,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: isSelected
                          ? FontWeight.w600
                          : FontWeight.w500,
                      color: isSelected ? colors.text : colors.textMuted,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

double _staggeredAspectRatio(int index) {
  if (index % 3 == 0) return 1;
  if (index % 2 == 0) return 1.2;
  return 0.8;
}
