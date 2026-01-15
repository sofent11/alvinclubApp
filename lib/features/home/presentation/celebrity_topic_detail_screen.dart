import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../celebrity_profile_mock_data.dart';

class CelebrityTopicDetailScreen extends StatelessWidget {
  final String topicId;

  const CelebrityTopicDetailScreen({super.key, required this.topicId});

  @override
  Widget build(BuildContext context) {
    // In a real app, use topicId to fetch data
    final looks = mockTopicLooks;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => context.pop(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CachedNetworkImage(
              imageUrl: mockCelebrityProfile.avatarUrl,
              imageBuilder: (context, imageProvider) =>
                  CircleAvatar(radius: 16, backgroundImage: imageProvider),
              placeholder: (context, url) =>
                  const CircleAvatar(radius: 16, backgroundColor: Colors.grey),
              errorWidget: (context, url, error) => const CircleAvatar(
                radius: 16,
                child: Icon(Icons.person, size: 16),
              ),
            ),
          ),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.only(bottom: 40),
        itemCount: looks.length,
        separatorBuilder: (context, index) => const SizedBox(height: 32),
        itemBuilder: (context, index) {
          return _TopicLookItem(look: looks[index]);
        },
      ),
    );
  }
}

class _TopicLookItem extends StatelessWidget {
  final TopicLook look;

  const _TopicLookItem({required this.look});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildHeaderImage(context),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                look.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    size: 16,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    look.location,
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: 'AI点评:\n',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4A90E2), // AI Blue
                        height: 1.5,
                      ),
                    ),
                    TextSpan(
                      text: look.aiComment,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF4A90E2), // AI Blue
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                '试试相似风格',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 16),
              ...look.similarProducts.map((p) => _ProductItem(product: p)),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildHeaderImage(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 3 / 4, // Portrait ratio for lookbook
          child: CachedNetworkImage(
            imageUrl: look.imageUrl,
            fit: BoxFit.cover,
            errorWidget: (context, url, error) => Container(
              color: Colors.grey[200],
              child: const Icon(Icons.broken_image, color: Colors.grey),
            ),
          ),
        ),
        if (look.isNew)
          Positioned(
            top: 16,
            right: 16,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: const Color(0xFF4D4DFF), // Blue/Purple badge
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: const [
                  Text(
                    'NEW',
                    style: TextStyle(
                      color: Color(0xFFCCFF00), // Lime green text
                      fontSize: 12,
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    'looks',
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  ),
                ],
              ),
            ),
          ),
        Positioned(
          left: 16,
          bottom: 16,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color(0xFFCCFF00).withValues(alpha: 0.2),
                  const Color(0xFFCCFF00).withValues(alpha: 0.1),
                ],
              ),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: const Color(0xFFCCFF00), width: 1),
            ),
            child: Row(
              children: const [
                Text(
                  'Try On the Look',
                  style: TextStyle(
                    color: Color(0xFFCCFF00),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 4),
                Icon(Icons.auto_awesome, color: Color(0xFFCCFF00), size: 16),
              ],
            ),
          ),
        ),
        Positioned(
          right: 16,
          bottom: 16,
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha: 0.3),
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 1),
            ),
            child: const Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
        // Progress bar at bottom
        Positioned(
          left: 16,
          bottom: 0,
          child: Container(
            width: 40,
            height: 2,
            color: const Color(0xFFCCFF00),
          ),
        ),
      ],
    );
  }
}

class _ProductItem extends StatelessWidget {
  final TopicProduct product;

  const _ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CachedNetworkImage(
              imageUrl: product.imageUrl,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
              errorWidget: (context, url, error) => Container(
                width: 80,
                height: 80,
                color: Colors.grey[200],
                child: const Icon(
                  Icons.broken_image,
                  size: 24,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '品牌: ${product.brandName}',
                  style: const TextStyle(fontSize: 14, color: Colors.black87),
                ),
                const SizedBox(height: 8),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.auto_awesome,
                      size: 14,
                      color: Color(0xFFCCFF00), // Lime green sparkle
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: 'AI点评: ',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                            TextSpan(
                              text: product.aiComment,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: const Color(0xFFCCFF00),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  'Try on',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 2),
                Icon(Icons.auto_awesome, size: 10, color: Colors.black),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
