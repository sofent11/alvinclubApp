import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/navigation/route_paths.dart';
import '../../../core/theme/app_theme.dart';
import '../../../data/repositories/product_repository.dart';
import '../../../shared/widgets/themed_text.dart';
import '../home_models.dart';
import '../home_providers.dart';

class PremiumDupeSheet extends ConsumerStatefulWidget {
  const PremiumDupeSheet({super.key});

  static Future<void> show(BuildContext context) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => const PremiumDupeSheet(),
    );
  }

  @override
  ConsumerState<PremiumDupeSheet> createState() => _PremiumDupeSheetState();
}

class _PremiumDupeSheetState extends ConsumerState<PremiumDupeSheet> {
  final PageController _pageController = PageController();
  final ScrollController _scrollController = ScrollController();
  int _heroIndex = 0;
  int? _activeCategoryId;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_handleScroll);
  }

  @override
  void dispose() {
    _pageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _handleScroll() {
    if (!_scrollController.hasClients) return;
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 200) {
      ref.read(premiumDupePageProvider(_activeCategoryId).notifier).loadMore();
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final size = MediaQuery.of(context).size;
    final insets = MediaQuery.of(context).padding;
    final heroHeight = size.width * 0.7;
    final maxHeight = size.height - insets.top - 36;

    final configAsync = ref.watch(premiumInspiredConfigProvider);
    final metaAsync = ref.watch(premiumDupeMetaProvider);
    final pageState = ref.watch(premiumDupePageProvider(_activeCategoryId));

    final configItems = configAsync.valueOrNull ?? const <PremiumInspiredConfigItem>[];
    final activeConfig = configItems.isNotEmpty
        ? configItems[_heroIndex.clamp(0, configItems.length - 1)]
        : null;

    final tabsBackground = _parseColor(activeConfig?.tabsBackgroundColor) ?? colors.surface;
    final tabNormal = _parseColor(activeConfig?.tabNormalColor) ?? colors.textMuted;
    final tabSelected = _parseColor(activeConfig?.tabSelectedColor) ?? colors.text;

    final categories = metaAsync.valueOrNull ?? const <PremiumDupeCategory>[];

    return Material(
      color: Colors.transparent,
      child: Stack(
        children: [
          Positioned.fill(
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Container(color: colors.overlay.withValues(alpha: 0.35)),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: maxHeight,
              decoration: BoxDecoration(
                color: colors.surface,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
              ),
              clipBehavior: Clip.antiAlias,
              child: CustomScrollView(
                controller: _scrollController,
                slivers: [
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: _PremiumDupeSheetHeaderDelegate(
                      heroHeight: heroHeight,
                      configItems: configItems,
                      pageController: _pageController,
                      onHeroPageChanged: (index) {
                        setState(() {
                          _heroIndex = index;
                        });
                      },
                      tabsBackground: tabsBackground,
                      tabSelected: tabSelected,
                      tabNormal: tabNormal,
                      activeCategoryId: _activeCategoryId,
                      categories: categories,
                      onCategoryChanged: (id) {
                        setState(() {
                          _activeCategoryId = id;
                        });
                      },
                      onClose: () => Navigator.of(context).pop(),
                      paddingTop: 0, // Since content is already shifted by sheet margin?
                      // Actually 'insets.top' was used before. But sheet maxHeight handles it.
                      // Let's use 0 or small padding. Original had Positioned(top: insets.top + 8).
                      // But the Container starts below insets.top (mostly).
                      // Let's assume standard top padding for the header content.
                    ),
                  ),
                  if (pageState.isLoading && pageState.products.isEmpty)
                    const SliverFillRemaining(
                      child: Center(child: CircularProgressIndicator()),
                    )
                  else if (pageState.products.isEmpty)
                    const SliverFillRemaining(
                      child: Center(child: Text('No products found')),
                    )
                  else
                    SliverPadding(
                      padding: const EdgeInsets.all(16),
                      sliver: SliverGrid(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            final product = pageState.products[index];
                            return _PremiumDupeProductCard(product: product);
                          },
                          childCount: pageState.products.length,
                        ),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 12,
                          childAspectRatio: 0.72,
                        ),
                      ),
                    ),
                  if (pageState.isLoading && pageState.products.isNotEmpty)
                    const SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Center(child: CircularProgressIndicator()),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PremiumDupeSheetHeaderDelegate extends SliverPersistentHeaderDelegate {
  _PremiumDupeSheetHeaderDelegate({
    required this.heroHeight,
    required this.configItems,
    required this.pageController,
    required this.onHeroPageChanged,
    required this.tabsBackground,
    required this.tabSelected,
    required this.tabNormal,
    required this.activeCategoryId,
    required this.categories,
    required this.onCategoryChanged,
    required this.onClose,
    required this.paddingTop,
  });

  final double heroHeight;
  final List<PremiumInspiredConfigItem> configItems;
  final PageController pageController;
  final ValueChanged<int> onHeroPageChanged;
  final Color tabsBackground;
  final Color tabSelected;
  final Color tabNormal;
  final int? activeCategoryId;
  final List<PremiumDupeCategory> categories;
  final ValueChanged<int?> onCategoryChanged;
  final VoidCallback onClose;
  final double paddingTop;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    final progress = (shrinkOffset / (maxExtent - minExtent)).clamp(0.0, 1.0);

    return Container(
      color: tabsBackground,
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Hero Images
          Opacity(
            opacity: (1 - progress).clamp(0.0, 1.0),
            child: PageView.builder(
              controller: pageController,
              itemCount: configItems.isNotEmpty ? configItems.length : 1,
              onPageChanged: onHeroPageChanged,
              itemBuilder: (context, index) {
                final image = configItems.isNotEmpty ? configItems[index].image : '';
                return image.isNotEmpty
                    ? CachedNetworkImage(
                        imageUrl: image,
                        fit: BoxFit.cover,
                      )
                    : Container(color: const Color(0xFFEEF2FF));
              },
            ),
          ),
          
          // Title
          Positioned(
            top: paddingTop + 16,
            left: 16,
            child: Opacity(
              opacity: (1 - progress * 2).clamp(0.0, 1.0),
              child: const ThemedText(
                'PREMIUM Inspired',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'serif',
                ),
              ),
            ),
          ),
          
          // Close Button
          Positioned(
            top: paddingTop + 12,
            right: 16,
            child: GestureDetector(
              onTap: onClose,
              child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: tabSelected,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.close, color: Colors.white, size: 18),
              ),
            ),
          ),
          
          // Tabs
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 54,
              color: tabsBackground,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                children: [
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: tabSelected,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: const Icon(Icons.search, color: Colors.white, size: 16),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          _PremiumCategoryTab(
                            label: 'All',
                            isActive: activeCategoryId == null,
                            activeColor: tabSelected,
                            inactiveColor: tabNormal,
                            onTap: () => onCategoryChanged(null),
                          ),
                          ...categories.map((category) {
                            final id = int.tryParse(category.id);
                            return _PremiumCategoryTab(
                              label: category.name,
                              isActive: id != null && id == activeCategoryId,
                              activeColor: tabSelected,
                              inactiveColor: tabNormal,
                              onTap: () => onCategoryChanged(id),
                            );
                          }),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => heroHeight;

  @override
  double get minExtent => 54.0;

  @override
  bool shouldRebuild(covariant _PremiumDupeSheetHeaderDelegate oldDelegate) {
    return oldDelegate.heroHeight != heroHeight ||
        oldDelegate.configItems != configItems ||
        oldDelegate.activeCategoryId != activeCategoryId ||
        oldDelegate.tabsBackground != tabsBackground ||
        oldDelegate.tabSelected != tabSelected;
  }
}

class _PremiumCategoryTab extends StatelessWidget {
  const _PremiumCategoryTab({
    required this.label,
    required this.isActive,
    required this.activeColor,
    required this.inactiveColor,
    required this.onTap,
  });

  final String label;
  final bool isActive;
  final Color activeColor;
  final Color inactiveColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          label,
          style: TextStyle(
            fontSize: 13,
            fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
            color: isActive ? activeColor : inactiveColor,
          ),
        ),
      ),
    );
  }
}

class _PremiumDupeProductCard extends StatelessWidget {
  const _PremiumDupeProductCard({required this.product});

  final PremiumDupeProduct product;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final priceParts = _formatPriceParts(product.price);
    final hasOriginal = product.originalPrice != null && product.originalPrice! > 0;

    return GestureDetector(
      onTap: () => context.push(
        RoutePaths.productDetail.replaceFirst(':productCode', product.id),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: colors.surface,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: colors.border),
        ),
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CachedNetworkImage(
                imageUrl: product.imageUrl,
                fit: BoxFit.contain,
                width: double.infinity,
                placeholder: (context, url) => Container(color: colors.muted),
                errorWidget: (context, url, error) => Container(color: colors.muted),
              ),
            ),
            const SizedBox(height: 8),
            ThemedText(
              product.name,
              maxLines: 2,
              style: const TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 6),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Flexible(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              child: ThemedText(
                                '${product.currency}${priceParts.$1}',
                                type: ThemedTextType.defaultSemiBold,
                                style: TextStyle(color: colors.text),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            ThemedText(
                              '.${priceParts.$2}',
                              style: TextStyle(fontSize: 10, color: colors.text),
                            ),
                          ],
                        ),
                      ),
                      if (hasOriginal) ...[
                        const SizedBox(width: 6),
                        Flexible(
                          child: Text(
                            '${product.currency}${product.originalPrice!.toStringAsFixed(2)}',
                            style: TextStyle(
                              fontSize: 10,
                              color: colors.textMuted,
                              decoration: TextDecoration.lineThrough,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                const SizedBox(width: 4),
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: colors.tint,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(Icons.shopping_cart, size: 12, color: colors.surface),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

(String, String) _formatPriceParts(double value) {
  if (!value.isFinite) {
    return ('0', '00');
  }
  final parts = value.toStringAsFixed(2).split('.');
  return (parts[0], parts[1]);
}

Color? _parseColor(String? value) {
  if (value == null || value.isEmpty) return null;
  final cleaned = value.replaceFirst('#', '');
  if (cleaned.length == 6) {
    return Color(int.parse('FF$cleaned', radix: 16));
  }
  if (cleaned.length == 8) {
    // Assume RGBA format (RRGGBBAA) -> Convert to ARGB (AARRGGBB)
    final r = cleaned.substring(0, 2);
    final g = cleaned.substring(2, 4);
    final b = cleaned.substring(4, 6);
    final a = cleaned.substring(6, 8);
    return Color(int.parse('$a$r$g$b', radix: 16));
  }
  return null;
}