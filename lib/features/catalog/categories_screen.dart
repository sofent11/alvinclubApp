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
import '../../shared/widgets/themed_text.dart';
import 'catalog_providers.dart';

class CategoriesScreen extends ConsumerStatefulWidget {
  const CategoriesScreen({super.key});

  @override
  ConsumerState<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends ConsumerState<CategoriesScreen> {
  String? _selectedLevel1Id;
  String? _selectedLevel2Id;

  void _onLevel1Tap(CategoryItem category) {
    setState(() {
      _selectedLevel1Id = category.id;
      final children = category.children;
      _selectedLevel2Id = (children != null && children.isNotEmpty)
          ? children.first.id
          : null;
    });
  }

  void _onLevel2Tap(CategoryItem category) {
    setState(() {
      _selectedLevel2Id = category.id;
    });
  }

  @override
  Widget build(BuildContext context) {
    final categoriesAsync = ref.watch(categoriesProvider);

    return Scaffold(
      backgroundColor: context.appColors.background,
      body: SafeArea(
        child: categoriesAsync.when(
          data: (categories) {
            if (categories.isEmpty) {
              return const EmptyState(
                type: EmptyStateType.error,
                title: 'No categories available',
                description: 'Please check back later.',
              );
            }

            final activeLevel1Id = _selectedLevel1Id ?? categories.first.id;
            final activeLevel1 = categories.firstWhere(
              (category) => category.id == activeLevel1Id,
              orElse: () => categories.first,
            );
            final level2Categories =
                activeLevel1.children ?? const <CategoryItem>[];
            final activeLevel2Id =
                _selectedLevel2Id ??
                (level2Categories.isNotEmpty
                    ? level2Categories.first.id
                    : null);
            final activeLevel2 = activeLevel2Id == null
                ? null
                : level2Categories.firstWhere(
                    (category) => category.id == activeLevel2Id,
                    orElse: () => level2Categories.first,
                  );

            return Column(
              children: [
                const SizedBox(height: 6),
                _CategoryHeaderBar(
                  onSearchTap: () => context.push(RoutePaths.search),
                ),
                _Level1Tabs(
                  items: categories,
                  activeId: activeLevel1.id,
                  onTap: _onLevel1Tap,
                ),
                Expanded(
                  child: Row(
                    children: [
                      _Level2Sidebar(
                        items: level2Categories,
                        activeId: activeLevel2?.id,
                        onTap: _onLevel2Tap,
                      ),
                      Expanded(
                        child: activeLevel2 == null
                            ? const EmptyState(
                                type: EmptyStateType.search,
                                title: 'No subcategories',
                                description: 'Please select another category.',
                              )
                            : _CategoryContent(
                                level2Category: activeLevel2,
                                level3Categories:
                                    activeLevel2.children ?? const [],
                              ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (err, _) => ErrorState(
            title: 'Unable to load categories',
            description: err.toString(),
            onRetry: () => ref.invalidate(categoriesProvider),
          ),
        ),
      ),
    );
  }
}

class _CategoryHeaderBar extends StatelessWidget {
  const _CategoryHeaderBar({required this.onSearchTap});

  final VoidCallback onSearchTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
      child: Row(
        children: [
          const ThemedText(
            "Alvin's Club",
            type: ThemedTextType.title,
            style: TextStyle(
              fontSize: 20,
              height: 1.1,
              fontWeight: FontWeight.w600,
              fontFamily: 'serif',
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: GestureDetector(
              onTap: onSearchTap,
              child: Container(
                height: 34,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: colors.surface,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: colors.border),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search, color: colors.textMuted, size: 16),
                    const SizedBox(width: 6),
                    Expanded(
                      child: Text(
                        'Product URL Or Ask A Q...',
                        style: TextStyle(color: colors.textMuted, fontSize: 13),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Icon(
                      Icons.photo_camera_outlined,
                      color: colors.textMuted,
                      size: 16,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Level1Tabs extends StatelessWidget {
  const _Level1Tabs({
    required this.items,
    required this.activeId,
    required this.onTap,
  });

  final List<CategoryItem> items;
  final String activeId;
  final ValueChanged<CategoryItem> onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return SizedBox(
      height: 36,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: items.length,
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final item = items[index];
          final isActive = item.id == activeId;
          return InkWell(
            onTap: () => onTap(item),
            borderRadius: BorderRadius.circular(16),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: isActive ? colors.text : Colors.transparent,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Text(
                  item.name,
                  style: TextStyle(
                    color: isActive ? colors.surface : colors.text,
                    fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _Level2Sidebar extends StatelessWidget {
  const _Level2Sidebar({
    required this.items,
    required this.activeId,
    required this.onTap,
  });

  final List<CategoryItem> items;
  final String? activeId;
  final ValueChanged<CategoryItem> onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return Container(
      width: 86,
      color: colors.surface,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          final isActive = item.id == activeId;
          return InkWell(
            onTap: () => onTap(item),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              color: isActive ? colors.background : Colors.transparent,
              child: Row(
                children: [
                  Container(
                    width: 3,
                    height: 18,
                    decoration: BoxDecoration(
                      color: isActive ? colors.text : Colors.transparent,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      item.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 11,
                        color: isActive ? colors.text : colors.textMuted,
                        fontWeight: isActive
                            ? FontWeight.w600
                            : FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _CategoryContent extends ConsumerStatefulWidget {
  const _CategoryContent({
    required this.level2Category,
    required this.level3Categories,
  });

  final CategoryItem level2Category;
  final List<CategoryItem> level3Categories;

  @override
  ConsumerState<_CategoryContent> createState() => _CategoryContentState();
}

class _CategoryContentState extends ConsumerState<_CategoryContent> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void didUpdateWidget(covariant _CategoryContent oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.level2Category.id != widget.level2Category.id) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (_scrollController.hasClients) {
          _scrollController.jumpTo(0);
        }
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      ref
          .read(categoryHotProductsProvider(widget.level2Category.id).notifier)
          .loadMore();
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(
      categoryHotProductsProvider(widget.level2Category.id),
    );

    return Padding(
      padding: const EdgeInsets.all(12),
      child: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                children: [
                  ThemedText(
                    widget.level2Category.name,
                    type: ThemedTextType.defaultSemiBold,
                    style: const TextStyle(fontSize: 14),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      context.push(
                        '${RoutePaths.categoryDetail.replaceFirst(':id', widget.level2Category.id)}?title=${Uri.encodeComponent(widget.level2Category.name)}',
                      );
                    },
                    child: const Text(
                      'VIEW ALL >',
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (widget.level3Categories.isNotEmpty)
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.85,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
              ),
              delegate: SliverChildBuilderDelegate((context, index) {
                final child = widget.level3Categories[index];
                return _Level3Tile(
                  category: child,
                  parentId: widget.level2Category.id,
                  parentName: widget.level2Category.name,
                );
              }, childCount: widget.level3Categories.length),
            ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          const SliverToBoxAdapter(
            child: ThemedText('Recommend', type: ThemedTextType.subtitle),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 12)),
          if (state.isLoading && state.products.isEmpty)
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 24),
                child: Center(child: CircularProgressIndicator()),
              ),
            )
          else if (state.error != null && state.products.isEmpty)
            SliverToBoxAdapter(
              child: ErrorState(
                title: 'Unable to load recommendations',
                description: state.error,
                onRetry: () => ref
                    .read(
                      categoryHotProductsProvider(
                        widget.level2Category.id,
                      ).notifier,
                    )
                    .loadFirstPage(),
              ),
            )
          else if (state.products.isEmpty)
            const SliverToBoxAdapter(
              child: EmptyState(
                type: EmptyStateType.search,
                title: 'No recommendations',
                description: 'Try another category.',
              ),
            )
          else
            SliverMasonryGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childCount: state.products.length,
              itemBuilder: (context, index) {
                final product = state.products[index];
                return ProductCard(
                  product: product,
                  variant: ProductCardVariant.compact,
                  onTap: () => context.push(
                    RoutePaths.productDetail.replaceFirst(
                      ':productCode',
                      product.id,
                    ),
                  ),
                );
              },
            ),
          if (state.isLoading && state.products.isNotEmpty)
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Center(child: CircularProgressIndicator()),
              ),
            ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
        ],
      ),
    );
  }
}

class _Level3Tile extends StatelessWidget {
  const _Level3Tile({
    required this.category,
    required this.parentId,
    required this.parentName,
  });

  final CategoryItem category;
  final String parentId;
  final String parentName;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return InkWell(
      onTap: () {
        context.push(
          '${RoutePaths.categoryDetail.replaceFirst(':id', parentId)}?title=${Uri.encodeComponent(parentName)}&selected=${Uri.encodeComponent(category.id)}',
        );
      },
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: colors.mutedBackground,
                borderRadius: BorderRadius.circular(8),
              ),
              child: category.iconUrl != null
                  ? CachedNetworkImage(
                      imageUrl: category.iconUrl!,
                      fit: BoxFit.contain,
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.image_not_supported),
                    )
                  : Icon(Icons.image, color: colors.textMuted),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            category.name,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 10, color: colors.text),
          ),
        ],
      ),
    );
  }
}
