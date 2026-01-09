import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:go_router/go_router.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../../core/navigation/route_paths.dart';
import '../../core/storage/favorites_store.dart';
import '../../core/theme/app_theme.dart';
import '../../data/repositories/product_repository.dart';
import '../../shared/widgets/product_card.dart';
import '../../shared/widgets/themed_button.dart';
import '../../shared/widgets/themed_text.dart';
import '../favorites/application/favorites_notifier.dart'
    hide isFavoriteProvider;
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
  const _ProductDetailContent({required this.detail, required this.skus});

  final ProductDetail detail;
  final List<ProductSku> skus;

  @override
  ConsumerState<_ProductDetailContent> createState() =>
      _ProductDetailContentState();
}

class _ProductDetailContentState extends ConsumerState<_ProductDetailContent> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(productDetailControllerProvider.notifier)
          .init(widget.detail, widget.skus);
    });
  }

  Future<void> _toggleFavorite() async {
    final detail = widget.detail;

    // We use detail image if available, otherwise first main image
    final imageUrl = detail.images.isNotEmpty ? detail.images.first : '';

    await ref
        .read(favoritesNotifierProvider.notifier)
        .toggle(
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

  void _openGallery(BuildContext context, List<String> images, int initialIndex) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            iconTheme: const IconThemeData(color: Colors.white),
            leading: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          body: PhotoViewGallery.builder(
            itemCount: images.length,
            builder: (context, index) {
              return PhotoViewGalleryPageOptions(
                imageProvider: CachedNetworkImageProvider(images[index]),
                minScale: PhotoViewComputedScale.contained,
                maxScale: PhotoViewComputedScale.covered * 2,
              );
            },
            pageController: PageController(initialPage: initialIndex),
            scrollPhysics: const BouncingScrollPhysics(),
            backgroundDecoration: const BoxDecoration(color: Colors.black),
            loadingBuilder: (context, event) => const Center(
              child: CircularProgressIndicator(color: Colors.white),
            ),
          ),
        ),
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
    final reviewSummaryAsync =
        ref.watch(productReviewSummaryProvider(widget.detail.id));
    final reviewsAsync = ref.watch(productReviewsProvider(widget.detail.id));
    final colors = context.appColors;

    // Image logic: Sku Image -> Product Detail Main Image
    final mainImage =
        selectedSku?.imageUrl ??
        (widget.detail.images.isNotEmpty ? widget.detail.images.first : '');

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
                    child: isFavoriteAsync.when(
                      data: (isFav) => IconButton(
                        icon: Icon(
                          isFav ? Icons.favorite : Icons.favorite_border,
                          color: isFav ? Colors.red : Colors.black,
                        ),
                        onPressed: _toggleFavorite,
                      ),
                      loading: () => const SizedBox(
                        width: 40,
                        height: 40,
                        child: Center(
                          child: SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          ),
                        ),
                      ),
                      error: (_, _) => IconButton(
                        icon: const Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                        ),
                        onPressed: _toggleFavorite,
                      ),
                    ),
                  ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  background: mainImage.isNotEmpty
                      ? GestureDetector(
                          onTap: () {
                            if (widget.detail.images.isNotEmpty) {
                              var index = widget.detail.images.indexOf(mainImage);
                              if (index == -1) index = 0;
                              _openGallery(context, widget.detail.images, index);
                            }
                          },
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: CachedNetworkImage(
                                  imageUrl: mainImage,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            if (widget.detail.images.length > 1)
                              Positioned(
                                bottom: 12,
                                right: 12,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.black54,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Text(
                                    '${widget.detail.images.indexOf(mainImage) + 1}/${widget.detail.images.length}',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
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
                      Row(
                        children: [
                          ThemedText(
                            '$currency ${currentPrice.toStringAsFixed(2)}',
                            type: ThemedTextType.title,
                            style: TextStyle(color: colors.primary),
                          ),
                          const SizedBox(width: 8),
                          if (selectedSku?.originalPrice != null &&
                              selectedSku!.originalPrice! > currentPrice)
                            Text(
                              '$currency ${selectedSku.originalPrice!.toStringAsFixed(2)}',
                              style: TextStyle(
                                color: colors.textMuted,
                                decoration: TextDecoration.lineThrough,
                              ),
                            )
                          else if (widget.detail.originalPrice != null &&
                              widget.detail.originalPrice! > currentPrice)
                            Text(
                              '$currency ${widget.detail.originalPrice!.toStringAsFixed(2)}',
                              style: TextStyle(
                                color: colors.textMuted,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Tax included',
                        style: TextStyle(
                          color: colors.textMuted,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 8),
                      _buildRatingSummary(reviewSummaryAsync, colors),
                      const SizedBox(height: 8),
                      ThemedText(
                        widget.detail.name,
                        type: ThemedTextType.subtitle,
                      ),
                      const SizedBox(height: 16),
                      Divider(color: colors.border),
                      const SizedBox(height: 16),
                      _buildOptions(context, ref, state),
                      const SizedBox(height: 16),
                      Divider(color: colors.border),
                      const SizedBox(height: 16),
                      const ThemedText(
                        'Description',
                        type: ThemedTextType.defaultSemiBold,
                      ),
                      const SizedBox(height: 8),
                      HtmlWidget(
                        widget.detail.description ?? 'No description.',
                        textStyle: TextStyle(color: colors.textMuted),
                      ),
                      const SizedBox(height: 24),
                      _buildReviewSection(reviewSummaryAsync, reviewsAsync, colors),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ThemedText(
                    'You May Also Like',
                    type: ThemedTextType.subtitle,
                  ),
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
        if (products.isEmpty) {
          return const SliverToBoxAdapter(child: SizedBox.shrink());
        }
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

  Widget _buildOptions(
    BuildContext context,
    WidgetRef ref,
    ProductDetailState state,
  ) {
    final colors = context.appColors;

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
                  final isSelected =
                      state.selectedOptions[option.name] == value.value;
                  final isEnabled = _isOptionEnabled(
                    widget.skus,
                    state.selectedOptions,
                    option.name,
                    value.value,
                  );

                  return ChoiceChip(
                    label: Text(
                      value.value,
                      style: TextStyle(
                        color: isEnabled ? colors.text : colors.textMuted,
                      ),
                    ),
                    selected: isSelected,
                    selectedColor: colors.tint.withValues(alpha: 0.15),
                    onSelected: isEnabled
                        ? (selected) {
                            if (selected) {
                              ref
                                  .read(
                                    productDetailControllerProvider.notifier,
                                  )
                                  .selectOption(
                                    option.name,
                                    value.value,
                                    widget.skus,
                                  );
                            }
                          }
                        : null,
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
    final colors = context.appColors;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colors.surface,
        boxShadow: [
          BoxShadow(
            color: colors.shadow.withValues(alpha: 0.2),
            offset: const Offset(0, -2),
            blurRadius: 10,
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Row(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    final imageUrl =
                        selectedSku?.imageUrl ??
                        (widget.detail.images.isNotEmpty
                            ? widget.detail.images.first
                            : '');
                    context.push(
                      '${RoutePaths.fashionStyleMe}?imageUrl=${Uri.encodeComponent(imageUrl)}',
                    );
                  },
                  icon: const Icon(Icons.auto_awesome_outlined),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
                const Text('AI Try-on', style: TextStyle(fontSize: 10)),
              ],
            ),
            const SizedBox(width: 16),
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

  Widget _buildRatingSummary(
    AsyncValue<ProductReviewSummary?> summaryAsync,
    AppColorScheme colors,
  ) {
    return summaryAsync.when(
      data: (summary) {
        if (summary == null || summary.totalReviews == 0) {
          return const SizedBox.shrink();
        }
        return Row(
          children: [
            _buildStarRow(summary.averageRating, size: 16),
            const SizedBox(width: 6),
            Text(
              summary.averageRating.toStringAsFixed(1),
              style: TextStyle(fontWeight: FontWeight.w600, color: colors.text),
            ),
            const SizedBox(width: 8),
            Text(
              '(${summary.totalReviews})',
              style: TextStyle(color: colors.textMuted, fontSize: 12),
            ),
          ],
        );
      },
      loading: () => const SizedBox(
        height: 16,
        width: 120,
        child: LinearProgressIndicator(minHeight: 2),
      ),
      error: (_, _) => const SizedBox.shrink(),
    );
  }

  Widget _buildReviewSection(
    AsyncValue<ProductReviewSummary?> summaryAsync,
    AsyncValue<({List<ProductReview> reviews, int total})> reviewsAsync,
    AppColorScheme colors,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ThemedText(
          'Reviews',
          type: ThemedTextType.defaultSemiBold,
        ),
        const SizedBox(height: 8),
        summaryAsync.when(
          data: (summary) {
            if (summary == null || summary.totalReviews == 0) {
              return Text('No reviews yet', style: TextStyle(color: colors.textMuted));
            }
            return Column(
              children: summary.ratingDistribution.map((item) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: Row(
                    children: [
                      Text('${item.rating}', style: TextStyle(color: colors.textMuted, fontSize: 12)),
                      const SizedBox(width: 4),
                      const Icon(Icons.star, size: 12, color: Colors.amber),
                      const SizedBox(width: 8),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: LinearProgressIndicator(
                            value: item.percentage / 100,
                            backgroundColor: colors.muted,
                            valueColor: AlwaysStoppedAnimation<Color>(colors.tint),
                            minHeight: 6,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text('${item.count}', style: TextStyle(color: colors.textMuted, fontSize: 12)),
                    ],
                  ),
                );
              }).toList(),
            );
          },
          loading: () => const SizedBox(
            height: 12,
            child: LinearProgressIndicator(minHeight: 2),
          ),
          error: (_, _) => const SizedBox.shrink(),
        ),
        const SizedBox(height: 12),
        reviewsAsync.when(
          data: (payload) {
            if (payload.reviews.isEmpty) {
              return const SizedBox.shrink();
            }
            return Column(
              children: payload.reviews.map((review) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: _ReviewCard(review: review),
                );
              }).toList(),
            );
          },
          loading: () => const SizedBox.shrink(),
          error: (_, _) => const SizedBox.shrink(),
        ),
      ],
    );
  }

}

class _ReviewCard extends StatelessWidget {
  const _ReviewCard({required this.review});

  final ProductReview review;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(AppRadius.md),
        border: Border.all(color: colors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 14,
                backgroundColor: colors.mutedBackground,
                backgroundImage: review.userAvatar != null && review.userAvatar!.isNotEmpty
                    ? CachedNetworkImageProvider(review.userAvatar!)
                    : null,
                child: review.userAvatar == null || review.userAvatar!.isEmpty
                    ? Icon(Icons.person, size: 16, color: colors.textMuted)
                    : null,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  review.userName,
                  style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                ),
              ),
              _buildStarRow(review.rating.toDouble(), size: 12),
            ],
          ),
          if (review.content.isNotEmpty) ...[
            const SizedBox(height: 8),
            Text(
              review.content,
              style: TextStyle(color: colors.text, fontSize: 13),
            ),
          ],
          if (review.images != null && review.images!.isNotEmpty) ...[
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: review.images!.take(3).map((image) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: CachedNetworkImage(
                    imageUrl: image,
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                );
              }).toList(),
            ),
          ],
          const SizedBox(height: 6),
          Text(
            review.createdAt,
            style: TextStyle(color: colors.textMuted, fontSize: 11),
          ),
        ],
      ),
    );
  }
}

Widget _buildStarRow(double rating, {double size = 14}) {
  final fullStars = rating.floor();
  final hasHalf = (rating - fullStars) >= 0.5;
  final total = 5;

  return Row(
    children: List.generate(total, (index) {
      if (index < fullStars) {
        return Icon(Icons.star, size: size, color: Colors.amber);
      }
      if (index == fullStars && hasHalf) {
        return Icon(Icons.star_half, size: size, color: Colors.amber);
      }
      return Icon(Icons.star_border, size: size, color: Colors.amber);
    }),
  );
}

bool _isOptionEnabled(
  List<ProductSku> skus,
  Map<String, String> selectedOptions,
  String optionName,
  String value,
) {
  for (final sku in skus) {
    if (sku.options[optionName] != value) continue;
    var matches = true;
    for (final entry in selectedOptions.entries) {
      if (entry.key == optionName) continue;
      if (sku.options[entry.key] != entry.value) {
        matches = false;
        break;
      }
    }
    if (matches) return true;
  }
  return false;
}
