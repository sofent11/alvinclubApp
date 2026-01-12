import 'dart:convert';

class JsonCoerce {
  static int? asInt(dynamic v) {
    if (v == null) return null;
    if (v is int) return v;
    if (v is double) return v.truncate();
    if (v is num) return v.toInt();
    if (v is bool) return v ? 1 : 0;
    if (v is String) {
      final s = v.trim();
      if (s.isEmpty) return null;
      final n = num.tryParse(s);
      return n?.toInt();
    }
    return null;
  }

  static double? asDouble(dynamic v) {
    if (v == null) return null;
    if (v is double) return v;
    if (v is int) return v.toDouble();
    if (v is num) return v.toDouble();
    if (v is bool) return v ? 1.0 : 0.0;
    if (v is String) {
      final s = v.trim();
      if (s.isEmpty) return null;
      return double.tryParse(s) ?? num.tryParse(s)?.toDouble();
    }
    return null;
  }

  static num? asNum(dynamic v) {
    if (v == null) return null;
    if (v is num) return v;
    if (v is bool) return v ? 1 : 0;
    if (v is String) {
      final s = v.trim();
      if (s.isEmpty) return null;
      return num.tryParse(s);
    }
    return null;
  }

  static bool? asBool(dynamic v) {
    if (v == null) return null;
    if (v is bool) return v;
    if (v is num) return v != 0;
    if (v is String) {
      final s = v.trim().toLowerCase();
      if (s.isEmpty) return null;
      if (s == 'true' || s == '1' || s == 'yes' || s == 'y') return true;
      if (s == 'false' || s == '0' || s == 'no' || s == 'n') return false;
    }
    return null;
  }

  static String? asString(dynamic v, {bool encodeJsonForComplex = false}) {
    if (v == null) return null;
    if (v is String) return v;
    if (v is num || v is bool) return v.toString();
    if (encodeJsonForComplex) {
      try {
        return jsonEncode(v);
      } catch (_) {}
    }
    return v.toString();
  }

  static DateTime? asDateTime(dynamic v) {
    if (v == null) return null;
    if (v is DateTime) return v;
    if (v is int) {
      final ms = v < 2000000000 ? v * 1000 : v;
      return DateTime.fromMillisecondsSinceEpoch(ms, isUtc: true).toLocal();
    }
    if (v is String) {
      final s = v.trim();
      if (s.isEmpty) return null;
      final asNum = int.tryParse(s);
      if (asNum != null) return asDateTime(asNum);
      return DateTime.tryParse(s);
    }
    return null;
  }

  static List<T>? asList<T>(dynamic v, T Function(dynamic) map) {
    if (v == null) return null;
    if (v is List) return v.map(map).toList();
    return [map(v)];
  }

  static List<int>? asIntList(dynamic v) {
    final list = asList<int?>(v, asInt);
    return list?.whereType<int>().toList();
  }

  static List<double>? asDoubleList(dynamic v) {
    final list = asList<double?>(v, asDouble);
    return list?.whereType<double>().toList();
  }

  static List<num>? asNumList(dynamic v) {
    final list = asList<num?>(v, asNum);
    return list?.whereType<num>().toList();
  }

  static List<bool>? asBoolList(dynamic v) {
    final list = asList<bool?>(v, asBool);
    return list?.whereType<bool>().toList();
  }

  static List<String>? asStringList(dynamic v) {
    final list = asList<String?>(v, asString);
    return list?.whereType<String>().toList();
  }

  static List<DateTime>? asDateTimeList(dynamic v) {
    final list = asList<DateTime?>(v, asDateTime);
    return list?.whereType<DateTime>().toList();
  }
}
