import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../core/theme/app_theme.dart';
import '../../../data/repositories/community_repository.dart';
import '../../../shared/widgets/empty_state.dart';
import '../application/community_providers.dart';

class CommunityScreen extends ConsumerWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postsAsync = ref.watch(communityPostsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Community')),
      body: postsAsync.when(
        data: (posts) {
          if (posts.isEmpty) {
            return const EmptyState(
              type: EmptyStateType.search,
              title: 'No posts yet',
              description: 'Be the first to share something.',
            );
          }

          return MasonryGridView.count(
            padding: const EdgeInsets.all(12),
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            itemCount: posts.length,
            itemBuilder: (context, index) {
              final post = posts[index];
              return _CommunityPostCard(post: post);
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => ErrorState(
          title: 'Unable to load community',
          description: err.toString(),
          onRetry: () => ref.invalidate(communityPostsProvider),
        ),
      ),
    );
  }
}

class _CommunityPostCard extends ConsumerWidget {
  const _CommunityPostCard({required this.post});

  final CommunityPost post;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = context.appColors;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: colors.border),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (post.images.isNotEmpty)
            CachedNetworkImage(
              imageUrl: post.images.first,
              fit: BoxFit.cover,
              placeholder: (context, url) => Container(color: Colors.grey[100]),
            ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  post.content,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 13),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundImage: CachedNetworkImageProvider(
                        post.authorAvatar,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: Text(
                        post.authorName,
                        style: TextStyle(fontSize: 11, color: colors.textMuted),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => ref
                          .read(communityControllerProvider.notifier)
                          .toggleLike(post),
                      child: Row(
                        children: [
                          Icon(
                            post.isLiked
                                ? Icons.favorite
                                : Icons.favorite_border,
                            size: 14,
                            color: post.isLiked ? Colors.red : Colors.grey,
                          ),
                          const SizedBox(width: 2),
                          Text(
                            post.likeCount.toString(),
                            style: const TextStyle(
                              fontSize: 11,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
