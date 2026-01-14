import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../application/inbox_providers.dart';
import 'widgets/inbox_category_tile.dart';

class InboxScreen extends ConsumerWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoriesAsync = ref.watch(inboxCategoriesProvider);

    return Scaffold(
      backgroundColor: Colors.white, // As per design
      appBar: AppBar(
        title: const Text(
          'Inbox',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              // Mark all as read action
            },
            icon: const Icon(
              Icons.cleaning_services_outlined, // Sweep icon
              color: Colors.black,
              size: 20,
            ),
          ),
        ],
      ),
      body: categoriesAsync.when(
        data: (categories) {
          return ListView.builder(
            itemCount: categories.length,
            padding: const EdgeInsets.only(top: 8),
            itemBuilder: (context, index) {
              final category = categories[index];
              return InboxCategoryTile(
                category: category,
                onTap: () {
                  // Navigate to specific message list
                },
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }
}
