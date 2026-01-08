import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';
import 'themed_text.dart';

class InputField extends StatefulWidget {
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
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  late bool _hasText;

  @override
  void initState() {
    super.initState();
    _hasText = widget.controller.text.isNotEmpty;
    widget.controller.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onTextChanged);
    super.dispose();
  }

  void _onTextChanged() {
    final newValue = widget.controller.text.isNotEmpty;
    if (newValue != _hasText) {
      setState(() {
        _hasText = newValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final borderColor = widget.errorText == null
        ? colors.border
        : colors.danger;
    final focusedBorder = widget.errorText == null
        ? colors.tint
        : colors.danger;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ThemedText(
          widget.label,
          type: ThemedTextType.defaultSemiBold,
          style: const TextStyle(fontSize: 14),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: widget.controller,
          enabled: widget.enabled,
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          autofillHints: widget.autofillHints,
          obscureText: widget.obscureText,
          maxLength: widget.maxLength,
          onChanged: widget.onChanged,
          onEditingComplete: widget.onEditingComplete,
          decoration: InputDecoration(
            hintText: widget.placeholder,
            counterText: '',
            filled: true,
            fillColor: colors.surface,
            hintStyle: TextStyle(color: colors.textMuted),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 12,
            ),
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
            suffixIcon: _hasText && widget.enabled && !widget.obscureText
                ? IconButton(
                    icon: Icon(Icons.clear, color: colors.textMuted, size: 18),
                    onPressed: () {
                      widget.controller.clear();
                      widget.onChanged?.call('');
                    },
                    padding: const EdgeInsets.all(8),
                    constraints: const BoxConstraints(),
                  )
                : null,
          ),
        ),
        if (widget.errorText != null) ...[
          const SizedBox(height: 6),
          ThemedText(
            widget.errorText!,
            style: TextStyle(color: colors.danger, fontSize: 12),
          ),
        ],
      ],
    );
  }
}
