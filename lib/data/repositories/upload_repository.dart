import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../api/api_client.dart';
import '../../core/env/env_config.dart';
import '../../core/error/api_error.dart';

class UploadRepository {
  UploadRepository(this._ref);

  final Ref _ref;

  Future<String> uploadFile(String filePath) async {
    final dio = _ref.read(dioProvider);
    final file = File(filePath);
    final fileName = filePath.split('/').last;

    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(filePath, filename: fileName),
      'staticPath': 'false',
    });

    final base = EnvConfig.current.uploadPrefix.replaceAll(RegExp(r'/+$'), '');
    final url = '$base/proxy-upload/gcp-image';

    try {
      final response = await dio.post(
        url,
        data: formData,
        options: Options(headers: {'Content-Type': 'multipart/form-data'}),
      );

      final body = response.data;
      String? innerUrl;

      if (body is Map<String, dynamic>) {
        if (body['data'] is Map && body['data']['url'] is String) {
          innerUrl = body['data']['url'];
        } else if (body['data'] is String) {
          innerUrl = body['data'];
        } else if (body['url'] is String) {
          innerUrl = body['url'];
        }
      }

      if (innerUrl == null || innerUrl.isEmpty) {
        throw ApiError(
          status: 400,
          message: 'Upload returned empty URL',
          raw: response.data,
        );
      }

      if (innerUrl.startsWith('http')) {
        return innerUrl;
      } else {
        final normalizedInner = innerUrl.startsWith('/')
            ? innerUrl.substring(1)
            : innerUrl;
        return 'https://cdn.cn2u.xyz/$normalizedInner';
      }
    } catch (e) {
      if (e is DioException && e.error is ApiError) {
        rethrow;
      }
      throw ApiError(
        status: 400,
        message: 'Upload Failed: ${e.toString()}',
        raw: e,
      );
    }
  }
}

final uploadRepositoryProvider = Provider<UploadRepository>((ref) {
  return UploadRepository(ref);
});
