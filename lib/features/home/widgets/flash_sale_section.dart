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
  });

  final FlashSaleActivity activity;
  final List<ProductItem> products;
  final VoidCallback? onMoreTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final endTime = DateTime.tryParse(activity.endTime);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        // Simple subtle gradient to mimic the "glow" or header background
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0.0, 0.3, 1.0],
          colors: [
            const Color(0xFFFFE3D5).withValues(alpha: 0.85),
            const Color(0xFFFFF0E6).withValues(alpha: 0.45),
            Colors.white,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
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
                            size: 20,
                            color: const Color(0xFFD32F2F),
                          ),
                        ),
                      ),
                      const TextSpan(text: 'h Sale'),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                if (endTime != null) _FlashSaleBlockTimer(endTime: endTime),
                const Spacer(),
                GestureDetector(
                  onTap: onMoreTap,
                  child: ThemedText(
                    'More',
                    style: TextStyle(fontSize: 12, color: colors.textMuted),
                  ),
                ),
              ],
            ),
          ),
          // List
          SizedBox(
            height: 140,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemCount: products.length,
              separatorBuilder: (_, _) => const SizedBox(width: 12),
              itemBuilder: (context, index) {
                final product = products[index];
                return _FlashSaleItem(product: product);
              },
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
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
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _Colon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 2),
      child: Text(
        ':',
        style: TextStyle(
          color: Color(0xFFD32F2F),
          fontWeight: FontWeight.bold,
          fontSize: 12,
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
        width: 96,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      border: Border.all(color: const Color(0xFFEFEFEF)),
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
                              size: 12,
                              color: Color(0xFFFFD54F),
                            ),
                            const SizedBox(width: 2),
                            Text(
                              '-$discountPercent%',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 6),
            Text(
              '${product.currency}${product.price.toStringAsFixed(2)}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.black,
              ),
            ),
            if (product.originalPrice != null)
              Text(
                '${product.currency}${product.originalPrice!.toStringAsFixed(2)}',
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
