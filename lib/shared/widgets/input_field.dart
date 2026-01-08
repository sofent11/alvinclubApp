import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';
import 'themed_text.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.label,
    required this.controller,
    this.placeholder,
    this.keyboardType,
    this.textInputAction,
    this.onChanged,
    this.onEditingComplete,
    this.autofillHints,
    this.enabled = true,
    this.obscureText = false,
    this.maxLength,
    this.errorText,
  });

  final String label;
  final TextEditingController controller;
  final String? placeholder;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final Iterable<String>? autofillHints;
  final bool enabled;
  final bool obscureText;
  final int? maxLength;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final borderColor = errorText == null ? colors.border : colors.danger;
    final focusedBorder = errorText == null ? colors.tint : colors.danger;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ThemedText(
          label,
          type: ThemedTextType.defaultSemiBold,
          style: const TextStyle(fontSize: 14),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          enabled: enabled,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          autofillHints: autofillHints,
          obscureText: obscureText,
          maxLength: maxLength,
          onChanged: onChanged,
          onEditingComplete: onEditingComplete,
          decoration: InputDecoration(
            hintText: placeholder,
            counterText: '',
            filled: true,
            fillColor: colors.surface,
            hintStyle: TextStyle(color: colors.textMuted),
            contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppRadius.md),
              borderSide: BorderSide(color: borderColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppRadius.md),
              borderSide: BorderSide(color: borderColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppRadius.md),
              borderSide: BorderSide(color: focusedBorder, width: 1.2),
            ),
          ),
        ),
        if (errorText != null) ...[
          const SizedBox(height: 6),
          ThemedText(
            errorText!,
            style: TextStyle(color: colors.danger, fontSize: 12),
          ),
        ],
      ],
    );
  }
}
