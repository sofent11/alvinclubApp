import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../shared/widgets/themed_text.dart';

class ModelSettingsScreen extends ConsumerWidget {
  const ModelSettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Model Settings')),
      body: const Center(
        child: ThemedText('Model Settings - Coming Soon', type: ThemedTextType.subtitle),
      ),
    );
  }
}
