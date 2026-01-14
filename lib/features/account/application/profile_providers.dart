import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import '../../../data/repositories/user_repository.dart';
import '../../../data/repositories/file_repository.dart';

final userProfileProvider = FutureProvider.autoDispose<UserProfile>((
  ref,
) async {
  final repo = ref.watch(userRepositoryProvider);
  return repo.getUserProfile();
});

class ProfileNotifier extends StateNotifier<AsyncValue<void>> {
  ProfileNotifier(this._userRepo, this._fileRepo, this._ref)
    : super(const AsyncValue.data(null));

  final UserRepository _userRepo;
  final FileRepository _fileRepo;
  final Ref _ref;

  Future<void> updateProfile({
    String? nickname,
    XFile? avatarFile,
    int? gender,
    String? birthday,
  }) async {
    state = const AsyncValue.loading();
    try {
      String? avatarUrl;
      if (avatarFile != null) {
        avatarUrl = await _fileRepo.uploadLogo(avatarFile);
      }

      await _userRepo.updateUserProfile(
        nickname: nickname,
        photo: avatarUrl,
        gender: gender,
        birthday: birthday,
      );

      state = const AsyncValue.data(null);
      _ref.invalidate(userProfileProvider);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}

final profileControllerProvider =
    StateNotifierProvider.autoDispose<ProfileNotifier, AsyncValue<void>>((ref) {
      return ProfileNotifier(
        ref.watch(userRepositoryProvider),
        ref.watch(fileRepositoryProvider),
        ref,
      );
    });
