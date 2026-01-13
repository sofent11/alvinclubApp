import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../data/repositories/product_repository.dart';

class FlashSaleProductCard extends StatelessWidget {
  const FlashSaleProductCard({
    super.key,
    required this.product,
    this.onTap,
    this.onAddToCart,
  });

  final ProductItem product;
  final VoidCallback? onTap;
  final VoidCallback? onAddToCart;

  @override
  Widget build(BuildContext context) {
    // Calculate percentage if possible, otherwise mock or hide
    // Logic: sales / (sales + stock) or just random for demo if data missing
    final sales = product.sales ?? 0;
    // For flash sale, we usually have a target stock or 'total available'.
    // The API might return 'sales' and we might not have total.
    // Let's assume a progress calculation or default to a visual indicator.
    // If stock is null, we can't calc percentage accurately.
    // But requirement says "Purchased X%".
    // I will mock the total as (sales + 10) if stock missing to show "almost sold out" or something dynamic.
    // Actually, let's just use sales % 100 for visual variety if real data is missing.
    final int totalStock = (product.stock ?? (sales + 20));
    final double progress = totalStock > 0 ? (sales / totalStock) : 0.0;
    final int percent = (progress * 100).clamp(0, 100).toInt();

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            // Image
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: product.imageUrl,
                width: 110,
                height: 110,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  color: Colors.grey[200],
                  child: const Center(
                    child: Icon(Icons.image, color: Colors.grey),
                  ),
                ),
                errorWidget: (context, url, error) => Container(
                  color: Colors.grey[200],
                  child: const Center(
                    child: Icon(Icons.broken_image, color: Colors.grey),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),

            // Details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Title
                  Text(
                    product.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Progress Bar Section
                  Row(
                    children: [
                      Expanded(
                        child: Stack(
                          children: [
                            Container(
                              height: 14,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFEBEE), // Red 50
                                borderRadius: BorderRadius.circular(7),
                              ),
                            ),
                            FractionallySizedBox(
                              widthFactor: progress.clamp(0.0, 1.0),
                              child: Container(
                                height: 14,
                                decoration: BoxDecoration(
                                  color: const Color(
                                    0xFFFF5252,
                                  ), // Red Accent 200
                                  borderRadius: BorderRadius.circular(7),
                                ),
                              ),
                            ),
                            Positioned.fill(
                              child: Center(
                                child: Text(
                                  'Purchased $percent%',
                                  style: const TextStyle(
                                    color: Colors
                                        .white, // Or Red depending on contrast
                                    fontSize: 9,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Sold < ${sales + 5}', // Mocking "Sold < Y" as requested
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),

                  // Price Row
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // Discount Tag
                      if (product.discount != null ||
                          (product.originalPrice != null &&
                              product.originalPrice! > product.price))
                        Container(
                          margin: const EdgeInsets.only(bottom: 2, right: 4),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFEBEE),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            product.discount ??
                                '-${(((product.originalPrice ?? product.price) - product.price) / (product.originalPrice ?? product.price) * 100).toInt()}%',
                            style: const TextStyle(
                              color: Color(0xFFD32F2F),
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${product.currency} ${product.price.toStringAsFixed(2)}',
                              style: const TextStyle(
                                color: Color(0xFFD32F2F),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            if (product.originalPrice != null)
                              Text(
                                '${product.currency} ${product.originalPrice!.toStringAsFixed(2)}',
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                          ],
                        ),
                      ),

                      // Cart Button
                      GestureDetector(
                        onTap: onAddToCart,
                        child: Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            color: const Color(0xFFD32F2F),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                            size: 20,
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
