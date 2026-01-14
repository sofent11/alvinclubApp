import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/navigation/route_paths.dart';
import '../../../core/theme/app_theme.dart';
import '../../../data/repositories/cart_repository.dart';
import '../../../data/repositories/order_repository.dart';
import '../../../shared/widgets/input_field.dart';
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
        queryParameters: {'timeout': result.timeoutPeriod.toString()},
      );
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

    if (state.isLoading) {
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
                  _buildItemsSummary(state),
                  const SizedBox(height: 20),
                  _buildCouponSection(state),
                  const SizedBox(height: 20),
                  _buildRemarkSection(state),
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
    final colors = context.appColors;

    return _buildSectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const ThemedText(
                'Shipping Address',
                type: ThemedTextType.defaultSemiBold,
              ),
              const Spacer(),
              TextButton.icon(
                onPressed: () {
                  context.push(RoutePaths.addressList);
                },
                icon: Icon(
                  Icons.edit_location_alt,
                  size: 16,
                  color: colors.tint,
                ),
                label: Text('Change', style: TextStyle(color: colors.tint)),
              ),
            ],
          ),
          const SizedBox(height: 8),
          if (state.address != null) ...[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.location_on_outlined, color: colors.icon, size: 18),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${state.address!.firstName} ${state.address!.lastName}  ${state.address!.phone}',
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${state.address!.addressLine1}, ${state.address!.city}, ${state.address!.province}, ${state.address!.country}',
                        style: TextStyle(color: colors.textMuted),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ] else ...[
            Text(
              'No address selected. Please add one.',
              style: TextStyle(color: colors.textMuted),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildItemsSummary(CheckoutState state) {
    return _buildSectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ThemedText('Order Items', type: ThemedTextType.defaultSemiBold),
          const SizedBox(height: 8),
          Text('${state.items.length} items'),
        ],
      ),
    );
  }

  Widget _buildCouponSection(CheckoutState state) {
    final colors = context.appColors;

    return _buildSectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ThemedText('Coupon', type: ThemedTextType.defaultSemiBold),
          const SizedBox(height: 12),
          if (state.availableCoupons.isNotEmpty) ...[
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: state.availableCoupons.map((coupon) {
                final isSelected = state.couponCode == coupon.code;
                return _buildCouponChip(coupon, isSelected);
              }).toList(),
            ),
            const SizedBox(height: 12),
          ],
          if (state.couponCode != null)
            Row(
              children: [
                Icon(Icons.local_offer, color: colors.success),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    state.couponCode!,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.close, color: colors.textMuted),
                  onPressed: () {
                    ref
                        .read(checkoutControllerProvider.notifier)
                        .removeCoupon();
                    _couponController.clear();
                  },
                ),
              ],
            )
          else
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: InputField(
                    label: 'Coupon code',
                    controller: _couponController,
                    placeholder: 'Enter coupon code',
                  ),
                ),
                const SizedBox(width: 12),
                ValueListenableBuilder<TextEditingValue>(
                  valueListenable: _couponController,
                  builder: (context, value, child) {
                    final code = value.text.trim();
                    return ThemedButton(
                      label: 'Apply',
                      size: ThemedButtonSize.sm,
                      variant: ThemedButtonVariant.secondary,
                      onPressed: code.isEmpty
                          ? null
                          : () {
                              ref
                                  .read(checkoutControllerProvider.notifier)
                                  .applyCoupon(code);
                            },
                    );
                  },
                ),
              ],
            ),
        ],
      ),
    );
  }

  Widget _buildRemarkSection(CheckoutState state) {
    final colors = context.appColors;

    return _buildSectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ThemedText(
            'Remark (Optional)',
            type: ThemedTextType.defaultSemiBold,
          ),
          const SizedBox(height: 8),
          TextField(
            onChanged: (val) {
              ref.read(checkoutControllerProvider.notifier).setRemark(val);
            },
            decoration: InputDecoration(
              hintText: 'Add a note to your order',
              isDense: true,
              filled: true,
              fillColor: colors.surface,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              hintStyle: TextStyle(color: colors.textMuted),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppRadius.md),
                borderSide: BorderSide(color: colors.border),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppRadius.md),
                borderSide: BorderSide(color: colors.border),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppRadius.md),
                borderSide: BorderSide(color: colors.tint, width: 1.2),
              ),
            ),
            minLines: 1,
            maxLines: 3,
          ),
        ],
      ),
    );
  }

  Widget _buildPricingSummary(CheckoutState state) {
    final pricing = state.pricing;
    if (pricing == null) return const SizedBox.shrink();

    final currency = pricing.targetCurrency ?? 'USD';

    final colors = context.appColors;

    return _buildSectionCard(
      child: Column(
        children: [
          _buildPriceRow(
            'Subtotal',
            '$currency ${pricing.totalAmount.toStringAsFixed(2)}',
          ),
          if (pricing.totalAmount != pricing.targetTotalAmount)
            _buildPriceRow(
              'Discount',
              '- $currency ${(pricing.totalAmount - pricing.targetTotalAmount).toStringAsFixed(2)}',
              color: colors.success,
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

  Widget _buildPriceRow(
    String label,
    String value, {
    bool isBold = false,
    double? fontSize,
    Color? color,
  }) {
    final colors = context.appColors;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              color: colors.textMuted,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              color: color ?? colors.text,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomBar(CheckoutState state) {
    final colors = context.appColors;

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
        child: ThemedButton(
          label: state.isSubmitting ? 'Submitting...' : 'Submit Order',
          loading: state.isSubmitting,
          onPressed: state.isSubmitting ? null : _submitOrder,
        ),
      ),
    );
  }

  Widget _buildSectionCard({required Widget child}) {
    final colors = context.appColors;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(AppRadius.md),
        border: Border.all(color: colors.border),
      ),
      child: child,
    );
  }

  Widget _buildCouponChip(AvailableCoupon coupon, bool isSelected) {
    final colors = context.appColors;
    final isAvailable = coupon.available;
    final isDisabled = !isAvailable;
    final background = isSelected
        ? colors.tint.withValues(alpha: 0.1)
        : colors.mutedBackground;
    final borderColor = isSelected ? colors.tint : colors.border;
    final textColor = isDisabled ? colors.textMuted : colors.text;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: isDisabled
            ? null
            : () {
                _couponController.text = coupon.code;
                ref
                    .read(checkoutControllerProvider.notifier)
                    .applyCoupon(coupon.code);
              },
        borderRadius: BorderRadius.circular(AppRadius.sm),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: background,
            borderRadius: BorderRadius.circular(AppRadius.sm),
            border: Border.all(color: borderColor),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                coupon.code,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: textColor,
                  fontSize: 12,
                ),
              ),
              if (coupon.discountAmount != null && coupon.currency != null)
                Text(
                  '-${coupon.currency} ${coupon.discountAmount!.toStringAsFixed(2)}',
                  style: TextStyle(color: textColor, fontSize: 11),
                )
              else if (coupon.description != null &&
                  coupon.description!.isNotEmpty)
                Text(
                  coupon.description!,
                  style: TextStyle(color: textColor, fontSize: 11),
                )
              else if (!isAvailable && coupon.unavailableReason != null)
                Text(
                  coupon.unavailableReason!,
                  style: TextStyle(color: colors.textMuted, fontSize: 11),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
