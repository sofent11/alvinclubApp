import 'package:dio/dio.dart';

class ApiError {
  ApiError({
    required this.status,
    required this.message,
    required this.raw,
    this.code,
    this.details,
  });

  final int status;
  final String? code;
  final String message;
  final Map<String, dynamic>? details;
  final Object? raw;

  @override
  String toString() {
    final sb = StringBuffer(message);
    if (code != null) {
      sb.write(' (Code: $code)');
    }
    if (details != null && details!.isNotEmpty) {
      sb.write('\nDetails: $details');
    }
    if (raw != null) {
      sb.write('\nCaused by: $raw');
    }
    return sb.toString();
  }
}

ApiError normalizeApiError(Object? error) {
  final fallback = ApiError(status: 0, message: '网络异常，请稍后再试', raw: error);

  if (error == null) {
    return fallback;
  }

  if (error is DioException) {
    final embedded = error.error;
    if (embedded is ApiError) {
      return embedded;
    }
    final response = error.response;
    final status = response?.statusCode ?? 0;
    final data = response?.data;

    String? code;
    String? message;
    Map<String, dynamic>? details;

    if (data is Map<String, dynamic>) {
      code = data['code']?.toString();
      message = data['message']?.toString();
      final detailsValue = data['details'];
      if (detailsValue is Map<String, dynamic>) {
        details = detailsValue;
      }
    }

    return ApiError(
      status: status,
      code: code ?? error.error?.toString(),
      message: message ?? error.message ?? fallback.message,
      details: details,
      raw: error,
    );
  }

  if (error is Exception) {
    return ApiError(
      status: fallback.status,
      message: error.toString(),
      raw: error,
    );
  }

  return fallback;
}
