import 'dart:async';
import 'dart:math' as math;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  late PageController _pageController;
  String _activeTopNav = 'for-you';

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Future<void> _handleRefresh() async {
    ref.invalidate(homeConfigProvider);
    ref.invalidate(homeTopNavProvider);
    ref.invalidate(homeAlbumProvider);
    ref.invalidate(premiumDupeSelectionProvider);
    ref.invalidate(flashSaleProductsProvider);
    ref.invalidate(flashSaleActivitiesProvider);
    ref.read(homeHotProductsProvider.notifier).loadFirstPage();

    await Future<void>.delayed(const Duration(milliseconds: 200));
  }

  List<HomeTopNavItem> _buildTopNavItems(List<HomeTopNavItem> remoteItems) {
    final normalizedRemote = remoteItems
        .where((item) => item.title.isNotEmpty)
        .map((item) {
          if (item.code == 'aiDesign') {
            return HomeTopNavItem(
              title: item.title,
              link: 'fashion',
              code: item.code,
              showType: item.showType,
              portalCode: item.portalCode,
              categoryId: item.categoryId,
              bgImage: item.bgImage,
              icon: item.icon,
              active: item.active,
            );
          }
          return item;
        })
        .toList();

    final items = <HomeTopNavItem>[
      const HomeTopNavItem(
        title: 'For You',
        link: 'for-you',
        code: 'forYou',
        showType: 'text',
        portalCode: [],
        categoryId: '',
      ),
      ...normalizedRemote,
    ];

    final seen = <String>{};
    final deduped = <HomeTopNavItem>[];
    for (final item in items) {
      final k = item.key;
      if (seen.add(k)) deduped.add(item);
    }
    return deduped;
  }

  @override
  Widget build(BuildContext context) {
    final topNavAsync = ref.watch(homeTopNavProvider);
    final topNavItems = _buildTopNavItems(topNavAsync.valueOrNull ?? []);

    final uiStyle = const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    );

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: uiStyle,
      child: Scaffold(
        backgroundColor: _homeBackground,
        body: Stack(
          children: [
            PageView.builder(
              controller: _pageController,
              itemCount: topNavItems.length,
              physics: const ClampingScrollPhysics(parent: PageScrollPhysics()),
              onPageChanged: (index) {
                setState(() {
                  _activeTopNav = topNavItems[index].key;
                });
              },
              itemBuilder: (context, index) {
                return _HomeTabContent(
                  item: topNavItems[index],
                  allItems: topNavItems,
                  activeKey: _activeTopNav,
                  onTopNavTap: (item) {
                    final targetIndex = topNavItems.indexOf(item);
                    if (targetIndex != -1) {
                      _pageController.animateToPage(
                        targetIndex,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  onRefresh: _handleRefresh,
                );
              },
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      _homeBackground.withValues(alpha: 0.95),
                      _homeBackground.withValues(alpha: 0.0),
                    ],
                    stops: const [0.7, 1.0],
                  ),
                ),
                child: SafeArea(
                  bottom: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _HomeHeaderBar(
                        onTap: () => context.push(RoutePaths.search),
                      ),
                      HomeTopNavBar(
                        items: topNavItems,
                        activeKey: _activeTopNav,
                        backgroundColor: Colors.transparent,
                        onItemTap: (item) {
                          final targetIndex = topNavItems.indexOf(item);
                          if (targetIndex != -1) {
                            _pageController.animateToPage(
                              targetIndex,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _HomeTabContent extends ConsumerStatefulWidget {
  final HomeTopNavItem item;
  final List<HomeTopNavItem> allItems;
  final String activeKey;
  final ValueChanged<HomeTopNavItem> onTopNavTap;
  final Future<void> Function() onRefresh;

  const _HomeTabContent({
    required this.item,
    required this.allItems,
    required this.activeKey,
    required this.onTopNavTap,
    required this.onRefresh,
  });

  @override
  ConsumerState<_HomeTabContent> createState() => _HomeTabContentState();
}

class _HomeTabContentState extends ConsumerState<_HomeTabContent>
    with AutomaticKeepAliveClientMixin {
  final ScrollController _scrollController = ScrollController();
  String? _activeCategoryId;

  @override
  bool get wantKeepAlive => true;

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
      setState(() {});
      return;
    }

    final isForYou = widget.item.key == 'for-you';
    final isFashion = widget.item.key == 'fashion';

    if (isForYou) {
      ref.read(homeHotProductsProvider.notifier).loadMore();
      return;
    }

    if (isFashion) return;

    final params = _recommendParams();
    ref.read(homeRecommendProductsProvider(params).notifier).loadMore();
  }

  HomeRecommendParams _recommendParams() {
    final categoryIds = _parseCategoryIds(widget.item.categoryId);
    if (_activeCategoryId != null && _activeCategoryId!.isNotEmpty) {
      return HomeRecommendParams(categoryId: _activeCategoryId);
    }
    return HomeRecommendParams(categoryIds: categoryIds);
  }

  double _calculateOpacity(double heroHeight, double topPadding) {
    if (!_scrollController.hasClients) return 0.0;
    final offset = _scrollController.offset;
    final maxOffset = math.max(0, heroHeight - topPadding);
    if (maxOffset <= 0) return 1.0;
    return (offset / maxOffset).clamp(0.0, 1.0);
  }

  void _onCategoryTap(String? id) {
    if (id == _activeCategoryId) return;
    setState(() {
      _activeCategoryId = id;
    });
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

  Future<void> _handleTabRefresh() async {
    final isForYou = widget.item.key == 'for-you';
    if (isForYou) {
      await widget.onRefresh();
    } else {
      final params = _recommendParams();
      await ref
          .read(homeRecommendProductsProvider(params).notifier)
          .loadFirstPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final isForYou = widget.item.key == 'for-you';
    final isFashion = widget.item.key == 'fashion';

    final topPadding = MediaQuery.of(context).padding.top + 48 + 44;

    if (isFashion) {
      return Padding(
        padding: EdgeInsets.only(top: topPadding),
        child: const FashionFeed(),
      );
    }

    final albumAsync = isForYou ? ref.watch(homeAlbumProvider) : null;
    final premiumDupeAsync = isForYou
        ? ref.watch(premiumDupeSelectionProvider)
        : null;
    final hotState = isForYou ? ref.watch(homeHotProductsProvider) : null;
    final flashSaleAsync = isForYou
        ? ref.watch(flashSaleProductsProvider)
        : null;
    final flashSaleActivitiesAsync = isForYou
        ? ref.watch(flashSaleActivitiesProvider)
        : null;

    final categoriesAsync = !isForYou ? ref.watch(categoriesProvider) : null;
    final recommendParams = !isForYou ? _recommendParams() : null;
    final recommendState = (!isForYou && recommendParams != null)
        ? ref.watch(homeRecommendProductsProvider(recommendParams))
        : null;

    final categoryNameMap = categoriesAsync != null
        ? _buildCategoryNameMap(categoriesAsync.valueOrNull ?? [])
        : <String, String>{};
    final categoryIds = _parseCategoryIds(widget.item.categoryId);
    final categoryTabs = _buildCategoryTabs(categoryIds, categoryNameMap);

    Widget? heroImageWidget;
    double heroHeight = 0;

    if (!isForYou) {
      final activeItem = widget.item;
      final headerImage =
          activeItem.bgImage ?? activeItem.active ?? activeItem.icon;
      final imageUrl = headerImage?.url ?? '';
      final ratio =
          (headerImage?.width != null &&
              headerImage?.height != null &&
              headerImage!.height != 0)
          ? headerImage.width! / headerImage.height!
          : 16 / 9;

      final screenWidth = MediaQuery.of(context).size.width;
      heroHeight = (screenWidth / ratio) + 8;

      heroImageWidget = Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(28),
            bottomRight: Radius.circular(28),
          ),
          child: AspectRatio(
            aspectRatio: ratio,
            child: Stack(
              fit: StackFit.expand,
              children: [
                if (imageUrl.isNotEmpty)
                  CachedNetworkImage(imageUrl: imageUrl, fit: BoxFit.cover)
                else
                  Container(color: _homeBackground),
                Positioned.fill(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white.withValues(alpha: 0.10),
                          Colors.white.withValues(alpha: 0.04),
                          Colors.white.withValues(alpha: 0.00),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Stack(
      children: [
        if (!isForYou && heroImageWidget != null)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: heroHeight,
            child: heroImageWidget,
          ),
        RefreshIndicator(
          onRefresh: _handleTabRefresh,
          edgeOffset: topPadding,
          child: CustomScrollView(
            controller: _scrollController,
            slivers: [
              if (!isForYou)
                SliverToBoxAdapter(
                  child: SizedBox(height: math.max(0, heroHeight - topPadding)),
                )
              else
                SliverToBoxAdapter(child: SizedBox(height: topPadding)),
              if (!isForYou)
                SliverPersistentHeader(
                  pinned: true,
                  delegate: _StickyCategoryHeaderDelegate(
                    topPadding: topPadding,
                    child: HomeCategoryTabs(
                      items: categoryTabs,
                      activeId: _activeCategoryId,
                      backgroundColor: context.appColors.surface,
                      onChange: _onCategoryTap,
                    ),
                    opacity: _calculateOpacity(heroHeight, topPadding),
                  ),
                ),
              if (isForYou && premiumDupeAsync != null)
                SliverToBoxAdapter(
                  child: premiumDupeAsync.when(
                    data: (products) {
                      if (products.isEmpty) return const SizedBox.shrink();
                      return PremiumDupeList(
                        products: products,
                        onProductTap: (_) => PremiumDupeSheet.show(context),
                        onMoreTap: () => PremiumDupeSheet.show(context),
                      );
                    },
                    loading: () => const SizedBox.shrink(),
                    error: (_, _) => const SizedBox.shrink(),
                  ),
                ),
              if (isForYou &&
                  flashSaleActivitiesAsync != null &&
                  flashSaleAsync != null)
                _buildFlashSaleSection(
                  context,
                  flashSaleActivitiesAsync,
                  flashSaleAsync,
                ),
              if (isForYou && albumAsync != null)
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
              if (isForYou && hotState != null)
                _buildProductGrid(context, hotState),
              if (!isForYou && recommendState != null)
                SliverToBoxAdapter(
                  child: Container(
                    color: Colors.white,
                    child: CustomScrollView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      slivers: [_buildProductGrid(context, recommendState)],
                    ),
                  ),
                ),
              const SliverToBoxAdapter(child: SizedBox(height: 16)),
            ],
          ),
        ),
      ],
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
                onMoreTap: () {},
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
              fontSize: 20,
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

class _StickyCategoryHeaderDelegate extends SliverPersistentHeaderDelegate {
  _StickyCategoryHeaderDelegate({
    required this.topPadding,
    required this.child,
    required this.opacity,
  });

  final double topPadding;
  final Widget child;
  final double opacity;

  @override
  double get minExtent => topPadding + 40;

  @override
  double get maxExtent => topPadding + 40;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Column(
      children: [
        Container(
          height: topPadding,
          color: Colors.white.withValues(alpha: opacity),
        ),
        SizedBox(
          height: 40,
          child: Container(color: Colors.white, child: child),
        ),
      ],
    );
  }

  @override
  bool shouldRebuild(covariant _StickyCategoryHeaderDelegate oldDelegate) {
    return oldDelegate.topPadding != topPadding ||
        oldDelegate.child != child ||
        oldDelegate.opacity != opacity;
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
