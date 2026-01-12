import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/storage/favorites_store.dart';
import '../../core/theme/app_theme.dart';
import '../../data/repositories/product_repository.dart';
import '../../features/favorites/application/favorites_notifier.dart'
    hide isFavoriteProvider;
import '../../features/product/product_providers.dart';

enum ProductCardVariant { standard, compact }

class ProductCard extends ConsumerStatefulWidget {
  const ProductCard({
    super.key,
    required this.product,
    this.onTap,
    this.showFavorite = false,
    this.onFavoriteTap,
    this.variant = ProductCardVariant.standard,
    this.aspectRatio = 1,
    this.onAddToCart,
    this.addToCartLoading = false,
  });

  final ProductItem product;
  final VoidCallback? onTap;
  final bool showFavorite;
  final VoidCallback? onFavoriteTap;
  final ProductCardVariant variant;
  final double aspectRatio;
  final VoidCallback? onAddToCart;
  final bool addToCartLoading;

  @override
  ConsumerState<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends ConsumerState<ProductCard> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final isCompact = widget.variant == ProductCardVariant.compact;
    final isFavoriteAsync = ref.watch(isFavoriteProvider(widget.product.id));
    final currency = _currencySymbol(widget.product.currency);
    final borderRadius = BorderRadius.circular(isCompact ? 14 : 12);

    return AnimatedOpacity(
      duration: const Duration(milliseconds: 120),
      opacity: _isPressed ? 0.7 : 1,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: widget.onTap,
          borderRadius: borderRadius,
          splashFactory: NoSplash.splashFactory,
          highlightColor: Colors.transparent,
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          onHighlightChanged: (value) {
            if (widget.onTap != null) {
              setState(() {
                _isPressed = value;
              });
            }
          },
          child: Container(
            decoration: BoxDecoration(
              color: colors.surface,
              borderRadius: borderRadius,
              border: Border.all(color: colors.border, width: 0.5),
            ),
            clipBehavior: Clip.antiAlias,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AspectRatio(
                      aspectRatio: widget.aspectRatio,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: CachedNetworkImage(
                              imageUrl: widget.product.imageUrl,
                              fit: BoxFit.cover,
                              placeholder: (context, url) =>
                                  Container(color: colors.muted),
                              errorWidget: (context, url, error) => Container(
                                color: colors.muted,
                                child: Icon(
                                  Icons.broken_image,
                                  color: colors.textMuted,
                                ),
                              ),
                            ),
                          ),
                          if (widget.product.tags != null &&
                              widget.product.tags!.isNotEmpty)
                            Positioned(
                              top: 8,
                              left: 8,
                              child: Row(
                                children: widget.product.tags!
                                    .take(2)
                                    .map(
                                      (tag) => Container(
                                        margin: const EdgeInsets.only(right: 4),
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 6,
                                          vertical: 2,
                                        ),
                                        decoration: BoxDecoration(
                                          color: colors.tint.withValues(
                                            alpha: 0.12,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            4,
                                          ),
                                        ),
                                        child: Text(
                                          tag,
                                          style: TextStyle(
                                            color: colors.tint,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(isCompact ? 6 : 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.product.name,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: isCompact ? 11.5 : 14,
                              height: isCompact ? 14 / 11.5 : 18 / 14,
                              fontWeight: FontWeight.w600,
                              color: colors.text,
                            ),
                          ),
                          SizedBox(height: isCompact ? 3 : 6),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    currency,
                                    style: TextStyle(
                                      fontSize: isCompact ? 11 : 14,
                                      fontWeight: FontWeight.w700,
                                      color: colors.tint,
                                    ),
                                  ),
                                  const SizedBox(width: 2),
                                  Text(
                                    widget.product.price.toStringAsFixed(2),
                                    style: TextStyle(
                                      fontSize: isCompact ? 13 : 18,
                                      fontWeight: FontWeight.w700,
                                      color: colors.tint,
                                    ),
                                  ),
                                ],
                              ),
                              if (widget.product.originalPrice != null &&
                                  widget.product.originalPrice! >
                                      widget.product.price) ...[
                                const SizedBox(width: 8),
                                Text(
                                  '$currency${widget.product.originalPrice!.toStringAsFixed(2)}',
                                  style: TextStyle(
                                    fontSize: isCompact ? 9 : 12,
                                    color: colors.textMuted,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ],
                            ],
                          ),
                          if (widget.product.sales != null &&
                              widget.product.sales! > 0) ...[
                            SizedBox(height: isCompact ? 3 : 6),
                            Text(
                              '销量${_formatSales(widget.product.sales!)}',
                              style: TextStyle(
                                fontSize: isCompact ? 9 : 12,
                                height: isCompact ? 12 / 9 : 16 / 12,
                                color: colors.textMuted,
                              ),
                            ),
                          ],
                          if (widget.onAddToCart != null) ...[
                            SizedBox(height: isCompact ? 3 : 6),
                            AnimatedOpacity(
                              duration: const Duration(milliseconds: 120),
                              opacity: widget.addToCartLoading ? 0.6 : 1,
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: widget.addToCartLoading
                                      ? null
                                      : widget.onAddToCart,
                                  borderRadius: BorderRadius.circular(10),
                                  splashFactory: NoSplash.splashFactory,
                                  highlightColor: Colors.transparent,
                                  overlayColor: WidgetStateProperty.all(
                                    Colors.transparent,
                                  ),
                                  child: Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 6,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: colors.tint),
                                    ),
                                    child: widget.addToCartLoading
                                        ? SizedBox(
                                            width: 16,
                                            height: 16,
                                            child: CircularProgressIndicator(
                                              strokeWidth: 2,
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                    colors.tint,
                                                  ),
                                            ),
                                          )
                                        : Text(
                                            '加入购物车',
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600,
                                              color: colors.tint,
                                            ),
                                          ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ],
                ),
                if (widget.showFavorite)
                  Positioned(
                    top: 6,
                    right: 6,
                    child: Container(
                      decoration: BoxDecoration(
                        color: colors.surface,
                        shape: BoxShape.circle,
                        border: Border.all(color: colors.border),
                        boxShadow: [
                          BoxShadow(
                            color: colors.shadow.withValues(alpha: 0.08),
                            blurRadius: 6,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: isFavoriteAsync.when(
                        data: (isFavorite) => IconButton(
                          icon: Icon(
                            isFavorite ? Icons.favorite : Icons.favorite_border,
                            color: isFavorite
                                ? colors.danger
                                : colors.textMuted,
                            size: 18,
                          ),
                          onPressed:
                              widget.onFavoriteTap ??
                              () {
                                ref
                                    .read(favoritesNotifierProvider.notifier)
                                    .toggle(
                                      FavoriteItem(
                                        productCode: widget.product.id,
                                        productName: widget.product.name,
                                        imageUrl: widget.product.imageUrl,
                                        price: widget.product.price,
                                        currency: widget.product.currency,
                                        addedAt: DateTime.now()
                                            .toIso8601String(),
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
                            padding: EdgeInsets.all(6),
                            child: CircularProgressIndicator(strokeWidth: 2),
                          ),
                        ),
                        error: (_, _) => IconButton(
                          icon: Icon(
                            Icons.favorite_border,
                            color: colors.textMuted,
                            size: 18,
                          ),
                          onPressed:
                              widget.onFavoriteTap ??
                              () {
                                ref
                                    .read(favoritesNotifierProvider.notifier)
                                    .toggle(
                                      FavoriteItem(
                                        productCode: widget.product.id,
                                        productName: widget.product.name,
                                        imageUrl: widget.product.imageUrl,
                                        price: widget.product.price,
                                        currency: widget.product.currency,
                                        addedAt: DateTime.now()
                                            .toIso8601String(),
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
        ),
      ),
    );
  }
}

String _formatSales(int sales) {
  if (sales >= 10000) {
    return '${(sales / 10000).toStringAsFixed(1)}万+';
  }
  if (sales >= 1000) {
    return '${(sales / 1000).toStringAsFixed(1)}k+';
  }
  return '$sales+';
}

String _currencySymbol(String? currency) {
  if (currency == null || currency.trim().isEmpty) {
    return '¥';
  }
  final normalized = currency.trim().toUpperCase();
  const symbolMap = {
    'CNY': '¥',
    'RMB': '¥',
    'USD': '\$',
    'EUR': '€',
    'JPY': '¥',
    'HKD': 'HK\$',
  };
  return symbolMap[normalized] ?? currency;
}
