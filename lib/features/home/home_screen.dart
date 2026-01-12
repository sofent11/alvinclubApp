import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:go_router/go_router.dart';

import '../../core/navigation/route_paths.dart';
import '../../core/theme/app_theme.dart';
import '../../data/repositories/product_repository.dart';
import '../../shared/widgets/empty_state.dart';
import '../../shared/widgets/flash_sale_timer.dart';
import '../../shared/widgets/product_card.dart';
import '../../shared/widgets/themed_text.dart';
import '../catalog/catalog_providers.dart';
import '../flash_sale/application/flash_sale_providers.dart'
    hide flashSaleProductsProvider;
import 'home_models.dart';
import 'home_providers.dart';
import 'widgets/fashion_feed.dart';
import 'widgets/floating_banner.dart';
import 'widgets/home_category_tabs.dart';
import 'widgets/home_top_nav.dart';
import 'widgets/premium_dupe_list.dart';
import 'widgets/premium_dupe_sheet.dart';
import 'widgets/quick_entry_grid.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  String _activeTopNav = 'for-you';
  String? _activeCategoryId;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_handleScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _handleScroll() {
    if (!_scrollController.hasClients) return;
    if (_scrollController.position.pixels <
        _scrollController.position.maxScrollExtent - 200) {
      return;
    }

    if (_activeTopNav == 'for-you') {
      ref.read(homeHotProductsProvider.notifier).loadMore();
      return;
    }

    if (_activeTopNav == 'fashion') return;

    final params = _recommendParamsForActive();
    ref.read(homeRecommendProductsProvider(params).notifier).loadMore();
  }

  HomeRecommendParams _recommendParamsForActive() {
    final topNavItems = _buildTopNavItems(
      ref.read(homeTopNavProvider).valueOrNull ?? [],
    );
    final activeItem = topNavItems.firstWhere(
      (item) => item.key == _activeTopNav,
      orElse: () => topNavItems.first,
    );
    final categoryIds = _parseCategoryIds(activeItem.categoryId);

    if (_activeTopNav == 'for-you' || _activeTopNav == 'fashion') {
      return const HomeRecommendParams();
    }

    if (_activeCategoryId != null && _activeCategoryId!.isNotEmpty) {
      return HomeRecommendParams(categoryId: _activeCategoryId);
    }

    return HomeRecommendParams(categoryIds: categoryIds);
  }

  Future<void> _handleRefresh() async {
    ref.invalidate(homeConfigProvider);
    ref.invalidate(homeTopNavProvider);
    ref.invalidate(homeAlbumProvider);
    ref.invalidate(premiumDupeSelectionProvider);
    ref.invalidate(flashSaleProductsProvider);
    ref.invalidate(flashSaleActivitiesProvider);
    ref.read(homeHotProductsProvider.notifier).loadFirstPage();

    if (_activeTopNav != 'for-you' && _activeTopNav != 'fashion') {
      ref.invalidate(
        homeRecommendProductsProvider(_recommendParamsForActive()),
      );
    }

    await Future<void>.delayed(const Duration(milliseconds: 200));
  }

  void _onTopNavTap(HomeTopNavItem item) {
    if (item.key == _activeTopNav) return;
    setState(() {
      _activeTopNav = item.key;
      _activeCategoryId = null;
    });
  }

  void _onCategoryTap(String? id) {
    if (id == _activeCategoryId) return;
    setState(() {
      _activeCategoryId = id;
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final configAsync = ref.watch(homeConfigProvider);
    final topNavAsync = ref.watch(homeTopNavProvider);
    final albumAsync = ref.watch(homeAlbumProvider);
    final premiumDupeAsync = ref.watch(premiumDupeSelectionProvider);
    final hotState = ref.watch(homeHotProductsProvider);
    final categoriesAsync = ref.watch(categoriesProvider);
    final flashSaleAsync = ref.watch(flashSaleProductsProvider);
    final flashSaleActivitiesAsync = ref.watch(flashSaleActivitiesProvider);

    final topNavItems = _buildTopNavItems(topNavAsync.valueOrNull ?? []);
    final activeKey = topNavItems.any((item) => item.key == _activeTopNav)
        ? _activeTopNav
        : topNavItems.first.key;
    final isForYou = activeKey == 'for-you';
    final isFashion = activeKey == 'fashion';
    final activeItem = topNavItems.firstWhere((item) => item.key == activeKey);

    final categoryNameMap = _buildCategoryNameMap(
      categoriesAsync.valueOrNull ?? [],
    );
    final categoryIds = _parseCategoryIds(activeItem.categoryId);
    final categoryTabs = _buildCategoryTabs(categoryIds, categoryNameMap);

    final recommendParams = isForYou || isFashion
        ? const HomeRecommendParams()
        : (_activeCategoryId != null && _activeCategoryId!.isNotEmpty)
        ? HomeRecommendParams(categoryId: _activeCategoryId)
        : HomeRecommendParams(categoryIds: categoryIds);

    final recommendState = isForYou || isFashion
        ? const PagedProductsState()
        : ref.watch(homeRecommendProductsProvider(recommendParams));

    if (isFashion) {
      return Scaffold(
        backgroundColor: colors.background,
        body: SafeArea(
          child: Column(
            children: [
              _HomeHeaderBar(onTap: () => context.push(RoutePaths.search)),
              HomeTopNavBar(
                items: topNavItems,
                activeKey: activeKey,
                onItemTap: _onTopNavTap,
              ),
              const Expanded(child: FashionFeed()),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: colors.background,
      body: SafeArea(
        child: Stack(
          children: [
            RefreshIndicator(
              onRefresh: _handleRefresh,
              child: CustomScrollView(
                controller: _scrollController,
                slivers: [
                  _buildSearchHeader(context),
                  SliverPersistentHeader(
                    pinned: isForYou,
                    delegate: _FixedHeaderDelegate(
                      height: 56,
                      child: HomeTopNavBar(
                        items: topNavItems,
                        activeKey: activeKey,
                        onItemTap: _onTopNavTap,
                      ),
                    ),
                  ),
                  if (!isForYou) _buildHeroBanner(activeItem),
                  if (!isForYou)
                    SliverPersistentHeader(
                      pinned: true,
                      delegate: _FixedHeaderDelegate(
                        height: 46,
                        child: HomeCategoryTabs(
                          items: categoryTabs,
                          activeId: _activeCategoryId,
                          onChange: _onCategoryTap,
                        ),
                      ),
                    ),
                  if (isForYou) _buildBanners(context, configAsync),
                  if (isForYou)
                    SliverToBoxAdapter(
                      child: premiumDupeAsync.when(
                        data: (products) {
                          if (products.isEmpty) return const SizedBox.shrink();
                          try {
                            return PremiumDupeList(
                              products: products,
                              onProductTap: (_) =>
                                  PremiumDupeSheet.show(context),
                              onMoreTap: () => PremiumDupeSheet.show(context),
                            );
                          } catch (e) {
                            debugPrint('Error building PremiumDupeList: $e');
                            return const SizedBox.shrink();
                          }
                        },
                        loading: () => const SizedBox.shrink(),
                        error: (_, _) => const SizedBox.shrink(),
                      ),
                    ),
                  if (isForYou)
                    _buildFlashSaleSection(
                      context,
                      flashSaleActivitiesAsync,
                      flashSaleAsync,
                    ),
                  if (isForYou)
                    SliverToBoxAdapter(
                      child: albumAsync.when(
                        data: (entries) {
                          final quickEntries = entries
                              .map(
                                (item) => QuickEntryItem(
                                  id: item.albumCode,
                                  title: item.title,
                                  iconUrl: item.icon,
                                  badgeUrl: item.newIcon,
                                  onTap: () => context.push(
                                    '${RoutePaths.topicDetail.replaceFirst(':id', item.albumCode)}?title=${Uri.encodeComponent(item.title)}',
                                  ),
                                ),
                              )
                              .toList();
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: QuickEntryGrid(entries: quickEntries),
                          );
                        },
                        loading: () => const SizedBox.shrink(),
                        error: (_, _) => const SizedBox.shrink(),
                      ),
                    ),
                  if (isForYou) _buildSectionTitle(context, 'Hot Products'),
                  if (isForYou) _buildProductGrid(context, hotState),
                  if (!isForYou) _buildProductGrid(context, recommendState),
                  SliverToBoxAdapter(
                    child: SizedBox(height: isForYou ? 90 : 24),
                  ),
                ],
              ),
            ),
            if (isForYou) const FloatingBanner(),
          ],
        ),
      ),
    );
  }

  List<HomeTopNavItem> _buildTopNavItems(List<HomeTopNavItem> remoteItems) {
    return [
      const HomeTopNavItem(
        title: 'For You',
        link: 'for-you',
        code: 'forYou',
        showType: 'text',
        portalCode: [],
        categoryId: '',
      ),
      const HomeTopNavItem(
        title: 'Fashion',
        link: 'fashion',
        code: 'fashion',
        showType: 'text',
        portalCode: [],
        categoryId: '',
      ),
      ...remoteItems,
    ];
  }

  List<String> _parseCategoryIds(String? raw) {
    if (raw == null || raw.trim().isEmpty) return [];
    return raw
        .split(',')
        .map((id) => id.trim())
        .where((id) => id.isNotEmpty)
        .toList();
  }

  Map<String, String> _buildCategoryNameMap(List<CategoryItem> categories) {
    final map = <String, String>{};
    void walk(List<CategoryItem> items) {
      for (final item in items) {
        map[item.id] = item.name;
        if (item.children != null && item.children!.isNotEmpty) {
          walk(item.children!);
        }
      }
    }

    walk(categories);
    return map;
  }

  List<HomeCategoryTab> _buildCategoryTabs(
    List<String> categoryIds,
    Map<String, String> categoryNameMap,
  ) {
    if (categoryIds.isEmpty) {
      return const [HomeCategoryTab(name: 'All')];
    }

    final tabs = categoryIds
        .map((id) => HomeCategoryTab(id: id, name: categoryNameMap[id] ?? id))
        .where((item) => item.name.isNotEmpty)
        .toList();

    return [const HomeCategoryTab(name: 'All'), ...tabs];
  }

  Widget _buildSearchHeader(BuildContext context) {
    final colors = context.appColors;

    return SliverAppBar(
      floating: true,
      pinned: true,
      elevation: 0,
      backgroundColor: colors.background,
      titleSpacing: 0,
      title: _HomeHeaderBar(onTap: () => context.push(RoutePaths.search)),
    );
  }

  Widget _buildBanners(
    BuildContext context,
    AsyncValue<Map<String, dynamic>> configAsync,
  ) {
    return SliverToBoxAdapter(
      child: configAsync.when(
        data: (config) {
          final banners = config['banners'] as List?;
          if (banners == null || banners.isEmpty) {
            return const SizedBox.shrink();
          }
          return _BannerCarousel(banners: banners);
        },
        loading: () => const SizedBox(
          height: 160,
          child: Center(child: CircularProgressIndicator()),
        ),
        error: (_, _) => const SizedBox.shrink(),
      ),
    );
  }

  Widget _buildHeroBanner(HomeTopNavItem activeItem) {
    final bgImage = activeItem.bgImage;
    if (bgImage == null || bgImage.url.isEmpty) {
      return const SliverToBoxAdapter(child: SizedBox.shrink());
    }

    final ratio =
        (bgImage.width != null && bgImage.height != null && bgImage.height != 0)
        ? bgImage.width! / bgImage.height!
        : 16 / 9;

    return SliverToBoxAdapter(
      child: AspectRatio(
        aspectRatio: ratio,
        child: CachedNetworkImage(imageUrl: bgImage.url, fit: BoxFit.cover),
      ),
    );
  }



  Widget _buildSectionTitle(BuildContext context, String title) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 24, 16, 12),
        child: ThemedText(title, type: ThemedTextType.subtitle),
      ),
    );
  }

  Widget _buildFlashSaleSection(
    BuildContext context,
    AsyncValue<List<FlashSaleActivity>> activitiesAsync,
    AsyncValue<List<ProductItem>> productsAsync,
  ) {
    final colors = context.appColors;

    // Determine if we should show the section based on data availability
    final hasActivities = activitiesAsync.valueOrNull?.isNotEmpty ?? false;
    final hasProducts = productsAsync.valueOrNull?.isNotEmpty ?? false;

    if (!hasActivities && !hasProducts && !activitiesAsync.isLoading && !productsAsync.isLoading) {
      return const SliverToBoxAdapter(child: SizedBox.shrink());
    }

    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: colors.mutedBackground,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.only(bottom: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ThemedText('Flash Sale', type: ThemedTextType.subtitle),
                  activitiesAsync.when(
                    data: (activities) {
                      if (activities.isEmpty) return const SizedBox.shrink();
                      final activity = activities.first;
                      final endTime = DateTime.tryParse(activity.endTime);
                      if (endTime != null) {
                        return FlashSaleTimer(endTime: endTime);
                      }
                      return const SizedBox.shrink();
                    },
                    loading: () => const SizedBox.shrink(),
                    error: (_, _) => const SizedBox.shrink(),
                  ),
                ],
              ),
            ),
            productsAsync.when(
              data: (products) {
                if (products.isEmpty) return const SizedBox.shrink();
                return SizedBox(
                  height: 220,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: products.length,
                    separatorBuilder: (_, _) => const SizedBox(width: 12),
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return SizedBox(
                        width: 140,
                        child: ProductCard(
                          product: product,
                          variant: ProductCardVariant.compact,
                          onTap: () => context.push(
                            RoutePaths.productDetail.replaceFirst(
                              ':productCode',
                              product.id,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
              loading: () => const SizedBox(
                height: 100,
                child: Center(child: CircularProgressIndicator()),
              ),
              error: (_, _) => const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductGrid(BuildContext context, PagedProductsState state) {
    if (state.isLoading && state.products.isEmpty) {
      return const SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.all(32.0),
          child: Center(child: CircularProgressIndicator()),
        ),
      );
    }

    if (state.error != null && state.products.isEmpty) {
      return SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ErrorState(
            title: 'Unable to load products',
            description: state.error!,
          ),
        ),
      );
    }

    if (state.products.isEmpty) {
      return const SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: EmptyState(
            type: EmptyStateType.search,
            title: 'No products found',
            description: 'Try again later.',
          ),
        ),
      );
    }

    final itemCount = (state.products.length / 2).ceil();

    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final firstIndex = index * 2;
            final secondIndex = firstIndex + 1;
            final hasSecond = secondIndex < state.products.length;

            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ProductCard(
                      product: state.products[firstIndex],
                      variant: ProductCardVariant.compact,
                      aspectRatio: 1.05,
                      onTap: () => context.push(
                        RoutePaths.productDetail.replaceFirst(
                          ':productCode',
                          state.products[firstIndex].id,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: hasSecond
                        ? ProductCard(
                            product: state.products[secondIndex],
                            variant: ProductCardVariant.compact,
                            aspectRatio: 1.05,
                            onTap: () => context.push(
                              RoutePaths.productDetail.replaceFirst(
                                ':productCode',
                                state.products[secondIndex].id,
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
                  ),
                ],
              ),
            );
          },
          childCount: itemCount,
        ),
      ),
    );
  }
}

class _HomeHeaderBar extends StatelessWidget {
  const _HomeHeaderBar({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Row(
        children: [
          const ThemedText(
            "Alvin's Club",
            type: ThemedTextType.title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                height: 36,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search, color: colors.textMuted, size: 18),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "I'm going for a look th...",
                        style: TextStyle(color: colors.textMuted, fontSize: 14),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Icon(
                      Icons.photo_camera_outlined,
                      color: colors.textMuted,
                      size: 18,
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

class _FixedHeaderDelegate extends SliverPersistentHeaderDelegate {
  _FixedHeaderDelegate({required this.height, required this.child});

  final double height;
  final Widget child;

  @override
  double get minExtent => height;

  @override
  double get maxExtent => height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return SizedBox(height: height, child: child);
  }

  @override
  bool shouldRebuild(covariant _FixedHeaderDelegate oldDelegate) {
    return oldDelegate.height != height || oldDelegate.child != child;
  }
}

class _BannerCarousel extends StatefulWidget {
  const _BannerCarousel({required this.banners});

  final List<dynamic> banners;

  @override
  State<_BannerCarousel> createState() => _BannerCarouselState();
}

class _BannerCarouselState extends State<_BannerCarousel> {
  late PageController _pageController;
  int _currentPage = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _startAutoPlay();
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  void _startAutoPlay() {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_pageController.hasClients) {
        final nextPage = (_currentPage + 1) % widget.banners.length;
        _pageController.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemCount: widget.banners.length,
            itemBuilder: (context, index) {
              final banner = widget.banners[index] as Map?;
              final imageUrl = banner?['imageUrl'] ?? banner?['image'] ?? '';
              if (imageUrl.isEmpty) return const SizedBox.shrink();

              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
          Positioned(
            bottom: 16,
            left: 0,
            right: 0,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  widget.banners.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: _currentPage == index ? 20 : 6,
                    height: 6,
                    decoration: BoxDecoration(
                      color: _currentPage == index
                          ? Colors.white
                          : Colors.white54,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


