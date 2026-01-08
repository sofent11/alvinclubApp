import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';

enum SkeletonType { avatar, card, text, list }

class Skeleton extends StatelessWidget {
  const Skeleton({
    super.key,
    required this.type,
    this.width,
    this.height,
    this.baseColor,
    this.highlightColor,
  });

  final SkeletonType type;
  final double? width;
  final double? height;
  final Color? baseColor;
  final Color? highlightColor;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final shimmerBase = baseColor ?? Colors.grey[300]!;
    final shimmerHighlight = highlightColor ?? Colors.grey[100]!;

    final shimmer = LinearGradient(
      colors: [shimmerBase, shimmerHighlight, shimmerBase],
      stops: const [0.1, 0.5, 0.9],
      begin: const Alignment(-1.0, -0.3),
      end: const Alignment(1.0, 0.3),
    );

    return _AnimatedShimmer(
      shimmer: shimmer,
      child: _buildSkeletonContent(colors),
    );
  }

  Widget _buildSkeletonContent(AppColorScheme colors) {
    switch (type) {
      case SkeletonType.avatar:
        return Container(
          width: width ?? 48,
          height: height ?? 48,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            shape: BoxShape.circle,
          ),
        );
      case SkeletonType.card:
        return Container(
          width: width ?? double.infinity,
          height: height ?? 200,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(8),
          ),
        );
      case SkeletonType.text:
        return Container(
          width: width ?? double.infinity,
          height: height ?? 14,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(4),
          ),
        );
      case SkeletonType.list:
        return Row(
          children: [
            const Skeleton(type: SkeletonType.avatar),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Skeleton(
                    type: SkeletonType.text,
                    width: double.infinity,
                    height: 16,
                  ),
                  const SizedBox(height: 8),
                  Skeleton(
                    type: SkeletonType.text,
                    width: double.infinity * 0.6,
                    height: 14,
                  ),
                ],
              ),
            ),
          ],
        );
    }
  }
}

class _AnimatedShimmer extends StatefulWidget {
  const _AnimatedShimmer({required this.shimmer, required this.child});

  final LinearGradient shimmer;
  final Widget child;

  @override
  State<_AnimatedShimmer> createState() => _AnimatedShimmerState();
}

class _AnimatedShimmerState extends State<_AnimatedShimmer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat();
    _animation = Tween<double>(begin: -2.0, end: 2.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOutSine),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return ShaderMask(
          blendMode: BlendMode.srcATop,
          shaderCallback: (bounds) {
            return widget.shimmer.createShader(
              Rect.fromLTWH(
                -bounds.width + _animation.value * bounds.width,
                0,
                bounds.width * 3,
                bounds.height,
              ),
            );
          },
          child: child,
        );
      },
      child: widget.child,
    );
  }
}

class ProductCardSkeleton extends StatelessWidget {
  const ProductCardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(aspectRatio: 1, child: Skeleton(type: SkeletonType.card)),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Skeleton(type: SkeletonType.text, height: 16),
                const SizedBox(height: 8),
                Skeleton(
                  type: SkeletonType.text,
                  width: double.infinity * 0.4,
                  height: 14,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FlashSaleProductSkeleton extends StatelessWidget {
  const FlashSaleProductSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 140, child: const ProductCardSkeleton());
  }
}

class ListItemSkeleton extends StatelessWidget {
  const ListItemSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: const Skeleton(type: SkeletonType.list),
    );
  }
}

class AvatarSkeleton extends StatelessWidget {
  const AvatarSkeleton({super.key, this.size = 48});

  final double size;

  @override
  Widget build(BuildContext context) {
    return Skeleton(type: SkeletonType.avatar, width: size, height: size);
  }
}

class TextLineSkeleton extends StatelessWidget {
  const TextLineSkeleton({super.key, this.width, this.height = 14});

  final double? width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Skeleton(
        type: SkeletonType.text,
        width: width ?? double.infinity,
        height: height,
      ),
    );
  }
}
