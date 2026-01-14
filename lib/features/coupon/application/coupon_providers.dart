import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/repositories/coupon_repository.dart';

final userCouponsProvider = FutureProvider.family
    .autoDispose<List<UserCoupon>, String>((ref, status) async {
      final repo = ref.watch(couponRepositoryProvider);
      return repo.getUserCoupons(status: status);
    });

class CouponNotifier extends StateNotifier<AsyncValue<void>> {
  CouponNotifier(this._repository, this._ref)
    : super(const AsyncValue.data(null));

  final CouponRepository _repository;
  final Ref _ref;

  Future<void> redeem(String activityCode) async {
    state = const AsyncValue.loading();
    try {
      await _repository.redeemCoupon(activityCode);
      state = const AsyncValue.data(null);
      _ref.invalidate(userCouponsProvider);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}

final couponControllerProvider =
    StateNotifierProvider.autoDispose<CouponNotifier, AsyncValue<void>>((ref) {
      return CouponNotifier(ref.watch(couponRepositoryProvider), ref);
    });
