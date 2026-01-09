import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/navigation/route_paths.dart';
import '../../core/theme/app_theme.dart';
import '../../data/repositories/cart_repository.dart';
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
      backgroundColor: colors.background,
      appBar: AppBar(
        title: const Text('Shopping Cart'),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_outline, color: Colors.red),
            onPressed: selection.isEmpty ? null : _confirmDelete,
          ),
        ],
      ),
      body: cartAsync.when(
        data: (payload) {
          if (payload.items.isEmpty) {
            return EmptyCartState(onShopNow: () => context.go(RoutePaths.home));
          }

          // Init selection if needed
          WidgetsBinding.instance.addPostFrameCallback((_) {
            ref.read(cartControllerProvider.notifier).init(payload.items);
          });

          return Column(
            children: [
              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.all(16),
                  itemCount: payload.items.length,
                  separatorBuilder: (_, _) => const SizedBox(height: 16),
                  itemBuilder: (context, index) {
                    final item = payload.items[index];
                    return _CartItemView(item: item);
                  },
                ),
              ),
              _CartBottomBar(items: payload.items),
            ],
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

    return Dismissible(
      key: ValueKey(item.skuCode),
      direction: DismissDirection.endToStart,
      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        decoration: BoxDecoration(
          color: colors.danger,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Icon(Icons.delete_outline, color: Colors.white, size: 28),
      ),
      confirmDismiss: (_) async {
        return await showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: const Text('Delete Item'),
            content: const Text('Are you sure you want to remove this item?'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(ctx, false),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(ctx, true),
                child: const Text('Remove'),
              ),
            ],
          ),
        );
      },
      onDismissed: (_) {
        ref.read(cartControllerProvider.notifier).removeItems([item.skuCode]);
        AppToast.success(context, 'Removed from cart');
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: colors.surface,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: colors.shadow.withValues(alpha: 0.15),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Checkbox(
              value: isSelected,
              onChanged: item.status == 'available'
                  ? (val) {
                      ref
                          .read(cartControllerProvider.notifier)
                          .toggleItem(item.skuCode);
                    }
                  : null,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: item.imageUrl ?? '',
                width: 80,
                height: 80,
                fit: BoxFit.cover,
                errorWidget: (_, _, _) => Container(
                  color: colors.mutedBackground,
                  width: 80,
                  height: 80,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.productName,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 13),
                  ),
                  const SizedBox(height: 4),
                  if (item.options.isNotEmpty)
                    Text(
                      item.options
                          .map((o) => '${o.name}: ${o.value}')
                          .join(', '),
                      style: TextStyle(color: colors.textMuted, fontSize: 12),
                    ),
                  if (item.status != 'available')
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
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
                      ThemedText(
                        '${item.currency ?? '\$'} ${item.price?.toStringAsFixed(2) ?? '0.00'}',
                        type: ThemedTextType.defaultSemiBold,
                      ),
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
    final colors = context.appColors;
    final isDisabled = onChanged == null;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: colors.border),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: !isDisabled && quantity > 1
                ? () => onChanged?.call(quantity - 1)
                : null,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Icon(Icons.remove, size: 16),
            ),
          ),
          Text(
            '$quantity',
            style: TextStyle(
              fontSize: 14,
              color: isDisabled ? colors.textMuted : colors.text,
            ),
          ),
          InkWell(
            onTap: !isDisabled ? () => onChanged?.call(quantity + 1) : null,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Icon(Icons.add, size: 16),
            ),
          ),
        ],
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
    final colors = context.appColors;
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
            Row(
              children: [
                Checkbox(
                  value: isAllSelected,
                  onChanged: (val) {
                    ref.read(cartControllerProvider.notifier).toggleAll(items);
                  },
                ),
                const Text('All'),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Total:',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                pricingAsync.when(
                  data: (pricing) => Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ThemedText(
                        '${pricing.currency ?? 'USD'} ${pricing.settlementAmount.toStringAsFixed(2)}',
                        type: ThemedTextType.subtitle,
                        style: TextStyle(color: colors.primary),
                      ),
                      if ((pricing.discountAmount ?? 0) > 0)
                        Text(
                          'Saved ${pricing.currency ?? 'USD'} ${pricing.discountAmount!.toStringAsFixed(2)}',
                          style: TextStyle(fontSize: 11, color: colors.success),
                        ),
                    ],
                  ),
                  loading: () => const SizedBox(
                    width: 60,
                    height: 20,
                    child: Center(child: LinearProgressIndicator()),
                  ),
                  error: (_, _) => const Text('Error'),
                ),
              ],
            ),
            const SizedBox(width: 16),
            SizedBox(
              width: 120,
              child: ThemedButton(
                label: 'Checkout (${selection.length})',
                onPressed: selection.isEmpty
                    ? null
                    : () {
                        context.push(RoutePaths.checkout, extra: selectedItems);
                      },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
