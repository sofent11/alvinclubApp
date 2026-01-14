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
import '../../shared/utils/price_utils.dart';
import '../../shared/widgets/product_card.dart';
import '../../shared/widgets/themed_button.dart';
import '../../shared/widgets/themed_text.dart';
import '../../shared/widgets/toast.dart';
import '../favorites/application/favorites_notifier.dart'
    hide isFavoriteProvider;
import 'product_detail_controller.dart';
import 'product_providers.dart';

import 'widgets/product_sku_bottom_sheet.dart';
import 'widgets/review_card.dart';
import 'widgets/trust_rule_bottom_sheet.dart';

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
  int _currentImageIndex = 0;

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

  void _openGallery(
    BuildContext context,
    List<String> images,
    int initialIndex,
  ) {
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

  void _showTrustRuleBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => const TrustRuleBottomSheet(),
    );
  }

  void _showSkuBottomSheet(
    BuildContext context,
    ProductDetail detail,
    List<ProductSku> skus,
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => ProductSkuBottomSheet(product: detail, skus: skus),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(productDetailControllerProvider);
    final selectedSku = state.selectedSku;
    final reviewSummaryAsync = ref.watch(
      productReviewSummaryProvider(widget.detail.id),
    );
    final reviewsAsync = ref.watch(productReviewsProvider(widget.detail.id));
    final colors = context.appColors;

    return Column(
      children: [
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: _buildImageGallery(context, colors, selectedSku),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildPriceSection(context, selectedSku, colors),
                      const SizedBox(height: 12),
                      _buildTrustBanner(context, colors),
                      const SizedBox(height: 16),
                      ThemedText(
                        widget.detail.name,
                        type: ThemedTextType.title,
                        style: const TextStyle(fontSize: 18, height: 1.3),
                      ),
                      const SizedBox(height: 16),
                      // Options summary - tap to open bottom sheet
                      InkWell(
                        onTap: () => _showSkuBottomSheet(
                          context,
                          widget.detail,
                          widget.skus,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Selected: ${state.selectedOptions.entries.map((e) => e.value).join("; ")}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            const Icon(Icons.chevron_right, color: Colors.grey),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Divider(height: 1),
                      const SizedBox(height: 24),
                      _buildReviewSection(
                        reviewSummaryAsync,
                        reviewsAsync,
                        colors,
                      ),
                      const SizedBox(height: 24),
                      const Divider(height: 1),
                      const SizedBox(height: 16),
                      const ThemedText(
                        'Product Details',
                        type: ThemedTextType.defaultSemiBold,
                      ),
                      const SizedBox(height: 8),
                      if (widget.detail.detailImages.isNotEmpty)
                        Column(
                          children: widget.detail.detailImages
                              .map(
                                (url) => CachedNetworkImage(
                                  imageUrl: url,
                                  fit: BoxFit.fitWidth,
                                  width: double.infinity,
                                  placeholder: (context, url) => const SizedBox(
                                    height: 200,
                                    child: Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  ),
                                  errorWidget: (context, url, error) =>
                                      const SizedBox.shrink(),
                                ),
                              )
                              .toList(),
                        )
                      else
                        HtmlWidget(
                          widget.detail.description ?? 'No description.',
                          textStyle: TextStyle(color: colors.textMuted),
                        ),
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

  Widget _buildImageGallery(
    BuildContext context,
    AppColorScheme colors,
    ProductSku? selectedSku,
  ) {
    final images = widget.detail.images;

    // Fallback if no images
    if (images.isEmpty) {
      return AspectRatio(
        aspectRatio: 0.75,
        child: Container(color: Colors.grey[200]),
      );
    }

    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 0.75,
          child: PageView.builder(
            itemCount: images.length,
            onPageChanged: (index) {
              setState(() {
                _currentImageIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => _openGallery(context, images, index),
                child: CachedNetworkImage(
                  imageUrl: images[index],
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Container(
                    color: Colors.grey[200],
                    child: const Center(child: CircularProgressIndicator()),
                  ),
                  errorWidget: (context, url, error) => Container(
                    color: Colors.grey[200],
                    child: const Icon(Icons.error),
                  ),
                ),
              );
            },
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).padding.top + 8,
          left: 16,
          child: GestureDetector(
            onTap: () => context.pop(),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.3),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).padding.top + 8,
          right: 16,
          child: Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.3),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.share, color: Colors.white, size: 20),
                ),
              ),
              const SizedBox(width: 12),
              GestureDetector(
                onTap: _toggleFavorite,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.3),
                    shape: BoxShape.circle,
                  ),
                  child: ref
                      .watch(isFavoriteProvider(widget.detail.id))
                      .when(
                        data: (isFav) => Icon(
                          isFav ? Icons.favorite : Icons.favorite_border,
                          color: isFav ? Colors.red : Colors.white,
                          size: 20,
                        ),
                        loading: () => const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.white,
                          ),
                        ),
                        error: (e, s) => const Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                ),
              ),
            ],
          ),
        ),
        if (images.length > 1)
          Positioned(
            bottom: 16,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  '${_currentImageIndex + 1}/${images.length}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildPriceSection(
    BuildContext context,
    ProductSku? selectedSku,
    AppColorScheme colors,
  ) {
    final currentPrice = selectedSku?.price ?? widget.detail.price;
    final originalPrice =
        selectedSku?.originalPrice ?? widget.detail.originalPrice;
    final currency = selectedSku?.currency ?? widget.detail.currency;
    final symbol = PriceUtils.getCurrencySymbol(currency);
    final sellQuantity = widget.detail.sellQuantity;

    String? discountStr;
    if (originalPrice != null && originalPrice > currentPrice) {
      final discountPercent =
          ((originalPrice - currentPrice) / originalPrice * 100).round();
      if (discountPercent > 0) {
        discountStr = '-$discountPercent%';
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                if (discountStr != null) ...[
                  Text(
                    discountStr,
                    style: const TextStyle(
                      color: Color(0xFFFA3E3E),
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 8),
                ],
                Text(
                  '$symbol${currentPrice.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF333333),
                  ),
                ),
              ],
            ),
            if (sellQuantity != null && sellQuantity > 0)
              Text(
                '${sellQuantity > 100 ? "100+" : sellQuantity} Sold',
                style: const TextStyle(color: Color(0xFFE65100), fontSize: 13),
              ),
          ],
        ),
        const SizedBox(height: 4),
        if (originalPrice != null && originalPrice > currentPrice)
          Text(
            'List Price: $symbol${originalPrice.toStringAsFixed(2)}',
            style: TextStyle(
              color: colors.textMuted,
              decoration: TextDecoration.lineThrough,
              fontSize: 13,
            ),
          ),
      ],
    );
  }

  Widget _buildTrustBanner(BuildContext context, AppColorScheme colors) {
    return GestureDetector(
      onTap: () => _showTrustRuleBottomSheet(context),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color(0xFFFFF0E6), // Beige background
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xFFFFDDB0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD4A373), // Brownish
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Text(
                    'Brand',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
                const SizedBox(width: 8),
                const Text(
                  'Featured',
                  style: TextStyle(
                    color: Color(0xFF8D6E63),
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.chevron_right,
                  size: 16,
                  color: Color(0xFF8D6E63),
                ),
              ],
            ),
            const SizedBox(height: 8),
            _buildTrustItem(
              Icons.check_circle_outline,
              'Quality assured - refund if faulty',
            ),
            const SizedBox(height: 4),
            _buildTrustItem(
              Icons.inventory_2_outlined,
              'Delivery assured - refund if lost',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTrustItem(IconData icon, String label) {
    return Row(
      children: [
        Icon(icon, size: 14, color: const Color(0xFF8D6E63)),
        const SizedBox(width: 6),
        Text(
          label,
          style: const TextStyle(color: Color(0xFF5D4037), fontSize: 12),
        ),
      ],
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
            IconButton(
              onPressed: () => AppToast.show(
                context,
                message: 'Customer Service not implemented',
              ),
              icon: const Icon(Icons.headset_mic_outlined),
              color: Colors.black,
            ),
            const SizedBox(width: 8),
            IconButton(
              onPressed: () => context.go(RoutePaths.cart),
              icon: const Icon(Icons.shopping_cart_outlined),
              color: Colors.black,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: ThemedButton(
                label: 'Add to Cart',
                onPressed: () =>
                    _showSkuBottomSheet(context, widget.detail, widget.skus),
              ),
            ),
          ],
        ),
      ),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            summaryAsync.when(
              data: (s) => Text(
                'Reviews(${s?.totalReviews ?? 0})',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              loading: () => const Text(
                'Reviews(...)',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              error: (e, s) => const Text(
                'Reviews',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            summaryAsync.when(
              data: (s) => InkWell(
                onTap: () => context.pushNamed(
                  RoutePaths.productReviews,
                  pathParameters: {'productCode': widget.detail.id},
                ),
                child: Row(
                  children: [
                    Text(
                      s?.averageRating.toStringAsFixed(1) ?? '0.0',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 4),
                    const Icon(Icons.star, color: Colors.amber, size: 16),
                    const Icon(Icons.chevron_right, color: Colors.grey),
                  ],
                ),
              ),
              loading: () => const SizedBox.shrink(),
              error: (e, s) => const SizedBox.shrink(),
            ),
          ],
        ),
        summaryAsync.when(
          data: (s) {
            final aiSummary = s?.aiSummary;
            final featuredReviews = s?.featuredReviews ?? const [];
            return Column(
              children: [
                if (aiSummary != null && aiSummary.isNotEmpty) ...[
                  const SizedBox(height: 16),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFF7F2), // Light peach
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: const Color(0xFFFFE4D6)),
                        ),
                        child: Text(
                          aiSummary,
                          style: const TextStyle(
                            color: Color(0xFF5C6074),
                            fontSize: 13,
                            height: 1.5,
                          ),
                        ),
                      ),
                      Positioned(
                        top: -10,
                        left: 12,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFF5A5F),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.auto_awesome,
                                color: Colors.white,
                                size: 12,
                              ),
                              SizedBox(width: 4),
                              Text(
                                'AI Summary',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
                if (featuredReviews.isNotEmpty) ...[
                  const SizedBox(height: 16),
                  ...featuredReviews.map((review) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: ReviewCard(review: review),
                    );
                  }),
                ],
              ],
            );
          },
          loading: () => const SizedBox.shrink(),
          error: (_, _) => const SizedBox.shrink(),
        ),
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
                aspectRatio: _staggeredAspectRatio(index),
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
}

double _staggeredAspectRatio(int index) {
  if (index % 3 == 0) return 1;
  if (index % 2 == 0) return 1.2;
  return 0.8;
}
