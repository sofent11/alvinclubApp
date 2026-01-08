import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/repositories/address_repository.dart';

final addressListProvider = FutureProvider.autoDispose<List<ShippingAddress>>((ref) async {
  final repo = ref.watch(addressRepositoryProvider);
  return repo.listShippingAddresses();
});

final supportCountriesProvider = FutureProvider.autoDispose<List<String>>((ref) async {
  final repo = ref.watch(addressRepositoryProvider);
  return repo.getSupportCountries();
});

class AddressNotifier extends StateNotifier<AsyncValue<void>> {
  AddressNotifier(this._repository, this._ref) : super(const AsyncValue.data(null));

  final AddressRepository _repository;
  final Ref _ref;

  Future<void> createAddress(ShippingAddress address) async {
    state = const AsyncValue.loading();
    try {
      await _repository.createShippingAddress(address);
      state = const AsyncValue.data(null);
      _ref.invalidate(addressListProvider);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> updateAddress(ShippingAddress address) async {
    state = const AsyncValue.loading();
    try {
      await _repository.updateShippingAddress(address);
      state = const AsyncValue.data(null);
      _ref.invalidate(addressListProvider);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> deleteAddress(String id) async {
    state = const AsyncValue.loading();
    try {
      await _repository.deleteShippingAddress(id);
      state = const AsyncValue.data(null);
      _ref.invalidate(addressListProvider);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}

final addressControllerProvider = StateNotifierProvider.autoDispose<AddressNotifier, AsyncValue<void>>((ref) {
  return AddressNotifier(ref.watch(addressRepositoryProvider), ref);
});
