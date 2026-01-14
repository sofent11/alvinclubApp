import 'dart:developer' as developer;
import 'package:flutter/foundation.dart';

/// Logs a message to the console and DevTools.
///
/// Uses [developer.log] which handles long messages better than [print].
/// Also ensures messages are only logged in debug mode.
void logDebug(String message, {String name = 'w2cApp'}) {
  if (kDebugMode) {
    developer.log(message, name: name);
  }
}
