import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/storage/shared_storage.dart';
import '../../../core/storage/storage_keys.dart';
import '../../../data/repositories/address_repository.dart';

final addressListProvider = FutureProvider.autoDispose<List<ShippingAddress>>((
  ref,
) async {
  final repo = ref.watch(addressRepositoryProvider);
  return repo.listShippingAddresses();
});

final currentShippingAddressProvider =
    FutureProvider.autoDispose<ShippingAddress?>((ref) async {
      final addresses = await ref.watch(addressListProvider.future);
      if (addresses.isEmpty) return null;

      final storage = ref.watch(sharedStorageProvider);
      final cachedId = await storage.getString(StorageKeys.selectedAddressId);

      if (cachedId != null) {
        try {
          return addresses.firstWhere((a) => a.id == cachedId);
        } catch (_) {
          // Cached address not found (likely deleted), fallback to default logic
        }
      }

      return addresses.firstWhere(
        (a) => a.isDefault,
        orElse: () => addresses.first,
      );
    });

class AddressSelectionNotifier extends StateNotifier<void> {
  AddressSelectionNotifier(this._ref) : super(null);
  final Ref _ref;

  Future<void> selectAddress(String id) async {
    final storage = _ref.read(sharedStorageProvider);
    await storage.setString(StorageKeys.selectedAddressId, id);
    _ref.invalidate(currentShippingAddressProvider);
  }
}

final addressSelectionProvider =
    StateNotifierProvider.autoDispose<AddressSelectionNotifier, void>((ref) {
      return AddressSelectionNotifier(ref);
    });

final supportCountriesProvider = FutureProvider.autoDispose<List<CountryData>>((
  ref,
) async {
  final repo = ref.watch(addressRepositoryProvider);
  return repo.getSupportCountries();
});

class AddressNotifier extends StateNotifier<AsyncValue<void>> {
  AddressNotifier(this._repository, this._ref)
    : super(const AsyncValue.data(null));

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

final addressControllerProvider =
    StateNotifierProvider.autoDispose<AddressNotifier, AsyncValue<void>>((ref) {
      return AddressNotifier(ref.watch(addressRepositoryProvider), ref);
    });
