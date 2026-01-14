import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/navigation/route_paths.dart';
import '../../../core/theme/app_theme.dart';
import '../../../data/repositories/address_repository.dart';
import '../../../data/repositories/cart_repository.dart';
import '../../../data/repositories/order_repository.dart';
import '../../../shared/utils/price_utils.dart';
import '../application/checkout_providers.dart';

class CheckoutScreen extends ConsumerStatefulWidget {
  const CheckoutScreen({super.key, required this.items});

  final List<CartPricingRequestItem> items;

  @override
  ConsumerState<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends ConsumerState<CheckoutScreen> {
  final _remarkController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(checkoutControllerProvider.notifier).init(widget.items);
    });
  }

  @override
  void dispose() {
    _remarkController.dispose();
    super.dispose();
  }

  Future<void> _confirmOrder() async {
    final controller = ref.read(checkoutControllerProvider.notifier);
    controller.setRemark(_remarkController.text);

    final result = await controller.confirmOrder();

    if (result != null && mounted) {
      if (result.receiptAddress != null) {
        // TODO: Handle Web Payment / WebView
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Redirecting to payment: ${result.receiptAddress}'),
          ),
        );
        // In a real app, push a WebView screen here
      } else {
        context.goNamed(RoutePaths.orderSuccess);
      }
    } else {
      final error = ref.read(checkoutControllerProvider).error;
      if (error != null && mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(error)));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(checkoutControllerProvider);
    final colors = context.appColors;

    if (state.isLoading && state.orderDetail == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      backgroundColor: colors.background,
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
                  _buildProductList(state),
                  const SizedBox(height: 20),
                  _buildShippingInfo(state),
                  const SizedBox(height: 20),
                  _buildServicesSection(state),
                  const SizedBox(height: 20),
                  _buildRemarkSection(state),
                  const SizedBox(height: 20),
                  _buildPricingSummary(state),
                  const SizedBox(height: 20),
                  _buildPaymentMethodSection(state),
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
    final colors = context.appColors;
    final orderAddr = state.orderDetail?.address;
    final shippingAddr = state.address;

    return _buildSectionCard(
      child: InkWell(
        onTap: () {
          context.push(RoutePaths.addressList).then((val) {
            if (val is ShippingAddress) {
              ref.read(checkoutControllerProvider.notifier).updateAddress(val);
            }
          });
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.location_on, color: colors.primary, size: 20),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (orderAddr != null) ...[
                    Text(
                      '${orderAddr.firstName} ${orderAddr.lastName}  ${orderAddr.phone}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${orderAddr.addressLine}, ${orderAddr.city}, ${orderAddr.province}, ${orderAddr.country}',
                      style: TextStyle(color: colors.textMuted, fontSize: 13),
                    ),
                  ] else if (shippingAddr != null) ...[
                    Text(
                      '${shippingAddr.firstName} ${shippingAddr.lastName}  ${shippingAddr.phone}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${shippingAddr.addressLine1}, ${shippingAddr.city}, ${shippingAddr.province}, ${shippingAddr.country}',
                      style: TextStyle(color: colors.textMuted, fontSize: 13),
                    ),
                  ] else
                    const Text(
                      'Select Shipping Address',
                      style: TextStyle(fontSize: 14),
                    ),
                ],
              ),
            ),
            Icon(Icons.chevron_right, color: colors.textMuted, size: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildProductList(CheckoutState state) {
    final items = state.orderDetail?.items ?? [];
    if (items.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: Text(
            'China Air Shipping',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ),
        SizedBox(
          height: 170, // Reduced height
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            itemBuilder: (context, index) {
              final item = items[index];
              return _buildProductCard(item);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildProductCard(OrderSkuItem item) {
    final colors = context.appColors;
    final symbol = PriceUtils.getCurrencySymbol(item.currency);

    return Container(
      width: 120, // Reduced width slightly
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: item.image != null && item.image!.isNotEmpty
                  ? Image.network(
                      item.image!,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) =>
                          Container(color: colors.mutedBackground),
                    )
                  : Container(color: colors.mutedBackground),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            '$symbol${item.price?.toStringAsFixed(2)}',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          if (item.totalPrice != null &&
              item.price != null &&
              item.totalPrice! > item.price! * item.quantity)
            Text(
              '$symbol${item.totalPrice?.toStringAsFixed(2)}',
              style: TextStyle(
                decoration: TextDecoration.lineThrough,
                color: colors.textMuted,
                fontSize: 11,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          const SizedBox(height: 6),
          Row(
            children: [
              _buildQtyBtn(Icons.remove, () {
                if (item.quantity > 1) {
                  ref
                      .read(checkoutControllerProvider.notifier)
                      .updateQuantity(item.skuCode, item.quantity - 1);
                }
              }),
              Expanded(
                child: Text(
                  '${item.quantity}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 12),
                ),
              ),
              _buildQtyBtn(Icons.add, () {
                ref
                    .read(checkoutControllerProvider.notifier)
                    .updateQuantity(item.skuCode, item.quantity + 1);
              }),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildQtyBtn(IconData icon, VoidCallback onTap) {
    final colors = context.appColors;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(4),
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          border: Border.all(color: colors.border),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Icon(icon, size: 12, color: colors.text),
      ),
    );
  }

  Widget _buildShippingInfo(CheckoutState state) {
    return _buildSectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.local_shipping_outlined, size: 18),
              SizedBox(width: 8),
              Text(
                'Free Shipping',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.only(left: 26),
            child: Text(
              'Estimated Delivery by 12-15 days',
              style: TextStyle(color: Colors.green[600], fontSize: 11),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildServicesSection(CheckoutState state) {
    return _buildSectionCard(
      child: Row(
        children: [
          const Icon(Icons.inventory_2_outlined, size: 18),
          const SizedBox(width: 8),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Remove original packaging to save on shipping',
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Switch(
                value:
                    false, // TODO: Bind to state if OrderDetail has this field
                onChanged: (val) {
                  ref
                      .read(checkoutControllerProvider.notifier)
                      .toggleRemovePackage(val);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRemarkSection(CheckoutState state) {
    return _buildSectionCard(
      child: Row(
        children: [
          const Icon(Icons.edit_note, size: 18),
          const SizedBox(width: 8),
          const Text('Remarks', style: TextStyle(fontSize: 13)),
          const Spacer(),
          Expanded(
            flex: 2,
            child: TextField(
              controller: _remarkController,
              textAlign: TextAlign.end,
              style: const TextStyle(fontSize: 13),
              decoration: const InputDecoration(
                hintText: 'halo >',
                border: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.zero,
              ),
              onChanged: (val) {
                ref.read(checkoutControllerProvider.notifier).setRemark(val);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPricingSummary(CheckoutState state) {
    final payments = state.orderDetail?.payments;
    if (payments == null) return const SizedBox.shrink();

    final currency = payments.currency;
    final symbol = PriceUtils.getCurrencySymbol(currency);

    return _buildSectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Order Total',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              Text(
                '$symbol${payments.totalAmount.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          const Divider(),
          _buildPriceRow(
            'Amount Due for Goods',
            '$symbol${payments.itemsTotalAmount?.toStringAsFixed(2) ?? '0.00'}',
          ),
          if ((payments.discountAmount ?? 0) > 0)
            _buildPriceRow(
              'Discount',
              '-$symbol${payments.discountAmount?.toStringAsFixed(2)}',
              color: Colors.red,
            ),
          _buildPriceRow(
            'Shipping & Handling',
            '$symbol${payments.freightAmount?.toStringAsFixed(2) ?? '0.00'}',
          ),

          ...payments.subjoins.map((sub) {
            return _buildPriceRow(sub.title, '$symbol${sub.amount}');
          }),
        ],
      ),
    );
  }

  Widget _buildPriceRow(String label, String value, {Color? color}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(color: Colors.black54, fontSize: 12),
          ),
          Text(
            value,
            style: TextStyle(color: color ?? Colors.black, fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentMethodSection(CheckoutState state) {
    return _buildSectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Payment Method',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          const SizedBox(height: 10),
          ...state.paymentMethods.map((method) {
            final isSelected = state.selectedPaymentMethod?.type == method.type;
            return InkWell(
              onTap: () {
                ref
                    .read(checkoutControllerProvider.notifier)
                    .selectPaymentMethod(method);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                child: Row(
                  children: [
                    if (method.icon != null) ...[
                      Image.network(
                        method.icon!,
                        width: 20,
                        height: 20,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.payment, size: 20),
                      ),
                      const SizedBox(width: 10),
                    ],
                    Expanded(
                      child: Text(
                        method.name,
                        style: const TextStyle(fontSize: 13),
                      ),
                    ),
                    Icon(
                      isSelected
                          ? Icons.radio_button_checked
                          : Icons.radio_button_off,
                      color: isSelected ? Colors.purple : Colors.grey,
                      size: 20,
                    ),
                  ],
                ),
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildBottomBar(CheckoutState state) {
    final colors = context.appColors;
    final total = state.orderDetail?.payments?.totalAmount ?? 0.0;
    final currency = state.orderDetail?.payments?.currency ?? 'USD';
    final symbol = PriceUtils.getCurrencySymbol(currency);
    final discount = state.orderDetail?.payments?.discountAmount ?? 0.0;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: colors.surface,
        boxShadow: [
          BoxShadow(
            color: colors.shadow.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    const Text('Total: ', style: TextStyle(fontSize: 14)),
                    Text(
                      '$symbol${total.toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_up,
                      color: Colors.red,
                      size: 18,
                    ),
                  ],
                ),
                if (discount > 0)
                  Text(
                    'Discount: $symbol${discount.toStringAsFixed(2)}',
                    style: const TextStyle(color: Colors.red, fontSize: 11),
                  ),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: 130,
              height: 44,
              child: ElevatedButton(
                onPressed: state.isSubmitting ? null : _confirmOrder,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF4081),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
                child: state.isSubmitting
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 2,
                        ),
                      )
                    : const Text(
                        'Checkout',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionCard({required Widget child}) {
    final colors = context.appColors;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
