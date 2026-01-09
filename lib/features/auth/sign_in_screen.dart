import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/auth/auth_store.dart';
import '../../core/auth/google_auth.dart';
import '../../core/error/api_error.dart';
import '../../core/error/error_handler.dart';
import '../../core/navigation/route_paths.dart';
import '../../core/portal/portals.dart';
import '../../core/theme/app_theme.dart';
import '../../data/repositories/auth_repository.dart';
import '../../shared/widgets/input_field.dart';
import '../../shared/widgets/themed_button.dart';
import '../../shared/widgets/themed_text.dart';
import '../../shared/widgets/themed_view.dart';
import 'portal_selector_modal.dart';

class SignInScreen extends ConsumerStatefulWidget {
  const SignInScreen({super.key});

  @override
  ConsumerState<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends ConsumerState<SignInScreen> {
  final _emailController = TextEditingController();
  final _codeController = TextEditingController();
  Timer? _timer;

  String? _emailError;
  String? _codeError;
  String? _requestId;
  int _otpLength = 6;
  int _remaining = 0;
  bool _isSendingCode = false;
  bool _isVerifying = false;
  bool _isGoogleLoading = false;
  bool _showPortalSelector = false;
  _PendingFormData? _pendingFormData;
  _PendingGoogleData? _pendingGoogleData;

  bool get _isRunning => _remaining > 0;

  String get _countdownLabel {
    if (_isRunning) {
      return '${_remaining}s';
    }
    return _requestId == null ? 'Send code' : 'Resend';
  }

  @override
  void dispose() {
    _timer?.cancel();
    _emailController.dispose();
    _codeController.dispose();
    super.dispose();
  }

  Future<void> _sendCode() async {
    if (_isSendingCode || _isRunning) return;
    final email = _emailController.text.trim();
    final emailError = _validateEmail(email);
    setState(() {
      _emailError = emailError;
    });
    if (emailError != null) {
      return;
    }

    setState(() {
      _isSendingCode = true;
    });

    try {
      final repo = ref.read(authRepositoryProvider);
      final response = await repo.initSignIn(SignInInitPayload(email: email));
      if (!mounted) return;

      setState(() {
        _requestId = 'success';
        _otpLength = response.otpLength;
      });

      _startCountdown(response.expiresIn);

      await _showDialog(
        title: 'Code sent',
        message: 'Check your email for the OTP.',
        actions: [
          TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('OK')),
        ],
      );
    } on ApiError catch (error) {
      final enhanced = handleOtpError(error);
      _showEnhancedError(
        enhanced,
        onAction: enhanced.retryable
            ? () {
                _sendCode();
              }
            : null,
      );
    } catch (error) {
      _showDialog(
        title: 'Request failed',
        message: error.toString(),
        actions: [
          TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('OK')),
        ],
      );
    } finally {
      if (mounted) {
        setState(() {
          _isSendingCode = false;
        });
      }
    }
  }

  void _startCountdown(int seconds) {
    final safeSeconds = seconds <= 0 ? 1 : seconds;
    _timer?.cancel();
    setState(() {
      _remaining = safeSeconds;
    });
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remaining <= 1) {
        timer.cancel();
        setState(() {
          _remaining = 0;
        });
      } else {
        setState(() {
          _remaining -= 1;
        });
      }
    });
  }

  void _resetCountdown() {
    _timer?.cancel();
    setState(() {
      _remaining = 0;
    });
  }

  Future<void> _handleSubmit() async {
    FocusScope.of(context).unfocus();
    final email = _emailController.text.trim();
    final code = _codeController.text.trim();
    final emailError = _validateEmail(email);
    final codeError = _validateCode(code);
    setState(() {
      _emailError = emailError;
      _codeError = codeError;
    });
    if (emailError != null || codeError != null) {
      return;
    }

    setState(() {
      _pendingFormData = _PendingFormData(email: email, code: code);
      _showPortalSelector = true;
    });
  }

  Future<void> _handleGoogleSignIn() async {
    if (_isGoogleLoading) return;
    setState(() {
      _isGoogleLoading = true;
    });

    try {
      final authService = ref.read(googleAuthServiceProvider);
      final result = await authService.signIn();
      if (!mounted) return;
      setState(() {
        _pendingGoogleData = _PendingGoogleData(email: result.email, token: result.idToken);
        _showPortalSelector = true;
      });
    } catch (error) {
      _showDialog(
        title: 'Google sign-in failed',
        message: _formatError(error),
        actions: [
          TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('OK')),
        ],
      );
    } finally {
      if (mounted) {
        setState(() {
          _isGoogleLoading = false;
        });
      }
    }
  }

  Future<void> _handlePortalSelect(Portal portal) async {
    setState(() {
      _showPortalSelector = false;
    });

    final pendingForm = _pendingFormData;
    final pendingGoogle = _pendingGoogleData;
    _pendingFormData = null;
    _pendingGoogleData = null;

    if (pendingForm != null) {
      await _verifySignIn(pendingForm, portal);
    } else if (pendingGoogle != null) {
      await _verifyGoogleSignIn(pendingGoogle, portal);
    }
  }

  void _handlePortalCancel() {
    setState(() {
      _showPortalSelector = false;
      _pendingFormData = null;
      _pendingGoogleData = null;
    });
  }

  Future<void> _verifySignIn(_PendingFormData data, Portal portal) async {
    setState(() {
      _isVerifying = true;
    });

    try {
      final repo = ref.read(authRepositoryProvider);
      final response = await repo.verifySignIn(
        SignInVerifyPayload(
          email: data.email,
          code: data.code,
          requestId: _requestId,
          portalCode: portal.code,
        ),
      );

      final expiresAt = DateTime.now().millisecondsSinceEpoch + response.tokens.expiresIn * 1000;
      final authController = ref.read(authControllerProvider.notifier);
      await authController.setTokens(
        accessToken: response.tokens.accessToken,
        refreshToken: response.tokens.refreshToken,
        expiresAt: expiresAt,
      );
      await authController.setUser(response.user);

      _emailController.clear();
      _codeController.clear();
      _resetCountdown();

      if (mounted) {
        context.go(RoutePaths.home);
      }
    } on ApiError catch (error) {
      final message = error.message.toLowerCase();
      final isOtpError = message.contains('code') || message.contains('otp');
      final enhanced = isOtpError ? handleOtpError(error) : handleAccountError(error);
      _showEnhancedError(
        enhanced,
        onAction: isOtpError
            ? () {
                _sendCode();
              }
            : null,
      );
    } catch (error) {
      _showDialog(
        title: 'Sign-in failed',
        message: _formatError(error),
        actions: [
          TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('OK')),
        ],
      );
    } finally {
      if (mounted) {
        setState(() {
          _isVerifying = false;
        });
      }
    }
  }

  Future<void> _verifyGoogleSignIn(_PendingGoogleData data, Portal portal) async {
    setState(() {
      _isVerifying = true;
    });

    try {
      final repo = ref.read(authRepositoryProvider);
      final response = await repo.verifyGoogleSignIn(
        GoogleSignInPayload(email: data.email, token: data.token, portalCode: portal.code),
      );

      final expiresAt = DateTime.now().millisecondsSinceEpoch + response.tokens.expiresIn * 1000;
      final authController = ref.read(authControllerProvider.notifier);
      await authController.setTokens(
        accessToken: response.tokens.accessToken,
        refreshToken: response.tokens.refreshToken,
        expiresAt: expiresAt,
      );
      await authController.setUser(response.user);

      if (mounted) {
        context.go(RoutePaths.home);
      }
    } on ApiError catch (error) {
      final enhanced = handleAccountError(error);
      _showEnhancedError(enhanced);
    } catch (error) {
      _showDialog(
        title: 'Google sign-in failed',
        message: _formatError(error),
        actions: [
          TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('OK')),
        ],
      );
    } finally {
      if (mounted) {
        setState(() {
          _isVerifying = false;
        });
      }
    }
  }

  Future<void> _showEnhancedError(EnhancedError error, {VoidCallback? onAction}) async {
    final actionLabel = error.action;
    if (actionLabel == null) {
      await _showDialog(
        title: error.title,
        message: error.message,
        actions: [
          TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('OK')),
        ],
      );
      return;
    }

    await _showDialog(
      title: error.title,
      message: error.message,
      actions: [
        TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Cancel')),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            onAction?.call();
          },
          child: Text(actionLabel),
        ),
      ],
    );
  }

  Future<void> _showDialog({
    required String title,
    required String message,
    required List<Widget> actions,
  }) async {
    if (!mounted) {
      return;
    }
    await showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: actions,
      ),
    );
  }

  String? _validateEmail(String value) {
    if (value.isEmpty) {
      return 'Email is required';
    }
    final regex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
    if (!regex.hasMatch(value)) {
      return 'Invalid email';
    }
    return null;
  }

  String? _validateCode(String value) {
    if (value.isEmpty) {
      return 'Code is required';
    }
    if (value.length < _otpLength) {
      return 'Code must be $_otpLength digits';
    }
    return null;
  }

  String _formatError(Object error) {
    final raw = error.toString();
    return raw.replaceFirst('Exception: ', '');
  }

  @override
  Widget build(BuildContext context) {
    final canSendCode = _emailController.text.trim().isNotEmpty;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: ThemedView(
                variant: ThemedViewVariant.plain,
                padding: EdgeInsets.zero,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ThemedText('Sign in', type: ThemedTextType.title),
                      const SizedBox(height: 12),
                      ThemedText(
                        'Use a one-time code or Google OAuth to continue.',
                        style: TextStyle(color: context.appColors.textMuted),
                      ),
                      const SizedBox(height: 24),
                      InputField(
                        label: 'Email',
                        controller: _emailController,
                        placeholder: 'you@company.com',
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        autofillHints: const [AutofillHints.email],
                        errorText: _emailError,
                        onChanged: (_) {
                          setState(() {
                            _emailError = null;
                          });
                        },
                      ),
                      const SizedBox(height: 16),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: InputField(
                              label: 'Code',
                              controller: _codeController,
                              placeholder: 'Enter $_otpLength digits',
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.done,
                              maxLength: _otpLength,
                              errorText: _codeError,
                              onChanged: (_) {
                                setState(() {
                                  _codeError = null;
                                });
                              },
                              onEditingComplete: () {
                                _handleSubmit();
                              },
                            ),
                          ),
                          const SizedBox(width: 12),
                          SizedBox(
                            width: 120,
                            child: ThemedButton(
                              label: _countdownLabel,
                              variant: ThemedButtonVariant.secondary,
                              loading: _isSendingCode,
                              onPressed: (!canSendCode || _isRunning || _isSendingCode)
                                  ? null
                                  : () {
                                      _sendCode();
                                    },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      ThemedText(
                        'The code expires in 60 seconds. You can resend after the timer finishes.',
                        style: TextStyle(color: context.appColors.textMuted, fontSize: 12),
                      ),
                      const SizedBox(height: 20),
                      ThemedButton(
                        label: 'Complete sign in',
                        size: ThemedButtonSize.lg,
                        loading: _isVerifying,
                        onPressed: () {
                          _handleSubmit();
                        },
                      ),
                      const SizedBox(height: 24),
                      Row(
                        children: [
                          Expanded(
                            child: Divider(color: context.appColors.border),
                          ),
                          const SizedBox(width: 12),
                          ThemedText(
                            'Or continue with',
                            style: TextStyle(
                              color: context.appColors.textMuted,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Divider(color: context.appColors.border),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      ThemedButton(
                        label: 'Continue with Google',
                        variant: ThemedButtonVariant.secondary,
                        loading: _isGoogleLoading,
                        onPressed: () {
                          _handleGoogleSignIn();
                        },
                      ),
                      const SizedBox(height: 24),
                      ThemedView(
                        variant: ThemedViewVariant.muted,
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const ThemedText('Tip', type: ThemedTextType.defaultSemiBold),
                            const SizedBox(height: 8),
                            ThemedText(
                              '- You can resend within 60 seconds\n'
                              '- Check spam folder if the code does not arrive\n'
                              '- After login, visit Account to manage your profile',
                              style: TextStyle(color: context.appColors.textMuted, fontSize: 13, height: 1.4),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            PortalSelectorModal(
              visible: _showPortalSelector,
              onSelect: (portal) {
                _handlePortalSelect(portal);
              },
              onCancel: _handlePortalCancel,
            ),
          ],
        ),
      ),
    );
  }
}

class _PendingFormData {
  const _PendingFormData({required this.email, required this.code});

  final String email;
  final String code;
}

class _PendingGoogleData {
  const _PendingGoogleData({required this.email, required this.token});

  final String email;
  final String token;
}
