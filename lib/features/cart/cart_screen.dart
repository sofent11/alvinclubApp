import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/navigation/route_paths.dart';
import '../../core/theme/app_theme.dart';
import '../../data/repositories/cart_repository.dart';
import '../../shared/widgets/themed_button.dart';
import '../../shared/widgets/themed_text.dart';
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

    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_outline),
            onPressed: () {
               // TODO: Delete selected
            },
          ),
        ],
      ),
      body: cartAsync.when(
        data: (payload) {
          if (payload.items.isEmpty) {
            return const Center(child: Text('Your cart is empty'));
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
        error: (err, _) => Center(child: Text('Error: $err')),
      ),
    );
  }
}

class _CartItemView extends ConsumerWidget {
  const _CartItemView({required this.item});

  final CartLineItem item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(cartControllerProvider);
    final isSelected = state.selectedSkuCodes.contains(item.skuCode);

    return Container(
      padding: const EdgeInsets.all(12),
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
          Checkbox(
            value: isSelected,
            onChanged: (val) {
              ref.read(cartControllerProvider.notifier).toggleItem(item.skuCode);
            },
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CachedNetworkImage(
              imageUrl: item.imageUrl ?? '',
              width: 80,
              height: 80,
              fit: BoxFit.cover,
              errorWidget: (_, _, _) => Container(color: Colors.grey[200], width: 80, height: 80),
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
                    item.options.map((o) => '${o.name}: ${o.value}').join(', '),
                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
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
                      onChanged: (val) {
                        ref.read(cartControllerProvider.notifier).updateQuantity(item.skuCode, val);
                      },
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
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: quantity > 1 ? () => onChanged(quantity - 1) : null,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Icon(Icons.remove, size: 16),
            ),
          ),
          Text('$quantity', style: const TextStyle(fontSize: 14)),
          InkWell(
            onTap: () => onChanged(quantity + 1),
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
    final isAllSelected = selection.isNotEmpty && selection.length == allAvailable;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
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
                const Text('Total:', style: TextStyle(fontSize: 12, color: Colors.grey)),
                pricingAsync.when(
                  data: (pricing) => ThemedText(
                    '${pricing.currency ?? 'USD'} ${pricing.settlementAmount.toStringAsFixed(2)}',
                    type: ThemedTextType.subtitle,
                    style: TextStyle(color: context.appColors.primary),
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
                        context.push(RoutePaths.checkout);
                      },
              ),
            ),
          ],
        ),
      ),
    );
  }
}