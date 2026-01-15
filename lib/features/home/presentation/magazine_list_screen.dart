import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/navigation/route_paths.dart';
import '../magazine_list_mock_data.dart';

class MagazineListScreen extends StatelessWidget {
  const MagazineListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Group items by month
    final Map<String, List<MagazineIssue>> groupedItems = {};
    for (var item in mockMagazineList) {
      if (!groupedItems.containsKey(item.month)) {
        groupedItems[item.month] = [];
      }
      groupedItems[item.month]!.add(item);
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 20),
          onPressed: () => context.pop(),
        ),
        centerTitle: true,
        title: const Text(
          '往期回顾',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            // Title
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(text: 'Pear-shaped '),
                      TextSpan(
                        text: 'Body Type Outfits',
                        style: TextStyle(
                          backgroundColor: Color(0x80CCFF00), // Lime highlight
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            // Follow button
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  '✓ Followed',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Dynamically build month sections
            ...groupedItems.entries.map((entry) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Month Header
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: entry.key,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'serif',
                            ),
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 3,
                          margin: const EdgeInsets.only(top: 2),
                          color: const Color(0xFFCCFF00).withValues(alpha: 0.5),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Grid for this month
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 12,
                            childAspectRatio: 0.7,
                          ),
                      itemCount: entry.value.length,
                      itemBuilder: (context, index) {
                        final item = entry.value[index];
                        return GestureDetector(
                          onTap: () {
                            context.push(
                              RoutePaths.magazineDetail.replaceFirst(
                                ':id',
                                item.id,
                              ),
                            );
                          },
                          child: _MagazineCoverCard(item: item),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 32),
                ],
              );
            }),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class _MagazineCoverCard extends StatelessWidget {
  final MagazineIssue item;

  const _MagazineCoverCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Grid Background
            CustomPaint(painter: _GridPainter()),
            // Content
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top Tab
                Container(
                  height: 24,
                  margin: const EdgeInsets.only(left: 12, top: 0),
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(4),
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    '梨形今天穿什么',
                    style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 8),
                // "After HOURS" Sticker
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      'After\nHOURS',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        height: 1.0,
                      ),
                    ),
                  ),
                ),
                // Main Image
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CachedNetworkImage(
                      imageUrl: item.imageUrl,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                // Date
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
                  child: Text(
                    item.date,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withValues(alpha: 0.8),
                      fontFamily: 'monospace',
                    ),
                  ),
                ),
              ],
            ),
            // Spiral Binding
            Positioned(
              left: 0,
              top: 0,
              bottom: 0,
              width: 16,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Container(
                    height: 20,
                    alignment: Alignment.center,
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                  );
                },
              ),
            ),
            // Side Tab
            Positioned(
              right: 0,
              top: 40,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 2),
                decoration: const BoxDecoration(
                  color: Color(0xFFCCFF00),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    bottomLeft: Radius.circular(4),
                  ),
                ),
                child: const Icon(
                  Icons.more_vert,
                  size: 12,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _GridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey.withValues(alpha: 0.1)
      ..strokeWidth = 1;

    const step = 15.0;
    for (double x = 0; x < size.width; x += step) {
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), paint);
    }
    for (double y = 0; y < size.height; y += step) {
      canvas.drawLine(Offset(0, y), Offset(size.width, y), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
