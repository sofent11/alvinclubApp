import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/navigation/route_paths.dart';
import '../../../core/theme/app_theme.dart';
import '../../../data/repositories/product_repository.dart';
import '../../../shared/widgets/themed_text.dart';

class FlashSaleSection extends StatelessWidget {
  const FlashSaleSection({
    super.key,
    required this.activity,
    required this.products,
    this.onMoreTap,
    this.backgroundColor,
  });

  final FlashSaleActivity activity;
  final List<ProductItem> products;
  final VoidCallback? onMoreTap;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final endTime = _deriveFlashSaleEndTime(activity, products);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          SizedBox(
            height: 44,
            child: Stack(
              children: [
                // Background Painter
                Positioned.fill(
                  child: CustomPaint(painter: _FlashSaleHeaderPainter()),
                ),
                // Content
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Left Side: Title + Timer
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'serif',
                                  color: Color(0xFF3E2723), // Darker brown
                                ),
                                children: [
                                  const TextSpan(text: 'Fla'),
                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.middle,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 0.0,
                                      ),
                                      child: Icon(
                                        Icons.bolt,
                                        size: 18,
                                        color: const Color(0xFFD32F2F),
                                      ),
                                    ),
                                  ),
                                  const TextSpan(text: 'h Sale'),
                                ],
                              ),
                            ),
                            const SizedBox(width: 8),
                            _FlashSaleTimer(endTime: endTime),
                          ],
                        ),
                      ),
                      // Right Side: More Button
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () =>
                                context.pushNamed(RoutePaths.flashSale),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ThemedText(
                                  'More',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: colors.textMuted,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(width: 2),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 10,
                                  color: colors.textMuted,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // List
          SizedBox(
            height: 128,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.fromLTRB(12, 4, 12, 12),
              itemCount: products.length,
              separatorBuilder: (_, _) => const SizedBox(width: 10),
              itemBuilder: (context, index) {
                final product = products[index];
                return _FlashSaleItem(product: product);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _FlashSaleHeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // Draw white background for the whole area first
    paint.color = Colors.white;
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);

    // Draw the gradient background for the left part (approx 2/3)
    final splitPoint = size.width * 0.72;

    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(splitPoint, 0);
    // Draw a nice curve to separate
    path.cubicTo(
      splitPoint - 20,
      size.height * 0.2,
      splitPoint + 10,
      size.height * 0.8,
      splitPoint - 30,
      size.height,
    );
    path.lineTo(0, size.height);
    path.close();

    final gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        const Color(0xFFFFDCCB).withValues(alpha: 0.6),
        const Color(0xFFFFF2E9).withValues(alpha: 0.8),
      ],
    );

    paint.shader = gradient.createShader(
      Rect.fromLTWH(0, 0, splitPoint, size.height),
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

DateTime? _parseFlashSaleEndTime(String raw) {
  final trimmed = raw.trim();
  if (trimmed.isEmpty) return null;

  bool hasTimezoneInfo(String value) {
    // Treat trailing 'Z' or '+08:00' / '+0800' / '-05:00' / '-0500' as timezone info.
    // Note: We intentionally do NOT use value.contains('-') because dates contain '-'.
    return RegExp(
      r'(Z|[+-]\d{2}:?\d{2})$',
      caseSensitive: false,
    ).hasMatch(value);
  }

  // Try parsing strictly first
  DateTime? parsed = DateTime.tryParse(trimmed);
  // Try replacing space with T for ISO format
  parsed ??= DateTime.tryParse(trimmed.replaceFirst(' ', 'T'));

  if (parsed != null) {
    // If the server returns a datetime without timezone info (common in some APIs),
    // treat it as UTC to keep countdown correct across client locales.
    if (!hasTimezoneInfo(trimmed)) {
      parsed = DateTime.utc(
        parsed.year,
        parsed.month,
        parsed.day,
        parsed.hour,
        parsed.minute,
        parsed.second,
        parsed.millisecond,
        parsed.microsecond,
      );
    }
    return parsed;
  }

  // Try numeric parsing (timestamp)
  final numericInt = int.tryParse(trimmed);
  if (numericInt != null) {
    final millis = numericInt > 100000000000 ? numericInt : numericInt * 1000;
    return DateTime.fromMillisecondsSinceEpoch(millis, isUtc: true);
  }

  // Some endpoints return timestamps as JSON numbers; when serialized to string
  // it can become "1768280400000.0". Handle that too.
  final numericDouble = double.tryParse(trimmed);
  if (numericDouble != null) {
    final millis = numericDouble > 100000000000
        ? numericDouble.toInt()
        : (numericDouble * 1000).toInt();
    return DateTime.fromMillisecondsSinceEpoch(millis, isUtc: true);
  }

  return null;
}

class _FlashSaleTimer extends StatelessWidget {
  const _FlashSaleTimer({required this.endTime});

  final DateTime? endTime;

  @override
  Widget build(BuildContext context) {
    if (endTime == null) {
      return const _StaticSaleTimer();
    }
    return _FlashSaleBlockTimer(endTime: endTime!);
  }
}

class _StaticSaleTimer extends StatelessWidget {
  const _StaticSaleTimer();

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _TimeBlock(text: '00'),
        _Colon(),
        _TimeBlock(text: '00'),
        _Colon(),
        _TimeBlock(text: '00'),
      ],
    );
  }
}

class _FlashSaleBlockTimer extends StatefulWidget {
  const _FlashSaleBlockTimer({required this.endTime});

  final DateTime endTime;

  @override
  State<_FlashSaleBlockTimer> createState() => _FlashSaleBlockTimerState();
}

class _FlashSaleBlockTimerState extends State<_FlashSaleBlockTimer> {
  Timer? _timer;
  Duration _timeLeft = Duration.zero;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void didUpdateWidget(covariant _FlashSaleBlockTimer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.endTime != widget.endTime) {
      _startTimer();
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer?.cancel();
    _updateTime();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _updateTime();
    });
  }

  void _updateTime() {
    final now = DateTime.now().toUtc();
    if (mounted) {
      final endTimeUtc = widget.endTime.isUtc
          ? widget.endTime
          : widget.endTime.toUtc();
      setState(() {
        _timeLeft = endTimeUtc.isAfter(now)
            ? endTimeUtc.difference(now)
            : Duration.zero;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final hours = _timeLeft.inHours.toString().padLeft(2, '0');
    final minutes = (_timeLeft.inMinutes % 60).toString().padLeft(2, '0');
    final seconds = (_timeLeft.inSeconds % 60).toString().padLeft(2, '0');

    if (_timeLeft == Duration.zero) {
      return const _StaticSaleTimer();
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _TimeBlock(text: hours),
        _Colon(),
        _TimeBlock(text: minutes),
        _Colon(),
        _TimeBlock(text: seconds),
      ],
    );
  }
}

class _TimeBlock extends StatelessWidget {
  const _TimeBlock({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
      decoration: BoxDecoration(
        color: const Color(0xFFD32F2F), // Red
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 11,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class _Colon extends StatelessWidget {
  const _Colon();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 2),
      child: Text(
        ':',
        style: TextStyle(
          color: Color(0xFFD32F2F),
          fontWeight: FontWeight.w700,
          fontSize: 11,
        ),
      ),
    );
  }
}

class _FlashSaleItem extends StatelessWidget {
  const _FlashSaleItem({required this.product});

  final ProductItem product;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    // Use server-provided discount expression if available, otherwise calculate
    final discountText =
        product.discount ??
        ((product.originalPrice != null &&
                product.originalPrice! > product.price)
            ? '-${((product.originalPrice! - product.price) / product.originalPrice! * 100).round()}%'
            : null);

    final hasDiscount = discountText != null;

    final currency = _getCurrencySymbol(product.currency);

    return GestureDetector(
      onTap: () => context.pushNamed(
        RoutePaths.flashSale,
        queryParameters: {'productCode': product.id},
      ),
      child: SizedBox(
        width: 86,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                      border: Border.all(color: const Color(0xFFEFE7E1)),
                      image: DecorationImage(
                        image: CachedNetworkImageProvider(product.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  if (hasDiscount)
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 4,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Color(0xFFFFD700), Color(0xFFFF0000)],
                              stops: [0.1, 0.4],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            discountText,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 6),
            Text(
              '$currency${product.price.toStringAsFixed(2)}',
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 13,
                color: Color(0xFF3E2723),
              ),
            ),
            if (product.originalPrice != null)
              Text(
                '$currency${product.originalPrice!.toStringAsFixed(2)}',
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  fontSize: 10,
                  color: colors.textMuted,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

String _getCurrencySymbol(String? currency) {
  if (currency == null || currency.trim().isEmpty) return '¥';
  final normalized = currency.trim().toUpperCase();
  const symbolMap = {
    'CNY': '¥',
    'RMB': '¥',
    'USD': '\$',
    'AUD': 'A\$',
    'CAD': 'C\$',
    'GBP': '£',
    'EUR': '€',
    'JPY': '¥',
    'HKD': 'HK\$',
  };
  return symbolMap[normalized] ?? currency;
}

DateTime? _deriveFlashSaleEndTime(
  FlashSaleActivity activity,
  List<ProductItem> products,
) {
  for (final product in products) {
    final millis = product.flashSaleEndTimeMillis;
    if (millis != null && millis > 0) {
      return DateTime.fromMillisecondsSinceEpoch(millis, isUtc: true);
    }
  }

  return _parseFlashSaleEndTime(activity.endTime);
}
