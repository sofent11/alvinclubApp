import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeService {
  static final StripeService instance = StripeService._();
  StripeService._();

  String? _publishableKey;
  String? _merchantIdentifier;
  String? _urlScheme;

  Future<void> initialize(
    String publishableKey, {
    String? merchantIdentifier,
    String? urlScheme,
  }) async {
    final shouldUpdate =
        _publishableKey != publishableKey ||
        _merchantIdentifier != merchantIdentifier ||
        _urlScheme != urlScheme;
    if (!shouldUpdate) return;

    Stripe.publishableKey = publishableKey;
    if (merchantIdentifier != null && merchantIdentifier.isNotEmpty) {
      Stripe.merchantIdentifier = merchantIdentifier;
    }
    if (urlScheme != null && urlScheme.isNotEmpty) {
      Stripe.urlScheme = urlScheme;
    }

    await Stripe.instance.applySettings();

    _publishableKey = publishableKey;
    _merchantIdentifier = merchantIdentifier;
    _urlScheme = urlScheme;
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
