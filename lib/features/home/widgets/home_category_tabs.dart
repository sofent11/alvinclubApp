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
  });

  final List<HomeCategoryTab> items;
  final String? activeId;
  final ValueChanged<String?> onChange;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 6),
      color: colors.background,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: items.asMap().entries.map((entry) {
            final index = entry.key;
            final item = entry.value;
            final isActive = item.id == activeId || (item.id == null && activeId == null);
            return Padding(
              padding: EdgeInsets.only(right: index == items.length - 1 ? 0 : 18),
              child: GestureDetector(
                onTap: () => onChange(item.id),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ThemedText(
                      item.name,
                      type: isActive ? ThemedTextType.defaultSemiBold : ThemedTextType.defaultStyle,
                      style: TextStyle(
                        fontSize: 13,
                        color: isActive ? colors.text : colors.textMuted,
                      ),
                    ),
                    const SizedBox(height: 6),
                    if (isActive)
                      Container(
                        height: 2,
                        width: 16,
                        decoration: BoxDecoration(
                          color: colors.tint,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
