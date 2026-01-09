import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import '../../../core/navigation/route_paths.dart';
import '../../../core/theme/app_theme.dart';
import '../../../data/repositories/ai_fashion_repository.dart';
import '../../../shared/widgets/empty_state.dart';
import '../../../shared/widgets/themed_text.dart';
import '../application/ai_fashion_providers.dart';

class AiFashionFeedScreen extends ConsumerWidget {
  const AiFashionFeedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedAsync = ref.watch(aiFashionFeedProvider);
    final colors = context.appColors;

    return Scaffold(
      backgroundColor: colors.background,
      appBar: AppBar(
        title: const Text('AI Fashion Feed'),
        actions: [
          IconButton(
            icon: const Icon(Icons.history),
            onPressed: () => context.push(RoutePaths.fashionHistory),
          ),
        ],
      ),
      body: feedAsync.when(
        data: (posts) {
          if (posts.isEmpty) {
            return const EmptyState(
              type: EmptyStateType.search,
              title: 'No fashion posts',
              description: 'Check back later for new looks.',
            );
          }
          return MasonryGridView.count(
            padding: const EdgeInsets.all(8),
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            itemCount: posts.length,
            itemBuilder: (context, index) {
              final post = posts[index];
              return _PostCard(post: post);
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, st) => ErrorState(
          title: 'Unable to load feed',
          description: e.toString(),
          onRetry: () => ref.invalidate(aiFashionFeedProvider),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.push(RoutePaths.fashionStyleMe),
        label: const Text('Style Me'),
        icon: const Icon(Icons.auto_awesome),
        backgroundColor: colors.tint,
        foregroundColor: colors.surface,
      ),
    );
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({required this.post});

  final AiFashionPost post;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(RoutePaths.fashionPost.replaceFirst(':id', post.id)),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: (post.width != null && post.height != null)
                  ? post.width! / post.height!
                  : 0.8,
              child: CachedNetworkImage(
                imageUrl: post.imageUrl,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(color: Colors.grey[200]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ThemedText(
                post.title,
                type: ThemedTextType.defaultSemiBold,
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
