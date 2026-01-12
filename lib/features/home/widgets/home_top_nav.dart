import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../shared/widgets/themed_text.dart';
import '../home_models.dart';

class HomeTopNavBar extends StatefulWidget {
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
  State<HomeTopNavBar> createState() => _HomeTopNavBarState();
}

class _HomeTopNavBarState extends State<HomeTopNavBar> {
  final ScrollController _scrollController = ScrollController();
  final Map<String, GlobalKey> _itemKeys = {};

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(HomeTopNavBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.activeKey != widget.activeKey) {
      _scrollToActive();
    }
  }

  void _scrollToActive() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final key = _itemKeys[widget.activeKey];
      if (key?.currentContext != null && _scrollController.hasClients) {
        Scrollable.ensureVisible(
          key!.currentContext!,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          alignment: 0.5,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.backgroundColor ?? Colors.transparent,
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: widget.items.asMap().entries.map((entry) {
            final index = entry.key;
            final item = entry.value;
            final isActive = item.key == widget.activeKey;
            
            final itemKey = _itemKeys.putIfAbsent(item.key, () => GlobalKey());

            final isIconTab = item.showType?.toLowerCase() == 'icon';
            final hasImageTab =
                isIconTab &&
                ((item.icon?.url.isNotEmpty == true) ||
                    (item.active?.url.isNotEmpty == true));

            final textColor = isActive
                ? Colors.white
                : const Color(0xFF1F1B18).withValues(alpha: 0.90);
            final bgColor = isActive
                ? const Color(0xFF1F1B18)
                : Colors.transparent;

            final imageUrl = isActive
                ? (item.active?.url.isNotEmpty == true
                      ? item.active!.url
                      : item.icon?.url)
                : item.icon?.url;

            return Padding(
              key: itemKey,
              padding: EdgeInsets.only(
                right: index == widget.items.length - 1 ? 0 : 10,
              ),
              child: GestureDetector(
                onTap: () => widget.onItemTap(item),
                child: hasImageTab
                    ? Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: SizedBox(
                          height: 32,
                          child: CachedNetworkImage(
                            imageUrl: imageUrl ?? '',
                            fit: BoxFit.contain,
                            errorWidget: (context, url, error) => ThemedText(
                              item.title,
                              type: ThemedTextType.defaultStyle,
                              style: const TextStyle(
                                color: Color(0xFF1F1B18),
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      )
                    : Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: bgColor,
                          borderRadius: BorderRadius.circular(999),
                        ),
                        child: ThemedText(
                          item.title,
                          type: isActive
                              ? ThemedTextType.title
                              : ThemedTextType.defaultStyle,
                          style: TextStyle(
                            color: textColor,
                            fontSize: 15,
                            fontWeight: isActive
                                ? FontWeight.w600
                                : FontWeight.w500,
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

