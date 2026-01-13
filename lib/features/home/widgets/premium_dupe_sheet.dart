import 'dart:async';

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
      barrierColor: Colors.black,
      useSafeArea: true,
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
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_handleScroll);
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _handleScroll() {
    if (!_scrollController.hasClients) return;
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      ref.read(premiumDupePageProvider(_activeCategoryId).notifier).loadMore();
    }
  }

  void _startTimer(int itemCount) {
    _timer?.cancel();
    if (itemCount <= 1) return;
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_pageController.hasClients) {
        final nextPage = (_heroIndex + 1) % itemCount;
        _pageController.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    final configAsync = ref.watch(premiumInspiredConfigProvider);
    final metaAsync = ref.watch(premiumDupeMetaProvider);
    final pageState = ref.watch(premiumDupePageProvider(_activeCategoryId));

    final configItems =
        configAsync.valueOrNull ?? const <PremiumInspiredConfigItem>[];

    if (configItems.isNotEmpty && (_timer == null || !_timer!.isActive)) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) _startTimer(configItems.length);
      });
    }

    final activeConfig = configItems.isNotEmpty
        ? configItems[_heroIndex.clamp(0, configItems.length - 1)]
        : null;

    final tabsBackground =
        _parseColor(activeConfig?.tabsBackgroundColor) ?? colors.surface;
    final tabNormal =
        _parseColor(activeConfig?.tabNormalColor) ?? colors.surface;
    final tabSelected =
        _parseColor(activeConfig?.tabSelectedColor) ?? const Color(0xFF1A1A1A);

    final categories = metaAsync.valueOrNull ?? const <PremiumDupeCategory>[];
    final activeCategoryName = _activeCategoryId == null
        ? 'All'
        : categories
              .firstWhere(
                (c) => int.tryParse(c.id) == _activeCategoryId,
                orElse: () => const PremiumDupeCategory(id: '', name: ''),
              )
              .name;

    return LayoutBuilder(
      builder: (context, constraints) {
        final heroHeight = constraints.maxWidth * 0.75;
        final maxHeight = constraints.maxHeight - 36;

        return Material(
          color: Colors.transparent,
          child: Stack(
            children: [
              Positioned.fill(
                child: GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Container(color: Colors.black),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: maxHeight,
                  decoration: BoxDecoration(
                    color: colors.surface,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(24),
                    ),
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
                          paddingTop: 0,
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
                          child: ThemedText(
                            activeCategoryName,
                            style: const TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
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
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          sliver: SliverGrid(
                            delegate: SliverChildBuilderDelegate((
                              context,
                              index,
                            ) {
                              final product = pageState.products[index];
                              return _PremiumDupeProductCard(product: product);
                            }, childCount: pageState.products.length),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 16,
                                  crossAxisSpacing: 12,
                                  childAspectRatio: 0.68,
                                ),
                          ),
                        ),
                      if (pageState.isLoading && pageState.products.isNotEmpty)
                        const SliverToBoxAdapter(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 24),
                            child: Center(child: CircularProgressIndicator()),
                          ),
                        ),
                      const SliverToBoxAdapter(child: SizedBox(height: 32)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
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
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
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
                final image = configItems.isNotEmpty
                    ? configItems[index].image
                    : '';
                return image.isNotEmpty
                    ? CachedNetworkImage(imageUrl: image, fit: BoxFit.cover)
                    : Container(color: const Color(0xFFEEF2FF));
              },
            ),
          ),

          // Title (Centered)
          Positioned(
            top: paddingTop + 10,
            left: 0,
            right: 0,
            child: Opacity(
              opacity: (1 - progress * 2.5).clamp(0.0, 1.0),
              child: const Center(
                child: Text(
                  'PREMIUM Inspired',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'serif',
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ),
          ),

          // Close Button
          Positioned(
            top: paddingTop + 8,
            right: 16,
            child: GestureDetector(
              onTap: onClose,
              child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.2),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.close, color: Colors.white, size: 20),
              ),
            ),
          ),

          // Tabs
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 60,
              decoration: BoxDecoration(color: tabsBackground),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                children: [
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: tabSelected,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
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
                            imageUrl: category.imageUrl,
                            onTap: () => onCategoryChanged(id),
                          );
                        }),
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

  @override
  double get maxExtent => heroHeight;

  @override
  double get minExtent => 60.0;

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
    this.imageUrl,
  });

  final String label;
  final bool isActive;
  final Color activeColor;
  final Color inactiveColor;
  final VoidCallback onTap;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          decoration: BoxDecoration(
            color: isActive ? activeColor : inactiveColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (imageUrl != null && imageUrl!.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: Container(
                    width: 18,
                    height: 18,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    clipBehavior: Clip.antiAlias,
                    child: CachedNetworkImage(
                      imageUrl: imageUrl!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: isActive ? Colors.white : Colors.black87,
                ),
              ),
            ],
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
    final hasOriginal =
        product.originalPrice != null && product.originalPrice! > 0;

    return GestureDetector(
      onTap: () => context.push(
        RoutePaths.productDetail.replaceFirst(':productCode', product.id),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF9F9F9),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: CachedNetworkImage(
                  imageUrl: product.imageUrl,
                  fit: BoxFit.contain,
                  width: double.infinity,
                  placeholder: (context, url) => Container(color: colors.muted),
                  errorWidget: (context, url, error) =>
                      Container(color: colors.muted),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              product.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 13, height: 1.3),
            ),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        product.currency,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        priceParts.$1,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '.${priceParts.$2}',
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
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
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                Container(
                  width: 26,
                  height: 26,
                  decoration: const BoxDecoration(
                    color: Color(0xFFF75555), // Red button
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.shopping_cart,
                    size: 14,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
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
    final r = cleaned.substring(0, 2);
    final g = cleaned.substring(2, 4);
    final b = cleaned.substring(4, 6);
    final a = cleaned.substring(6, 8);
    return Color(int.parse('$a$r$g$b', radix: 16));
  }
  return null;
}
