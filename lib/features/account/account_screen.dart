import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/auth/auth_store.dart';
import '../../core/navigation/route_paths.dart';
import '../../core/theme/app_theme.dart';
import '../../data/repositories/user_repository.dart';
import '../../shared/widgets/empty_state.dart';
import '../../shared/widgets/themed_text.dart';
import 'application/profile_providers.dart';

class AccountScreen extends ConsumerWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authControllerProvider);
    final colors = context.appColors;

    return Scaffold(
      backgroundColor: colors.background,
      appBar: AppBar(title: const Text('Account')),
      body: authState.status == AuthStatus.anonymous
          ? _buildAnonymousState(context)
          : _buildProfile(context, ref),
    );
  }

  Widget _buildAnonymousState(BuildContext context) {
    return EmptyState(
      type: EmptyStateType.favorites,
      title: 'Sign in to continue',
      description: 'Access your orders, coupons, and profile settings.',
      actionLabel: 'Sign In',
      onAction: () => context.go(RoutePaths.signIn),
    );
  }

  Widget _buildProfile(BuildContext context, WidgetRef ref) {
    final profileAsync = ref.watch(userProfileProvider);
    final colors = context.appColors;

    return profileAsync.when(
      data: (profile) {
        return ListView(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
          children: [
            _ProfileHeader(profile: profile),
            const SizedBox(height: 20),
            _SectionCard(
              child: Column(
                children: [
                  _AccountTile(
                    icon: Icons.receipt_long_outlined,
                    label: 'My Orders',
                    onTap: () => context.go(RoutePaths.orderList),
                  ),
                  _AccountTile(
                    icon: Icons.local_offer_outlined,
                    label: 'Coupons',
                    onTap: () => context.go(RoutePaths.coupon),
                  ),
                  _AccountTile(
                    icon: Icons.favorite_border,
                    label: 'Favorites',
                    onTap: () => context.go(RoutePaths.favorite),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            _SectionCard(
              child: Column(
                children: [
                  _AccountTile(
                    icon: Icons.location_on_outlined,
                    label: 'Shipping Address',
                    onTap: () => context.go(RoutePaths.addressList),
                  ),
                  _AccountTile(
                    icon: Icons.account_circle_outlined,
                    label: 'Edit Profile',
                    onTap: () => context.go(RoutePaths.profileEdit),
                  ),
                  _AccountTile(
                    icon: Icons.wallet_outlined,
                    label: 'Wallet',
                    onTap: () => context.go(RoutePaths.wallet),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            _SectionCard(
              child: _AccountTile(
                icon: Icons.logout,
                label: 'Sign Out',
                onTap: () => _confirmSignOut(context, ref),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Need help? Contact support from the web or social channels.',
              style: TextStyle(color: colors.textMuted, fontSize: 12),
              textAlign: TextAlign.center,
            ),
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
    final name = profile.nickname?.isNotEmpty == true ? profile.nickname! : 'Member';
    final subtitle = profile.email ?? profile.phone ?? 'Welcome back';

    return _SectionCard(
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: colors.mutedBackground,
            backgroundImage: profile.avatar?.isNotEmpty == true
                ? CachedNetworkImageProvider(profile.avatar!)
                : null,
            child: profile.avatar?.isNotEmpty == true
                ? null
                : Icon(Icons.person_outline, color: colors.textMuted, size: 28),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ThemedText(name, type: ThemedTextType.subtitle),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(color: colors.textMuted, fontSize: 13),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AccountTile extends StatelessWidget {
  const _AccountTile({
    required this.icon,
    required this.label,
    this.onTap,
  });

  final IconData icon;
  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: colors.mutedBackground,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(icon, color: colors.tint, size: 20),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                label,
                style: TextStyle(fontSize: 15, color: colors.text),
              ),
            ),
            Icon(Icons.chevron_right, color: colors.textMuted),
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
