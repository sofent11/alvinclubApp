import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/repositories/pay_repository.dart';

class PaymentState {
  const PaymentState({
    this.methods = const [],
    this.selectedMethod,
    this.isLoading = false,
    this.paymentUrl,
    this.error,
  });

  final List<PaymentMethod> methods;
  final PaymentMethod? selectedMethod;
  final bool isLoading;
  final String? paymentUrl;
  final String? error;

  PaymentState copyWith({
    List<PaymentMethod>? methods,
    PaymentMethod? selectedMethod,
    bool? isLoading,
    String? paymentUrl,
    String? error,
  }) {
    return PaymentState(
      methods: methods ?? this.methods,
      selectedMethod: selectedMethod ?? this.selectedMethod,
      isLoading: isLoading ?? this.isLoading,
      paymentUrl: paymentUrl ?? this.paymentUrl,
      error: error,
    );
  }
}

class PaymentController extends StateNotifier<PaymentState> {
  PaymentController(this._payRepository) : super(const PaymentState());

  final PayRepository _payRepository;

  Future<void> loadMethods(String orderId) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final methods = await _payRepository.getPaymentMethods(
        GetPaymentMethodsInput(orderId: orderId),
      );
      state = state.copyWith(
        methods: methods,
        selectedMethod: methods.isNotEmpty ? methods.first : null,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  void selectMethod(PaymentMethod method) {
    state = state.copyWith(selectedMethod: method);
  }

  Future<String?> initiatePayment(String orderId) async {
    if (state.selectedMethod == null) return null;

    state = state.copyWith(isLoading: true, error: null);
    try {
      final result = await _payRepository.initiatePayment(
        InitiatePaymentInput(
          orderId: orderId,
          payType: state.selectedMethod!.type,
          callbackUrl: 'w2capp://payment/callback', // Deep link scheme
        ),
      );

      final url = result.receiptAddress;
      if (url == null || url.isEmpty) {
        throw Exception('Payment URL is missing');
      }

      state = state.copyWith(isLoading: false, paymentUrl: url);
      return url;
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
      return null;
    }
  }
}

final paymentControllerProvider =
    StateNotifierProvider.autoDispose<PaymentController, PaymentState>((ref) {
      return PaymentController(ref.watch(payRepositoryProvider));
    });

final paymentResultProvider = StreamProvider.family
    .autoDispose<PayResult, String>((ref, orderId) async* {
      final repo = ref.watch(payRepositoryProvider);

      while (true) {
        try {
          final result = await repo.getPayResult(orderId);
          yield result;

          // If status is terminal (success, failed, canceled, timeout)
          // we stop polling.
          if (result.isTerminal) break;
        } catch (_) {
          // Ignore errors during polling
        }
        await Future.delayed(const Duration(seconds: 3));
      }
    });
