import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';
import 'themed_button.dart';
import 'themed_text.dart';

enum EmptyStateType { search, cart, orders, favorites, error, network }

class EmptyState extends StatelessWidget {
  const EmptyState({
    super.key,
    required this.type,
    this.title,
    this.description,
    this.actionLabel,
    this.onAction,
  });

  final EmptyStateType type;
  final String? title;
  final String? description;
  final String? actionLabel;
  final VoidCallback? onAction;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    final defaultContent = switch (type) {
      EmptyStateType.search => (
        icon: Icons.search_off_rounded,
        title: 'No Results Found',
        description:
            'Try adjusting your search or filters to find what you\'re looking for.',
      ),
      EmptyStateType.cart => (
        icon: Icons.shopping_cart_outlined,
        title: 'Your Cart is Empty',
        description:
            'Looks like you haven\'t added anything yet. Start shopping to fill it up!',
      ),
      EmptyStateType.orders => (
        icon: Icons.receipt_long_outlined,
        title: 'No Orders Yet',
        description:
            'You haven\'t placed any orders yet. When you do, they\'ll appear here.',
      ),
      EmptyStateType.favorites => (
        icon: Icons.favorite_border_rounded,
        title: 'No Favorites Yet',
        description:
            'Save items you love by tapping the heart icon. They\'ll appear here.',
      ),
      EmptyStateType.error => (
        icon: Icons.error_outline_rounded,
        title: 'Something Went Wrong',
        description: 'An unexpected error occurred. Please try again.',
      ),
      EmptyStateType.network => (
        icon: Icons.wifi_off_rounded,
        title: 'No Connection',
        description: 'Please check your internet connection and try again.',
      ),
    };

    final icon = defaultContent.icon;
    final displayTitle = title ?? defaultContent.title;
    final displayDescription = description ?? defaultContent.description;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: colors.mutedBackground,
                shape: BoxShape.circle,
              ),
              child: Icon(icon, size: 64, color: colors.textMuted),
            ),
            const SizedBox(height: 24),
            ThemedText(
              displayTitle,
              type: ThemedTextType.defaultSemiBold,
              style: TextStyle(fontSize: 18, color: colors.text),
            ),
            const SizedBox(height: 8),
            Text(
              displayDescription,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: colors.textMuted,
                height: 1.5,
              ),
            ),
            if (actionLabel != null && onAction != null) ...[
              const SizedBox(height: 24),
              ThemedButton(
                label: actionLabel!,
                onPressed: onAction,
                size: ThemedButtonSize.md,
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class EmptySearchState extends StatelessWidget {
  const EmptySearchState({super.key, this.query, this.onClear});

  final String? query;
  final VoidCallback? onClear;

  @override
  Widget build(BuildContext context) {
    return EmptyState(
      type: EmptyStateType.search,
      title: query != null && query!.isNotEmpty
          ? 'No results for "$query"'
          : 'No Results Found',
      description: query != null && query!.isNotEmpty
          ? 'Try different keywords or browse our categories'
          : 'Try searching for something specific',
      actionLabel: onClear != null ? 'Clear Search' : null,
      onAction: onClear,
    );
  }
}

class EmptyCartState extends StatelessWidget {
  const EmptyCartState({super.key, this.onShopNow});

  final VoidCallback? onShopNow;

  @override
  Widget build(BuildContext context) {
    return EmptyState(
      type: EmptyStateType.cart,
      actionLabel: 'Start Shopping',
      onAction: onShopNow,
    );
  }
}

class EmptyOrdersState extends StatelessWidget {
  const EmptyOrdersState({super.key});

  @override
  Widget build(BuildContext context) {
    return const EmptyState(type: EmptyStateType.orders);
  }
}

class EmptyFavoritesState extends StatelessWidget {
  const EmptyFavoritesState({super.key, this.onBrowse});

  final VoidCallback? onBrowse;

  @override
  Widget build(BuildContext context) {
    return EmptyState(
      type: EmptyStateType.favorites,
      actionLabel: 'Browse Products',
      onAction: onBrowse,
    );
  }
}

class ErrorState extends StatelessWidget {
  const ErrorState({super.key, this.title, this.description, this.onRetry});

  final String? title;
  final String? description;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return EmptyState(
      type: EmptyStateType.error,
      title: title,
      description: description,
      actionLabel: onRetry != null ? 'Try Again' : null,
      onAction: onRetry,
    );
  }
}

class NetworkErrorState extends StatelessWidget {
  const NetworkErrorState({super.key, this.onRetry});

  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return EmptyState(
      type: EmptyStateType.network,
      actionLabel: 'Retry',
      onAction: onRetry,
    );
  }
}
