import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../data/repositories/product_repository.dart';
import '../data/brand_detail_mock_data.dart';

class BrandDetailScreen extends StatefulWidget {
  const BrandDetailScreen({super.key, required this.id});

  final String id;

  @override
  State<BrandDetailScreen> createState() => _BrandDetailScreenState();
}

class _BrandDetailScreenState extends State<BrandDetailScreen> {
  // For demo purposes, we ignore the ID and just use the mock data
  final data = mockBrandDetail;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // Calculate width to show 2.75 items
    final itemWidth = (screenWidth - 32) / 2.75;
    // Maintain aspect ratio: original 160/220 = ~0.727
    // New height = itemWidth / 0.727
    final itemHeight = itemWidth / (160 / 220);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 20),
          onPressed: () => context.pop(),
        ),
        title: Text(
          data.name,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: SizedBox(
              height: 32,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0xFF4CAF50)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                ),
                child: const Text(
                  '+ 关注', // Follow
                  style: TextStyle(
                    color: Color(0xFF4CAF50),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          // Outfits Section
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                _OutfitRow(
                  height: itemHeight,
                  items: [
                    // First item is Logo
                    _OutfitItem(
                      width: itemWidth,
                      isLogo: true,
                      imageUrl: data.logoUrl,
                      brandName: data.name,
                    ),
                    ...data.outfits
                        .take(2)
                        .map(
                          (e) => _OutfitItem(
                            width: itemWidth,
                            imageUrl: e.imageUrl,
                            showTryOn: true,
                          ),
                        ),
                  ],
                ),
                const SizedBox(height: 12),
                _OutfitRow(
                  height: itemHeight,
                  items: data.outfits
                      .skip(2)
                      .map(
                        (e) => _OutfitItem(
                          width: itemWidth,
                          imageUrl: e.imageUrl,
                          showTryOn: true,
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),

          // Sticky Header
          SliverPersistentHeader(
            pinned: true,
            delegate: _StickyHeaderDelegate(categories: data.categories),
          ),

          // Product Grid
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.65, // Taller for images
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
              ),
              delegate: SliverChildBuilderDelegate((context, index) {
                final product = data.hotItems[index % data.hotItems.length];
                return _BrandProductCard(product: product);
              }, childCount: data.hotItems.length),
            ),
          ),
        ],
      ),
    );
  }
}

class _OutfitRow extends StatelessWidget {
  const _OutfitRow({required this.items, required this.height});

  final List<Widget> items;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemBuilder: (context, index) => items[index],
      ),
    );
  }
}

class _OutfitItem extends StatelessWidget {
  const _OutfitItem({
    required this.width,
    required this.imageUrl,
    this.isLogo = false,
    this.brandName,
    this.showTryOn = false,
  });

  final double width;
  final String imageUrl;
  final bool isLogo;
  final String? brandName;
  final bool showTryOn;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Stack(
        children: [
          // Background
          Container(
            decoration: BoxDecoration(
              color: isLogo ? Colors.white : Colors.grey[100],
              borderRadius: BorderRadius.circular(4),
              border: isLogo ? null : Border.all(color: Colors.grey[200]!),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: isLogo
                  ? Center(
                      child: Text(
                        brandName ?? '',
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Serif',
                        ),
                      ),
                    )
                  : CachedNetworkImage(
                      imageUrl: imageUrl,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                      errorWidget: (_, __, ___) => const Icon(Icons.error),
                    ),
            ),
          ),

          // Try On Button
          if (showTryOn)
            Positioned(
              bottom: 12,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFCCFF00), // Lime green/yellow
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Try On',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 2),
                      Icon(Icons.auto_awesome, size: 12, color: Colors.black),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _StickyHeaderDelegate extends SliverPersistentHeaderDelegate {
  const _StickyHeaderDelegate({required this.categories});

  final List<String> categories;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title "Brands HOT"
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Arial',
                ),
                children: [
                  TextSpan(text: 'Brands '),
                  TextSpan(
                    text: 'HOT',
                    style: TextStyle(color: Color(0xFF4CAF50)),
                  ),
                ],
              ),
            ),
          ),

          // Tabs
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                ...categories.asMap().entries.map((entry) {
                  final index = entry.key;
                  final category = entry.value;
                  final isSelected = index == 0;
                  return Padding(
                    padding: const EdgeInsets.only(right: 24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          category,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: isSelected
                                ? FontWeight.bold
                                : FontWeight.normal,
                            color: isSelected ? Colors.black : Colors.grey[600],
                          ),
                        ),
                        const SizedBox(height: 4),
                        if (isSelected)
                          Container(width: 20, height: 2, color: Colors.black),
                      ],
                    ),
                  );
                }),
                const SizedBox(width: 16),
                const Row(
                  children: [
                    Text(
                      'FILTER',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.filter_list, size: 16),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 100;

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}

class _BrandProductCard extends StatelessWidget {
  const _BrandProductCard({required this.product});

  final ProductItem product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Image Container
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFFF5F5F5),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Center(
              child: CachedNetworkImage(
                imageUrl: product.imageUrl,
                fit: BoxFit.contain,
                errorWidget: (_, __, ___) => const Icon(Icons.broken_image),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          product.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 8),
        Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Try On',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 4),
                Icon(Icons.auto_awesome, size: 12),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
