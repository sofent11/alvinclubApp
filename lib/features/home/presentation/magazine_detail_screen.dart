import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../magazine_mock_data.dart';

class MagazineDetailScreen extends StatefulWidget {
  final String magazineId;

  const MagazineDetailScreen({super.key, required this.magazineId});

  @override
  State<MagazineDetailScreen> createState() => _MagazineDetailScreenState();
}

class _MagazineDetailScreenState extends State<MagazineDetailScreen> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
    final index = mockMagazineDetails.indexWhere(
      (m) => m.id == widget.magazineId,
    );
    if (index != -1) {
      _currentIndex = index;
      _pageController = PageController(initialPage: index);
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goToPage(int index) {
    if (index < 0 || index >= mockMagazineDetails.length) return;
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE2EBE9), // Muted green-grey background
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 20),
          onPressed: () => context.pop(),
        ),
        centerTitle: true,
        title: const Text(
          '梨形今天穿什么',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFCCFF00),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  '+ Follow',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // Overlapping Tabs Container
          Container(
            height: 50,
            width: double.infinity,
            padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // "ALL" Tab - Backmost
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: _OverlappingTab(
                    text: 'ALL',
                    color: const Color(0xFFF9F9F4),
                    isActive: false,
                    zIndex: 0,
                    width: 80, // Reduced width slightly
                  ),
                ),
                // "Next" Tab - Middle
                Positioned(
                  left: 130, // Reduced offset
                  bottom: 0,
                  child: _OverlappingTab(
                    text: 'Next JAN.3TH',
                    color: const Color(0xFFF5EBEB), // Pinkish tint
                    isActive: false,
                    zIndex: 1,
                    width: 140, // Reduced width
                    onTap: () => _goToPage(_currentIndex + 1),
                  ),
                ),
                // "Previous" Tab - Frontmost
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: _OverlappingTab(
                    text: 'Previous JAN.8TH',
                    color: Colors.white,
                    isActive: true, // Visually dominant
                    zIndex: 2,
                    width: 150, // Reduced width
                    hasShadow: true, // Only the front one has prominent shadow
                    onTap: () => _goToPage(_currentIndex - 1),
                  ),
                ),
              ],
            ),
          ),

          // Main Notebook Content
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
                child: Stack(
                  children: [
                    // Grid Pattern
                    Positioned.fill(child: CustomPaint(painter: GridPainter())),

                    Row(
                      children: [
                        // Spiral Binding
                        SizedBox(
                          width: 40,
                          child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 20,
                            itemBuilder: (context, index) {
                              return Container(
                                height: 40,
                                alignment: Alignment.center,
                                child: Image.network(
                                  'https://cdn-icons-png.flaticon.com/512/56/56828.png',
                                  width: 24,
                                  height: 24,
                                  color: Colors.black87,
                                ),
                              );
                            },
                          ),
                        ),

                        // Pages
                        Expanded(
                          child: PageView.builder(
                            controller: _pageController,
                            physics: const BouncingScrollPhysics(),
                            onPageChanged: (index) {
                              setState(() {
                                _currentIndex = index;
                              });
                            },
                            itemCount: mockMagazineDetails.length,
                            itemBuilder: (context, index) {
                              return _MagazinePage(
                                issue: mockMagazineDetails[index],
                              );
                            },
                          ),
                        ),

                        // Right Side Index Tabs
                        SizedBox(
                          width: 30,
                          child: Column(
                            children: List.generate(
                              mockMagazineDetails.length,
                              (index) {
                                final issue = mockMagazineDetails[index];
                                final isSelected = index == _currentIndex;
                                return GestureDetector(
                                  onTap: () => _goToPage(index),
                                  child: Container(
                                    margin: const EdgeInsets.only(bottom: 4),
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                      horizontal: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      color: isSelected
                                          ? issue.tagColor
                                          : const Color(0xFFEEEEEE),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        bottomLeft: Radius.circular(8),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        RotatedBox(
                                          quarterTurns: 1,
                                          child: Text(
                                            issue.date,
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: isSelected
                                                  ? FontWeight.bold
                                                  : FontWeight.normal,
                                              color: Colors.black87,
                                            ),
                                          ),
                                        ),
                                        if (isSelected) ...[
                                          const SizedBox(height: 4),
                                          RotatedBox(
                                            quarterTurns: 1,
                                            child: Text(
                                              issue.tag,
                                              style: const TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black87,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _OverlappingTab extends StatelessWidget {
  final String text;
  final Color color;
  final bool isActive;
  final int zIndex;
  final double width;
  final bool hasShadow;
  final VoidCallback? onTap;

  const _OverlappingTab({
    required this.text,
    required this.color,
    required this.isActive,
    required this.zIndex,
    required this.width,
    this.hasShadow = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: 40,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          boxShadow: hasShadow
              ? [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 4,
                    offset: const Offset(2, -2),
                  ),
                ]
              : null,
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 13, // Reduced from 15
            fontWeight: FontWeight.w500,
            color: const Color(0xFF5D4037), // Brownish text color from design
            letterSpacing: -0.5,
          ),
        ),
      ),
    );
  }
}

class GridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFD0DCD7)
          .withValues(alpha: 0.5) // Light teal grid lines
      ..strokeWidth = 1;

    const step = 20.0;
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

class _MagazinePage extends StatelessWidget {
  final MagazineIssueDetail issue;

  const _MagazinePage({required this.issue});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      itemCount: issue.looks.length,
      separatorBuilder: (_, __) => const SizedBox(height: 40),
      itemBuilder: (context, index) {
        final look = issue.looks[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Sticker Title Mock
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 2),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  const BoxShadow(color: Colors.black, offset: Offset(2, 2)),
                ],
              ),
              child: const Text(
                'After\nHOURS',
                style: TextStyle(
                  fontFamily: 'monospace',
                  fontWeight: FontWeight.bold,
                  height: 1.0,
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Collage Image (Mocked as single image for now)
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: CachedNetworkImage(
                    imageUrl: look.imageUrl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 400,
                  ),
                ),
                // Try On Button overlay
                Positioned(
                  bottom: 20,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFCCFF00),
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.2),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text(
                            'Try On the Look',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(width: 4),
                          Icon(Icons.auto_awesome, size: 16),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // AI Comment
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.blue.withValues(alpha: 0.1)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.05),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('🤖 ', style: TextStyle(fontSize: 16)),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          fontSize: 13,
                          height: 1.4,
                          color: Colors.black87,
                        ),
                        children: [
                          const TextSpan(
                            text: 'AI点评: ',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(text: look.aiComment),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
