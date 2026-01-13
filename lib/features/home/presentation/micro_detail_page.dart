import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../data/repositories/product_repository.dart';
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
    _pageController = PageController();
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
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            scrollDirection: Axis.vertical,
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
              return _MicroDetailItem(product: product);
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

class _MicroDetailItem extends StatefulWidget {
  const _MicroDetailItem({required this.product});

  final ProductItem product;

  @override
  State<_MicroDetailItem> createState() => _MicroDetailItemState();
}

class _MicroDetailItemState extends State<_MicroDetailItem> {
  int _currentImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final product = widget.product;
    final images = (product.images != null && product.images!.isNotEmpty)
        ? product.images!
        : (product.imageUrl.isNotEmpty ? [product.imageUrl] : []);

    return Stack(
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
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                          : null,
                      color: Colors.grey,
                    ),
                  );
                },
                errorBuilder: (context, error, stackTrace) =>
                    const Center(child: Icon(Icons.error, color: Colors.white)),
              );
            },
          )
        else
          Container(color: Colors.grey[900]),

        // Image Indicator (if multiple images)
        if (images.length > 1)
          Positioned(
            bottom: 180, // Above the info area
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(images.length, (index) {
                return Container(
                  width: index == _currentImageIndex ? 20 : 6,
                  height: 4,
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  decoration: BoxDecoration(
                    color: index == _currentImageIndex
                        ? Colors.white
                        : Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(2),
                  ),
                );
              }),
            ),
          ),

        // Bottom Info & Action Bar
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.6),
                  Colors.black.withOpacity(0.9),
                ],
                stops: const [0.0, 0.3, 1.0],
              ),
            ),
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: MediaQuery.of(context).padding.bottom + 10,
              top: 60,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Selling Points (if any)
                // Note: ProductItem doesn't strictly have selling points in the simplified model we have,
                // but we can assume tagCodes or marketingInfo might be it.
                // Using 'tags' as a proxy for overlay text if available.
                if (product.tags != null && product.tags!.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      product.tags!.first, // Example usage
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        shadows: [Shadow(color: Colors.black, blurRadius: 4)],
                      ),
                    ),
                  ),

                // Price and Details Row
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    if (product.discount != null)
                      Text(
                        product.discount!, // "-35%"
                        style: const TextStyle(
                          color: Colors.pinkAccent,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    const SizedBox(width: 8),
                    Text(
                      "${product.currency} ${product.price}",
                      style: const TextStyle(
                        color: Colors.redAccent,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 8),
                    if (product.originalPrice != null)
                      Text(
                        "${product.currency} ${product.originalPrice}",
                        style: const TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                          fontSize: 14,
                        ),
                      ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        // Navigate to full details if needed, or just show sheet
                        // For now, maybe push to old ProductDetail?
                        // context.push('/product/${product.id}');
                      },
                      child: const Row(
                        children: [
                          Text(
                            "Details",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: Colors.white,
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                // Product Name
                Text(
                  product.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 16),

                // Bottom Action Bar
                Row(
                  children: [
                    // Cart Icon
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 16),
                    // Add to Cart Button
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // TODO: Implement Add to Cart
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Added to cart")),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pinkAccent,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                        ),
                        child: const Text(
                          "Add to Cart",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
