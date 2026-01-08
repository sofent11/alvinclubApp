import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';

enum ToastType { success, error, warning, info }

class AppToast {
  static void show(
    BuildContext context, {
    required String message,
    ToastType type = ToastType.info,
    Duration duration = const Duration(seconds: 3),
  }) {
    final colors = context.appColors;

    final backgroundColor = switch (type) {
      ToastType.success => colors.success,
      ToastType.error => colors.danger,
      ToastType.warning => colors.warning,
      ToastType.info => colors.primary,
    };

    final icon = switch (type) {
      ToastType.success => Icons.check_circle,
      ToastType.error => Icons.error,
      ToastType.warning => Icons.warning,
      ToastType.info => Icons.info,
    };

    final snackBar = SnackBar(
      content: Row(
        children: [
          Icon(icon, color: Colors.white, size: 20),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              message,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ],
      ),
      backgroundColor: backgroundColor,
      duration: duration,
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    );

    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static void success(
    BuildContext context,
    String message, {
    Duration duration = const Duration(seconds: 3),
  }) {
    show(
      context,
      message: message,
      type: ToastType.success,
      duration: duration,
    );
  }

  static void error(
    BuildContext context,
    String message, {
    Duration duration = const Duration(seconds: 3),
  }) {
    show(context, message: message, type: ToastType.error, duration: duration);
  }

  static void warning(
    BuildContext context,
    String message, {
    Duration duration = const Duration(seconds: 3),
  }) {
    show(
      context,
      message: message,
      type: ToastType.warning,
      duration: duration,
    );
  }

  static void info(
    BuildContext context,
    String message, {
    Duration duration = const Duration(seconds: 3),
  }) {
    show(context, message: message, type: ToastType.info, duration: duration);
  }
}

class ToastActionButton extends StatelessWidget {
  const ToastActionButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.isPrimary = true,
  });

  final String label;
  final VoidCallback onPressed;
  final bool isPrimary;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(
          color: isPrimary ? Colors.white : Colors.white70,
          fontWeight: isPrimary ? FontWeight.w600 : FontWeight.w400,
        ),
      ),
    );
  }
}

class ToastWithAction extends StatelessWidget {
  const ToastWithAction({
    super.key,
    required this.message,
    required this.actionLabel,
    required this.onActionPressed,
    this.type = ToastType.info,
    this.duration = const Duration(seconds: 5),
  });

  final String message;
  final String actionLabel;
  final VoidCallback onActionPressed;
  final ToastType type;
  final Duration duration;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
