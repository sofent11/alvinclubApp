import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedStorage {
  static final Map<String, String> _memory = <String, String>{};

  Future<String?> getString(String key) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString(key) ?? _memory[key];
    } catch (_) {
      return _memory[key];
    }
  }

  Future<void> setString(String key, String value) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(key, value);
    } catch (_) {
      // Ignore and fallback to memory only.
    }
    _memory[key] = value;
  }

  Future<void> remove(String key) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(key);
    } catch (_) {
      // Ignore and remove from memory.
    }
    _memory.remove(key);
  }
}

final sharedStorageProvider = Provider<SharedStorage>((ref) => SharedStorage());
