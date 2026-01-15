import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/auth/auth_store.dart';
import '../../../core/env/env_config.dart';
import '../../../core/theme/app_theme.dart';
import '../../../data/api/api_client.dart';
import '../../../data/api/swagger_client.dart';

class DeveloperSettingsScreen extends ConsumerWidget {
  const DeveloperSettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = context.appColors;
    final currentEnv = EnvConfig.current.appEnv;

    return Scaffold(
      backgroundColor: colors.background,
      appBar: AppBar(
        title: const Text('Developer Settings'),
        backgroundColor: colors.surface,
        foregroundColor: colors.text,
      ),
      body: ListView(
        children: [
          _buildEnvTile(
            context,
            ref,
            title: 'Production',
            subtitle: 'Uses settings from .env file',
            isSelected:
                currentEnv == AppEnvironment.prod ||
                (currentEnv != AppEnvironment.test &&
                    currentEnv != AppEnvironment.dev),
            onTap: () => _switchEnv(context, ref, AppEnvironment.prod),
          ),
          _buildEnvTile(
            context,
            ref,
            title: 'Test Environment',
            subtitle: 'http://decom-api.valleysound.xyz',
            isSelected: currentEnv == AppEnvironment.test,
            onTap: () => _switchEnv(context, ref, AppEnvironment.test),
          ),
          const Divider(),
          ListTile(
            title: Text(
              'Current Base URL',
              style: TextStyle(color: colors.text),
            ),
            subtitle: Text(
              EnvConfig.current.apiBaseUrl,
              style: TextStyle(color: colors.textMuted),
            ),
          ),
          ListTile(
            title: Text(
              'Current Referer',
              style: TextStyle(color: colors.text),
            ),
            subtitle: Text(
              EnvConfig.current.referer,
              style: TextStyle(color: colors.textMuted),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEnvTile(
    BuildContext context,
    WidgetRef ref, {
    required String title,
    required String subtitle,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    final colors = context.appColors;
    return ListTile(
      title: Text(
        title,
        style: TextStyle(color: colors.text, fontWeight: FontWeight.w600),
      ),
      subtitle: Text(subtitle, style: TextStyle(color: colors.textMuted)),
      trailing: isSelected
          ? Icon(Icons.check_circle, color: colors.primary)
          : null,
      onTap: onTap,
    );
  }

  Future<void> _switchEnv(
    BuildContext context,
    WidgetRef ref,
    AppEnvironment targetEnv,
  ) async {
    if (targetEnv == AppEnvironment.test) {
      EnvConfig.switchToTest();
    } else {
      // Reload from .env for Prod/Default, explicitly forcing production load
      await EnvConfig.load(forceProd: true);
    }

    // Clear session and logout
    await ref.read(authControllerProvider.notifier).clearSession();

    // Invalidate API providers to pick up new config
    ref.invalidate(dioProvider);
    ref.invalidate(chopperClientProvider);

    // Invalidate other potential caches if needed
    // ref.invalidate(productRepositoryProvider); // Repositories usually depend on API providers so they should update automatically or be recreated

    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Switched to ${targetEnv.name} environment. Session cleared.',
          ),
        ),
      );

      // Navigate to splash or restart
      // GoRouter refresh might happen due to auth state change
    }
  }
}
