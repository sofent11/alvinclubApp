import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/navigation/route_paths.dart';
import '../../core/theme/app_theme.dart';
import '../../data/repositories/product_repository.dart';
import '../../shared/widgets/themed_text.dart';
import 'catalog_providers.dart';

class CategoriesScreen extends ConsumerStatefulWidget {
  const CategoriesScreen({super.key});

  @override
  ConsumerState<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends ConsumerState<CategoriesScreen> {
  String? _selectedId;

  @override
  Widget build(BuildContext context) {
    final categoriesAsync = ref.watch(categoriesProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Categories')),
      body: categoriesAsync.when(
        data: (categories) {
          if (categories.isEmpty) return const Center(child: Text('No categories'));

          // Select first by default
          final currentId = _selectedId ?? categories.first.id;
          final currentCategory = categories.firstWhere(
            (c) => c.id == currentId,
            orElse: () => categories.first,
          );

          return Row(
            children: [
              // Left Sidebar
              Container(
                width: 100,
                color: Colors.grey[100],
                child: ListView.builder(
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final category = categories[index];
                    final isSelected = category.id == currentId;
                    return InkWell(
                      onTap: () {
                        setState(() {
                          _selectedId = category.id;
                        });
                      },
                      child: Container(
                        color: isSelected ? Colors.white : Colors.transparent,
                        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                        child: Column(
                          children: [
                            if (category.iconUrl != null)
                              CachedNetworkImage(
                                imageUrl: category.iconUrl!,
                                width: 32,
                                height: 32,
                                errorWidget: (_, _, _) => const Icon(Icons.category, size: 32),
                              ),
                            const SizedBox(height: 8),
                            Text(
                              category.name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                color: isSelected ? context.appColors.primary : Colors.grey[600],
                                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              // Right Content
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    _CategoryHeader(title: currentCategory.name),
                    const SizedBox(height: 16),
                    if (currentCategory.children != null && currentCategory.children!.isNotEmpty)
                      _SubCategoryGrid(children: currentCategory.children!),
                  ],
                ),
              ),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text('Error: $err')),
      ),
    );
  }
}

class _CategoryHeader extends StatelessWidget {
  const _CategoryHeader({required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ThemedText(title, type: ThemedTextType.subtitle),
        const Spacer(),
        // Maybe "View All" button?
      ],
    );
  }
}

class _SubCategoryGrid extends StatelessWidget {
  const _SubCategoryGrid({required this.children});
  final List<CategoryItem> children;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 0.8,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
      ),
      itemCount: children.length,
      itemBuilder: (context, index) {
        final child = children[index];
        return InkWell(
          onTap: () {
            context.push(
              RoutePaths.categoryDetail.replaceFirst(':id', child.id),
            );
          },
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: child.iconUrl != null
                      ? CachedNetworkImage(
                          imageUrl: child.iconUrl!,
                          fit: BoxFit.contain,
                          errorWidget: (_, _, _) => const Icon(Icons.image_not_supported),
                        )
                      : const Icon(Icons.image, color: Colors.grey),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                child.name,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
        );
      },
    );
  }
}