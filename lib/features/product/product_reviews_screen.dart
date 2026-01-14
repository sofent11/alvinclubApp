import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'product_providers.dart';
import 'widgets/review_card.dart';

class ProductReviewsScreen extends ConsumerWidget {
  const ProductReviewsScreen({super.key, required this.productCode});

  final String productCode;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reviewsAsync = ref.watch(fullProductReviewsProvider(productCode));
    final reviewSummaryAsync = ref.watch(
      productReviewSummaryProvider(productCode),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Customer Reviews',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: reviewSummaryAsync.when(
              data: (summary) {
                if (summary == null) return const SizedBox.shrink();
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            summary.averageRating.toStringAsFixed(2),
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Row(
                            children: List.generate(5, (index) {
                              if (index < summary.averageRating.floor()) {
                                return const Icon(
                                  Icons.star,
                                  color: Color(0xFFFF9500),
                                  size: 20,
                                );
                              } else {
                                return const Icon(
                                  Icons.star_border,
                                  color: Color(0xFFFF9500),
                                  size: 20,
                                );
                              }
                            }),
                          ),
                        ],
                      ),
                      if (summary.aiSummary != null &&
                          summary.aiSummary!.isNotEmpty)
                        Container(
                          margin: const EdgeInsets.only(top: 16),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFF7F2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFF5A5F),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.auto_awesome,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      'AI Summary',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                summary.aiSummary!,
                                style: const TextStyle(
                                  color: Color(0xFF5C6074),
                                  fontSize: 13,
                                  height: 1.5,
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                );
              },
              loading: () => const Padding(
                padding: EdgeInsets.all(16),
                child: Center(child: CircularProgressIndicator()),
              ),
              error: (e, s) => const SizedBox.shrink(),
            ),
          ),
          reviewsAsync.when(
            data: (data) {
              if (data.reviews.isEmpty) {
                return const SliverFillRemaining(
                  child: Center(child: Text('No reviews yet')),
                );
              }
              return SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    return ReviewCard(review: data.reviews[index]);
                  }, childCount: data.reviews.length),
                ),
              );
            },
            loading: () => const SliverFillRemaining(
              child: Center(child: CircularProgressIndicator()),
            ),
            error: (err, stack) =>
                SliverFillRemaining(child: Center(child: Text('Error: $err'))),
          ),
        ],
      ),
    );
  }
}
