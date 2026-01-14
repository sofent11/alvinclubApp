import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SecureStorage {
  SecureStorage({FlutterSecureStorage? secureStorage})
    : _secureStorage = secureStorage ?? const FlutterSecureStorage();

  final FlutterSecureStorage _secureStorage;
  static final Map<String, String> _memory = <String, String>{};

  Future<String?> getItem(String key) async {
    try {
      return await _secureStorage.read(key: key) ?? _memory[key];
    } catch (_) {
      return _memory[key];
    }
  }

  Future<void> setItem(String key, String value) async {
    try {
      await _secureStorage.write(key: key, value: value);
    } catch (_) {
      // Fallback to memory only.
    }
    _memory[key] = value;
  }

  Future<void> removeItem(String key) async {
    try {
      await _secureStorage.delete(key: key);
    } catch (_) {
      // Ignore and remove from memory.
    }
    _memory.remove(key);
  }
}

final secureStorageProvider = Provider<SecureStorage>((ref) => SecureStorage());
