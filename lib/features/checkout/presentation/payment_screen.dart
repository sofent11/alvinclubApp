import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../core/navigation/route_paths.dart';
import '../../../core/theme/app_theme.dart';
import '../../../shared/widgets/themed_button.dart';
import '../application/payment_providers.dart';

class PaymentScreen extends ConsumerStatefulWidget {
  const PaymentScreen({
    super.key,
    required this.orderId,
    this.timeoutSeconds,
  });

  final String orderId;
  final int? timeoutSeconds;

  @override
  ConsumerState<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends ConsumerState<PaymentScreen> {
  WebViewController? _webViewController;
  bool _showWebView = false;
  Timer? _countdownTimer;
  int? _remainingSeconds;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(paymentControllerProvider.notifier).loadMethods(widget.orderId);
    });
    _startCountdown();
  }

  @override
  void dispose() {
    _countdownTimer?.cancel();
    super.dispose();
  }

  void _startCountdown() {
    final timeoutSeconds = widget.timeoutSeconds;
    if (timeoutSeconds == null || timeoutSeconds <= 0) return;

    _remainingSeconds = timeoutSeconds;
    _countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!mounted) return;
      setState(() {
        final next = (_remainingSeconds ?? 0) - 1;
        _remainingSeconds = next <= 0 ? 0 : next;
        if (next <= 0) {
          timer.cancel();
        }
      });
    });
  }

  void _initWebView(String url) {
    final controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onNavigationRequest: (request) {
            if (request.url.startsWith('w2capp://')) {
              _handleDeepLink(Uri.parse(request.url));
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(url));

    setState(() {
      _webViewController = controller;
      _showWebView = true;
    });
  }

  void _handleDeepLink(Uri uri) {
    // Check for success/cancel params if any, or just query order status
    // Usually deep link implies completion of flow.
    // We navigate to OrderSuccess (or check status first).
    // For now, assume success and go to OrderSuccess.
    context.goNamed(
      RoutePaths.orderSuccess,
      pathParameters: {'orderId': widget.orderId},
    );
  }

  Future<void> _onPay() async {
    final controller = ref.read(paymentControllerProvider.notifier);
    final url = await controller.initiatePayment(widget.orderId);
    
    if (url != null && mounted) {
      _initWebView(url);
    } else {
      final error = ref.read(paymentControllerProvider).error;
      if (error != null && mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(error)),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_showWebView && _webViewController != null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Payment'),
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              // Ask for confirmation to cancel payment?
              setState(() {
                _showWebView = false;
                _webViewController = null;
              });
            },
          ),
        ),
        body: WebViewWidget(controller: _webViewController!),
      );
    }

    final state = ref.watch(paymentControllerProvider);

    if (state.isLoading && state.methods.isEmpty) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Select Payment Method')),
      body: Column(
        children: [
          if (_remainingSeconds != null) ...[
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
              child: _buildCountdownBanner(),
            ),
          ],
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: state.methods.length,
              separatorBuilder: (_, index) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                final method = state.methods[index];
                final isSelected = state.selectedMethod?.type == method.type;
                return _buildMethodCard(method, isSelected);
              },
            ),
          ),
          Container(
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
                label: state.isLoading ? 'Processing...' : 'Pay Now',
                loading: state.isLoading,
                onPressed: state.isLoading ? null : _onPay,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMethodCard(dynamic method, bool isSelected) {
    final colors = context.appColors;
    
    return InkWell(
      onTap: () {
        ref.read(paymentControllerProvider.notifier).selectMethod(method);
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected ? colors.tint : colors.border,
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Row(
          children: [
            // Icon placeholder
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Icon(Icons.payment, color: Colors.grey),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    method.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  if (method.description != null && method.description!.isNotEmpty)
                    Text(
                      method.description!,
                      style: TextStyle(color: colors.textMuted, fontSize: 12),
                    ),
                ],
              ),
            ),
            if (isSelected)
              Icon(Icons.check_circle, color: colors.tint),
          ],
        ),
      ),
    );
  }

  Widget _buildCountdownBanner() {
    final colors = context.appColors;
    final remaining = _remainingSeconds ?? 0;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: colors.mutedBackground,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: colors.border),
      ),
      child: Row(
        children: [
          Icon(Icons.timer, color: colors.warning, size: 18),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              'Complete payment in ${_formatCountdown(remaining)}',
              style: TextStyle(color: colors.textMuted, fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }

  String _formatCountdown(int seconds) {
    final hours = seconds ~/ 3600;
    final minutes = (seconds % 3600) ~/ 60;
    final secs = seconds % 60;
    String twoDigits(int value) => value.toString().padLeft(2, '0');

    if (hours > 0) {
      return '${twoDigits(hours)}:${twoDigits(minutes)}:${twoDigits(secs)}';
    }
    return '${twoDigits(minutes)}:${twoDigits(secs)}';
  }
}
