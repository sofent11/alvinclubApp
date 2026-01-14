import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../data/repositories/product_repository.dart';
import '../../../shared/utils/price_utils.dart';
import '../../../shared/widgets/toast.dart';
import '../../product/product_detail_controller.dart';
import '../../product/widgets/product_sku_bottom_sheet.dart';
import '../application/micro_detail_providers.dart';

class MicroDetailPage extends ConsumerStatefulWidget {
  const MicroDetailPage({
    super.key,
    required this.productCode,
    required this.initialProduct,
  });

  final String productCode;
  final ProductItem initialProduct;

  @override
  ConsumerState<MicroDetailPage> createState() => _MicroDetailPageState();
}

class _MicroDetailPageState extends ConsumerState<MicroDetailPage> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    // Use viewportFraction to show a peek of the next card
    _pageController = PageController(viewportFraction: 0.92);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Products list from state (already includes initialProduct)
    final state = ref.watch(microDetailProvider(widget.initialProduct));
    final notifier = ref.read(
      microDetailProvider(widget.initialProduct).notifier,
    );

    final products = state.products;

    return Scaffold(
      backgroundColor: Colors.black.withValues(alpha: 0.9),
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            scrollDirection: Axis.vertical,
            // Add padding so the cards aren't stuck to the edges horizontally
            physics: const BouncingScrollPhysics(),
            itemCount: products.length + (state.hasMore ? 1 : 0),
            onPageChanged: (index) {
              if (index >= products.length - 2) {
                notifier.loadMore();
              }
            },
            itemBuilder: (context, index) {
              if (index >= products.length) {
                return const Center(
                  child: CircularProgressIndicator(color: Colors.white),
                );
              }
              final product = products[index];
              // Add margin for the card effect
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: _MicroDetailItem(product: product),
              );
            },
          ),

          // Top Bar (Back Button)
          Positioned(
            top: MediaQuery.of(context).padding.top + 10,
            left: 16,
            child: GestureDetector(
              onTap: () => context.pop(),
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.black26,
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

          if (state.error != null && products.isEmpty)
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Error loading products",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () => notifier.loadMore(),
                    child: const Text("Retry"),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class _MicroDetailItem extends ConsumerStatefulWidget {
  const _MicroDetailItem({required this.product});

  final ProductItem product;

  @override
  ConsumerState<_MicroDetailItem> createState() => _MicroDetailItemState();
}

class _MicroDetailItemState extends ConsumerState<_MicroDetailItem> {
  int _currentImageIndex = 0;

  Future<void> _showSkuBottomSheet() async {
    final product = widget.product;

    // Show loading dialog
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) =>
          const Center(child: CircularProgressIndicator(color: Colors.white)),
    );

    try {
      final repo = ref.read(productRepositoryProvider);
      final results = await Future.wait([
        repo.getProductDetail(product.id),
        repo.getProductSkus(product.id),
      ]);

      if (!mounted) return;
      // Dismiss loading dialog
      Navigator.of(context).pop();

      final detail = results[0] as ProductDetail;
      final skus = results[1] as List<ProductSku>;

      // Initialize controller
      ref.read(productDetailControllerProvider.notifier).init(detail, skus);

      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) =>
            ProductSkuBottomSheet(product: detail, skus: skus),
      );
    } catch (e) {
      if (!mounted) return;
      // Dismiss loading dialog
      Navigator.of(context).pop();
      AppToast.error(context, 'Failed to load product info');
    }
  }

  @override
  Widget build(BuildContext context) {
    final product = widget.product;
    final images = (product.images != null && product.images!.isNotEmpty)
        ? product.images!
        : (product.imageUrl.isNotEmpty ? [product.imageUrl] : []);

    return GestureDetector(
      onTap: () {
        context.push('/product/${product.id}');
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            // Image Section
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  // Image Carousel
                  if (images.isNotEmpty)
                    PageView.builder(
                      itemCount: images.length,
                      onPageChanged: (index) {
                        setState(() {
                          _currentImageIndex = index;
                        });
                      },
                      itemBuilder: (context, index) {
                        return Image.network(
                          images[index],
                          fit: BoxFit.cover,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(
                              child: CircularProgressIndicator(
                                value:
                                    loadingProgress.expectedTotalBytes != null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                          loadingProgress.expectedTotalBytes!
                                    : null,
                                color: Colors.grey,
                              ),
                            );
                          },
                          errorBuilder: (context, error, stackTrace) =>
                              Container(
                                color: Colors.grey[200],
                                child: const Center(
                                  child: Icon(
                                    Icons.broken_image,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                        );
                      },
                    )
                  else
                    Container(color: Colors.grey[200]),

                  // Marketing Text Overlay (High-waist...)
                  if (product.tags != null && product.tags!.isNotEmpty)
                    Positioned(
                      top: 40,
                      left: 20,
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 200),
                        child: Text(
                          product.tags!.first,
                          style: const TextStyle(
                            color: Colors.black87,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            height: 1.2,
                          ),
                        ),
                      ),
                    ),

                  // Image Indicator
                  if (images.length > 1)
                    Positioned(
                      bottom: 12,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(images.length, (index) {
                          return Container(
                            width: 24,
                            height: 2,
                            margin: const EdgeInsets.symmetric(horizontal: 2),
                            decoration: BoxDecoration(
                              color: index == _currentImageIndex
                                  ? Colors.black
                                  : Colors.black.withValues(alpha: 0.2),
                              borderRadius: BorderRadius.circular(1),
                            ),
                          );
                        }),
                      ),
                    ),
                ],
              ),
            ),

            // Info Section
            Container(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Price and Details Row
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.centerLeft,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              if (product.discount != null) ...[
                                Text(
                                  product.discount!, // "-35%"
                                  style: const TextStyle(
                                    color: Colors.red,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(width: 8),
                              ],
                              Text(
                                "${PriceUtils.getCurrencySymbol(product.currency)} ${product.price}",
                                style: const TextStyle(
                                  color: Colors.red,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              if (product.originalPrice != null) ...[
                                const SizedBox(width: 8),
                                Text(
                                  "${PriceUtils.getCurrencySymbol(product.currency)} ${product.originalPrice}",
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Details",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: Colors.red,
                            size: 16,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),

                  // Product Name
                  Text(
                    product.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Action Buttons
                  Row(
                    children: [
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.shopping_cart_outlined),
                          color: Colors.black,
                          iconSize: 20,
                          onPressed: _showSkuBottomSheet,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: SizedBox(
                          height: 44,
                          child: ElevatedButton(
                            onPressed: _showSkuBottomSheet,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pinkAccent,
                              foregroundColor: Colors.white,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22),
                              ),
                            ),
                            child: const Text(
                              "Add to Cart",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
