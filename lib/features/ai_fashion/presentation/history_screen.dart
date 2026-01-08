import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../shared/widgets/themed_text.dart';

class HistoryScreen extends ConsumerWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fashion History')),
      body: const Center(
        child: ThemedText('Generation History - Coming Soon', type: ThemedTextType.subtitle),
      ),
    );
  }
}
