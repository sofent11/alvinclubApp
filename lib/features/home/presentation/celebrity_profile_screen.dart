import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/navigation/route_paths.dart';
import '../celebrity_profile_mock_data.dart';

class CelebrityProfileScreen extends StatelessWidget {
  final String celebrityId;

  const CelebrityProfileScreen({super.key, required this.celebrityId});

  @override
  Widget build(BuildContext context) {
    // In a real app, we would fetch data using celebrityId
    final profile = mockCelebrityProfile;

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          _buildHeader(context, profile),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 24,
                crossAxisSpacing: 12,
                childAspectRatio: 0.58, // Adjusted for portrait card ratio
              ),
              delegate: SliverChildBuilderDelegate((context, index) {
                return _CelebrityPostCard(post: mockCelebrityPosts[index]);
              }, childCount: mockCelebrityPosts.length),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 40)),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context, CelebrityProfile profile) {
    return SliverAppBar(
      expandedHeight: 500,
      pinned: false,
      stretch: true,
      backgroundColor: Colors.black,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
        onPressed: () => context.pop(),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            CachedNetworkImage(
              imageUrl: profile.headerImageUrl,
              fit: BoxFit.cover,
              errorWidget: (context, url, error) => Container(
                color: Colors.grey[900],
                child: const Icon(Icons.broken_image, color: Colors.white54),
              ),
            ),
            // Gradient overlay for text readability
            const DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black12, Colors.transparent, Colors.black54],
                  stops: [0.0, 0.6, 1.0],
                ),
              ),
            ),
            Positioned(
              right: 16,
              top: 0,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                        child: CachedNetworkImage(
                          imageUrl: profile.avatarUrl,
                          imageBuilder: (context, imageProvider) =>
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: imageProvider,
                              ),
                          placeholder: (context, url) => const CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.grey,
                          ),
                          errorWidget: (context, url, error) =>
                              const CircleAvatar(
                                radius: 20,
                                child: Icon(Icons.person),
                              ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(
                            0xFFCCFF00,
                          ), // Lime green/yellow from design
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text(
                          '+ 关注',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 16,
              bottom: 40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    profile.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.w700,
                      height: 1.0,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    profile.subtitle,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CelebrityPostCard extends StatelessWidget {
  final CelebrityPost post;

  const _CelebrityPostCard({required this.post});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(
          RoutePaths.celebrityTopicDetail,
          pathParameters: {'id': post.id},
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: CachedNetworkImage(
                    imageUrl: post.imageUrl,
                    fit: BoxFit.cover,
                    errorWidget: (context, url, error) => Container(
                      color: Colors.grey[200],
                      child: const Icon(Icons.broken_image, color: Colors.grey),
                    ),
                  ),
                ),
                if (post.hasTryOn)
                  Positioned(
                    right: 12,
                    bottom: 12,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.8),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text(
                            'Try On',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 4),
                          Icon(
                            Icons.auto_awesome,
                            size: 12,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Text(
            post.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w500,
              height: 1.2,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              CachedNetworkImage(
                imageUrl: post.authorAvatarUrl,
                imageBuilder: (context, imageProvider) =>
                    CircleAvatar(radius: 10, backgroundImage: imageProvider),
                placeholder: (context, url) => const CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.grey,
                ),
                errorWidget: (context, url, error) => const CircleAvatar(
                  radius: 10,
                  child: Icon(Icons.person, size: 12),
                ),
              ),
              const SizedBox(width: 6),
              Expanded(
                child: Text(
                  post.authorName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.grey[600], fontSize: 12),
                ),
              ),
              Icon(Icons.favorite, size: 14, color: const Color(0xFFFF6B81)),
              const SizedBox(width: 4),
              Text(
                post.likes.toString(),
                style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
