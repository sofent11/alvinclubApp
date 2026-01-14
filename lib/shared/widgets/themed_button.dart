import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';
import 'themed_text.dart';

enum ThemedButtonVariant { primary, secondary, ghost }

enum ThemedButtonSize { sm, md, lg }

class ThemedButton extends StatefulWidget {
  const ThemedButton({
    super.key,
    required this.label,
    this.onPressed,
    this.variant = ThemedButtonVariant.primary,
    this.size = ThemedButtonSize.md,
    this.loading = false,
    this.backgroundColor,
  });

  final String label;
  final VoidCallback? onPressed;
  final ThemedButtonVariant variant;
  final ThemedButtonSize size;
  final bool loading;
  final Color? backgroundColor;

  @override
  State<ThemedButton> createState() => _ThemedButtonState();
}

class _ThemedButtonState extends State<ThemedButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final isDisabled = widget.onPressed == null || widget.loading;

    final padding = switch (widget.size) {
      ThemedButtonSize.sm => const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 14,
      ),
      ThemedButtonSize.md => const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 18,
      ),
      ThemedButtonSize.lg => const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 20,
      ),
    };

    final borderRadius = switch (widget.size) {
      ThemedButtonSize.sm => 12.0,
      ThemedButtonSize.md => 14.0,
      ThemedButtonSize.lg => 18.0,
    };

    final background = switch (widget.variant) {
      ThemedButtonVariant.primary => widget.backgroundColor ?? colors.tint,
      ThemedButtonVariant.secondary => colors.secondary,
      ThemedButtonVariant.ghost => Colors.transparent,
    };

    final textColor = widget.variant == ThemedButtonVariant.ghost
        ? colors.tint
        : colors.surface;
    final borderColor = widget.variant == ThemedButtonVariant.ghost
        ? colors.border
        : Colors.transparent;
    final labelSize = switch (widget.size) {
      ThemedButtonSize.sm => 14.0,
      ThemedButtonSize.md => 16.0,
      ThemedButtonSize.lg => 17.0,
    };

    return AnimatedOpacity(
      duration: const Duration(milliseconds: 150),
      opacity: isDisabled
          ? 0.6
          : _isPressed
          ? 0.85
          : 1,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(borderRadius),
          splashFactory: NoSplash.splashFactory,
          highlightColor: Colors.transparent,
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          onHighlightChanged: (isHighlighted) {
            if (!isDisabled) {
              setState(() {
                _isPressed = isHighlighted;
              });
            }
          },
          onTap: isDisabled ? null : widget.onPressed,
          child: Container(
            padding: padding,
            decoration: BoxDecoration(
              color: background,
              borderRadius: BorderRadius.circular(borderRadius),
              border: Border.all(
                color: borderColor,
                width: borderColor == Colors.transparent ? 0 : 0.5,
              ),
            ),
            child: Center(
              child: widget.loading
                  ? SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(textColor),
                      ),
                    )
                  : ThemedText(
                      widget.label,
                      type: ThemedTextType.defaultSemiBold,
                      style: TextStyle(color: textColor, fontSize: labelSize),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
