import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';
import '../../../shared/widgets/themed_text.dart';

class HomeCategoryTab {
  const HomeCategoryTab({this.id, required this.name});

  final String? id;
  final String name;
}

class HomeCategoryTabs extends StatelessWidget {
  const HomeCategoryTabs({
    super.key,
    required this.items,
    required this.activeId,
    required this.onChange,
    this.backgroundColor,
  });

  final List<HomeCategoryTab> items;
  final String? activeId;
  final ValueChanged<String?> onChange;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return Container(
      padding: const EdgeInsets.only(top: 6, bottom: 4),
      color: backgroundColor ?? Colors.transparent,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: items.asMap().entries.map((entry) {
            final index = entry.key;
            final item = entry.value;
            final isActive =
                item.id == activeId || (item.id == null && activeId == null);

            final bgColor = isActive ? colors.text : Colors.transparent;
            final textColor = isActive ? colors.surface : colors.textMuted;
            final borderColor = isActive
                ? Colors.transparent
                : colors.border.withValues(alpha: 0.5);

            return Padding(
              padding: EdgeInsets.only(
                right: index == items.length - 1 ? 0 : 8,
              ),
              child: GestureDetector(
                onTap: () => onChange(item.id),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: borderColor),
                  ),
                  child: ThemedText(
                    item.name,
                    type: isActive
                        ? ThemedTextType.defaultSemiBold
                        : ThemedTextType.defaultStyle,
                    style: TextStyle(
                      fontSize: 13,
                      height: 1.2,
                      color: textColor,
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
