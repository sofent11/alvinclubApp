import 'package:flutter/material.dart';

@immutable
class AppColorScheme extends ThemeExtension<AppColorScheme> {
  const AppColorScheme({
    required this.text,
    required this.textMuted,
    required this.background,
    required this.surface,
    required this.card,
    required this.overlay,
    required this.primary,
    required this.secondary,
    required this.success,
    required this.warning,
    required this.danger,
    required this.border,
    required this.muted,
    required this.mutedBackground,
    required this.tint,
    required this.icon,
    required this.tabIconDefault,
    required this.tabIconSelected,
    required this.shadow,
  });

  final Color text;
  final Color textMuted;
  final Color background;
  final Color surface;
  final Color card;
  final Color overlay;
  final Color primary;
  final Color secondary;
  final Color success;
  final Color warning;
  final Color danger;
  final Color border;
  final Color muted;
  final Color mutedBackground;
  final Color tint;
  final Color icon;
  final Color tabIconDefault;
  final Color tabIconSelected;
  final Color shadow;

  @override
  AppColorScheme copyWith({
    Color? text,
    Color? textMuted,
    Color? background,
    Color? surface,
    Color? card,
    Color? overlay,
    Color? primary,
    Color? secondary,
    Color? success,
    Color? warning,
    Color? danger,
    Color? border,
    Color? muted,
    Color? mutedBackground,
    Color? tint,
    Color? icon,
    Color? tabIconDefault,
    Color? tabIconSelected,
    Color? shadow,
  }) {
    return AppColorScheme(
      text: text ?? this.text,
      textMuted: textMuted ?? this.textMuted,
      background: background ?? this.background,
      surface: surface ?? this.surface,
      card: card ?? this.card,
      overlay: overlay ?? this.overlay,
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      success: success ?? this.success,
      warning: warning ?? this.warning,
      danger: danger ?? this.danger,
      border: border ?? this.border,
      muted: muted ?? this.muted,
      mutedBackground: mutedBackground ?? this.mutedBackground,
      tint: tint ?? this.tint,
      icon: icon ?? this.icon,
      tabIconDefault: tabIconDefault ?? this.tabIconDefault,
      tabIconSelected: tabIconSelected ?? this.tabIconSelected,
      shadow: shadow ?? this.shadow,
    );
  }

  @override
  AppColorScheme lerp(ThemeExtension<AppColorScheme>? other, double t) {
    if (other is! AppColorScheme) return this;
    return AppColorScheme(
      text: Color.lerp(text, other.text, t) ?? text,
      textMuted: Color.lerp(textMuted, other.textMuted, t) ?? textMuted,
      background: Color.lerp(background, other.background, t) ?? background,
      surface: Color.lerp(surface, other.surface, t) ?? surface,
      card: Color.lerp(card, other.card, t) ?? card,
      overlay: Color.lerp(overlay, other.overlay, t) ?? overlay,
      primary: Color.lerp(primary, other.primary, t) ?? primary,
      secondary: Color.lerp(secondary, other.secondary, t) ?? secondary,
      success: Color.lerp(success, other.success, t) ?? success,
      warning: Color.lerp(warning, other.warning, t) ?? warning,
      danger: Color.lerp(danger, other.danger, t) ?? danger,
      border: Color.lerp(border, other.border, t) ?? border,
      muted: Color.lerp(muted, other.muted, t) ?? muted,
      mutedBackground: Color.lerp(mutedBackground, other.mutedBackground, t) ?? mutedBackground,
      tint: Color.lerp(tint, other.tint, t) ?? tint,
      icon: Color.lerp(icon, other.icon, t) ?? icon,
      tabIconDefault: Color.lerp(tabIconDefault, other.tabIconDefault, t) ?? tabIconDefault,
      tabIconSelected: Color.lerp(tabIconSelected, other.tabIconSelected, t) ?? tabIconSelected,
      shadow: Color.lerp(shadow, other.shadow, t) ?? shadow,
    );
  }

  static const light = AppColorScheme(
    text: Color(0xFF111827),
    textMuted: Color(0xFF5C6074),
    background: Color(0xFFF5F6FA),
    surface: Color(0xFFFFFFFF),
    card: Color(0xFFFFFFFF),
    overlay: Color(0xFF0F172A),
    primary: Color(0xFFFF5A5F),
    secondary: Color(0xFF1F8AEC),
    success: Color(0xFF22C55E),
    warning: Color(0xFFF59E0B),
    danger: Color(0xFFF75555),
    border: Color(0xFFE5E7EB),
    muted: Color(0xFFE2E4EA),
    mutedBackground: Color(0xFFEEF2FF),
    tint: Color(0xFFFF5A5F),
    icon: Color(0xFF6B7280),
    tabIconDefault: Color(0xFF96A1B8),
    tabIconSelected: Color(0xFFFF5A5F),
    shadow: Color(0x140F172A),
  );

  static const dark = AppColorScheme(
    text: Color(0xFFF3F4F6),
    textMuted: Color(0xFFA0A4B8),
    background: Color(0xFF0F172A),
    surface: Color(0xFF111827),
    card: Color(0xFF1E2639),
    overlay: Color(0xFFFFFFFF),
    primary: Color(0xFFFF6B6B),
    secondary: Color(0xFF60A5FA),
    success: Color(0xFF4ADE80),
    warning: Color(0xFFFACC15),
    danger: Color(0xFFFB7185),
    border: Color(0xFF2F3547),
    muted: Color(0xFF1F2535),
    mutedBackground: Color(0xFF1D2435),
    tint: Color(0xFFFF6B6B),
    icon: Color(0xFFCBD5F5),
    tabIconDefault: Color(0xFF6B7280),
    tabIconSelected: Color(0xFFFF6B6B),
    shadow: Color(0x66000000),
  );
}

class AppRadius {
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 24;
}

class AppSpacing {
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 20;
  static const double xxl = 28;
}

class AppTextStyles {
  static TextStyle base(AppColorScheme colors) => TextStyle(
        fontSize: 16,
        height: 24 / 16,
        color: colors.text,
      );

  static TextStyle defaultStyle(AppColorScheme colors) => base(colors).copyWith(fontWeight: FontWeight.w400);

  static TextStyle defaultSemiBold(AppColorScheme colors) => base(colors).copyWith(fontWeight: FontWeight.w600);

  static TextStyle title(AppColorScheme colors) => base(colors).copyWith(
        fontSize: 28,
        height: 34 / 28,
        fontWeight: FontWeight.w700,
      );

  static TextStyle subtitle(AppColorScheme colors) => base(colors).copyWith(
        fontSize: 20,
        height: 27 / 20,
        fontWeight: FontWeight.w600,
      );

  static TextStyle caption(AppColorScheme colors) => base(colors).copyWith(
        fontSize: 13,
        height: 18 / 13,
        color: colors.text.withAlpha(204),
      );

  static TextStyle eyebrow(AppColorScheme colors) => base(colors).copyWith(
        fontSize: 12,
        height: 16 / 12,
        letterSpacing: 1,
        fontWeight: FontWeight.w600,
      );
}

class AppTheme {
  static ThemeData light() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: ColorScheme.light(
        primary: AppColorScheme.light.primary,
        secondary: AppColorScheme.light.secondary,
        surface: AppColorScheme.light.surface,
        error: AppColorScheme.light.danger,
        onPrimary: AppColorScheme.light.surface,
        onSurface: AppColorScheme.light.text,
      ),
      scaffoldBackgroundColor: AppColorScheme.light.background,
      extensions: const [AppColorScheme.light],
    );
  }

  static ThemeData dark() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.dark(
        primary: AppColorScheme.dark.primary,
        secondary: AppColorScheme.dark.secondary,
        surface: AppColorScheme.dark.surface,
        error: AppColorScheme.dark.danger,
        onPrimary: AppColorScheme.dark.surface,
        onSurface: AppColorScheme.dark.text,
      ),
      scaffoldBackgroundColor: AppColorScheme.dark.background,
      extensions: const [AppColorScheme.dark],
    );
  }
}

extension AppThemeExtension on BuildContext {
  AppColorScheme get appColors {
    final extension = Theme.of(this).extension<AppColorScheme>();
    return extension ?? AppColorScheme.light;
  }
}
