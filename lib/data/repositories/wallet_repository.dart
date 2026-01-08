import 'package:flutter_riverpod/flutter_riverpod.dart';

class WalletBalance {
  const WalletBalance({
    required this.balance,
    required this.rebate,
    this.currency = 'USD',
  });

  final double balance;
  final double rebate;
  final String currency;
}

class WalletTransaction {
  const WalletTransaction({
    required this.id,
    required this.title,
    required this.amount,
    required this.type, // 1: deposit, 2: withdraw, 3: rebate
    required this.createdAt,
    this.status = 'Completed',
  });

  final String id;
  final String title;
  final double amount;
  final int type;
  final String createdAt;
  final String status;
}

class WalletRepository {
  WalletRepository(this._ref);

  final Ref _ref;

  Future<WalletBalance> getBalance() async {
    // Mocking API call
    await Future.delayed(const Duration(milliseconds: 500));
    return const WalletBalance(balance: 1250.50, rebate: 45.20);
  }

  Future<List<WalletTransaction>> getTransactions({int page = 1}) async {
    // Mocking API call
    await Future.delayed(const Duration(milliseconds: 800));
    return [
      WalletTransaction(
        id: 'TX1001',
        title: 'Order Payment #ORD12345',
        amount: -120.00,
        type: 2,
        createdAt: '2023-10-25 14:30',
      ),
      WalletTransaction(
        id: 'TX1002',
        title: 'Referral Rebate',
        amount: 15.50,
        type: 3,
        createdAt: '2023-10-24 09:15',
      ),
      WalletTransaction(
        id: 'TX1003',
        title: 'Wallet Top-up',
        amount: 500.00,
        type: 1,
        createdAt: '2023-10-20 18:45',
      ),
    ];
  }
}

final walletRepositoryProvider = Provider<WalletRepository>((ref) {
  return WalletRepository(ref);
});
