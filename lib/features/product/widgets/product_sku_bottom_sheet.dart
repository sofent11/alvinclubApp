import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/navigation/route_paths.dart';
import '../../../core/theme/app_theme.dart';
import '../../../data/repositories/cart_repository.dart';
import '../../../data/repositories/product_repository.dart';
import '../../../shared/utils/price_utils.dart';
import '../../../shared/widgets/themed_button.dart';
import '../../../shared/widgets/toast.dart';
import '../product_detail_controller.dart';
import '../../../core/auth/auth_store.dart';

class ProductSkuBottomSheet extends ConsumerStatefulWidget {
  const ProductSkuBottomSheet({
    super.key,
    required this.product,
    required this.skus,
  });

  final ProductDetail product;
  final List<ProductSku> skus;

  @override
  ConsumerState<ProductSkuBottomSheet> createState() =>
      _ProductSkuBottomSheetState();
}

class _ProductSkuBottomSheetState extends ConsumerState<ProductSkuBottomSheet> {
  bool _isAddingToCart = false;

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

  bool _ensureAuthenticated(BuildContext context) {
    final authState = ref.read(authControllerProvider);
    if (authState.status == AuthStatus.authenticated) {
      return true;
    }

    showDialog<void>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('请先登录'),
        content: const Text('加入购物车需要登录账号'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: const Text('取消'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(dialogContext).pop();
              context.push(RoutePaths.signIn);
            },
            child: const Text('去登录'),
          ),
        ],
      ),
    );
    return false;
  }

  Future<void> _handleAddToCart(ProductSku selectedSku, int quantity) async {
    if (_isAddingToCart) return;
    if (!_ensureAuthenticated(context)) return;

    setState(() {
      _isAddingToCart = true;
    });

    try {
      await ref
          .read(cartRepositoryProvider)
          .addToCart(
            AddToCartInput(skuCode: selectedSku.code, quantity: quantity),
          );
      if (!mounted) return;
      AppToast.success(context, '已加入购物车');
      Navigator.pop(context); // Close bottom sheet on success
    } catch (e) {
      if (!mounted) return;
      AppToast.error(context, '加入购物车失败');
    } finally {
      if (mounted) {
        setState(() {
          _isAddingToCart = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(productDetailControllerProvider);
    final selectedSku = state.selectedSku;
    final colors = context.appColors;

    final currentPrice = selectedSku?.price ?? widget.product.price;
    final currency = selectedSku?.currency ?? widget.product.currency;
    final symbol = PriceUtils.getCurrencySymbol(currency);
    final imageUrl =
        selectedSku?.imageUrl ??
        (widget.product.images.isNotEmpty ? widget.product.images.first : '');

    // Format selected options text
    final selectedOptionsText = state.selectedOptions.entries
        .map((e) => e.value)
        .join('; ');

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Header
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Product Image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: CachedNetworkImage(
                        imageUrl: imageUrl,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                        placeholder: (context, url) =>
                            Container(color: Colors.grey[200]),
                        errorWidget: (context, url, error) => Container(
                          color: Colors.grey[200],
                          child: const Icon(Icons.error),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    // Info
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.product.name,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            '$symbol${currentPrice.toStringAsFixed(2)}',
                            style: const TextStyle(
                              color: Color(0xFFFA3E3E),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          if (selectedOptionsText.isNotEmpty)
                            Text(
                              'Selected: $selectedOptionsText',
                              style: TextStyle(
                                color: colors.textMuted,
                                fontSize: 13,
                              ),
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 24), // Space for close button
                  ],
                ),
              ),
              // Close Button
              Positioned(
                top: 8,
                right: 8,
                child: IconButton(
                  icon: const Icon(Icons.close, color: Colors.grey),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ],
          ),

          // Scrollable Content
          Flexible(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Options
                  ...widget.product.options.map((option) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${option.name}(${option.values.length}):',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: option.values.map((value) {
                              final isSelected =
                                  state.selectedOptions[option.name] ==
                                  value.value;
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
                                    color: isEnabled
                                        ? (isSelected
                                              ? const Color(0xFFFA3E3E)
                                              : Colors.black87)
                                        : colors.textMuted,
                                    fontSize: 13,
                                  ),
                                ),
                                selected: isSelected,
                                selectedColor: const Color(
                                  0xFFFA3E3E,
                                ).withValues(alpha: 0.1),
                                backgroundColor: const Color(0xFFF5F5F5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  side: BorderSide(
                                    color: isSelected
                                        ? const Color(0xFFFA3E3E)
                                        : Colors.transparent,
                                  ),
                                ),
                                onSelected: isEnabled
                                    ? (selected) {
                                        if (selected) {
                                          ref
                                              .read(
                                                productDetailControllerProvider
                                                    .notifier,
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
                  }),

                  // Quantity
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Quantity',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[300]!),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          children: [
                            _QuantityButton(
                              icon: Icons.remove,
                              onTap: state.quantity > 1
                                  ? () => ref
                                        .read(
                                          productDetailControllerProvider
                                              .notifier,
                                        )
                                        .updateQuantity(state.quantity - 1)
                                  : null,
                            ),
                            Container(
                              width: 40,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.symmetric(
                                  vertical: BorderSide(
                                    color: Colors.grey[300]!,
                                  ),
                                ),
                              ),
                              child: Text(
                                state.quantity.toString(),
                                style: const TextStyle(fontSize: 14),
                              ),
                            ),
                            _QuantityButton(
                              icon: Icons.add,
                              onTap: () => ref
                                  .read(
                                    productDetailControllerProvider.notifier,
                                  )
                                  .updateQuantity(state.quantity + 1),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),

          // Bottom Button
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: ThemedButton(
                  label: 'Add to Cart',
                  loading: _isAddingToCart,
                  // Removed invalid style parameter
                  onPressed: selectedSku == null || _isAddingToCart
                      ? null
                      : () => _handleAddToCart(selectedSku, state.quantity),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _QuantityButton extends StatelessWidget {
  const _QuantityButton({required this.icon, this.onTap});

  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 32,
        height: 32,
        alignment: Alignment.center,
        child: Icon(
          icon,
          size: 16,
          color: onTap != null ? Colors.black87 : Colors.grey[300],
        ),
      ),
    );
  }
}
