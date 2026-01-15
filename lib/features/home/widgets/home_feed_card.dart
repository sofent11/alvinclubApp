import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../home_mock_data.dart';

class HomeFeedCard extends StatelessWidget {
  final FeedItem item;

  const HomeFeedCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    if (item.type == 'ai_fashion_entry') {
      return _buildAiFashionEntry(context);
    } else if (item.title.contains("What's your style today")) {
      return _buildStyleQuizCard(context);
    } else if (item.type == 'product') {
      return _buildProductCard(context, item);
    } else {
      return _buildPostCard(context, item);
    }
  }

  Widget _buildAiFashionEntry(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10), // Reduced from 12
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10), // Reduced radius
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(6), // Reduced
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.campaign,
              color: Color(0xFFCCFF00),
              size: 14,
            ), // Reduced size
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Star Style',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ), // Reduced
                ),
                Text(
                  'Your feed is updated',
                  style: TextStyle(fontSize: 11, color: Colors.grey), // Reduced
                ),
              ],
            ),
          ),
          const Icon(Icons.chevron_right, color: Colors.grey, size: 18),
        ],
      ),
    );
  }

  Widget _buildStyleQuizCard(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFD0F0FF),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(12), // Reduced from 16
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.format_quote,
            size: 24,
            color: Colors.blueAccent,
          ), // Reduced
          const SizedBox(height: 6),
          RichText(
            text: const TextSpan(
              style: TextStyle(
                fontSize: 18, // Reduced from 22
                fontWeight: FontWeight.bold,
                color: Colors.black,
                height: 1.1,
              ),
              children: [
                TextSpan(text: "What's your\n"),
                TextSpan(
                  text: "style",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.yellow,
                    decorationThickness: 3,
                  ),
                ),
                TextSpan(text: " today?\""),
              ],
            ),
          ),
          const SizedBox(height: 12),
          _buildQuizOption('🍷 Date Night'),
          _buildQuizOption('😎 Casual'),
          _buildQuizOption('🏖 Chic'),
          _buildQuizOption('😊 Effortless'),
        ],
      ),
    );
  }

  Widget _buildQuizOption(String text) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 6), // Reduced
      padding: const EdgeInsets.symmetric(
        vertical: 6,
        horizontal: 12,
      ), // Reduced
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 12,
        ), // Reduced
      ),
    );
  }

  Widget _buildPostCard(BuildContext context, FeedItem item) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              CachedNetworkImage(
                imageUrl: item.imageUrl,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  height: 160, // Reduced from 200 (approx)
                  color: Colors.grey[200],
                ),
                errorWidget: (context, url, error) => Container(
                  height: 160,
                  color: Colors.grey[200],
                  child: const Icon(Icons.image_not_supported),
                ),
              ),
              Positioned(
                bottom: 6,
                right: 6,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 3,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        'Try On',
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.auto_awesome, size: 9),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8), // Reduced
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (item.title.isNotEmpty) ...[
                  Text(
                    item.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 13, // Reduced
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 6),
                ],
                Row(
                  children: [
                    if (item.avatarUrl != null)
                      ClipOval(
                        child: CachedNetworkImage(
                          imageUrl: item.avatarUrl!,
                          width: 16, // Reduced
                          height: 16, // Reduced
                          fit: BoxFit.cover,
                          errorWidget: (_, __, ___) =>
                              const Icon(Icons.person, size: 14),
                        ),
                      ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        item.authorName ?? '',
                        style: const TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const Icon(
                      Icons.favorite,
                      size: 12,
                      color: Colors.redAccent,
                    ),
                    const SizedBox(width: 2),
                    Text(
                      '${item.likes}',
                      style: const TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductCard(BuildContext context, FeedItem item) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              CachedNetworkImage(
                imageUrl: item.imageUrl,
                fit: BoxFit.cover,
                placeholder: (context, url) =>
                    Container(height: 160, color: Colors.grey[200]),
                errorWidget: (context, url, error) => Container(
                  height: 160,
                  color: Colors.grey[200],
                  child: const Icon(Icons.image_not_supported),
                ),
              ),
              Positioned(
                bottom: 6,
                right: 6,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 3,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        'Try On',
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.auto_awesome, size: 9),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                if (item.title.contains('Global')) ...[
                  const SizedBox(height: 4),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 4,
                      vertical: 2,
                    ),
                    color: Colors.red[50],
                    child: const Text(
                      '👺 French Vintage Floral',
                      style: TextStyle(fontSize: 9, color: Colors.red),
                    ),
                  ),
                ],
                const SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      '\$${item.price}',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '\$${item.originalPrice}',
                      style: const TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                        size: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
