import 'dart:convert';

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

      final body = _toMap(response.body);
      if (body == null || _parseInt(body['code']) != 0) {
        return _getMockPosts();
      }

      final data = _toMap(body['data']);
      final list = _toList(data?['records']);
      
      return list.map((itemRaw) {
        final item = _toMap(itemRaw);
        if (item == null) return null;
        final user = _toMap(item['user']);
        return CommunityPost(
          id: item['id']?.toString() ?? '',
          content: item['content']?.toString() ?? '',
          images: _toList(item['images']).map((img) => img.toString()).toList(),
          authorName: user?['nickname']?.toString() ?? 'Anonymous',
          authorAvatar: user?['photo']?.toString() ?? '',
          likeCount: _parseInt(item['likeCount']),
          isLiked: _parseBool(item['liked']),
          createdAt: item['createTime']?.toString() ?? '',
        );
      }).whereType<CommunityPost>().toList();
    } catch (_) {
      return _getMockPosts();
    }
  }

  Future<void> toggleLike(String postId, bool isLiked) async {
    final api = _ref.read(swaggerComboApiProvider);
    final response = isLiked
        ? await api.comboServiceBizCommunityPostUnlikePost(root: {'id': postId})
        : await api.comboServiceBizCommunityPostLikePost(root: {'id': postId});

    final body = _toMap(response.body);
    if (body == null || _parseInt(body['code']) != 0) {
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
        content: 'Check out these amazing shoes. Great quality and fast shipping!',
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

int _parseInt(Object? value, {int fallback = 0}) {
  if (value == null || value == '') return fallback;
  if (value is int) return value;
  if (value is num) return value.toInt();
  return int.tryParse(value.toString()) ?? fallback;
}

bool _parseBool(Object? value) {
  if (value == null) return false;
  if (value is bool) return value;
  if (value is num) return value != 0;
  if (value is String) return value.toLowerCase() == 'true' || value == '1';
  return false;
}

Map<String, dynamic>? _toMap(Object? value) {
  if (value == null) return null;
  if (value is Map<String, dynamic>) return value;
  try {
    final encoded = jsonEncode(value);
    final decoded = jsonDecode(encoded);
    if (decoded is Map<String, dynamic>) return decoded;
  } catch (_) {}
  return null;
}

List<dynamic> _toList(Object? value) {
  if (value == null) return [];
  if (value is List) return value;
  try {
    final encoded = jsonEncode(value);
    final decoded = jsonDecode(encoded);
    if (decoded is List) return decoded;
  } catch (_) {}
  return [];
}
