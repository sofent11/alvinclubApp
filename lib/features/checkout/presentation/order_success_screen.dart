import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/navigation/route_paths.dart';
import '../../../shared/widgets/themed_button.dart';
import '../../../data/repositories/pay_repository.dart';
import '../application/payment_providers.dart';

class OrderSuccessScreen extends ConsumerWidget {
  const OrderSuccessScreen({super.key, required this.orderId});

  final String orderId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final resultAsync = ref.watch(paymentResultProvider(orderId));

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Center(
            child: resultAsync.when(
              data: (result) {
                final isSuccess = result.isSuccess;
                final isFailed = result.status == PayStatus.failed || result.status == PayStatus.canceled || result.status == PayStatus.timeout;
                
                final icon = isSuccess 
                  ? Icons.check_circle 
                  : (isFailed ? Icons.error_outline : Icons.hourglass_empty);
                
                final color = isSuccess 
                  ? Colors.green 
                  : (isFailed ? Colors.red : Colors.orange);

                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(icon, color: color, size: 80),
                    const SizedBox(height: 24),
                    Text(
                      result.statusText,
                      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      isSuccess
                          ? 'Your order $orderId has been placed successfully.'
                          : (isFailed 
                              ? 'Issue with payment for order $orderId.' 
                              : 'We are verifying your payment for order $orderId. Please wait a moment.'),
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    const SizedBox(height: 48),
                    if (isSuccess) ...[
                      SizedBox(
                        width: double.infinity,
                        child: ThemedButton(
                          label: 'View Orders',
                          onPressed: () => context.go(RoutePaths.orderList),
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextButton(
                        onPressed: () => context.go(RoutePaths.home),
                        child: const Text('Back to Home'),
                      ),
                    ],
                  ],
                );
              },
              loading: () => const CircularProgressIndicator(),
              error: (err, _) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, color: Colors.red, size: 80),
                  const SizedBox(height: 24),
                  const Text('Something went wrong', style: TextStyle(fontSize: 20)),
                  const SizedBox(height: 16),
                  Text(err.toString(), textAlign: TextAlign.center),
                  const SizedBox(height: 32),
                  ThemedButton(
                    label: 'Go to Orders',
                    onPressed: () => context.go(RoutePaths.orderList),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
