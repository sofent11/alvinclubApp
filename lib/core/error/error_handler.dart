import 'api_error.dart';

const Map<int, String> errorCodeMessages = {
  400: '请求参数有误',
  401: '未登录或登录已过期',
  403: '无权限访问',
  404: '请求的资源不存在',
  429: '请求过于频繁，请稍后再试',
  500: '服务器错误，请稍后重试',
  503: '服务暂时不可用',
  1001: '邮箱格式不正确',
  1002: '验证码已过期',
  1003: '验证码错误',
  1004: '验证码发送失败，请稍后重试',
  1005: '该邮箱尚未注册',
  1006: '账号已被冻结，请联系客服',
  1007: '账号已被禁用',
  1008: '请求过于频繁，请稍后再试',
  1009: 'Google 登录失败，请重试',
  2001: '用户信息不存在',
  2002: '用户信息更新失败',
  2003: '手机号已被使用',
  2004: '邮箱已被使用',
};

enum ErrorType { network, auth, validation, business, unknown }

enum ErrorSeverity { info, warning, error, critical }

class EnhancedError {
  EnhancedError({
    required this.type,
    required this.severity,
    required this.title,
    required this.message,
    required this.retryable,
    this.action,
    this.originalError,
  });

  final ErrorType type;
  final ErrorSeverity severity;
  final String title;
  final String message;
  final String? action;
  final bool retryable;
  final ApiError? originalError;
}

EnhancedError parseApiError(ApiError error) {
  if (error.status == 0) {
    return EnhancedError(
      type: ErrorType.network,
      severity: ErrorSeverity.error,
      title: '网络连接失败',
      message: '请检查网络连接后重试',
      action: '重试',
      retryable: true,
      originalError: error,
    );
  }

  if (error.status == 401) {
    return EnhancedError(
      type: ErrorType.auth,
      severity: ErrorSeverity.warning,
      title: '登录已过期',
      message: '请重新登录',
      action: '去登录',
      retryable: false,
      originalError: error,
    );
  }

  if (error.status == 403) {
    return EnhancedError(
      type: ErrorType.auth,
      severity: ErrorSeverity.warning,
      title: '无权限访问',
      message: '您没有权限执行此操作',
      retryable: false,
      originalError: error,
    );
  }

  if (error.status == 429) {
    return EnhancedError(
      type: ErrorType.business,
      severity: ErrorSeverity.warning,
      title: '操作过于频繁',
      message: '请稍后再试',
      retryable: true,
      originalError: error,
    );
  }

  if (error.status >= 500) {
    return EnhancedError(
      type: ErrorType.unknown,
      severity: ErrorSeverity.error,
      title: '服务器错误',
      message: '服务暂时不可用，请稍后重试',
      action: '重试',
      retryable: true,
      originalError: error,
    );
  }

  return EnhancedError(
    type: ErrorType.business,
    severity: ErrorSeverity.warning,
    title: '操作失败',
    message: error.message.isNotEmpty ? error.message : '请求失败，请重试',
    retryable: true,
    originalError: error,
  );
}

String getUserFriendlyMessage(ApiError error) {
  if (error.message.isNotEmpty) {
    return error.message;
  }

  final statusMessage = errorCodeMessages[error.status];
  if (statusMessage != null) {
    return statusMessage;
  }

  return '操作失败，请稍后重试';
}

EnhancedError handleOtpError(ApiError error) {
  final message = error.message.toLowerCase();

  if (message.contains('expired') || message.contains('过期')) {
    return EnhancedError(
      type: ErrorType.validation,
      severity: ErrorSeverity.warning,
      title: '验证码已过期',
      message: '请重新获取验证码',
      action: '重新获取',
      retryable: true,
      originalError: error,
    );
  }

  if (message.contains('invalid') ||
      message.contains('错误') ||
      message.contains('不正确')) {
    return EnhancedError(
      type: ErrorType.validation,
      severity: ErrorSeverity.warning,
      title: '验证码错误',
      message: '请检查验证码是否正确',
      retryable: false,
      originalError: error,
    );
  }

  if (message.contains('too many') || message.contains('频繁')) {
    return EnhancedError(
      type: ErrorType.business,
      severity: ErrorSeverity.warning,
      title: '请求过于频繁',
      message: '请稍后再试',
      retryable: true,
      originalError: error,
    );
  }

  return parseApiError(error);
}

EnhancedError handleAccountError(ApiError error) {
  final message = error.message.toLowerCase();

  if (message.contains('frozen') || message.contains('冻结')) {
    return EnhancedError(
      type: ErrorType.business,
      severity: ErrorSeverity.critical,
      title: '账号已被冻结',
      message: '如有疑问，请联系客服',
      action: '联系客服',
      retryable: false,
      originalError: error,
    );
  }

  if (message.contains('disabled') || message.contains('禁用')) {
    return EnhancedError(
      type: ErrorType.business,
      severity: ErrorSeverity.critical,
      title: '账号已被禁用',
      message: '如有疑问，请联系客服',
      action: '联系客服',
      retryable: false,
      originalError: error,
    );
  }

  if (message.contains('not found') || message.contains('不存在')) {
    return EnhancedError(
      type: ErrorType.validation,
      severity: ErrorSeverity.warning,
      title: '账号不存在',
      message: '该邮箱尚未注册',
      action: '注册账号',
      retryable: false,
      originalError: error,
    );
  }

  return parseApiError(error);
}

bool isRetryableError(ApiError error) {
  if (error.status == 0) {
    return true;
  }

  if (error.status >= 500) {
    return true;
  }

  if (error.status == 429) {
    return true;
  }

  return false;
}
