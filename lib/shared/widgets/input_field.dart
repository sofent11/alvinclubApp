import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';
import 'themed_text.dart';

class InputField extends StatefulWidget {
  const InputField({
    super.key,
    required this.controller,
    this.label,
    this.placeholder,
    this.helperText,
    this.trailing,
    this.keyboardType,
    this.textInputAction,
    this.onChanged,
    this.onEditingComplete,
    this.autofillHints,
    this.enabled = true,
    this.obscureText = false,
    this.maxLength,
    this.errorText,
    this.focusNode,
  });

  final TextEditingController controller;
  final String? label;
  final String? placeholder;
  final String? helperText;
  final Widget? trailing;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final Iterable<String>? autofillHints;
  final bool enabled;
  final bool obscureText;
  final int? maxLength;
  final String? errorText;
  final FocusNode? focusNode;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  late final FocusNode _focusNode;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(_handleFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_handleFocusChange);
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
    super.dispose();
  }

  void _handleFocusChange() {
    if (_isFocused != _focusNode.hasFocus) {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final borderColor = widget.errorText == null
        ? (_isFocused ? colors.tint : colors.border)
        : colors.danger;
    final helperColor = widget.errorText != null ? colors.danger : colors.textMuted;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null && widget.label!.isNotEmpty) ...[
          ThemedText(
            widget.label!,
            type: ThemedTextType.defaultSemiBold,
            style: const TextStyle(fontSize: 15),
          ),
          const SizedBox(height: 8),
        ],
        Opacity(
          opacity: widget.enabled ? 1 : 0.65,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: BoxDecoration(
              color: colors.surface,
              borderRadius: BorderRadius.circular(AppRadius.lg),
              border: Border.all(color: borderColor, width: 0.5),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: widget.controller,
                    focusNode: _focusNode,
                    enabled: widget.enabled,
                    keyboardType: widget.keyboardType,
                    textInputAction: widget.textInputAction,
                    autofillHints: widget.autofillHints,
                    obscureText: widget.obscureText,
                    maxLength: widget.maxLength,
                    onChanged: widget.onChanged,
                    onEditingComplete: widget.onEditingComplete,
                    style: TextStyle(fontSize: 16, color: colors.text),
                    decoration: InputDecoration(
                      hintText: widget.placeholder,
                      hintStyle: TextStyle(color: colors.textMuted),
                      border: InputBorder.none,
                      isDense: true,
                      counterText: '',
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
                if (widget.trailing != null) ...[
                  const SizedBox(width: 8),
                  widget.trailing!,
                ],
              ],
            ),
          ),
        ),
        if (widget.errorText != null || widget.helperText != null) ...[
          const SizedBox(height: 8),
          ThemedText(
            widget.errorText ?? widget.helperText ?? '',
            style: TextStyle(color: helperColor, fontSize: 13),
          ),
        ],
      ],
    );
  }
}
