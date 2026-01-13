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

  void _showAllCategories(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => _CategoryExpansionSheet(
        items: items,
        activeId: activeId,
        onChange: (id) {
          Navigator.pop(context);
          onChange(id);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return Container(
      color: backgroundColor ?? Colors.transparent,
      child: Row(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Padding(
                padding: const EdgeInsets.only(top: 6, bottom: 4),
                child: Row(
                  children: items.asMap().entries.map((entry) {
                    final index = entry.key;
                    final item = entry.value;
                    final isActive =
                        item.id == activeId ||
                        (item.id == null && activeId == null);

                    final bgColor = isActive ? colors.text : Colors.transparent;
                    final textColor = isActive
                        ? colors.surface
                        : colors.textMuted;
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
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 8, right: 12),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [
                  (backgroundColor ?? Colors.white).withValues(alpha: 1.0),
                  (backgroundColor ?? Colors.white).withValues(alpha: 0.0),
                ],
                stops: const [0.5, 1.0],
              ),
            ),
            child: GestureDetector(
              onTap: () => _showAllCategories(context),
              child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: colors.surface,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.05),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: colors.text,
                  size: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CategoryExpansionSheet extends StatelessWidget {
  const _CategoryExpansionSheet({
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
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      ),
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.7,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ThemedText(
                  'All Categories',
                  type: ThemedTextType.title,
                  style: TextStyle(fontSize: 16),
                ),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.close, color: colors.textMuted),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
              ],
            ),
          ),
          Flexible(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
              child: Wrap(
                spacing: 8,
                runSpacing: 12,
                children: items.map((item) {
                  final isActive =
                      item.id == activeId ||
                      (item.id == null && activeId == null);

                  final bgColor = isActive ? colors.text : colors.background;
                  final textColor = isActive ? colors.surface : colors.text;
                  final borderColor = isActive
                      ? Colors.transparent
                      : colors.border.withValues(alpha: 0.5);

                  return GestureDetector(
                    onTap: () => onChange(item.id),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: bgColor,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: borderColor),
                      ),
                      child: Text(
                        item.name,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: isActive
                              ? FontWeight.w600
                              : FontWeight.normal,
                          color: textColor,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
