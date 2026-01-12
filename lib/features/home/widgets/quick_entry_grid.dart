import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';
import '../../../shared/widgets/themed_text.dart';

class QuickEntryItem {
  const QuickEntryItem({
    required this.id,
    required this.title,
    this.iconUrl,
    this.onTap,
  });

  final String id;
  final String title;
  final String? iconUrl;
  final VoidCallback? onTap;
}

class QuickEntryGrid extends StatelessWidget {
  const QuickEntryGrid({super.key, required this.entries});

  final List<QuickEntryItem> entries;

  @override
  Widget build(BuildContext context) {
    if (entries.isEmpty) return const SizedBox.shrink();
    final colors = context.appColors;

    const gap = 10.0;
    const horizontalPadding = 16.0;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 6),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: entries.map((entry) {
            return Container(
              width: 60.0,
              margin: const EdgeInsets.only(right: gap),
              child: GestureDetector(
                onTap: entry.onTap,
                child: Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.06),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Center(
                            child:
                                entry.iconUrl != null &&
                                    entry.iconUrl!.isNotEmpty
                                ? ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: CachedNetworkImage(
                                      imageUrl: entry.iconUrl!,
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                : ThemedText(
                                    entry.title.isNotEmpty
                                        ? entry.title[0]
                                        : '',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: colors.textMuted,
                                    ),
                                  ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      entry.title,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: const Color(0xFF1A1A1A),
                        height: 1.15,
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
