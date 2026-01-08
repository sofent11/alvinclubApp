import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';
import 'themed_text.dart';
import 'themed_view.dart';

class PlaceholderPage extends StatelessWidget {
  const PlaceholderPage({super.key, required this.title, this.subtitle});

  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return ThemedView(
      variant: ThemedViewVariant.plain,
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ThemedText(title, type: ThemedTextType.title),
          if (subtitle != null)
            Padding(
              padding: const EdgeInsets.only(top: AppSpacing.sm),
              child: ThemedText(
                subtitle!,
                type: ThemedTextType.subtitle,
                style: TextStyle(color: colors.textMuted),
              ),
            ),
          const SizedBox(height: AppSpacing.xl),
          ThemedText(
            'This screen is scaffolded for migration. Implement feature logic here.',
            type: ThemedTextType.caption,
            style: TextStyle(color: colors.textMuted),
          ),
        ],
      ),
    );
  }
}
