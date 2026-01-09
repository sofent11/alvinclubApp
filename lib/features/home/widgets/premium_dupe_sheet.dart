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
              child: Column(
                children: [
                  SizedBox(
                    height: heroHeight,
                    child: Stack(
                      children: [
                        PageView.builder(
                          controller: _pageController,
                          itemCount: configItems.isNotEmpty ? configItems.length : 1,
                          onPageChanged: (index) {
                            setState(() {
                              _heroIndex = index;
                            });
                          },
                          itemBuilder: (context, index) {
                            final image = configItems.isNotEmpty ? configItems[index].image : '';
                            return image.isNotEmpty
                                ? CachedNetworkImage(
                                    imageUrl: image,
                                    fit: BoxFit.cover,
                                  )
                                : Container(color: colors.mutedBackground);
                          },
                        ),
                        Positioned(
                          top: insets.top + 8,
                          left: 16,
                          child: const ThemedText(
                            'PREMIUM Inspired',
                            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                          top: insets.top + 8,
                          right: 16,
                          child: GestureDetector(
                            onTap: () => Navigator.of(context).pop(),
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
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
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
                                          isActive: _activeCategoryId == null,
                                          activeColor: tabSelected,
                                          inactiveColor: tabNormal,
                                          onTap: () {
                                            setState(() {
                                              _activeCategoryId = null;
                                            });
                                          },
                                        ),
                                        ...categories.map((category) {
                                          final id = int.tryParse(category.id);
                                          return _PremiumCategoryTab(
                                            label: category.name,
                                            isActive: id != null && id == _activeCategoryId,
                                            activeColor: tabSelected,
                                            inactiveColor: tabNormal,
                                            onTap: () {
                                              setState(() {
                                                _activeCategoryId = id;
                                              });
                                            },
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
                  ),
                  Expanded(
                    child: CustomScrollView(
                      controller: _scrollController,
                      slivers: [
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
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
                ThemedText(
                  '${product.currency}${priceParts.$1}',
                  type: ThemedTextType.defaultSemiBold,
                  style: TextStyle(color: colors.text),
                ),
                ThemedText(
                  '.${priceParts.$2}',
                  style: TextStyle(fontSize: 10, color: colors.text),
                ),
                const SizedBox(width: 6),
                if (hasOriginal)
                  Text(
                    '${product.currency}${product.originalPrice!.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 10,
                      color: colors.textMuted,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                const Spacer(),
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
    return Color(int.parse(cleaned, radix: 16));
  }
  return null;
}
