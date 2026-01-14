import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../core/error/api_error.dart';
import '../api/swagger_client.dart';

class FileRepository {
  FileRepository(this._ref);

  final Ref _ref;

  ApiError _createApiError(String message, Object? raw) {
    return ApiError(status: 400, message: message, raw: raw);
  }

  Future<String> uploadLogo(XFile file) async {
    final bytes = await file.readAsBytes();
    final api = _ref.read(swaggerUserApiProvider);

    // Note: The generated chopper client might need adjustment for multipart if it's not handled automatically.
    // UserServiceFileLogoUploadPost takes List<int>? file.
    final response = await api.userServiceFileLogoUploadPost(file: bytes);

    final body = response.body;
    if (body == null || body.data?.url == null) {
      throw _createApiError('上传图片失败', body);
    }

    return body.data!.url!;
  }
}

final fileRepositoryProvider = Provider<FileRepository>((ref) {
  return FileRepository(ref);
});
