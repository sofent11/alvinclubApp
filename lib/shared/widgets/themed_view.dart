import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';

enum ThemedViewVariant { plain, card, muted, surface }

class ThemedView extends StatelessWidget {
  const ThemedView({
    super.key,
    this.variant = ThemedViewVariant.plain,
    this.bordered = false,
    this.lightColor,
    this.darkColor,
    this.padding,
    this.margin,
    this.child,
  });

  final ThemedViewVariant variant;
  final bool bordered;
  final Color? lightColor;
  final Color? darkColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final brightness = Theme.of(context).brightness;
    final resolvedColor = brightness == Brightness.dark
        ? darkColor
        : lightColor;

    Color background;
    switch (variant) {
      case ThemedViewVariant.card:
        background = colors.card;
        break;
      case ThemedViewVariant.muted:
        background = colors.mutedBackground;
        break;
      case ThemedViewVariant.surface:
        background = colors.surface;
        break;
      case ThemedViewVariant.plain:
        background = colors.background;
        break;
    }

    final border = bordered
        ? Border.all(color: colors.border, width: 0.5)
        : null;

    final boxShadow = variant == ThemedViewVariant.card
        ? [
            BoxShadow(
              color: colors.shadow,
              blurRadius: brightness == Brightness.dark ? 24 : 20,
              offset: Offset(0, brightness == Brightness.dark ? 10 : 8),
            ),
          ]
        : null;

    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: resolvedColor ?? background,
        border: border,
        borderRadius: BorderRadius.circular(AppRadius.lg),
        boxShadow: boxShadow,
      ),
      child: child,
    );
  }
}
