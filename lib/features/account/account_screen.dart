import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart'; // Add for kDebugMode
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/auth/auth_store.dart';
import '../../core/navigation/route_paths.dart';
import '../../core/theme/app_theme.dart';
import '../../data/repositories/user_repository.dart';
import '../../shared/widgets/empty_state.dart';
import 'application/profile_providers.dart';

class AccountScreen extends ConsumerWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authControllerProvider);
    final colors = context.appColors;

    return Scaffold(
      backgroundColor: colors.background,
      body: SafeArea(
        child: authState.status == AuthStatus.anonymous
            ? _buildAnonymousState(context)
            : _buildProfile(context, ref),
      ),
    );
  }

  Widget _buildAnonymousState(BuildContext context) {
    return EmptyState(
      type: EmptyStateType.favorites,
      title: 'Sign in to continue',
      description: 'Access your orders, coupons, and profile settings.',
      actionLabel: 'Sign In',
      onAction: () => context.push(RoutePaths.signIn),
    );
  }

  Widget _buildProfile(BuildContext context, WidgetRef ref) {
    final profileAsync = ref.watch(userProfileProvider);

    return profileAsync.when(
      data: (profile) {
        return ListView(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
          children: [
            _ProfileHeader(profile: profile),
            const SizedBox(height: 20),
            const _OrdersSection(),
            const SizedBox(height: 16),
            _SectionCard(
              child: _AccountTile(
                icon: Icons.favorite_border,
                label: 'Favorites',
                onTap: () => context.push(RoutePaths.favorite),
              ),
            ),
            const SizedBox(height: 12),
            _SectionCard(
              child: _AccountTile(
                icon: Icons.local_offer_outlined,
                label: 'Coupons',
                onTap: () => context.push(RoutePaths.coupon),
              ),
            ),
            const SizedBox(height: 12),
            _SectionCard(
              child: _AccountTile(
                icon: Icons.monetization_on_outlined,
                label: 'Echooo Coins',
                // TODO: Add route
              ),
            ),
            const SizedBox(height: 12),
            _SectionCard(
              child: _AccountTile(
                icon: Icons.card_giftcard,
                label: 'Gift Card',
                // TODO: Add route
              ),
            ),
            const SizedBox(height: 12),
            _SectionCard(
              child: _AccountTile(
                icon: Icons.location_on_outlined,
                label: 'Addresses',
                onTap: () => context.push(RoutePaths.addressList),
              ),
            ),
            const SizedBox(height: 12),
            _SectionCard(
              child: _AccountTile(
                icon: Icons.headset_mic_outlined,
                label: 'Help Center',
                // TODO: Add route
              ),
            ),
            const SizedBox(height: 12),
            _SectionCard(
              child: _AccountTile(
                icon: Icons.menu_book_outlined,
                label: 'User Guide',
                // TODO: Add route
              ),
            ),
            const SizedBox(height: 12),
            _SectionCard(
              child: _AccountTile(
                icon: Icons.translate,
                label: 'Language',
                subtitle: 'English',
                // TODO: Add route
              ),
            ),
            const SizedBox(height: 12),
            _SectionCard(
              child: _AccountTile(
                icon: Icons.settings_outlined,
                label: 'Settings',
                onTap: () => _openSettings(context, ref),
              ),
            ),
            if (kDebugMode) ...[
              const SizedBox(height: 12),
              _SectionCard(
                child: _AccountTile(
                  icon: Icons.developer_mode,
                  label: 'Developer Settings',
                  onTap: () => context.push(RoutePaths.developerSettings),
                ),
              ),
            ],
          ],
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, _) => ErrorState(
        title: 'Unable to load profile',
        description: err.toString(),
        onRetry: () => ref.invalidate(userProfileProvider),
      ),
    );
  }

  void _openSettings(BuildContext context, WidgetRef ref) {
    // For now, show sign out dialog as part of settings or direct action
    // In real app, navigate to settings screen
    _confirmSignOut(context, ref);
  }

  Future<void> _confirmSignOut(BuildContext context, WidgetRef ref) async {
    final shouldSignOut = await showDialog<bool>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: const Text('Sign out'),
          content: const Text('Do you want to sign out of your account?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(false),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(true),
              child: const Text('Sign out'),
            ),
          ],
        );
      },
    );

    if (shouldSignOut == true) {
      await ref.read(authControllerProvider.notifier).clearSession();
    }
  }
}

class _ProfileHeader extends StatelessWidget {
  const _ProfileHeader({required this.profile});

  final UserProfile profile;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final name = profile.nickname?.isNotEmpty == true
        ? profile.nickname!
        : 'Member';

    return Row(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: colors.mutedBackground,
          backgroundImage: profile.avatar?.isNotEmpty == true
              ? CachedNetworkImageProvider(profile.avatar!)
              : null,
          child: profile.avatar?.isNotEmpty == true
              ? null
              : Icon(Icons.person_outline, color: colors.textMuted, size: 24),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: colors.text,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: colors.surface,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: colors.border),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Placeholder for US Flag. Ideally use an asset or emoji
              const Text('🇺🇸', style: TextStyle(fontSize: 16)),
              const SizedBox(width: 4),
              Text(
                'Switch',
                style: TextStyle(fontSize: 14, color: colors.textMuted),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _OrdersSection extends StatelessWidget {
  const _OrdersSection();

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return _SectionCard(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16, top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Orders',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: colors.text,
                  ),
                ),
                GestureDetector(
                  onTap: () => context.push(RoutePaths.orderList),
                  child: Row(
                    children: [
                      Text(
                        'More',
                        style: TextStyle(fontSize: 13, color: colors.textMuted),
                      ),
                      Icon(
                        Icons.chevron_right,
                        size: 16,
                        color: colors.textMuted,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              _OrderStatusItem(icon: Icons.payment_outlined, label: 'Pending'),
              _OrderStatusItem(
                icon: Icons.inventory_2_outlined,
                label: 'Unshipped',
              ),
              _OrderStatusItem(
                icon: Icons.local_shipping_outlined,
                label: 'Shipped',
              ),
              _OrderStatusItem(
                icon: Icons.assignment_turned_in_outlined,
                label: 'Completed',
              ),
              _OrderStatusItem(
                icon: Icons.assignment_return_outlined,
                label: 'Returns',
              ),
            ],
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

class _OrderStatusItem extends StatelessWidget {
  const _OrderStatusItem({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 26, color: colors.text), // Darker icon color
        const SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 12, color: colors.textMuted)),
      ],
    );
  }
}

class _AccountTile extends StatelessWidget {
  const _AccountTile({
    required this.icon,
    required this.label,
    this.subtitle,
    this.onTap,
  });

  final IconData icon;
  final String label;
  final String? subtitle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          children: [
            Icon(icon, color: colors.text, size: 22),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: TextStyle(fontSize: 15, color: colors.text),
                  ),
                  if (subtitle != null) ...[
                    const SizedBox(height: 2),
                    Text(
                      subtitle!,
                      style: TextStyle(fontSize: 12, color: colors.textMuted),
                    ),
                  ],
                ],
              ),
            ),
            Icon(Icons.chevron_right, color: colors.textMuted, size: 20),
          ],
        ),
      ),
    );
  }
}

class _SectionCard extends StatelessWidget {
  const _SectionCard({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(AppRadius.md),
        border: Border.all(color: colors.border),
      ),
      child: child,
    );
  }
}
