import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/repositories/community_repository.dart';

final communityPostsProvider = FutureProvider.autoDispose<List<CommunityPost>>((ref) async {
  final repo = ref.watch(communityRepositoryProvider);
  return repo.getPosts();
});

class CommunityNotifier extends StateNotifier<AsyncValue<void>> {
  CommunityNotifier(this._repository, this._ref) : super(const AsyncValue.data(null));

  final CommunityRepository _repository;
  final Ref _ref;

  Future<void> toggleLike(CommunityPost post) async {
    // Optimistic UI could be added here, but keep it simple for now
    try {
      await _repository.toggleLike(post.id, post.isLiked);
      _ref.invalidate(communityPostsProvider);
    } catch (_) {}
  }
}

final communityControllerProvider = StateNotifierProvider.autoDispose<CommunityNotifier, AsyncValue<void>>((ref) {
  return CommunityNotifier(ref.watch(communityRepositoryProvider), ref);
});
