import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';

enum ThemedTextType {
  defaultStyle,
  defaultSemiBold,
  title,
  subtitle,
  caption,
  eyebrow,
  link,
}

class ThemedText extends StatelessWidget {
  const ThemedText(
    this.data, {
    super.key,
    this.type = ThemedTextType.defaultStyle,
    this.lightColor,
    this.darkColor,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.style,
  });

  final String data;
  final ThemedTextType type;
  final Color? lightColor;
  final Color? darkColor;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final brightness = Theme.of(context).brightness;
    final resolvedColor = brightness == Brightness.dark ? darkColor : lightColor;

    TextStyle baseStyle;
    switch (type) {
      case ThemedTextType.title:
        baseStyle = AppTextStyles.title(colors);
        break;
      case ThemedTextType.defaultSemiBold:
        baseStyle = AppTextStyles.defaultSemiBold(colors);
        break;
      case ThemedTextType.subtitle:
        baseStyle = AppTextStyles.subtitle(colors);
        break;
      case ThemedTextType.caption:
        baseStyle = AppTextStyles.caption(colors);
        break;
      case ThemedTextType.eyebrow:
        baseStyle = AppTextStyles.eyebrow(colors);
        break;
      case ThemedTextType.link:
        baseStyle = AppTextStyles.defaultSemiBold(colors).copyWith(color: colors.tint);
        break;
      case ThemedTextType.defaultStyle:
        baseStyle = AppTextStyles.defaultStyle(colors);
        break;
    }

    final resolvedStyle = baseStyle.copyWith(color: resolvedColor ?? baseStyle.color);

    return Text(
      data,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: resolvedStyle.merge(style),
    );
  }
}
