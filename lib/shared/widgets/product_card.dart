import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/product_repository.dart';
import '../../core/theme/app_theme.dart';
import '../../core/storage/favorites_store.dart';
import '../../features/favorites/application/favorites_notifier.dart'
    hide isFavoriteProvider;
import '../../features/product/product_providers.dart';
import 'themed_text.dart';

class ProductCard extends ConsumerWidget {
  const ProductCard({
    super.key,
    required this.product,
    this.onTap,
    this.showFavorite = false,
    this.onFavoriteTap,
  });

  final ProductItem product;
  final VoidCallback? onTap;
  final bool showFavorite;
  final VoidCallback? onFavoriteTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = context.appColors;
    final discount = _calculateDiscount();
    final isFavoriteAsync = ref.watch(isFavoriteProvider(product.id));

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: CachedNetworkImage(
                    imageUrl: product.imageUrl,
                    fit: BoxFit.cover,
                    placeholder: (context, url) =>
                        Container(color: Colors.grey[200]),
                    errorWidget: (context, url, error) => Container(
                      color: Colors.grey[200],
                      child: const Icon(Icons.broken_image, color: Colors.grey),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 13, height: 1.2),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          ThemedText(
                            '${product.currency ?? '\$'} ${product.price.toStringAsFixed(2)}',
                            type: ThemedTextType.defaultSemiBold,
                            style: const TextStyle(fontSize: 14),
                          ),
                          if (product.originalPrice != null &&
                              product.originalPrice! > product.price) ...[
                            const SizedBox(width: 4),
                            Text(
                              '${product.currency ?? '\$'} ${product.originalPrice!.toStringAsFixed(2)}',
                              style: const TextStyle(
                                fontSize: 11,
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ],
                        ],
                      ),
                      if (product.rating != null) ...[
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 12,
                              color: Colors.amber[700],
                            ),
                            const SizedBox(width: 2),
                            Text(
                              product.rating.toString(),
                              style: const TextStyle(
                                fontSize: 11,
                                color: Colors.grey,
                              ),
                            ),
                            if (product.reviewCount != null) ...[
                              const SizedBox(width: 2),
                              Text(
                                '(${product.reviewCount})',
                                style: const TextStyle(
                                  fontSize: 11,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ],
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
            if (discount != null)
              Positioned(
                top: 4,
                left: 4,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: colors.danger,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    '-$discount%',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            if (showFavorite)
              Positioned(
                top: 4,
                right: 4,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.1),
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: isFavoriteAsync.when(
                    data: (isFavorite) => IconButton(
                      icon: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: isFavorite ? colors.danger : Colors.grey,
                        size: 20,
                      ),
                      onPressed:
                          onFavoriteTap ??
                          () {
                            ref
                                .read(favoritesNotifierProvider.notifier)
                                .toggle(
                                  FavoriteItem(
                                    productCode: product.id,
                                    productName: product.name,
                                    imageUrl: product.imageUrl,
                                    price: product.price,
                                    currency: product.currency,
                                    addedAt: DateTime.now().toIso8601String(),
                                  ),
                                );
                          },
                      padding: const EdgeInsets.all(4),
                      constraints: const BoxConstraints(),
                    ),
                    loading: () => const SizedBox(
                      width: 28,
                      height: 28,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: CircularProgressIndicator(strokeWidth: 2),
                      ),
                    ),
                    error: (_, _) => IconButton(
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.grey,
                        size: 20,
                      ),
                      onPressed:
                          onFavoriteTap ??
                          () {
                            ref
                                .read(favoritesNotifierProvider.notifier)
                                .toggle(
                                  FavoriteItem(
                                    productCode: product.id,
                                    productName: product.name,
                                    imageUrl: product.imageUrl,
                                    price: product.price,
                                    currency: product.currency,
                                    addedAt: DateTime.now().toIso8601String(),
                                  ),
                                );
                          },
                      padding: const EdgeInsets.all(4),
                      constraints: const BoxConstraints(),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  int? _calculateDiscount() {
    if (product.originalPrice != null &&
        product.originalPrice! > product.price) {
      final discount =
          ((product.originalPrice! - product.price) /
                  product.originalPrice! *
                  100)
              .round();
      return discount;
    }
    return null;
  }
}
