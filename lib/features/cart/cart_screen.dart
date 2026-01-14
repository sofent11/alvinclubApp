import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/navigation/route_paths.dart';
import '../../core/theme/app_theme.dart';
import '../../data/repositories/cart_repository.dart';
import '../../shared/utils/price_utils.dart';
import '../../shared/widgets/empty_state.dart';
import '../../shared/widgets/themed_button.dart';
import '../../shared/widgets/themed_text.dart';
import '../../shared/widgets/toast.dart';
import 'cart_controller.dart';
import 'cart_providers.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
  ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final cartAsync = ref.watch(cartProvider);
    final selection = ref.watch(cartControllerProvider).selectedSkuCodes;
    final colors = context.appColors;

    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA), // Light grey background
      body: cartAsync.when(
        data: (payload) {
          if (payload.items.isEmpty) {
            return EmptyCartState(onShopNow: () => context.go(RoutePaths.home));
          }

          // Init selection if needed
          WidgetsBinding.instance.addPostFrameCallback((_) {
            ref.read(cartControllerProvider.notifier).init(payload.items);
          });

          return SafeArea(
            child: Column(
              children: [
                _buildHeader(
                  context,
                  payload.items.length,
                  selection.isNotEmpty,
                ),
                _buildPromoBanner(),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(16),
                    children: [
                      _buildShippingHeader(),
                      const SizedBox(height: 12),
                      ...payload.items.map((item) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: _CartItemView(item: item),
                        );
                      }),
                    ],
                  ),
                ),
                _CartBottomBar(items: payload.items),
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => ErrorState(
          title: 'Unable to load cart',
          description: err.toString(),
          onRetry: () => ref.invalidate(cartProvider),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context, int count, bool hasSelection) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Text(
            'Cart ($count)',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Row(
              children: [
                Icon(Icons.location_on, size: 14, color: Colors.grey[600]),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    'hm m+1 1234567890S...', // Mock location
                    style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Icon(Icons.chevron_right, size: 16, color: Colors.grey),
              ],
            ),
          ),
          const SizedBox(width: 12),
          GestureDetector(
            onTap: hasSelection ? _confirmDelete : null,
            child: Text(
              'Remove',
              style: TextStyle(
                fontSize: 14,
                color: hasSelection ? Colors.black : Colors.grey[400],
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPromoBanner() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF9F7AEA), Color(0xFFB794F4)], // Purple gradient
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Buy 3, Get \$3 Back',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 4),
          Text(
            'Buy More, Save More!',
            style: TextStyle(color: Colors.white70, fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildShippingHeader() {
    return Row(
      children: const [
        Icon(
          Icons.check_circle,
          color: Color(0xFF9F7AEA),
          size: 20,
        ), // Purple check
        SizedBox(width: 8),
        Text(
          'China Air Shipping',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Future<void> _confirmDelete() async {
    final selection = ref.read(cartControllerProvider).selectedSkuCodes;
    if (selection.isEmpty) return;

    final shouldDelete = await showDialog<bool>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: const Text('Remove items'),
          content: Text(
            'Remove ${selection.length} selected item(s) from your cart?',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(false),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(true),
              child: const Text('Remove'),
            ),
          ],
        );
      },
    );

    if (shouldDelete != true || !mounted) return;
    await ref
        .read(cartControllerProvider.notifier)
        .removeItems(selection.toList());
    if (!mounted) return;
    AppToast.success(context, 'Removed from cart');
  }
}

class _CartItemView extends ConsumerWidget {
  const _CartItemView({required this.item});

  final CartLineItem item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(cartControllerProvider);
    final isSelected = state.selectedSkuCodes.contains(item.skuCode);
    final colors = context.appColors;
    final symbol = PriceUtils.getCurrencySymbol(item.currency);

    // Determine check color: purple if selected
    final checkColor = isSelected ? const Color(0xFF9F7AEA) : Colors.grey[400];

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Custom Checkbox
          GestureDetector(
            onTap: item.status == 'available'
                ? () {
                    ref
                        .read(cartControllerProvider.notifier)
                        .toggleItem(item.skuCode);
                  }
                : null,
            child: Container(
              margin: const EdgeInsets.only(top: 30, right: 12),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected
                    ? const Color(0xFF9F7AEA)
                    : Colors.transparent,
                border: Border.all(
                  color: isSelected
                      ? const Color(0xFF9F7AEA)
                      : Colors.grey[400]!,
                  width: 1.5,
                ),
              ),
              width: 20,
              height: 20,
              child: isSelected
                  ? const Icon(Icons.check, size: 14, color: Colors.white)
                  : null,
            ),
          ),
          // Product Image
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CachedNetworkImage(
              imageUrl: item.imageUrl ?? '',
              width: 76,
              height: 76,
              fit: BoxFit.cover,
              errorWidget: (_, __, ___) => Container(
                color: colors.mutedBackground,
                width: 76,
                height: 76,
              ),
            ),
          ),
          const SizedBox(width: 12),
          // Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.productName,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 12,
                    height: 1.2,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 4),
                // Variant / Options
                if (item.options.isNotEmpty)
                  Text(
                    item.options.map((o) => '${o.name}/${o.value}').join(' '),
                    style: TextStyle(color: Colors.grey[500], fontSize: 12),
                  ),
                if (item.status != 'available')
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      'Unavailable',
                      style: TextStyle(
                        color: colors.danger,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Price
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '$symbol ${item.price?.toStringAsFixed(2) ?? '0.00'}',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        // Mock Original Price (strikethrough)
                        if (item.price != null)
                          Text(
                            '$symbol ${(item.price! * 1.5).toStringAsFixed(2)}',
                            style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.lineThrough,
                              color: Colors.grey[400],
                            ),
                          ),
                      ],
                    ),
                    // Quantity Stepper
                    _QuantityStepper(
                      quantity: item.quantity,
                      onChanged: item.status == 'available'
                          ? (val) {
                              ref
                                  .read(cartControllerProvider.notifier)
                                  .updateQuantity(item.skuCode, val);
                            }
                          : null,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _QuantityStepper extends StatelessWidget {
  const _QuantityStepper({required this.quantity, required this.onChanged});

  final int quantity;
  final ValueChanged<int>? onChanged;

  @override
  Widget build(BuildContext context) {
    final isDisabled = onChanged == null;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          _StepButton(
            icon: Icons.remove,
            onTap: !isDisabled && quantity > 1
                ? () => onChanged?.call(quantity - 1)
                : null,
          ),
          Container(
            constraints: const BoxConstraints(minWidth: 30),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.symmetric(
                vertical: BorderSide(color: Colors.grey[300]!),
              ),
            ),
            child: Text('$quantity', style: const TextStyle(fontSize: 14)),
          ),
          _StepButton(
            icon: Icons.add,
            onTap: !isDisabled ? () => onChanged?.call(quantity + 1) : null,
          ),
        ],
      ),
    );
  }
}

class _StepButton extends StatelessWidget {
  const _StepButton({required this.icon, this.onTap});

  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Icon(
          icon,
          size: 14,
          color: onTap == null ? Colors.grey : Colors.black54,
        ),
      ),
    );
  }
}

class _CartBottomBar extends ConsumerWidget {
  const _CartBottomBar({required this.items});

  final List<CartLineItem> items;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pricingAsync = ref.watch(cartPricingProvider);
    final selection = ref.watch(cartControllerProvider).selectedSkuCodes;
    final allAvailable = items.where((i) => i.status == 'available').length;
    final isAllSelected =
        selection.isNotEmpty && selection.length == allAvailable;

    final selectedItems = items
        .where((item) => selection.contains(item.skuCode))
        .map(
          (item) => CartPricingRequestItem(
            skuCode: item.skuCode,
            quantity: item.quantity,
          ),
        )
        .toList();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: const Offset(0, -2),
            blurRadius: 10,
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Row(
          children: [
            // All Checkbox
            GestureDetector(
              onTap: () {
                ref.read(cartControllerProvider.notifier).toggleAll(items);
              },
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isAllSelected
                          ? const Color(0xFF9F7AEA)
                          : Colors.transparent,
                      border: Border.all(
                        color: isAllSelected
                            ? const Color(0xFF9F7AEA)
                            : Colors.grey[400]!,
                        width: 1.5,
                      ),
                    ),
                    width: 20,
                    height: 20,
                    child: isAllSelected
                        ? const Icon(Icons.check, size: 14, color: Colors.white)
                        : null,
                  ),
                  const Text('All', style: TextStyle(fontSize: 14)),
                ],
              ),
            ),
            const Spacer(),
            // Total & Saved
            pricingAsync.when(
              data: (pricing) {
                final total = pricing.settlementAmount;
                final saved = pricing.discountAmount ?? 0.0;
                // Mock saved if 0 for visual demo
                final displaySaved = saved > 0 ? saved : total * 0.2;
                final symbol = PriceUtils.getCurrencySymbol(pricing.currency);

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Text(
                          '$symbol ${total.toStringAsFixed(2)}',
                          style: const TextStyle(
                            color: Color(0xFFE53E3E), // Red
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_up,
                          size: 16,
                          color: Color(0xFFE53E3E),
                        ),
                      ],
                    ),
                    if (displaySaved > 0)
                      Text(
                        'Saved: $symbol ${displaySaved.toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontSize: 11,
                          color: Color(0xFFE53E3E),
                        ),
                      ),
                  ],
                );
              },
              loading: () => const SizedBox(
                width: 60,
                height: 20,
                child: Center(child: LinearProgressIndicator()),
              ),
              error: (_, _) => const Text('Error'),
            ),
            const SizedBox(width: 16),
            // Checkout Button
            SizedBox(
              height: 44,
              child: ElevatedButton(
                onPressed: selection.isEmpty
                    ? null
                    : () {
                        context.push(RoutePaths.checkout, extra: selectedItems);
                      },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF56565), // Red button
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                  elevation: 0,
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                ),
                child: const Text(
                  'Checkout',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
