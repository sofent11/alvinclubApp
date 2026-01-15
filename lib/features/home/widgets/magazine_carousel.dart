import 'dart:math' as math;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/navigation/route_paths.dart';
import '../home_mock_data.dart';

class MagazineCarouselWidget extends StatefulWidget {
  const MagazineCarouselWidget({super.key});

  @override
  State<MagazineCarouselWidget> createState() => _MagazineCarouselWidgetState();
}

class _MagazineCarouselWidgetState extends State<MagazineCarouselWidget> {
  int _currentIndex = 0;
  double _dragOffset = 0.0;

  // Helper to calculate the shortest circular distance
  double _getEffectiveOffset(int index, int current, int total) {
    double diff = (index - current).toDouble();
    if (diff > total / 2) diff -= total;
    if (diff < -total / 2) diff += total;
    return diff;
  }

  void _handleDragUpdate(DragUpdateDetails details) {
    setState(() {
      _dragOffset += details.primaryDelta!;
    });
  }

  void _handleDragEnd(DragEndDetails details) {
    final velocity = details.primaryVelocity ?? 0;
    final threshold = 50.0;
    final velocityThreshold = 500.0;

    int nextIndex = _currentIndex;

    if (_dragOffset < -threshold || velocity < -velocityThreshold) {
      // Swiped Left -> Next
      nextIndex = (_currentIndex + 1) % mockMagazines.length;
    } else if (_dragOffset > threshold || velocity > velocityThreshold) {
      // Swiped Right -> Previous
      nextIndex =
          (_currentIndex - 1 + mockMagazines.length) % mockMagazines.length;
    }

    setState(() {
      _currentIndex = nextIndex;
      _dragOffset = 0.0;
    });
  }

  void _onCardTap(int index) {
    if (index == _currentIndex) return;

    final offset = _getEffectiveOffset(
      index,
      _currentIndex,
      mockMagazines.length,
    );

    // Logic from React: Smart click navigation
    if (offset == 1 || offset == -4) {
      // Right neighbor
      setState(() {
        _currentIndex = (_currentIndex + 1) % mockMagazines.length;
        _dragOffset = 0.0;
      });
    } else if (offset == -1 || offset == 4) {
      // Left neighbor
      setState(() {
        _currentIndex =
            (_currentIndex - 1 + mockMagazines.length) % mockMagazines.length;
        _dragOffset = 0.0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Calculate layout properties for all items
    final layoutItems = <_CardLayoutProps>[];

    for (int i = 0; i < mockMagazines.length; i++) {
      final baseOffset = _getEffectiveOffset(
        i,
        _currentIndex,
        mockMagazines.length,
      );

      final dragFactor = _dragOffset / 200.0;
      final totalOffset = baseOffset + dragFactor;
      final absOffset = totalOffset.abs();

      // Visibility check (optimization)
      if (absOffset > 3.0) continue;

      // React Style Logic:
      // const zIndex = 50 - absOffset;
      // const scale = 1 - (absOffset * 0.05);
      // const xOffset = offset * 10;
      // const rotation = offset * 7; (degrees)

      // Flutter Translation:
      final zIndex = 50 - absOffset.round();
      final scale = (1.0 - (absOffset * 0.1)).clamp(
        0.0,
        1.0,
      ); // Slightly more aggressive scale for mobile
      final dx = totalOffset * 40.0; // Spread horizontally
      final rotation =
          totalOffset * 0.15; // Radians. 0.15rad approx 8.5 degrees

      layoutItems.add(
        _CardLayoutProps(
          index: i,
          zIndex: zIndex,
          scale: scale,
          dx: dx,
          rotation: rotation,
          isCurrent: i == _currentIndex,
        ),
      );
    }

    // Sort by Z-Index (Painter's Algorithm: lowest Z first)
    layoutItems.sort((a, b) => a.zIndex.compareTo(b.zIndex));

    return SizedBox(
      height: 380, // Container Height
      child: GestureDetector(
        onHorizontalDragUpdate: _handleDragUpdate,
        onHorizontalDragEnd: _handleDragEnd,
        // Make the hit area cover the whole widget
        behavior: HitTestBehavior.translucent,
        child: Stack(
          alignment: Alignment.center,
          children: layoutItems.map((props) {
            final item = mockMagazines[props.index];
            return AnimatedPositioned(
              key: ValueKey(item.id), // CRITICAL: Use Key to preserve state
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOutCubic,
              child: IgnorePointer(
                ignoring:
                    !props.isCurrent &&
                    props.scale < 0.8, // Only clickable if reasonably visible
                child: _AnimatedCard(
                  props: props,
                  item: item,
                  onTap: () => _onCardTap(props.index),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class _CardLayoutProps {
  final int index;
  final int zIndex;
  final double scale;
  final double dx;
  final double rotation;
  final bool isCurrent;

  _CardLayoutProps({
    required this.index,
    required this.zIndex,
    required this.scale,
    required this.dx,
    required this.rotation,
    required this.isCurrent,
  });
}

class _AnimatedCard extends StatelessWidget {
  final _CardLayoutProps props;
  final Magazine item;
  final VoidCallback onTap;

  const _AnimatedCard({
    required this.props,
    required this.item,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400), // Spring-like duration
      curve: Curves.easeOutBack, // Bouncy finish like spring
      transform: Matrix4.identity()
        ..translate(props.dx, 0.0)
        ..scale(props.scale)
        ..rotateZ(props.rotation),
      transformAlignment: Alignment.bottomCenter, // Fan origin
      child: GestureDetector(
        onTap: () {
          if (props.isCurrent) {
            context.push(
              RoutePaths.magazineDetail.replaceFirst(':id', item.id),
            );
          } else {
            onTap();
          }
        },
        child: Container(
          width: 260, // Fixed Card Width
          height: 340, // Fixed Card Height
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.15),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          clipBehavior: Clip.antiAlias,
          child: Stack(
            fit: StackFit.expand,
            children: [
              CachedNetworkImage(
                imageUrl: item.imageUrl,
                fit: BoxFit.cover,
                placeholder: (context, url) =>
                    Container(color: Colors.grey[200]),
              ),
              // Gradient Overlay
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                height: 120,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withValues(alpha: 0.6),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
              // Text Content
              Positioned(
                bottom: 20,
                left: 16,
                right: 16,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      item.subtitle,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      item.title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'serif',
                        height: 1.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
