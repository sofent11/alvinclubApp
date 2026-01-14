import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/inbox_models.dart';

class InboxRepository {
  Future<List<InboxCategory>> getInboxCategories() async {
    // Mock data based on the design
    await Future.delayed(const Duration(milliseconds: 500));
    return [
      InboxCategory(
        id: 'order_logistics',
        title: 'Order & Logistics',
        iconPath:
            'assets/icons/inbox_order.png', // We'll use Icons for now in UI
        backgroundColor: 0xFF4CD9C0, // Cyan/Teal
        latestMessage: 'No orders/logistics messages at...',
        unreadCount: 0,
      ),
      InboxCategory(
        id: 'promotion',
        title: 'Promotion Activity',
        iconPath: 'assets/icons/inbox_promo.png',
        backgroundColor: 0xFFFF4081, // Pink
        latestMessage: 'No promotions currently available.',
        unreadCount: 0,
      ),
      InboxCategory(
        id: 'official',
        title: 'Official Support',
        iconPath: 'assets/icons/inbox_support.png',
        backgroundColor: 0xFFFF6B6B, // Red/Orange
        latestMessage: 'Real & legit Apple Pay / Google...',
        updatedAt: DateTime.now().subtract(const Duration(days: 2)),
        unreadCount: 1,
      ),
    ];
  }
}

final inboxRepositoryProvider = Provider<InboxRepository>((ref) {
  return InboxRepository();
});
