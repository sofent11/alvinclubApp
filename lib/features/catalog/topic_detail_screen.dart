import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../catalog/category_detail_screen.dart';

class TopicDetailScreen extends ConsumerWidget {
  const TopicDetailScreen({super.key, required this.id, this.title});

  final String id;
  final String? title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Topic usually behaves like a category but might have its own header
    // Reusing CategoryDetailScreen logic for now.
    return CategoryDetailScreen(id: id, title: title ?? 'Topic');
  }
}
