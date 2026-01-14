import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/repositories/address_repository.dart';
import '../../../data/repositories/cart_repository.dart';
import '../../../data/repositories/order_repository.dart';
import '../../../data/repositories/pay_repository.dart';

class CheckoutState {
  const CheckoutState({
    required this.items,
    this.orderId,
    this.orderDetail,
    this.isDraft = true,
    this.address,
    this.paymentMethods = const [],
    this.selectedPaymentMethod,
    this.couponCode,
    this.availableCoupons = const [],
    this.pricing,
    this.isLoading = false,
    this.isSubmitting = false,
    this.error,
    this.remark = '',
    this.couponTouched = false,
  });

  final List<CartPricingRequestItem> items;
  final String? orderId;
  final OrderDetail? orderDetail;
  final bool isDraft;
  final ShippingAddress? address;
  final List<PaymentMethod> paymentMethods;
  final PaymentMethod? selectedPaymentMethod;
  final String? couponCode;
  final List<AvailableCoupon> availableCoupons;
  final OrderPricingSummary?
  pricing; // Keep for compatibility or remove? Using OrderDetail is better.
  final bool isLoading;
  final bool isSubmitting;
  final String? error;
  final String remark;
  final bool couponTouched;

  CheckoutState copyWith({
    List<CartPricingRequestItem>? items,
    String? orderId,
    OrderDetail? orderDetail,
    bool? isDraft,
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
    String? remark,
    bool? couponTouched,
  }) {
    return CheckoutState(
      items: items ?? this.items,
      orderId: orderId ?? this.orderId,
      orderDetail: orderDetail ?? this.orderDetail,
      isDraft: isDraft ?? this.isDraft,
      address: address ?? this.address,
      paymentMethods: paymentMethods ?? this.paymentMethods,
      selectedPaymentMethod:
          selectedPaymentMethod ?? this.selectedPaymentMethod,
      couponCode: clearCoupon ? null : (couponCode ?? this.couponCode),
      availableCoupons: availableCoupons ?? this.availableCoupons,
      pricing: pricing ?? this.pricing,
      isLoading: isLoading ?? this.isLoading,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      error: error,
      remark: remark ?? this.remark,
      couponTouched: couponTouched ?? this.couponTouched,
    );
  }
}

class CheckoutController extends StateNotifier<CheckoutState> {
  CheckoutController(
    this._addressRepository,
    this._orderRepository,
    this._payRepository,
  ) : super(const CheckoutState(items: []));

  final AddressRepository _addressRepository;
  final OrderRepository _orderRepository;
  final PayRepository _payRepository;

  Future<void> init(List<CartPricingRequestItem> items) async {
    if (items.isEmpty) return;

    state = state.copyWith(items: items, isLoading: true);

    try {
      // 1. Get Default Address
      final address = await _addressRepository.getDefaultShippingAddress();
      state = state.copyWith(address: address);

      // 2. Create Draft Order
      final submitResult = await _orderRepository.submitOrder(
        SubmitOrderInput(
          items: items,
          country: address?.country ?? 'US', // Default to US if no address?
          userAddressId: address != null ? int.tryParse(address.id) : null,
          submitAsDraft: true,
        ),
      );

      final orderId = submitResult.orderId;
      state = state.copyWith(orderId: orderId);

      // 3. Get Order Details & Payment Methods
      await _refreshOrderDetail(orderId);

      // 4. Get Available Coupons (using draft items)
      final coupon = await _orderRepository.getAvailableCoupon(items);
      state = state.copyWith(
        availableCoupons: coupon != null ? [coupon] : [],
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> _refreshOrderDetail(String orderId) async {
    try {
      final detail = await _orderRepository.getOrderDetail(orderId);
      final methods = await _payRepository.getPaymentMethods(
        GetPaymentMethodsInput(orderId: orderId),
      );

      // Auto-select first payment method if none selected
      final currentMethod = state.selectedPaymentMethod;
      final defaultMethod = methods.isNotEmpty ? methods.first : null;

      state = state.copyWith(
        orderDetail: detail,
        paymentMethods: methods,
        selectedPaymentMethod: currentMethod ?? defaultMethod,
        error: null,
      );
    } catch (e) {
      state = state.copyWith(error: 'Failed to refresh order: $e');
    }
  }

  Future<void> updateAddress(ShippingAddress address) async {
    state = state.copyWith(address: address, isLoading: true);
    final orderId = state.orderId;
    if (orderId == null) return;

    try {
      await _orderRepository.updateOrder(
        UpdateOrderInput(
          orderId: orderId,
          userAddressId: int.tryParse(address.id),
        ),
      );
      await _refreshOrderDetail(orderId);
    } catch (e) {
      state = state.copyWith(error: 'Failed to update address: $e');
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  Future<void> applyCoupon(String code) async {
    if (code == state.couponCode) return;
    final orderId = state.orderId;
    if (orderId == null) return;

    state = state.copyWith(
      couponCode: code,
      couponTouched: true,
      isLoading: true,
    );

    try {
      await _orderRepository.updateOrder(
        UpdateOrderInput(orderId: orderId, couponCode: code),
      );
      await _refreshOrderDetail(orderId);
    } catch (e) {
      state = state.copyWith(
        error: 'Failed to apply coupon: $e',
        isLoading: false,
      );
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  Future<void> removeCoupon() async {
    if (state.couponCode == null) return;
    final orderId = state.orderId;
    if (orderId == null) return;

    state = state.copyWith(
      clearCoupon: true,
      couponTouched: true,
      isLoading: true,
    );

    try {
      await _orderRepository.updateOrder(
        UpdateOrderInput(
          orderId: orderId,
          couponCode:
              '', // Empty string to remove? or null? Typically empty string if API expects it.
        ),
      );
      await _refreshOrderDetail(orderId);
    } catch (e) {
      state = state.copyWith(
        error: 'Failed to remove coupon: $e',
        isLoading: false,
      );
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  void setRemark(String remark) {
    state = state.copyWith(remark: remark);
    // Optionally update draft immediately or debounce?
    // For now, assume it's sent on confirm or we can add a saveRemark method.
    // Given the flow "If adjustment call update", maybe we should update.
    // But typing remark sends many requests. Let's send it on confirmOrder.
  }

  Future<void> updateQuantity(String skuCode, int quantity) async {
    final orderId = state.orderId;
    if (orderId == null) return;

    state = state.copyWith(isLoading: true);

    try {
      await _orderRepository.updateOrder(
        UpdateOrderInput(
          orderId: orderId,
          items: [UpdateOrderItem(skuCode: skuCode, quantity: quantity)],
        ),
      );
      await _refreshOrderDetail(orderId);
    } catch (e) {
      state = state.copyWith(
        error: 'Failed to update quantity: $e',
        isLoading: false,
      );
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  Future<void> toggleRemovePackage(bool remove) async {
    final orderId = state.orderId;
    if (orderId == null) return;

    state = state.copyWith(isLoading: true);

    try {
      await _orderRepository.updateOrder(
        UpdateOrderInput(orderId: orderId, removePackage: remove),
      );
      await _refreshOrderDetail(orderId);
    } catch (e) {
      state = state.copyWith(
        error: 'Failed to update package option: $e',
        isLoading: false,
      );
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  void selectPaymentMethod(PaymentMethod method) {
    state = state.copyWith(selectedPaymentMethod: method);
  }

  Future<InitiatePaymentResult?> confirmOrder() async {
    final orderId = state.orderId;
    if (orderId == null) return null;
    if (state.address == null) {
      state = state.copyWith(error: 'Please select a shipping address');
      return null;
    }
    if (state.selectedPaymentMethod == null) {
      state = state.copyWith(error: 'Please select a payment method');
      return null;
    }

    state = state.copyWith(isSubmitting: true, error: null);

    try {
      // 1. Final Update (Submit Order)
      await _orderRepository.updateOrder(
        UpdateOrderInput(
          orderId: orderId,
          remark: state.remark,
          paySubmit: true,
        ),
      );

      // 2. Initiate Payment
      final result = await _payRepository.initiatePayment(
        InitiatePaymentInput(
          orderId: orderId,
          payType: state.selectedPaymentMethod!.type,
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

final checkoutControllerProvider =
    StateNotifierProvider.autoDispose<CheckoutController, CheckoutState>((ref) {
      return CheckoutController(
        ref.watch(addressRepositoryProvider),
        ref.watch(orderRepositoryProvider),
        ref.watch(payRepositoryProvider),
      );
    });
