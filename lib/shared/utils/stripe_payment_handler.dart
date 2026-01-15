import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_stripe/flutter_stripe.dart' hide PaymentMethod;
import 'package:go_router/go_router.dart';

import '../../core/env/env_config.dart';
import '../../core/logging/logger.dart';
import '../../core/navigation/route_paths.dart';
import '../../core/payment/stripe_service.dart';
import '../../data/repositories/pay_repository.dart';

class StripePaymentHandler {
  StripePaymentHandler({required this.ref, required this.context});

  final WidgetRef ref;
  final BuildContext context;

  Future<void> handlePayment({
    required String orderId,
    required InitiatePaymentResult paymentResult,
    required String? payType,
  }) async {
    if (paymentResult.stripeClientSecret != null &&
        paymentResult.stripePublicKey != null) {
      logDebug(
        'Stripe payment init: orderId=$orderId, hasClientSecret=${paymentResult.stripeClientSecret != null}, hasPublishableKey=${paymentResult.stripePublicKey != null}, payType=$payType',
        name: 'StripePayment',
      );
      try {
        final isApplePay = payType == '5';
        await StripeService.instance.initialize(
          paymentResult.stripePublicKey!,
          merchantIdentifier: isApplePay ? 'merchant.com.echoo.w2c' : null,
          urlScheme: 'w2capp',
        );

        final isGooglePay = payType == '6';

        await StripeService.instance.handlePaymentSheet(
          clientSecret: paymentResult.stripeClientSecret!,
          merchantDisplayName: 'Alvin Club',
          customerId: paymentResult.stripeCustomerId,
          ephemeralKeySecret: paymentResult.stripeEphemeralKey,
          applePayMerchantId: isApplePay
              ? 'merchant.com.echoo.w2c'
              : null, // Replace with real ID
          googlePay: isGooglePay,
          testEnv:
              EnvConfig.current.appEnv == AppEnvironment.test ||
              EnvConfig.current.appEnv == AppEnvironment.dev,
        );

        // Verify payment status
        final payResult = await ref
            .read(payRepositoryProvider)
            .getPayResult(orderId);
        if (payResult.isSuccess && context.mounted) {
          context.goNamed(
            RoutePaths.orderSuccess,
            pathParameters: {'orderId': orderId},
          );
        } else if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Payment Status: ${payResult.statusText}')),
          );
        }
      } on StripeException catch (e) {
        logDebug(
          'StripeException: code=${e.error.code}, message=${e.error.localizedMessage}, type=${e.error.type}, declineCode=${e.error.declineCode}',
          name: 'StripePayment',
        );
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(e.error.localizedMessage ?? 'Payment canceled'),
            ),
          );
        }
      } catch (e, stackTrace) {
        logDebug('Payment error: $e\n$stackTrace', name: 'StripePayment');
        if (context.mounted) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('Payment error: $e')));
        }
      }
      return;
    }

    // Fallback for other payment types (WebView or Direct success)
    if (paymentResult.receiptAddress != null) {
      // TODO: Handle Web Payment / WebView
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Redirecting to payment: ${paymentResult.receiptAddress}',
          ),
        ),
      );
    } else {
      if (context.mounted) {
        context.goNamed(
          RoutePaths.orderSuccess,
          pathParameters: {'orderId': orderId},
        );
      }
    }
  }

  /// Show a bottom sheet to select payment method, then pay.
  /// Used in Order List screen.
  Future<void> showPaymentSelectorAndPay({required String orderId}) async {
    try {
      // 1. Get payment methods
      final methods = await ref
          .read(payRepositoryProvider)
          .getPaymentMethods(GetPaymentMethodsInput(orderId: orderId));

      // Filter same as checkout
      final filteredMethods = methods
          .where((m) => ['3', '4', '5', '6'].contains(m.type))
          .toList();

      if (filteredMethods.isEmpty && context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('No available payment methods')),
        );
        return;
      }

      if (!context.mounted) return;

      // 2. Show Bottom Sheet to select method
      final selectedMethod = await showModalBottomSheet<PaymentMethod>(
        context: context,
        builder: (context) => _PaymentMethodSelector(methods: filteredMethods),
      );

      if (selectedMethod == null) return;

      // 3. Initiate payment
      final initiateResult = await ref
          .read(payRepositoryProvider)
          .initiatePayment(
            InitiatePaymentInput(
              orderId: orderId,
              payType: selectedMethod.type,
              uiType: 3,
            ),
          );

      // 4. Handle with Stripe
      await handlePayment(
        orderId: orderId,
        paymentResult: initiateResult,
        payType: selectedMethod.type,
      );
    } catch (e, stackTrace) {
      logDebug('PayNow error: $e\n$stackTrace', name: 'StripePayment');
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Error: $e')));
      }
    }
  }
}

class _PaymentMethodSelector extends StatelessWidget {
  const _PaymentMethodSelector({required this.methods});

  final List<PaymentMethod> methods;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Select Payment Method',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          ...methods.map(
            (method) => ListTile(
              leading: method.icon != null
                  ? Image.network(method.icon!, width: 24, height: 24)
                  : const Icon(Icons.payment),
              title: Text(method.name),
              onTap: () => Navigator.pop(context, method),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
