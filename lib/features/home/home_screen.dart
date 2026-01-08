import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../core/navigation/route_paths.dart';
import '../../core/theme/app_theme.dart';
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

    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
             ref.refresh(homeConfigProvider);
             ref.refresh(hotProductsProvider);
             ref.refresh(flashSaleProductsProvider);
          },
          child: CustomScrollView(
            slivers: [
              _buildSearchHeader(context),
              _buildBanners(context, configAsync),
              _buildSectionTitle(context, 'Flash Sale'),
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
    return SliverAppBar(
      floating: true,
      pinned: true,
      elevation: 0,
      backgroundColor: Colors.white,
      title: GestureDetector(
        onTap: () => context.push(RoutePaths.search),
        child: Container(
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              const Icon(Icons.search, color: Colors.grey),
              const SizedBox(width: 8),
              Text(
                'Search products...',
                style: TextStyle(color: Colors.grey[600], fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBanners(BuildContext context, AsyncValue<Map<String, dynamic>> configAsync) {
    return SliverToBoxAdapter(
      child: configAsync.when(
        data: (config) {
          final banners = config['banners'] as List?;
          if (banners == null || banners.isEmpty) {
            return const SizedBox.shrink();
          }
          return SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: banners.length,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              itemBuilder: (context, index) {
                final banner = banners[index] as Map?;
                final imageUrl = banner?['imageUrl'] ?? banner?['image'] ?? '';
                if (imageUrl.isEmpty) return const SizedBox.shrink();

                return Container(
                  width: 300,
                  margin: const EdgeInsets.only(right: 12),
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
          );
        },
        loading: () => const SizedBox(height: 160, child: Center(child: CircularProgressIndicator())),
        error: (_, __) => const SizedBox.shrink(),
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

  Widget _buildFlashSaleList(BuildContext context, AsyncValue<List<dynamic>> productsAsync) {
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
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemBuilder: (context, index) {
                final product = products[index];
                return SizedBox(
                  width: 140,
                  child: ProductCard(
                    product: product,
                    onTap: () => context.push(
                      RoutePaths.productDetail.replaceFirst(':productCode', product.id),
                    ),
                  ),
                );
              },
            ),
          );
        },
        loading: () => const SizedBox(height: 100, child: Center(child: CircularProgressIndicator())),
        error: (_, __) => const SizedBox.shrink(),
      ),
    );
  }

  Widget _buildProductGrid(BuildContext context, AsyncValue<List<dynamic>> productsAsync) {
    return productsAsync.when(
      data: (products) {
        if (products.isEmpty) {
          return const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(child: Text('No products found')),
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
                onTap: () => context.push(
                  RoutePaths.productDetail.replaceFirst(':productCode', product.id),
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
          child: Center(child: Text('Error: $err')),
        ),
      ),
    );
  }
}