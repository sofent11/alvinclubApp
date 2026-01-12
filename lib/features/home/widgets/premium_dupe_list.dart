import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';
import '../../../data/repositories/product_repository.dart';
import '../../../shared/widgets/themed_text.dart';

class PremiumDupeList extends StatelessWidget {
  const PremiumDupeList({
    super.key,
    required this.products,
    required this.onProductTap,
    this.onMoreTap,
  });

  final List<PremiumDupeProduct> products;
  final ValueChanged<PremiumDupeProduct> onProductTap;
  final VoidCallback? onMoreTap;

  @override
  Widget build(BuildContext context) {
    if (products.isEmpty) return const SizedBox.shrink();
    final colors = context.appColors;
    final width = MediaQuery.of(context).size.width;

    const gap = 8.0;
    const horizontalPadding = 16.0;
    final itemWidth = (width - horizontalPadding * 2 - gap * 2) / 3;
    final mainHeight = itemWidth * 1.05;
    final smallHeight = (mainHeight - gap) / 2;
    final displayProducts = products.take(4).toList();

    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.only(top: 8, bottom: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ThemedText(
                  'Premium Inspired',
                  type: ThemedTextType.subtitle,
                  style: TextStyle(
                    fontSize: 22,
                    height: 1.1,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'serif',
                  ),
                ),
                GestureDetector(
                  onTap: onMoreTap,
                  child: ThemedText(
                    'More',
                    style: TextStyle(fontSize: 12, color: colors.textMuted),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Row(
              children: [
                SizedBox(
                  width: itemWidth,
                  child: displayProducts.isNotEmpty
                      ? _PremiumDupeCard(
                          product: displayProducts[0],
                          height: mainHeight,
                          showCart: true,
                          onTap: onProductTap,
                        )
                      : null,
                ),
                const SizedBox(width: gap),
                SizedBox(
                  width: itemWidth,
                  child: displayProducts.length > 1
                      ? _PremiumDupeCard(
                          product: displayProducts[1],
                          height: mainHeight,
                          showCart: true,
                          onTap: onProductTap,
                        )
                      : null,
                ),
                const SizedBox(width: gap),
                SizedBox(
                  width: itemWidth,
                  child: Column(
                    children: [
                      if (displayProducts.length > 2)
                        _PremiumDupeCard(
                          product: displayProducts[2],
                          height: smallHeight,
                          showCart: false,
                          onTap: onProductTap,
                        ),
                      const SizedBox(height: gap),
                      if (displayProducts.length > 3)
                        _PremiumDupeCard(
                          product: displayProducts[3],
                          height: smallHeight,
                          showCart: false,
                          onTap: onProductTap,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PremiumDupeCard extends StatelessWidget {
  const _PremiumDupeCard({
    required this.product,
    required this.height,
    required this.showCart,
    required this.onTap,
  });

  final PremiumDupeProduct product;
  final double height;
  final bool showCart;
  final ValueChanged<PremiumDupeProduct> onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final priceParts = _formatPriceParts(product.price);

    return GestureDetector(
      onTap: () => onTap(product),
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: const Color(0xFFF0E8E2)),
        ),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          fit: StackFit.expand,
          children: [
            if (product.imageUrl.isNotEmpty)
              CachedNetworkImage(
                imageUrl: product.imageUrl,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(color: colors.muted),
                errorWidget: (context, url, error) =>
                    Container(color: colors.muted),
              )
            else
              Container(color: colors.muted),

            // Price Tag
            Positioned(
              left: 6,
              bottom: 6,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                decoration: BoxDecoration(
                  color: const Color(0xFF1F1B18).withValues(alpha: 0.4),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      '${product.currency}${priceParts.$1}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '.${priceParts.$2}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Cart Icon
            if (showCart)
              Positioned(
                right: 6,
                bottom: 6,
                child: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1F1B18).withValues(alpha: 0.4),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                    size: 14,
                    color: Colors.white,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

(String, String) _formatPriceParts(double value) {
  if (!value.isFinite) {
    return ('0', '00');
  }
  final parts = value.toStringAsFixed(2).split('.');
  return (parts[0], parts[1]);
}
