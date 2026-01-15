import 'dart:math' as math;
import 'package:flutter/material.dart';

class BookFlipPage extends StatelessWidget {
  final int index;
  final PageController controller;
  final Widget child;
  final double width;

  const BookFlipPage({
    super.key,
    required this.index,
    required this.controller,
    required this.child,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        double page = 0.0;
        try {
          // If controller is not attached yet (first build), assume page 0 or initialPage
          if (controller.hasClients && controller.position.haveDimensions) {
            page = controller.page ?? 0.0;
          } else {
            page = (controller.initialPage).toDouble();
          }
        } catch (_) {
          // Fallback
        }

        final double delta = index - page;

        // Optimization: Don't animate far away pages
        if (delta.abs() > 1.0) {
          return const SizedBox.shrink();
        }

        // Logic for "Left Page" (Current Page being flipped)
        // delta goes from 0.0 down to -1.0 as we swipe left
        if (delta <= 0.0) {
          // Rotation angle: 0 to -90 degrees (or slightly more)
          // We clamp it to -pi/2 (90 deg) to prevent seeing the back
          final double angle = (delta * math.pi / 2).clamp(-math.pi / 2, 0.0);

          return Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001) // Perspective
              ..rotateY(angle),
            alignment: Alignment.centerLeft, // Pivot at spine
            child: child,
          );
        }
        // Logic for "Right Page" (Next Page entering)
        // delta goes from 1.0 down to 0.0 as we swipe left
        else {
          // Counteract the default slide transition
          // PageView moves this page from x=width to x=0.
          // We want it to stay at x=0 (underneath the flipping page).
          // At delta=1 (start), PageView pos is width. We want 0. Translation: -width.
          // At delta=0 (end), PageView pos is 0. We want 0. Translation: 0.
          // Formula: -delta * width
          return Transform.translate(
            offset: Offset(-delta * width, 0),
            child: child,
          );
        }
      },
      child: child,
    );
  }
}
