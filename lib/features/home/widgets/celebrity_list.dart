import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/navigation/route_paths.dart';
import '../../../core/theme/app_theme.dart';
import '../home_mock_data.dart';

class CelebrityListWidget extends StatelessWidget {
  const CelebrityListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 84, // Reduced from 100
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: mockCelebrities.length + 1,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          if (index == mockCelebrities.length) {
            return const _MoreItem();
          }
          final item = mockCelebrities[index];
          return _CelebrityItem(item: item);
        },
      ),
    );
  }
}

class _MoreItem extends StatelessWidget {
  const _MoreItem();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(RoutePaths.celebrityList);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 32,
            height: 52,
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: Colors.white.withValues(alpha: 0.3),
                width: 1,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'M\nO\nR\nE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                    height: 1.0,
                  ),
                ),
                Icon(Icons.arrow_right, color: Colors.white, size: 12),
              ],
            ),
          ),
          const SizedBox(height: 6),
          const Text("", style: TextStyle(fontSize: 11)),
        ],
      ),
    );
  }
}

class _CelebrityItem extends StatelessWidget {
  final Celebrity item;

  const _CelebrityItem({required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 52, // Reduced from 60
          height: 52, // Reduced from 60
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: item.isForYou ? Colors.transparent : Colors.white,
              width: 1.5, // Slightly thinner border
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: item.isForYou
              ? Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFCCFF00),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      'For\nYou',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10, // Reduced from 12
                        fontWeight: FontWeight.bold,
                        height: 1.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              : ClipOval(
                  child: CachedNetworkImage(
                    imageUrl: item.imageUrl,
                    fit: BoxFit.cover,
                    placeholder: (context, url) =>
                        Container(color: Colors.grey[200]),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.person, size: 20),
                  ),
                ),
        ),
        const SizedBox(height: 6), // Reduced from 8
        Text(
          item.name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 11, // Reduced from 12
            fontWeight: FontWeight.w500,
            shadows: [
              Shadow(
                color: Colors.black45,
                offset: Offset(0, 1),
                blurRadius: 2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
