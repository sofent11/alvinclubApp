import 'package:flutter/material.dart';

import '../home_models.dart';
import '../../../shared/widgets/themed_text.dart';

class HomeTopNavBar extends StatelessWidget {
  const HomeTopNavBar({
    super.key,
    required this.items,
    required this.activeKey,
    required this.onItemTap,
    this.backgroundColor,
  });

  final List<HomeTopNavItem> items;
  final String activeKey;
  final ValueChanged<HomeTopNavItem> onItemTap;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor ?? Colors.transparent,
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: items.asMap().entries.map((entry) {
            final index = entry.key;
            final item = entry.value;
            final isActive = item.key == activeKey;
            final backgroundColor = isActive
                ? const Color(0xFF1F1B18)
                : Colors.transparent;
            final borderColor = isActive
                ? const Color(0xFF1F1B18)
                : Colors.transparent;
            final textColor = isActive
                ? Colors.white
                : const Color(0xFF1F1B18).withValues(alpha: 0.72);

            return Padding(
              padding: EdgeInsets.only(
                right: index == items.length - 1 ? 0 : 12,
              ),
              child: GestureDetector(
                onTap: () => onItemTap(item),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: borderColor),
                  ),
                  child: ThemedText(
                    item.title,
                    type: ThemedTextType.defaultSemiBold,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 13,
                      fontWeight:
                          isActive ? FontWeight.w600 : FontWeight.w500,
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
