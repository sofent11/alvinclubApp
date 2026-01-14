class InboxCategory {
  const InboxCategory({
    required this.id,
    required this.title,
    required this.iconPath, // local asset or url
    required this.backgroundColor,
    this.latestMessage,
    this.unreadCount = 0,
    this.updatedAt,
  });

  final String id;
  final String title;
  final String iconPath;
  final int backgroundColor;
  final String? latestMessage;
  final int unreadCount;
  final DateTime? updatedAt;
}
