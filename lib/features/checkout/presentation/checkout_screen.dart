import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/navigation/route_paths.dart';
import '../../../data/repositories/cart_repository.dart';
import '../../../shared/widgets/themed_button.dart';
import '../../../shared/widgets/themed_text.dart';
import '../application/checkout_providers.dart';

class CheckoutScreen extends ConsumerStatefulWidget {
  const CheckoutScreen({super.key, required this.items});

  final List<CartPricingRequestItem> items;

  @override
  ConsumerState<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends ConsumerState<CheckoutScreen> {
  final _couponController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(checkoutControllerProvider.notifier).init(widget.items);
    });
  }

  @override
  void dispose() {
    _couponController.dispose();
    super.dispose();
  }

  Future<void> _submitOrder() async {
    final controller = ref.read(checkoutControllerProvider.notifier);
    final result = await controller.submitOrder();
    
    if (result != null && mounted) {
      context.goNamed(
        RoutePaths.orderPay, // Ensure this route name matches AppRouter
        pathParameters: {'orderId': result.orderId},
      );
    } else {
      final error = ref.read(checkoutControllerProvider).error;
      if (error != null && mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(error)),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(checkoutControllerProvider);

    if (state.isLoading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Checkout')),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildAddressSection(state),
                  const SizedBox(height: 20),
                  _buildItemsSummary(state),
                  const SizedBox(height: 20),
                  _buildCouponSection(state),
                  const SizedBox(height: 20),
                  _buildPricingSummary(state),
                ],
              ),
            ),
          ),
          _buildBottomBar(state),
        ],
      ),
    );
  }

  Widget _buildAddressSection(CheckoutState state) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const ThemedText('Shipping Address', type: ThemedTextType.defaultSemiBold),
              GestureDetector(
                onTap: () {
                  context.push(RoutePaths.addressList);
                },
                child: const Text('Change', style: TextStyle(color: Colors.blue)),
              ),
            ],
          ),
          const SizedBox(height: 10),
          if (state.address != null) ...[
            Text(
              '${state.address!.firstName} ${state.address!.lastName}  ${state.address!.phone}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              '${state.address!.addressLine1}, ${state.address!.city}, ${state.address!.province}, ${state.address!.country}',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ] else
            const Text('No address selected. Please add one.'),
        ],
      ),
    );
  }

  Widget _buildItemsSummary(CheckoutState state) {
    // Simple summary
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ThemedText('Order Items', type: ThemedTextType.defaultSemiBold),
          const SizedBox(height: 10),
          Text('${state.items.length} items'),
          // We could fetch and display item details here if we had them.
          // But checkout usually shows a condensed list.
        ],
      ),
    );
  }

  Widget _buildCouponSection(CheckoutState state) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ThemedText('Coupon', type: ThemedTextType.defaultSemiBold),
          const SizedBox(height: 10),
          if (state.couponCode != null)
            Row(
              children: [
                Icon(Icons.local_offer, color: Colors.green[700]),
                const SizedBox(width: 8),
                Text(state.couponCode!, style: const TextStyle(fontWeight: FontWeight.bold)),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.close, color: Colors.grey),
                  onPressed: () {
                    ref.read(checkoutControllerProvider.notifier).removeCoupon();
                    _couponController.clear();
                  },
                ),
              ],
            )
          else
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _couponController,
                    decoration: const InputDecoration(
                      hintText: 'Enter coupon code',
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    if (_couponController.text.isNotEmpty) {
                      ref.read(checkoutControllerProvider.notifier).applyCoupon(_couponController.text);
                    }
                  },
                  child: const Text('Apply'),
                ),
              ],
            ),
        ],
      ),
    );
  }

  Widget _buildPricingSummary(CheckoutState state) {
    final pricing = state.pricing;
    if (pricing == null) return const SizedBox.shrink();

    final currency = pricing.targetCurrency ?? 'USD';

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Column(
        children: [
          _buildPriceRow('Subtotal', '$currency ${pricing.totalAmount.toStringAsFixed(2)}'),
          // Discount
          if (pricing.totalAmount != pricing.targetTotalAmount)
             _buildPriceRow(
               'Discount',
               '- $currency ${(pricing.totalAmount - pricing.targetTotalAmount).toStringAsFixed(2)}',
               color: Colors.green,
             ),
          const Divider(),
          _buildPriceRow(
            'Total',
            '$currency ${pricing.targetTotalAmount.toStringAsFixed(2)}',
            isBold: true,
            fontSize: 18,
          ),
        ],
      ),
    );
  }

  Widget _buildPriceRow(String label, String value, {bool isBold = false, double? fontSize, Color? color}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontSize: fontSize, fontWeight: isBold ? FontWeight.bold : FontWeight.normal)),
          Text(value, style: TextStyle(fontSize: fontSize, fontWeight: isBold ? FontWeight.bold : FontWeight.normal, color: color)),
        ],
      ),
    );
  }

  Widget _buildBottomBar(CheckoutState state) {
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
        child: ThemedButton(
          label: state.isSubmitting ? 'Submitting...' : 'Submit Order',
          loading: state.isSubmitting,
          onPressed: state.isSubmitting ? null : _submitOrder,
        ),
      ),
    );
  }
}
