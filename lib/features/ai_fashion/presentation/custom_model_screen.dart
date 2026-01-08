import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../shared/widgets/themed_text.dart';

class CustomModelScreen extends ConsumerWidget {
  const CustomModelScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Model')),
      body: const Center(
        child: ThemedText('Create Custom Model - Coming Soon', type: ThemedTextType.subtitle),
      ),
    );
  }
}
