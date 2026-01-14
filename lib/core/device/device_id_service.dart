import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
import '../storage/secure_storage.dart';
import '../storage/storage_keys.dart';

class DeviceIdService {
  DeviceIdService(this._storage);

  final SecureStorage _storage;
  String? _deviceId;

  String? get deviceId => _deviceId;

  String get platform {
    if (Platform.isAndroid) return 'Android';
    if (Platform.isIOS) return 'iOS';
    return '';
  }

  Future<void> init() async {
    _deviceId = await _storage.getItem(StorageKeys.deviceId);
    if (_deviceId == null) {
      _deviceId = const Uuid().v4();
      await _storage.setItem(StorageKeys.deviceId, _deviceId!);
    }
  }
}

final deviceIdServiceProvider = Provider<DeviceIdService>((ref) {
  return DeviceIdService(ref.read(secureStorageProvider));
});
