import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';
import '../../../shared/widgets/themed_text.dart';

class QuickEntryItem {
  const QuickEntryItem({
    required this.id,
    required this.title,
    this.iconUrl,
    this.badgeUrl,
    this.onTap,
  });

  final String id;
  final String title;
  final String? iconUrl;
  final String? badgeUrl;
  final VoidCallback? onTap;
}

class QuickEntryGrid extends StatelessWidget {
  const QuickEntryGrid({super.key, required this.entries});

  final List<QuickEntryItem> entries;

  @override
  Widget build(BuildContext context) {
    if (entries.isEmpty) return const SizedBox.shrink();
    final colors = context.appColors;
    final width = MediaQuery.of(context).size.width;

    const gap = 14.0;
    const horizontalPadding = 16.0;
    final visibleCount = entries.length < 5 ? entries.length : 5;
    final itemWidth = visibleCount > 0
        ? (width - horizontalPadding * 2 - gap * (visibleCount - 1)) / visibleCount
        : 0.0;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: entries.map((entry) {
            return Container(
              width: itemWidth == 0 ? 64.0 : itemWidth,
              margin: const EdgeInsets.only(right: gap),
              child: GestureDetector(
                onTap: entry.onTap,
                child: Column(
                  children: [
                    Container(
                      width: 54,
                      height: 54,
                      decoration: BoxDecoration(
                        color: colors.card,
                        borderRadius: BorderRadius.circular(27),
                        border: Border.all(color: colors.border),
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Center(
                            child: entry.iconUrl != null && entry.iconUrl!.isNotEmpty
                                ? ClipRRect(
                                    borderRadius: BorderRadius.circular(21),
                                    child: CachedNetworkImage(
                                      imageUrl: entry.iconUrl!,
                                      width: 42,
                                      height: 42,
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                : ThemedText(
                                    entry.title.isNotEmpty ? entry.title[0] : '',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: colors.textMuted,
                                    ),
                                  ),
                          ),
                          if (entry.badgeUrl != null && entry.badgeUrl!.isNotEmpty)
                            Positioned(
                              top: -6,
                              left: -6,
                              child: CachedNetworkImage(
                                imageUrl: entry.badgeUrl!,
                                width: 24,
                                height: 24,
                                fit: BoxFit.cover,
                              ),
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 6),
                    ThemedText(
                      entry.title,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 11, color: colors.text),
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
