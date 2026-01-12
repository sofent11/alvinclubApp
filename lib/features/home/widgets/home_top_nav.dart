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
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: items.asMap().entries.map((entry) {
            final index = entry.key;
            final item = entry.value;
            final isActive = item.key == activeKey;
            final textColor = isActive
                ? const Color(0xFF1F1B18)
                : const Color(0xFF1F1B18).withValues(alpha: 0.6);

            return Padding(
              padding: EdgeInsets.only(
                right: index == items.length - 1 ? 0 : 16,
              ),
              child: GestureDetector(
                onTap: () => onItemTap(item),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 4,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: isActive ? const Color(0xFF1F1B18) : Colors.transparent,
                        width: 2,
                      ),
                    ),
                  ),
                  child: ThemedText(
                    item.title,
                    type: isActive ? ThemedTextType.title : ThemedTextType.defaultStyle,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 15,
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
