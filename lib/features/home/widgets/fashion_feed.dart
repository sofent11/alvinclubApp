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
import '../../ai_fashion/application/ai_fashion_providers.dart';

class FashionFeed extends ConsumerWidget {
  const FashionFeed({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = context.appColors;
    final feedAsync = ref.watch(aiFashionFeedProvider);

    return Stack(
      children: [
        feedAsync.when(
          data: (posts) {
            if (posts.isEmpty) {
              return const EmptyState(
                type: EmptyStateType.search,
                title: 'No fashion posts',
                description: 'Check back later for new looks.',
              );
            }
            return MasonryGridView.count(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 80),
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                return _FashionCard(post: post);
              },
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (err, _) => ErrorState(
            title: 'Unable to load feed',
            description: err.toString(),
            onRetry: () => ref.invalidate(aiFashionFeedProvider),
          ),
        ),
        Positioned(
          bottom: 24,
          left: 0,
          right: 0,
          child: Center(
            child: GestureDetector(
              onTap: () => context.push(RoutePaths.fashionStyleMe),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: colors.tint,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.25),
                      blurRadius: 6,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: const ThemedText(
                  'Style Me Today',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _FashionCard extends StatelessWidget {
  const _FashionCard({required this.post});

  final AiFashionPost post;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final ratio =
        (post.width != null && post.height != null && post.height != 0)
        ? post.width! / post.height!
        : 0.75;

    return GestureDetector(
      onTap: () =>
          context.push(RoutePaths.fashionPost.replaceFirst(':id', post.id)),
      child: Container(
        decoration: BoxDecoration(
          color: colors.surface,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.08),
              blurRadius: 4,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: ratio,
              child: CachedNetworkImage(
                imageUrl: post.imageUrl,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(color: colors.muted),
                errorWidget: (context, url, error) =>
                    Container(color: colors.muted),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: ThemedText(
                post.title.isNotEmpty ? post.title : (post.prompt ?? ''),
                maxLines: 2,
                style: const TextStyle(fontSize: 14, height: 20 / 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
