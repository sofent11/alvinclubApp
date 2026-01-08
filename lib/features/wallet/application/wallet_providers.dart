import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/repositories/wallet_repository.dart';

final walletBalanceProvider = FutureProvider.autoDispose<WalletBalance>((ref) async {
  final repo = ref.watch(walletRepositoryProvider);
  return repo.getBalance();
});

final walletTransactionsProvider = FutureProvider.autoDispose<List<WalletTransaction>>((ref) async {
  final repo = ref.watch(walletRepositoryProvider);
  return repo.getTransactions();
});
