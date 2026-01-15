import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeService {
  static final StripeService instance = StripeService._();
  StripeService._();

  bool _isInitialized = false;

  void initialize(String publishableKey) {
    if (_isInitialized) return;
    Stripe.publishableKey = publishableKey;
    _isInitialized = true;
  }

  Future<void> handlePaymentSheet({
    required String clientSecret,
    required String merchantDisplayName,
    String? customerId,
    String? ephemeralKeySecret,
    String? applePayMerchantId,
    bool googlePay = false,
    bool testEnv = true,
  }) async {
    // 1. Initialize Payment Sheet
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: clientSecret,
        merchantDisplayName: merchantDisplayName,
        customerId: customerId,
        customerEphemeralKeySecret: ephemeralKeySecret,
        applePay: applePayMerchantId != null
            ? PaymentSheetApplePay(
                merchantCountryCode: 'US',
                cartItems: [], // Can be empty for payment sheet
              )
            : null,
        googlePay: googlePay
            ? PaymentSheetGooglePay(merchantCountryCode: 'US', testEnv: testEnv)
            : null,
        style: ThemeMode.light,
      ),
    );

    // 2. Present Payment Sheet
    await Stripe.instance.presentPaymentSheet();
  }
}
