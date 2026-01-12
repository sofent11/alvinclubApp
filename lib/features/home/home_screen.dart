import 'dart:async';

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
import '../catalog/catalog_providers.dart';
import '../flash_sale/application/flash_sale_providers.dart'
    hide flashSaleProductsProvider;
import 'home_models.dart';
import 'home_providers.dart';
import 'widgets/fashion_feed.dart';
import 'widgets/flash_sale_section.dart';
import 'widgets/home_category_tabs.dart';
import 'widgets/home_top_nav.dart';
import 'widgets/premium_dupe_list.dart';
import 'widgets/premium_dupe_sheet.dart';
import 'widgets/quick_entry_grid.dart';

const _homeBackground = Color(0xFFF7F2EE);

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
        backgroundColor: _homeBackground,
        body: SafeArea(
          child: Column(
            children: [
              _HomeHeaderBar(onTap: () => context.push(RoutePaths.search)),
              HomeTopNavBar(
                items: topNavItems,
                activeKey: activeKey,
                backgroundColor: _homeBackground,
                onItemTap: _onTopNavTap,
              ),
              const Expanded(child: FashionFeed()),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: _homeBackground,
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
                      height: 48,
                      child: HomeTopNavBar(
                        items: topNavItems,
                        activeKey: activeKey,
                        backgroundColor: _homeBackground,
                        onItemTap: _onTopNavTap,
                      ),
                    ),
                  ),
                  if (!isForYou) _buildHeroBanner(activeItem),
                  if (!isForYou)
                    SliverPersistentHeader(
                      pinned: true,
                      delegate: _FixedHeaderDelegate(
                        height: 40,
                        child: HomeCategoryTabs(
                          items: categoryTabs,
                          activeId: _activeCategoryId,
                          backgroundColor: _homeBackground,
                          onChange: _onCategoryTap,
                        ),
                      ),
                    ),
                  if (isForYou)
                    SliverToBoxAdapter(
                      child: premiumDupeAsync.when(
                        data: (products) {
                          debugPrint(
                            '[PremiumUI] Loaded ${products.length} products',
                          );
                          if (products.isEmpty) {
                            debugPrint(
                              '[PremiumUI] Products list is empty, hiding module.',
                            );
                            return const SizedBox.shrink();
                          }
                          try {
                            return PremiumDupeList(
                              products: products,
                              onProductTap: (_) =>
                                  PremiumDupeSheet.show(context),
                              onMoreTap: () => PremiumDupeSheet.show(context),
                            );
                          } catch (e, stack) {
                            debugPrint(
                              '[PremiumUI] Error building widget: $e\n$stack',
                            );
                            return const SizedBox.shrink();
                          }
                        },
                        loading: () {
                          debugPrint('[PremiumUI] Loading...');
                          return const SizedBox.shrink();
                        },
                        error: (err, stack) {
                          debugPrint(
                            '[PremiumUI] Error fetching data: $err\n$stack',
                          );
                          return const SizedBox.shrink();
                        },
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
                                  onTap: () => context.push(
                                    '${RoutePaths.topicDetail.replaceFirst(':id', item.albumCode)}?title=${Uri.encodeComponent(item.title)}',
                                  ),
                                ),
                              )
                              .toList();
                          return Padding(
                            padding: const EdgeInsets.only(top: 6, bottom: 8),
                            child: QuickEntryGrid(entries: quickEntries),
                          );
                        },
                        loading: () => const SizedBox.shrink(),
                        error: (_, _) => const SizedBox.shrink(),
                      ),
                    ),
                  // if (isForYou) _buildSectionTitle(context, 'Hot Products'), // Removed title to match design flow or keep if needed.
                  // Design shows just products flowing.
                  if (isForYou) _buildProductGrid(context, hotState),
                  if (!isForYou) _buildProductGrid(context, recommendState),
                  SliverToBoxAdapter(child: const SizedBox(height: 16)),
                ],
              ),
            ),
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
        title: 'Style Me', // Updated from "Fashion" to match design
        link: 'fashion',
        code: 'fashion',
        showType: 'text',
        portalCode: [],
        categoryId: '',
      ),
      ...remoteItems,
    ];
  }

  // ... (keep helper methods like _parseCategoryIds, _buildCategoryNameMap, _buildCategoryTabs, _buildSearchHeader, _buildBanners, _buildHeroBanner)

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
    return SliverAppBar(
      floating: true,
      pinned: true,
      elevation: 0,
      backgroundColor: _homeBackground,
      surfaceTintColor: Colors.transparent,
      toolbarHeight: 48,
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

  Widget _buildFlashSaleSection(
    BuildContext context,
    AsyncValue<List<FlashSaleActivity>> activitiesAsync,
    AsyncValue<List<ProductItem>> productsAsync,
  ) {
    final hasActivities = activitiesAsync.valueOrNull?.isNotEmpty ?? false;
    final hasProducts = productsAsync.valueOrNull?.isNotEmpty ?? false;

    if (!hasActivities &&
        !hasProducts &&
        !activitiesAsync.isLoading &&
        !productsAsync.isLoading) {
      return const SliverToBoxAdapter(child: SizedBox.shrink());
    }

    return SliverToBoxAdapter(
      child: activitiesAsync.when(
        data: (activities) {
          if (activities.isEmpty) return const SizedBox.shrink();
          final activity = activities.first;

          return productsAsync.when(
            data: (products) {
              if (products.isEmpty) return const SizedBox.shrink();
              return FlashSaleSection(
                activity: activity,
                products: products,
                backgroundColor: _homeBackground,
                onMoreTap: () {
                  // Handle more tap
                },
              );
            },
            loading: () => const SizedBox(
              height: 100,
              child: Center(child: CircularProgressIndicator()),
            ),
            error: (_, _) => const SizedBox.shrink(),
          );
        },
        loading: () => const SizedBox.shrink(),
        error: (_, _) => const SizedBox.shrink(),
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

    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      sliver: SliverMasonryGrid.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childCount: state.products.length,
        itemBuilder: (context, index) {
          return ProductCard(
            product: state.products[index],
            variant: ProductCardVariant.compact,
            // aspect ratio not needed as much for masonry, it will layout based on content
            onTap: () => context.push(
              RoutePaths.productDetail.replaceFirst(
                ':productCode',
                state.products[index].id,
              ),
            ),
          );
        },
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
      padding: const EdgeInsets.fromLTRB(16, 6, 16, 8),
      child: Row(
        children: [
          const ThemedText(
            "Alvin's Club",
            type: ThemedTextType.title,
            style: TextStyle(
              fontSize: 22,
              height: 1.1,
              fontWeight: FontWeight.w600,
              fontFamily: 'serif',
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                height: 34,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: const Color(0xFFE8E2DC)),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search, color: colors.textMuted, size: 16),
                    const SizedBox(width: 6),
                    Expanded(
                      child: Text(
                        "I'm going for a look th...",
                        style: TextStyle(
                          color: colors.textMuted.withValues(alpha: 0.75),
                          fontSize: 13,
                        ),
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
