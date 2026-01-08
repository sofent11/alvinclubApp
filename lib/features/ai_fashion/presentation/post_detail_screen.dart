import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/navigation/route_paths.dart';
import '../../../shared/widgets/themed_button.dart';
import '../../../shared/widgets/themed_text.dart';
import '../application/ai_fashion_providers.dart';

class PostDetailScreen extends ConsumerWidget {
  const PostDetailScreen({super.key, required this.postId});

  final String postId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postAsync = ref.watch(aiPostDetailProvider(postId));

    return Scaffold(
      appBar: AppBar(title: const Text('Post Detail')),
      body: postAsync.when(
        data: (post) {
          if (post == null) return const Center(child: Text('Post not found'));
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CachedNetworkImage(
                  imageUrl: post.imageUrl,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => AspectRatio(
                    aspectRatio: (post.width != null && post.height != null) 
                        ? post.width! / post.height! 
                        : 1.0,
                    child: Container(color: Colors.grey[200]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ThemedText(post.title, type: ThemedTextType.heading),
                      if (post.prompt != null) ...[
                        const SizedBox(height: 24),
                        const ThemedText('AI Prompt', type: ThemedTextType.defaultSemiBold),
                        const SizedBox(height: 12),
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ThemedText(post.prompt!),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, st) => Center(child: Text(e.toString())),
      ),
      bottomNavigationBar: postAsync.maybeWhen(
        data: (post) => post != null
            ? SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ThemedButton(
                    label: 'Style Me with this Template',
                    onPressed: () {
                      final url = Uri.parse(RoutePaths.fashionStyleMe).replace(queryParameters: {
                        'templateId': post.id,
                        'imageUrl': post.imageUrl,
                        'prompt': post.prompt ?? '',
                      }).toString();
                      context.push(url);
                    },
                  ),
                ),
              )
            : null,
        orElse: () => null,
      ),
    );
  }
}
