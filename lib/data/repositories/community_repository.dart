import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../api/swagger_client.dart';

class CommunityPost {
  const CommunityPost({
    required this.id,
    required this.content,
    required this.images,
    required this.authorName,
    required this.authorAvatar,
    required this.likeCount,
    required this.isLiked,
    required this.createdAt,
  });

  final String id;
  final String content;
  final List<String> images;
  final String authorName;
  final String authorAvatar;
  final int likeCount;
  final bool isLiked;
  final String createdAt;
}

class CommunityRepository {
  CommunityRepository(this._ref);

  final Ref _ref;

  Future<List<CommunityPost>> getPosts({String? cursor}) async {
    try {
      final api = _ref.read(swaggerComboApiProvider);
      final response = await api.comboServiceBizCommunityPostNoAuthListGet(
        cursor: cursor,
        pageSize: '20',
      );

      final body = response.body;
      if (body == null || body.code != 0) {
        return _getMockPosts();
      }

      final posts = body.data?.posts ?? const [];

      return posts.map((post) {
        return CommunityPost(
          id: (post.postId?.toString().isNotEmpty == true)
              ? post.postId.toString()
              : (post.postCode ?? ''),
          content: post.translatedDescription ?? post.description ?? '',
          images: (post.postImages ?? const [])
              .map((img) => img.toString())
              .toList(),
          authorName: post.posterUserId ?? 'Anonymous',
          authorAvatar: '',
          likeCount: post.likeCount ?? 0,
          isLiked: post.liked ?? false,
          createdAt: post.publishTime?.toIso8601String() ?? '',
        );
      }).toList();
    } catch (_) {
      return _getMockPosts();
    }
  }

  Future<void> toggleLike(String postId, bool isLiked) async {
    final api = _ref.read(swaggerComboApiProvider);
    if (isLiked) {
      final response = await api.comboServiceBizCommunityPostUnlikePost(
        root: {'id': postId},
      );
      final body = response.body;
      if (body == null || body.code != 0) {
        // If fails, we just throw or ignore since it's community
      }
      return;
    }

    final response = await api.comboServiceBizCommunityPostLikePost(
      root: {'id': postId},
    );
    final body = response.body;
    if (body == null || body.code != 0) {
      // If fails, we just throw or ignore since it's community
    }
  }

  List<CommunityPost> _getMockPosts() {
    return [
      CommunityPost(
        id: 'mock-1',
        content: 'Loving my new outfit from Alvin Club! #fashion #w2c',
        images: ['https://picsum.photos/500/800'],
        authorName: 'Fashionista_Jane',
        authorAvatar: 'https://i.pravatar.cc/150?u=jane',
        likeCount: 124,
        isLiked: false,
        createdAt: '2 hours ago',
      ),
      CommunityPost(
        id: 'mock-2',
        content:
            'Check out these amazing shoes. Great quality and fast shipping!',
        images: ['https://picsum.photos/500/500'],
        authorName: 'SneakerHead_Tom',
        authorAvatar: 'https://i.pravatar.cc/150?u=tom',
        likeCount: 89,
        isLiked: true,
        createdAt: '5 hours ago',
      ),
    ];
  }
}

final communityRepositoryProvider = Provider<CommunityRepository>((ref) {
  return CommunityRepository(ref);
});
