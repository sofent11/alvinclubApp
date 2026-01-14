import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../domain/inbox_models.dart';

class InboxCategoryTile extends StatelessWidget {
  const InboxCategoryTile({super.key, required this.category, this.onTap});

  final InboxCategory category;
  final VoidCallback? onTap;

  IconData _getIconData(String id) {
    switch (id) {
      case 'order_logistics':
        return Icons.description_outlined;
      case 'promotion':
        return Icons.local_offer_outlined;
      case 'official':
        return Icons.support_agent_outlined; // or something similar
      default:
        return Icons.notifications_none;
    }
  }

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('MM-dd');

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: Color(category.backgroundColor),
                shape: BoxShape.circle,
              ),
              child: Icon(
                _getIconData(category.id),
                color: Colors.white,
                size: 24,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        category.title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF1A1A1A),
                        ),
                      ),
                      if (category.updatedAt != null)
                        Text(
                          dateFormat.format(category.updatedAt!),
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[400],
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          category.latestMessage ?? '',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[400],
                            height: 1.2,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      if (category.unreadCount > 0)
                        Container(
                          margin: const EdgeInsets.only(left: 8),
                          padding: const EdgeInsets.all(6),
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: const SizedBox(width: 4, height: 4),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
