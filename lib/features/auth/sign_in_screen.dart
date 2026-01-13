import 'dart:async';

import 'package:flutter/gestures.dart';
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
import 'portal_selector_modal.dart';

enum SignInStep { email, code }

class SignInScreen extends ConsumerStatefulWidget {
  const SignInScreen({super.key});

  @override
  ConsumerState<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends ConsumerState<SignInScreen> {
  final _emailController = TextEditingController();
  final _codeController = TextEditingController();
  Timer? _timer;

  SignInStep _step = SignInStep.email;

  String? _emailError;
  String? _codeError;
  String? _requestId;
  int _otpLength = 6;
  int _remaining = 0;
  bool _isSendingCode = false;
  bool _isVerifying = false;
  bool _isGoogleLoading = false;
  bool _showPortalSelector = false;

  bool _agreedToTerms = false;
  bool _agreedToMarketing = false;

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

    // Validate agreements first
    if (!_agreedToTerms) {
      _showDialog(
        title: 'Agreement Required',
        message:
            'Please agree to the User Guide, Service Agreement and Privacy Policy to continue.',
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      );
      return;
    }

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
        _step = SignInStep.code;
      });

      _startCountdown(response.expiresIn);

      // Auto focus code input?
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
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
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
        _pendingGoogleData = _PendingGoogleData(
          email: result.email,
          token: result.idToken,
        );
        _showPortalSelector = true;
      });
    } catch (error) {
      _showDialog(
        title: 'Google sign-in failed',
        message: _formatError(error),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
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

      final expiresAt =
          DateTime.now().millisecondsSinceEpoch +
          response.tokens.expiresIn * 1000;
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
      final enhanced = isOtpError
          ? handleOtpError(error)
          : handleAccountError(error);
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
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
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

  Future<void> _verifyGoogleSignIn(
    _PendingGoogleData data,
    Portal portal,
  ) async {
    setState(() {
      _isVerifying = true;
    });

    try {
      final repo = ref.read(authRepositoryProvider);
      final response = await repo.verifyGoogleSignIn(
        GoogleSignInPayload(
          email: data.email,
          token: data.token,
          portalCode: portal.code,
        ),
      );

      final expiresAt =
          DateTime.now().millisecondsSinceEpoch +
          response.tokens.expiresIn * 1000;
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
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
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

  Future<void> _showEnhancedError(
    EnhancedError error, {
    VoidCallback? onAction,
  }) async {
    final actionLabel = error.action;
    if (actionLabel == null) {
      await _showDialog(
        title: error.title,
        message: error.message,
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      );
      return;
    }

    await _showDialog(
      title: error.title,
      message: error.message,
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
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

  void _openWeb(String path) {
    // Construct the full URL
    // Privacy: guide/privacy-policy/?lang=en_US&portalCode=GB
    // Terms: guide/terms-of-use/?lang=en_US&portalCode=GB
    // FAQ: guide/faq/?lang=en_US&portalCode=GB
    const baseUrl = 'https://www.alvinclub.ca';
    final url = '$baseUrl$path&lang=en_US&portalCode=GB';

    context.pushNamed(
      RoutePaths.webview,
      queryParameters: {'url': url, 'title': 'Agreement'},
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    // Logo Widget
    final logoWidget = Column(
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            color: const Color(0xFF8B5CF6), // Purple
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Icon(
            Icons.checkroom, // Fashion/Shopping related icon
            color: Colors.white,
            size: 32,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          'Handpicked Brands &\nBest Savings',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF8B5CF6), // Purple text
            height: 1.2,
          ),
        ),
      ],
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            if (context.canPop()) {
              context.pop();
            } else {
              context.go(RoutePaths.home);
            }
          },
        ),
      ),
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(height: 20),
                        logoWidget,
                        const SizedBox(height: 48),

                        // Form
                        if (_step == SignInStep.email) ...[
                          InputField(
                            label:
                                '', // Hidden label as per design (or just placeholder)
                            controller: _emailController,
                            placeholder: 'Please input the email address',
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.done,
                            autofillHints: const [AutofillHints.email],
                            errorText: _emailError,
                            onChanged: (_) {
                              setState(() {
                                _emailError = null;
                              });
                            },
                          ),
                          const SizedBox(height: 24),
                          ThemedButton(
                            label: 'Verify and log in',
                            size: ThemedButtonSize.lg,
                            loading: _isSendingCode,
                            // Design shows purple button
                            variant: ThemedButtonVariant.primary,
                            onPressed: () {
                              _sendCode();
                            },
                          ),
                          const SizedBox(height: 20),

                          // Checkboxes
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 24,
                                height: 24,
                                child: Checkbox(
                                  value: _agreedToTerms,
                                  activeColor: const Color(0xFF8B5CF6),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  onChanged: (val) {
                                    setState(
                                      () => _agreedToTerms = val ?? false,
                                    );
                                  },
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      color: colors.textMuted,
                                      fontSize: 13,
                                      height: 1.4,
                                    ),
                                    children: [
                                      const TextSpan(
                                        text: 'Have read and agreed to the ',
                                      ),
                                      TextSpan(
                                        text: 'User Guide',
                                        style: TextStyle(
                                          color: const Color(0xFF3B82F6),
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () =>
                                              _openWeb('/guide/faq/?'),
                                      ),
                                      const TextSpan(text: ', '),
                                      TextSpan(
                                        text: 'Service Agreement',
                                        style: TextStyle(
                                          color: const Color(0xFF3B82F6),
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () =>
                                              _openWeb('/guide/terms-of-use/?'),
                                      ),
                                      const TextSpan(text: ' and '),
                                      TextSpan(
                                        text: 'Privacy Policy',
                                        style: TextStyle(
                                          color: const Color(0xFF3B82F6),
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () => _openWeb(
                                            '/guide/privacy-policy/?',
                                          ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 24,
                                height: 24,
                                child: Radio(
                                  value: true,
                                  groupValue: _agreedToMarketing ? true : null,
                                  activeColor: const Color(0xFF8B5CF6),
                                  toggleable: true,
                                  onChanged: (val) {
                                    setState(
                                      () => _agreedToMarketing =
                                          !_agreedToMarketing,
                                    );
                                  },
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  'I agree to receive order and shipping notifications, as well as promotional emails from Alvin\'s Club.',
                                  style: TextStyle(
                                    color: colors.textMuted,
                                    fontSize: 13,
                                    height: 1.4,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ] else ...[
                          // Step 2: Code
                          Text(
                            'Enter code sent to ${_emailController.text}',
                            style: TextStyle(
                              color: colors.textMuted,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 24),
                          InputField(
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
                          const SizedBox(height: 24),
                          ThemedButton(
                            label: 'Login',
                            size: ThemedButtonSize.lg,
                            loading: _isVerifying,
                            onPressed: () {
                              _handleSubmit();
                            },
                          ),
                          const SizedBox(height: 16),
                          TextButton(
                            onPressed: _isRunning ? null : _sendCode,
                            child: Text(_countdownLabel),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                _step = SignInStep.email;
                                _codeController.clear();
                              });
                            },
                            child: const Text('Change Email'),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),

                // Footer
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(child: Divider(color: colors.border)),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              'Login with other methods',
                              style: TextStyle(
                                color: Color(0xFF9CA3AF),
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Expanded(child: Divider(color: colors.border)),
                        ],
                      ),
                      const SizedBox(height: 24),
                      // Styled like Apple button but using Google logic for now
                      // The user image shows Apple. I'll stick to Google but make it outlined black
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: OutlinedButton.icon(
                          onPressed: _handleGoogleSignIn,
                          icon: _isGoogleLoading
                              ? const SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                  ),
                                )
                              : const Icon(
                                  Icons.g_mobiledata,
                                  size: 28,
                                ), // Using Google icon
                          label: Text(
                            _isGoogleLoading
                                ? 'Loading...'
                                : 'Continue with Google',
                          ),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.black,
                            side: const BorderSide(color: Colors.black),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                25,
                              ), // Pill shape
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
