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
    final endTime = _parseFlashSaleEndTime(activity.endTime);
    final surfaceColor = backgroundColor ?? const Color(0xFFF7F2EE);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0.0, 0.45, 1.0],
          colors: [
            const Color(0xFFFFDCCB).withValues(alpha: 0.9),
            const Color(0xFFFFF2E9).withValues(alpha: 0.5),
            Colors.white,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 10, 0, 6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'serif',
                      color: Colors.black,
                    ),
                    children: [
                      const TextSpan(text: 'Fla'),
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 1.0),
                          child: Icon(
                            Icons.bolt,
                            size: 16,
                            color: const Color(0xFFD32F2F),
                          ),
                        ),
                      ),
                      const TextSpan(text: 'h Sale'),
                    ],
                  ),
                ),
                const SizedBox(width: 6),
                _FlashSaleTimer(endTime: endTime),
                const Spacer(),
                GestureDetector(
                  onTap: onMoreTap,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: surfaceColor,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(18),
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(18),
                      ),
                    ),
                    child: ThemedText(
                      'More',
                      style: TextStyle(fontSize: 12, color: colors.textMuted),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // List
          SizedBox(
            height: 124,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemCount: products.length,
              separatorBuilder: (_, _) => const SizedBox(width: 10),
              itemBuilder: (context, index) {
                final product = products[index];
                return _FlashSaleItem(product: product);
              },
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

DateTime? _parseFlashSaleEndTime(String raw) {
  final trimmed = raw.trim();
  if (trimmed.isEmpty) return null;
  final parsed = DateTime.tryParse(trimmed) ??
      DateTime.tryParse(trimmed.replaceFirst(' ', 'T'));
  if (parsed != null) return parsed;
  final numeric = int.tryParse(trimmed);
  if (numeric == null) return null;
  final millis = numeric > 1000000000000 ? numeric : numeric * 1000;
  return DateTime.fromMillisecondsSinceEpoch(millis);
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
    final now = DateTime.now();
    if (mounted) {
      setState(() {
        _timeLeft = widget.endTime.isAfter(now)
            ? widget.endTime.difference(now)
            : Duration.zero;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final hours = _timeLeft.inHours.toString().padLeft(2, '0');
    final minutes = (_timeLeft.inMinutes % 60).toString().padLeft(2, '0');
    final seconds = (_timeLeft.inSeconds % 60).toString().padLeft(2, '0');

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
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      decoration: BoxDecoration(
        color: const Color(0xFFD32F2F), // Red
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.w600,
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
          fontWeight: FontWeight.w600,
          fontSize: 10,
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
    // Calculate discount if possible, otherwise mock or hide
    // For now assuming we have a sale price and original price.
    // The ProductItem model might check 'price' vs 'originalPrice' or similar.
    // Based on common patterns: price is current, originalPrice is MSRP.

    // Mocking discount calculation for visual matching if not explicit
    final hasDiscount =
        product.originalPrice != null && product.originalPrice! > product.price;
    final discountPercent = hasDiscount
        ? ((product.originalPrice! - product.price) /
                  product.originalPrice! *
                  100)
              .round()
        : 0;

    return GestureDetector(
      onTap: () => context.push(
        RoutePaths.productDetail.replaceFirst(':productCode', product.id),
      ),
      child: SizedBox(
        width: 84,
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
                      bottom: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 4,
                          vertical: 2,
                        ),
                        decoration: const BoxDecoration(
                          color: Color(0xFFD32F2F),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.bolt,
                              size: 11,
                              color: Color(0xFFFFD54F),
                            ),
                            const SizedBox(width: 2),
                            Text(
                              '-$discountPercent%',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 9,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 4),
            Text(
              '${product.currency}${product.price.toStringAsFixed(2)}',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: Colors.black,
              ),
            ),
            if (product.originalPrice != null)
              Text(
                '${product.currency}${product.originalPrice!.toStringAsFixed(2)}',
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  fontSize: 9,
                  color: colors.textMuted,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
