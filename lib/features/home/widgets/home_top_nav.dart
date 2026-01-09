import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';
import '../home_models.dart';
import '../../../shared/widgets/themed_text.dart';

class HomeTopNavBar extends StatelessWidget {
  const HomeTopNavBar({
    super.key,
    required this.items,
    required this.activeKey,
    required this.onItemTap,
  });

  final List<HomeTopNavItem> items;
  final String activeKey;
  final ValueChanged<HomeTopNavItem> onItemTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return Container(
      color: colors.background,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: items.map((item) {
            final isActive = item.key == activeKey;
            final backgroundColor = isActive ? const Color(0xFF1A1A1A) : Colors.transparent;
            final borderColor = isActive ? const Color(0xFF1A1A1A) : Colors.transparent;
            final textColor = isActive ? Colors.white : colors.text;

            return Padding(
              padding: const EdgeInsets.only(right: 12),
              child: GestureDetector(
                onTap: () => onItemTap(item),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: borderColor),
                  ),
                  child: ThemedText(
                    item.title,
                    type: ThemedTextType.defaultSemiBold,
                    style: TextStyle(color: textColor, fontSize: 14),
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
