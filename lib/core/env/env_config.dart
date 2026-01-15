import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

enum AppEnvironment { dev, stage, prod, test }

AppEnvironment _parseEnvironment(String? value) {
  switch ((value ?? '').toLowerCase()) {
    case 'stage':
      return AppEnvironment.stage;
    case 'prod':
      return AppEnvironment.prod;
    case 'test':
      return AppEnvironment.test;
    case 'dev':
    default:
      return AppEnvironment.dev;
  }
}

class EnvConfig {
  EnvConfig({
    required this.apiBaseUrl,
    required this.appEnv,
    required this.defaultLocale,
    required this.referer,
    required this.uploadPrefix,
  });

  final String apiBaseUrl;
  final AppEnvironment appEnv;
  final String defaultLocale;
  final String referer;
  final String uploadPrefix;

  static late EnvConfig current;

  static Future<void> load({String? envFile, bool forceProd = false}) async {
    final fileName =
        envFile ??
        const String.fromEnvironment('ENV_FILE', defaultValue: '.env.dev');
    await dotenv.load(fileName: fileName);

    final fallbackLocale = 'en-US';

    final rawApiBase = dotenv.env['EXPO_PUBLIC_API_BASE_URL'] ?? '';
    final rawEnv = dotenv.env['EXPO_PUBLIC_APP_ENV'];
    final rawLocale = dotenv.env['EXPO_PUBLIC_DEFAULT_LOCALE'];
    final rawReferer = dotenv.env['EXPO_PUBLIC_API_REFERER'];
    final rawUploadPrefix = dotenv.env['EXPO_PUBLIC_UPLOAD_PREFIX'];

    if (kDebugMode && rawApiBase.isEmpty) {
      debugPrint(
        '[env] Missing EXPO_PUBLIC_API_BASE_URL. Update your .env file before hitting real APIs.',
      );
    }

    // Default to Test Environment in Debug mode, unless forced to use loaded config (Prod)
    if (kDebugMode && !forceProd) {
      current = EnvConfig(
        apiBaseUrl: 'https://decom-api.valleysound.xyz',
        appEnv: AppEnvironment.test,
        defaultLocale: rawLocale ?? fallbackLocale,
        referer: 'https://ai.decom.valleysound.xyz',
        uploadPrefix: rawUploadPrefix ?? '',
      );
      return;
    }

    current = EnvConfig(
      apiBaseUrl: rawApiBase,
      appEnv: _parseEnvironment(rawEnv),
      defaultLocale: rawLocale ?? fallbackLocale,
      referer: rawReferer ?? 'https://www.alvinclub.com/',
      uploadPrefix: rawUploadPrefix ?? '',
    );
  }

  static bool get isProd => current.appEnv == AppEnvironment.prod;

  static void switchToTest() {
    current = EnvConfig(
      apiBaseUrl: 'https://decom-api.valleysound.xyz',
      appEnv: AppEnvironment.test,
      defaultLocale: 'en-US',
      referer: 'https://ai.decom.valleysound.xyz',
      uploadPrefix: current.uploadPrefix, // Keep existing or clear?
    );
  }
}
