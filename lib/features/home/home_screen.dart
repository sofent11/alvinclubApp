import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../core/navigation/route_paths.dart';
import '../../core/theme/app_theme.dart';
import '../../data/repositories/product_repository.dart';
import '../../features/flash_sale/application/flash_sale_providers.dart' hide flashSaleProductsProvider;
import '../../shared/widgets/empty_state.dart';
import '../../shared/widgets/flash_sale_timer.dart';
import '../../shared/widgets/product_card.dart';
import '../../shared/widgets/themed_text.dart';
import 'home_providers.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final configAsync = ref.watch(homeConfigProvider);
    final hotProductsAsync = ref.watch(hotProductsProvider);
    final flashSaleAsync = ref.watch(flashSaleProductsProvider);
    final flashSaleActivitiesAsync = ref.watch(flashSaleActivitiesProvider);
    final colors = context.appColors;

    return Scaffold(
      backgroundColor: colors.background,
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            ref.invalidate(homeConfigProvider);
            ref.invalidate(hotProductsProvider);
            ref.invalidate(flashSaleProductsProvider);
            ref.invalidate(flashSaleActivitiesProvider);
          },
          child: CustomScrollView(
            slivers: [
              _buildSearchHeader(context),
              _buildBanners(context, configAsync),
              _buildFlashSaleSectionHeader(context, flashSaleActivitiesAsync),
              _buildFlashSaleList(context, flashSaleAsync),
              _buildSectionTitle(context, 'Hot Products'),
              _buildProductGrid(context, hotProductsAsync),
              const SliverToBoxAdapter(child: SizedBox(height: 20)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchHeader(BuildContext context) {
    final colors = context.appColors;

    return SliverAppBar(
      floating: true,
      pinned: true,
      elevation: 0,
      backgroundColor: colors.background,
      titleSpacing: 16,
      title: Row(
        children: [
          const ThemedText(
            "Alvin's Club",
            type: ThemedTextType.title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: GestureDetector(
              onTap: () => context.push(RoutePaths.search),
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
                    Icon(Icons.photo_camera_outlined, color: colors.textMuted, size: 18),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
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

  Widget _buildFlashSaleSectionHeader(
    BuildContext context,
    AsyncValue<List<FlashSaleActivity>> activitiesAsync,
  ) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 24, 16, 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const ThemedText('Flash Sale', type: ThemedTextType.subtitle),
            activitiesAsync.when(
              data: (activities) {
                if (activities.isEmpty) return const SizedBox.shrink();
                // Pick the first activity for Home Screen display
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

  Widget _buildFlashSaleList(
    BuildContext context,
    AsyncValue<List<dynamic>> productsAsync,
  ) {
    return SliverToBoxAdapter(
      child: productsAsync.when(
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
    );
  }

  Widget _buildProductGrid(
    BuildContext context,
    AsyncValue<List<dynamic>> productsAsync,
  ) {
    return productsAsync.when(
      data: (products) {
        if (products.isEmpty) {
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
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverMasonryGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return ProductCard(
                product: product,
                variant: ProductCardVariant.compact,
                aspectRatio: _staggeredAspectRatio(index),
                onTap: () => context.push(
                  RoutePaths.productDetail.replaceFirst(
                    ':productCode',
                    product.id,
                  ),
                ),
              );
            },
          ),
        );
      },
      loading: () => const SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.all(32.0),
          child: Center(child: CircularProgressIndicator()),
        ),
      ),
      error: (err, stack) => SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ErrorState(
            title: 'Unable to load products',
            description: err.toString(),
          ),
        ),
      ),
    );
  }
}

double _staggeredAspectRatio(int index) {
  if (index % 3 == 0) return 1;
  if (index % 2 == 0) return 1.2;
  return 0.8;
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
