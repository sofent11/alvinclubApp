import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/repositories/address_repository.dart';
import '../../../data/repositories/cart_repository.dart';
import '../../../data/repositories/order_repository.dart';
import '../../../data/repositories/pay_repository.dart';

class CheckoutState {
  const CheckoutState({
    required this.items,
    this.address,
    this.paymentMethods = const [],
    this.selectedPaymentMethod,
    this.couponCode,
    this.availableCoupons = const [],
    this.pricing,
    this.isLoading = false,
    this.isSubmitting = false,
    this.error,
  });

  final List<CartPricingRequestItem> items;
  final ShippingAddress? address;
  final List<PaymentMethod> paymentMethods;
  final PaymentMethod? selectedPaymentMethod;
  final String? couponCode;
  final List<AvailableCoupon> availableCoupons;
  final OrderPricingSummary? pricing;
  final bool isLoading;
  final bool isSubmitting;
  final String? error;

  CheckoutState copyWith({
    List<CartPricingRequestItem>? items,
    ShippingAddress? address,
    List<PaymentMethod>? paymentMethods,
    PaymentMethod? selectedPaymentMethod,
    String? couponCode,
    bool clearCoupon = false,
    List<AvailableCoupon>? availableCoupons,
    OrderPricingSummary? pricing,
    bool? isLoading,
    bool? isSubmitting,
    String? error,
  }) {
    return CheckoutState(
      items: items ?? this.items,
      address: address ?? this.address,
      paymentMethods: paymentMethods ?? this.paymentMethods,
      selectedPaymentMethod: selectedPaymentMethod ?? this.selectedPaymentMethod,
      couponCode: clearCoupon ? null : (couponCode ?? this.couponCode),
      availableCoupons: availableCoupons ?? this.availableCoupons,
      pricing: pricing ?? this.pricing,
      isLoading: isLoading ?? this.isLoading,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      error: error,
    );
  }
}

class CheckoutController extends StateNotifier<CheckoutState> {
  CheckoutController(
    this._addressRepository,
    this._orderRepository,
  ) : super(const CheckoutState(items: []));

  final AddressRepository _addressRepository;
  final OrderRepository _orderRepository;

  Future<void> init(List<CartPricingRequestItem> items) async {
    if (items.isEmpty) return;
    
    state = state.copyWith(items: items, isLoading: true);

    try {
      // 1. Get Default Address
      final address = await _addressRepository.getDefaultShippingAddress();
      
      // 2. Initial Pricing (without coupon)
      final pricing = await _orderRepository.priceOrder(items);

      // 3. Get Available Coupons
      AvailableCoupon? bestCoupon;
      // Note: getAvailableCoupon returns a single best coupon or null?
      // The repo method name is singular 'getAvailableCoupon', but typically returns list?
      // Checking repo implementation: it returns AvailableCoupon? (single).
      // So it seems it auto-selects the best one?
      final coupon = await _orderRepository.getAvailableCoupon(items);
      bestCoupon = coupon?.available == true ? coupon : null;

      // 4. Re-price if coupon found (auto-apply)
      OrderPricingSummary? finalPricing = pricing;
      if (bestCoupon != null) {
        try {
          finalPricing = await _orderRepository.priceOrder(items, couponCode: bestCoupon.code);
        } catch (_) {
          // If pricing fails with coupon, fallback to no coupon
          bestCoupon = null;
        }
      }

      state = state.copyWith(
        address: address,
        pricing: finalPricing,
        couponCode: bestCoupon?.code,
        // We might want to store the full coupon object or list if available
        // But for now, repo only gives us one.
        availableCoupons: coupon != null ? [coupon] : [],
        isLoading: false,
      );

      // 5. Load Payment Methods (needs orderId usually? PayRepo says getPaymentMethods(orderId...))
      // Wait, getPaymentMethods requires orderId. But we haven't submitted yet.
      // Usually we submit order -> get order ID -> get payment methods -> pay.
      // OR there is a way to get payment methods before order?
      // Checking PayRepository: getPaymentMethodsInput takes orderId (required).
      // So we can only select payment method AFTER submitting order?
      // Or maybe we submit a "draft" order first?
      // OrderRepository.submitOrder has 'submitAsDraft'.
      
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> refreshPricing() async {
    if (state.items.isEmpty) return;
    
    try {
      final pricing = await _orderRepository.priceOrder(
        state.items,
        couponCode: state.couponCode,
      );
      state = state.copyWith(pricing: pricing, error: null);
    } catch (e) {
      state = state.copyWith(error: 'Failed to update price: $e');
    }
  }

  Future<void> updateAddress(ShippingAddress address) async {
    state = state.copyWith(address: address);
    // Address change might affect shipping fee, so re-price?
    // Current priceOrder API doesn't take address, only items and coupon.
    // So maybe shipping is calculated later or fixed?
    // If submitOrder takes address, then final price might change.
    // But for now we just update state.
  }

  Future<void> applyCoupon(String code) async {
    if (code == state.couponCode) return;
    state = state.copyWith(couponCode: code);
    await refreshPricing();
  }

  Future<void> removeCoupon() async {
    if (state.couponCode == null) return;
    state = state.copyWith(clearCoupon: true);
    await refreshPricing();
  }

  Future<OrderSubmitResult?> submitOrder() async {
    if (state.address == null) {
      state = state.copyWith(error: 'Please select a shipping address');
      return null;
    }
    if (state.items.isEmpty) return null;

    state = state.copyWith(isSubmitting: true, error: null);

    try {
      final result = await _orderRepository.submitOrder(
        SubmitOrderInput(
          items: state.items,
          country: state.address!.country,
          userAddressId: int.tryParse(state.address!.id),
          couponCode: state.couponCode,
          remark: '', // TODO: Add remark field
        ),
      );
      
      state = state.copyWith(isSubmitting: false);
      return result;
    } catch (e) {
      state = state.copyWith(isSubmitting: false, error: e.toString());
      return null;
    }
  }
}

final checkoutControllerProvider = StateNotifierProvider.autoDispose<CheckoutController, CheckoutState>((ref) {
  return CheckoutController(
    ref.watch(addressRepositoryProvider),
    ref.watch(orderRepositoryProvider),
  );
});
