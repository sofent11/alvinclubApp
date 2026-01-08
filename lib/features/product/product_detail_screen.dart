import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

import '../../core/navigation/route_paths.dart';
import '../../core/storage/favorites_store.dart';
import '../../core/theme/app_theme.dart';
import '../../data/repositories/product_repository.dart';
import '../../shared/widgets/product_card.dart';
import '../../shared/widgets/themed_button.dart';
import '../../shared/widgets/themed_text.dart';
import '../favorites/application/favorites_notifier.dart';
import 'product_detail_controller.dart';
import 'product_providers.dart';

class ProductDetailScreen extends ConsumerWidget {
  const ProductDetailScreen({super.key, required this.productCode});

  final String productCode;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailAsync = ref.watch(productDetailProvider(productCode));
    final skusAsync = ref.watch(productSkusProvider(productCode));

    return Scaffold(
      body: SafeArea(
        child: detailAsync.when(
          data: (detail) => skusAsync.when(
            data: (skus) => _ProductDetailContent(detail: detail, skus: skus),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (err, _) => Center(child: Text('Error loading SKUs: $err')),
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (err, _) => Center(child: Text('Error loading product: $err')),
        ),
      ),
    );
  }
}

class _ProductDetailContent extends ConsumerStatefulWidget {
  const _ProductDetailContent({
    required this.detail,
    required this.skus,
  });

  final ProductDetail detail;
  final List<ProductSku> skus;

  @override
  ConsumerState<_ProductDetailContent> createState() => _ProductDetailContentState();
}

class _ProductDetailContentState extends ConsumerState<_ProductDetailContent> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(productDetailControllerProvider.notifier).init(widget.detail, widget.skus);
    });
  }

  Future<void> _toggleFavorite() async {
    final detail = widget.detail;
    
    // We use detail image if available, otherwise first main image
    final imageUrl = detail.images.isNotEmpty ? detail.images.first : '';
    
    await ref.read(favoritesNotifierProvider.notifier).toggle(
      FavoriteItem(
        productCode: detail.id,
        productName: detail.name,
        imageUrl: imageUrl,
        price: detail.price,
        currency: detail.currency,
        addedAt: DateTime.now().toIso8601String(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(productDetailControllerProvider);
    final selectedSku = state.selectedSku;
    final currentPrice = selectedSku?.price ?? widget.detail.price;
    final currency = selectedSku?.currency ?? widget.detail.currency ?? 'USD';
    final isFavoriteAsync = ref.watch(isFavoriteProvider(widget.detail.id));

    // Image logic: Sku Image -> Product Detail Main Image
    final mainImage = selectedSku?.imageUrl ?? (widget.detail.images.isNotEmpty ? widget.detail.images.first : '');

    final isFav = isFavoriteAsync.valueOrNull ?? false;

    return Column(
      children: [
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 300,
                pinned: true,
                leading: Container(
                  margin: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Colors.white54,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () => context.pop(),
                  ),
                ),
                actions: [
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    decoration: const BoxDecoration(
                      color: Colors.white54,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: Icon(
                        isFav ? Icons.favorite : Icons.favorite_border,
                        color: isFav ? Colors.red : Colors.black,
                      ),
                      onPressed: _toggleFavorite,
                    ),
                  ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  background: mainImage.isNotEmpty
                      ? CachedNetworkImage(
                          imageUrl: mainImage,
                          fit: BoxFit.cover,
                        )
                      : Container(color: Colors.grey[200]),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ThemedText(
                        '$currency ${currentPrice.toStringAsFixed(2)}',
                        type: ThemedTextType.title,
                        style: TextStyle(color: context.appColors.primary),
                      ),
                      const SizedBox(height: 8),
                      ThemedText(widget.detail.name, type: ThemedTextType.subtitle),
                      const SizedBox(height: 16),
                      Divider(color: context.appColors.border),
                      const SizedBox(height: 16),
                      _buildOptions(context, ref, state),
                      const SizedBox(height: 16),
                      Divider(color: context.appColors.border),
                      const SizedBox(height: 16),
                      const ThemedText('Description', type: ThemedTextType.defaultSemiBold),
                      const SizedBox(height: 8),
                      Text(
                        widget.detail.description ?? 'No description.',
                        style: TextStyle(color: context.appColors.textMuted),
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ThemedText('You May Also Like', type: ThemedTextType.subtitle),
                ),
              ),
              _buildSimilarProducts(),
              const SliverToBoxAdapter(child: SizedBox(height: 20)),
            ],
          ),
        ),
        _buildBottomBar(context, selectedSku),
      ],
    );
  }

  Widget _buildSimilarProducts() {
    final similarAsync = ref.watch(similarProductsProvider(widget.detail.id));

    return similarAsync.when(
      data: (products) {
        if (products.isEmpty) return const SliverToBoxAdapter(child: SizedBox.shrink());
        return SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          sliver: SliverMasonryGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return ProductCard(
                product: product,
                onTap: () => context.pushNamed(
                  RoutePaths.productDetail,
                  pathParameters: {'productCode': product.id},
                ),
              );
            },
          ),
        );
      },
      loading: () => const SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(child: CircularProgressIndicator()),
        ),
      ),
      error: (e, s) => const SliverToBoxAdapter(child: SizedBox.shrink()),
    );
  }

  Widget _buildOptions(BuildContext context, WidgetRef ref, ProductDetailState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widget.detail.options.map((option) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ThemedText(option.name, type: ThemedTextType.defaultSemiBold),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: option.values.map((value) {
                  final isSelected = state.selectedOptions[option.name] == value.value;
                  return ChoiceChip(
                    label: Text(value.value),
                    selected: isSelected,
                    onSelected: (selected) {
                      if (selected) {
                        ref.read(productDetailControllerProvider.notifier).selectOption(
                              option.name,
                              value.value,
                              widget.skus,
                            );
                      }
                    },
                  );
                }).toList(),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildBottomBar(BuildContext context, ProductSku? selectedSku) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            offset: const Offset(0, -2),
            blurRadius: 10,
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Row(
          children: [
            Expanded(
              child: ThemedButton(
                label: selectedSku != null ? 'Add to Cart' : 'Select Options',
                onPressed: selectedSku != null
                    ? () {
                        // TODO: Implement Add to Cart
                      }
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}