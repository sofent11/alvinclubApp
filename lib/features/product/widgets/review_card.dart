import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';
import '../../../data/repositories/product_repository.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key, required this.review});

  final ProductReview review;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    // Mask name: L***a
    String maskedName = review.userName;
    if (maskedName.length > 2) {
      maskedName = '${maskedName[0]}***${maskedName[maskedName.length - 1]}';
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: colors.border)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            maskedName,
            style: TextStyle(color: colors.textMuted, fontSize: 12),
          ),
          const SizedBox(height: 4),
          _buildStarRow(review.rating.toDouble(), size: 14),
          const SizedBox(height: 8),
          if (review.content.isNotEmpty)
            Text(
              review.content,
              style: TextStyle(color: colors.text, fontSize: 12),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          const SizedBox(height: 6),
          // Images if any
          if (review.images != null && review.images!.isNotEmpty) ...[
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              children: review.images!
                  .take(3)
                  .map(
                    (img) => ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: CachedNetworkImage(
                        imageUrl: img,
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildStarRow(double rating, {double size = 14}) {
    final fullStars = rating.floor();
    final hasHalf = (rating - fullStars) >= 0.5;
    final total = 5;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(total, (index) {
        if (index < fullStars) {
          return Icon(Icons.star, size: size, color: const Color(0xFFFF9500));
        }
        if (index == fullStars && hasHalf) {
          return Icon(
            Icons.star_half,
            size: size,
            color: const Color(0xFFFF9500),
          );
        }
        return Icon(
          Icons.star_border,
          size: size,
          color: const Color(0xFFFF9500),
        );
      }),
    );
  }
}
