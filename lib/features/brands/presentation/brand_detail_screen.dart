import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

import '../../../data/repositories/product_repository.dart';
import '../data/brand_detail_mock_data.dart';

class BrandDetailScreen extends StatefulWidget {
  const BrandDetailScreen({super.key, required this.id});

  final String id;

  @override
  State<BrandDetailScreen> createState() => _BrandDetailScreenState();
}

class _BrandDetailScreenState extends State<BrandDetailScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final data = mockBrandDetail;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            // 1. Header Image & Navigation
            SliverToBoxAdapter(child: _BrandHeader(data: data)),

            // 2. Featured Looks (3D Carousel)
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 24),
                child: _FeaturedLooksCarousel(),
              ),
            ),

            // 3. Pinned Tab Bar
            SliverPersistentHeader(
              pinned: true,
              delegate: _StickyTabBarDelegate(tabController: _tabController),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: [
            _LookTabContent(outfits: data.outfits),
            _ShopTabContent(products: data.hotItems),
          ],
        ),
      ),
    );
  }
}

// -----------------------------------------------------------------------------
// 1. Brand Header
// -----------------------------------------------------------------------------
class _BrandHeader extends StatelessWidget {
  const _BrandHeader({required this.data});

  final BrandDetailData data;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Hero Image
        AspectRatio(
          aspectRatio: 375 / 220, // Reduced height (was 375/300)
          child: CachedNetworkImage(
            imageUrl: data.bannerUrl.isNotEmpty
                ? data.bannerUrl
                : data.outfits.first.imageUrl,
            fit: BoxFit.cover,
            errorWidget: (context, url, error) =>
                Container(color: Colors.grey[200]),
          ),
        ),

        // Gradient Overlay
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withValues(alpha: 0.3),
                  Colors.transparent,
                  Colors.black.withValues(alpha: 0.6),
                ],
              ),
            ),
          ),
        ),

        // Navigation Bar (Back Button)
        Positioned(
          top: MediaQuery.of(context).padding.top,
          left: 16,
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 20,
            ),
            onPressed: () => context.pop(),
          ),
        ),

        // Brand Logo & Name (Bottom Left)
        Positioned(
          left: 16,
          bottom: 16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo Circle
              Container(
                width: 40, // Reduced from 48
                height: 40, // Reduced from 48
                margin: const EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 1.5),
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(data.logoUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Brand Name
              Text(
                data.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20, // Reduced from 24
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
        ),

        // Follow Button (Top Right)
        Positioned(
          top: MediaQuery.of(context).padding.top + 8,
          right: 16,
          child: Container(
            height: 28, // Reduced from 32
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ), // Reduced horizontal padding
            decoration: BoxDecoration(
              color: const Color(0xFFCCFF00), // Lime Green
              borderRadius: BorderRadius.circular(14),
            ),
            alignment: Alignment.center,
            child: const Text(
              '+ Follow',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12, // Reduced from 14
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// -----------------------------------------------------------------------------
// 2. Featured Looks Carousel (3D Effect)
// -----------------------------------------------------------------------------
class _FeaturedLooksCarousel extends StatefulWidget {
  const _FeaturedLooksCarousel();

  @override
  State<_FeaturedLooksCarousel> createState() => _FeaturedLooksCarouselState();
}

class _FeaturedLooksCarouselState extends State<_FeaturedLooksCarousel> {
  late PageController _pageController;
  int _currentPage = 1;
  final List<String> _images = [
    'https://picsum.photos/seed/look1/600/800',
    'https://picsum.photos/seed/look2/600/800', // Center initial
    'https://picsum.photos/seed/look3/600/800',
    'https://picsum.photos/seed/look4/600/800',
    'https://picsum.photos/seed/look5/600/800',
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _currentPage,
      viewportFraction: 0.75, // Show part of next/prev items
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320, // Reduced from 450
      child: PageView.builder(
        controller: _pageController,
        onPageChanged: (int index) {
          setState(() {
            _currentPage = index;
          });
        },
        itemCount: _images.length,
        itemBuilder: (context, index) {
          return AnimatedBuilder(
            animation: _pageController,
            builder: (context, child) {
              double value = 0.0;
              if (_pageController.position.haveDimensions) {
                value = index - _pageController.page!;
              } else {
                value = (index - _currentPage).toDouble();
              }

              // 3D Transform Logic

              final scale = (1 - (value.abs() * 0.1)).clamp(0.85, 1.0);
              final opacity = (1 - (value.abs() * 0.5)).clamp(0.5, 1.0);

              return Center(
                child: Transform.scale(
                  scale: scale,
                  child: Opacity(
                    opacity: opacity,
                    child: Stack(
                      children: [
                        // Card Image
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: CachedNetworkImage(
                            imageUrl: _images[index],
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                            errorWidget: (context, url, error) =>
                                Container(color: Colors.grey[200]),
                          ),
                        ),
                        // "Try On" Button (Overlay)
                        Positioned(
                          bottom: 16, // Reduced from 24
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Container(
                              height: 36, // Reduced from 44
                              width: 140, // Reduced from 200
                              decoration: BoxDecoration(
                                color: Colors.white.withValues(alpha: 0.9),
                                borderRadius: BorderRadius.circular(18),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withValues(alpha: 0.1),
                                    blurRadius: 8,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              alignment: Alignment.center,
                              child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Try On',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14, // Reduced from 16
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Icon(
                                    Icons.auto_awesome,
                                    size: 14,
                                  ), // Reduced from 16
                                ],
                              ),
                            ),
                          ),
                        ),
                        // New Label
                        if (index == _currentPage)
                          Positioned(
                            top: 12, // Reduced from 16
                            right: 12, // Reduced from 16
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ), // Reduced padding
                              decoration: BoxDecoration(
                                color: const Color(0xFFCCFF00),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: const Text(
                                'NEW',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10, // Reduced from 12
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

// -----------------------------------------------------------------------------
// 3. Sticky Tab Bar
// -----------------------------------------------------------------------------
class _StickyTabBarDelegate extends SliverPersistentHeaderDelegate {
  _StickyTabBarDelegate({required this.tabController});

  final TabController tabController;

  @override
  double get minExtent => 48; // Reduced to just TabBar height
  @override
  double get maxExtent => 48;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Colors.white,
      child: TabBar(
        controller: tabController,
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
        labelStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: 'Serif',
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.normal,
          fontFamily: 'Serif',
        ),
        indicatorColor: Colors.black,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorWeight: 2,
        padding: EdgeInsets.zero,
        labelPadding: const EdgeInsets.symmetric(horizontal: 16),
        tabs: const [
          Tab(text: 'Look'),
          Tab(text: 'Shop'),
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

// -----------------------------------------------------------------------------
// 3.1 Shop Filters Delegate
// -----------------------------------------------------------------------------
class _ShopFiltersDelegate extends SliverPersistentHeaderDelegate {
  @override
  double get minExtent => 48; // Filter row height + padding
  @override
  double get maxExtent => 48;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: SizedBox(
        height: 32,
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            const _FilterChip(label: 'New In', isSelected: true),
            const SizedBox(width: 8),
            const _FilterChip(label: 'Bestsellers'),
            const SizedBox(width: 8),
            const _FilterChip(label: 'Tops'),
            const SizedBox(width: 8),
            const _FilterChip(label: 'Bottoms'),
            const SizedBox(width: 8),
            const Row(
              children: [
                Text(
                  'FILTER',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Icon(Icons.filter_list, size: 14),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class _FilterChip extends StatelessWidget {
  const _FilterChip({required this.label, this.isSelected = false});

  final String label;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ), // Reduced from 16/8
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFFCCFF00) : Colors.transparent,
        borderRadius: BorderRadius.circular(16),
      ),
      alignment: Alignment.center,
      child: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12, // Reduced from 13
          color: Colors.black,
        ),
      ),
    );
  }
}

// -----------------------------------------------------------------------------
// 4. Shop Tab Content
// -----------------------------------------------------------------------------

class _ShopDisplayItem {
  final ProductItem product;
  final bool isVariant;
  final String originalId;

  _ShopDisplayItem({
    required this.product,
    this.isVariant = false,
    required this.originalId,
  });
}

class _ShopTabContent extends StatefulWidget {
  const _ShopTabContent({required this.products});

  final List<ProductItem> products;

  @override
  State<_ShopTabContent> createState() => _ShopTabContentState();
}

class _ShopTabContentState extends State<_ShopTabContent> {
  late List<_ShopDisplayItem> _displayItems;
  final Set<String> _expandedIds = {};

  @override
  void initState() {
    super.initState();
    _displayItems = widget.products
        .map((p) => _ShopDisplayItem(product: p, originalId: p.id))
        .toList();
  }

  void _toggleExpand(int index) {
    final item = _displayItems[index];
    if (item.isVariant) return;

    setState(() {
      if (_expandedIds.contains(item.originalId)) {
        // Collapse: Remove variants
        _expandedIds.remove(item.originalId);
        _displayItems.removeWhere(
          (i) => i.isVariant && i.originalId == item.originalId,
        );
      } else {
        // Expand: Insert variants
        _expandedIds.add(item.originalId);
        final images = item.product.images ?? [item.product.imageUrl];
        final thumbnails = images.take(3).toList();

        final variants = thumbnails.map((url) {
          // Create a variant product with the thumbnail as main image
          final variantProduct = ProductItem(
            id: '${item.product.id}_${url.hashCode}',
            name: item.product.name,
            price: item.product.price,
            originalPrice: item.product.originalPrice,
            currency: item.product.currency,
            imageUrl: url, // Variant uses thumbnail as main image
            images: const [], // Variants don't show thumbnails
            skuCode: item.product.skuCode,
            recommendedSkuCode: item.product.recommendedSkuCode,
            sales: item.product.sales,
            tags: item.product.tags,
            brandName: item.product.brandName,
            categoryId: item.product.categoryId,
            categoryName: item.product.categoryName,
            rating: item.product.rating,
            reviewCount: item.product.reviewCount,
            discount: item.product.discount,
            flashSaleStartTimeMillis: item.product.flashSaleStartTimeMillis,
            flashSaleEndTimeMillis: item.product.flashSaleEndTimeMillis,
            flashSaleActivityCode: item.product.flashSaleActivityCode,
          );

          return _ShopDisplayItem(
            product: variantProduct,
            isVariant: true,
            originalId: item.originalId,
          );
        }).toList();

        _displayItems.insertAll(index + 1, variants);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      key: const PageStorageKey<String>('shop_tab'),
      slivers: [
        // Sticky Filters
        SliverPersistentHeader(pinned: true, delegate: _ShopFiltersDelegate()),
        // Product List - Grid View
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 24,
              crossAxisSpacing: 12,
              childAspectRatio: 0.52, // Adjusted for main image + thumbnails
            ),
            delegate: SliverChildBuilderDelegate((context, index) {
              final item = _displayItems[index];
              return _ProductCardWithThumbnails(
                product: item.product,
                isVariant: item.isVariant,
                onThumbnailToggle: () => _toggleExpand(index),
              );
            }, childCount: _displayItems.length),
          ),
        ),
      ],
    );
  }
}

class _ProductCardWithThumbnails extends StatefulWidget {
  const _ProductCardWithThumbnails({
    required this.product,
    this.isVariant = false,
    this.onThumbnailToggle,
  });

  final ProductItem product;
  final bool isVariant;
  final VoidCallback? onThumbnailToggle;

  @override
  State<_ProductCardWithThumbnails> createState() =>
      _ProductCardWithThumbnailsState();
}

class _ProductCardWithThumbnailsState
    extends State<_ProductCardWithThumbnails> {
  late String _currentImage;

  @override
  void initState() {
    super.initState();
    _currentImage = widget.product.imageUrl;
  }

  @override
  void didUpdateWidget(covariant _ProductCardWithThumbnails oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.product.imageUrl != widget.product.imageUrl) {
      _currentImage = widget.product.imageUrl;
    }
  }

  @override
  Widget build(BuildContext context) {
    final images = widget.product.images ?? [widget.product.imageUrl];
    // Ensure we have at least 3 thumbnails for the design
    // Only show thumbnails if NOT a variant
    final thumbnails = widget.isVariant ? <String>[] : images.take(3).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Main Image Area
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFFF9F9F9),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Stack(
              children: [
                // Image
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: CachedNetworkImage(
                      imageUrl: _currentImage,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                // Try On Button
                Positioned(
                  bottom: 12,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Try On',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 2),
                          Icon(
                            Icons.auto_awesome,
                            size: 12,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8),
        // Thumbnails Row
        if (thumbnails.isNotEmpty)
          SizedBox(
            height: 50, // Fixed height for thumbnails row
            child: Row(
              children: thumbnails.map((url) {
                // Determine if this thumbnail matches current image
                // Note: For parent cards, we might still want to show selection state?
                // But request says "clicking... expands".
                // We'll keep the visual but change action.
                final isSelected = url == _currentImage;
                return Expanded(
                  child: GestureDetector(
                    onTap: widget.onThumbnailToggle,
                    child: Container(
                      margin: const EdgeInsets.only(right: 4),
                      decoration: BoxDecoration(
                        border: isSelected
                            ? Border.all(color: Colors.transparent, width: 0)
                            : null,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child: CachedNetworkImage(
                          imageUrl: url,
                          fit: BoxFit.cover,
                          height: double.infinity,
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        // Maintain spacing/height for variants to align grid if necessary?
        // But Grid uses childAspectRatio. Variants have no thumbnails, so they will be shorter?
        // No, SliverGrid forces same height for all cells based on aspect ratio.
        // This means variants will have empty space at bottom where thumbnails would be.
        // To fix this, we should make the Main Image Area fill the space in variants.
        // Using Expanded in Column handles this!
        // If thumbnails list is empty, SizedBox is not built.
        // Expanded(Main Image) takes all available space.
      ],
    );
  }
}

// -----------------------------------------------------------------------------
// 5. Look Tab Content
// -----------------------------------------------------------------------------
class _LookTabContent extends StatelessWidget {
  const _LookTabContent({required this.outfits});

  final List<BrandOutfit> outfits;

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      crossAxisCount: 3, // Changed from 2 to 3
      mainAxisSpacing: 1, // Tight spacing
      crossAxisSpacing: 1, // Tight spacing
      padding: EdgeInsets.zero, // Removed padding
      itemCount: outfits.length,
      itemBuilder: (context, index) {
        final outfit = outfits[index];
        // Mock selection for the middle item in the second row (index 4 in a 3-col grid)
        final isSelected = index == 4;
        // Mock multi-image icon for some items
        final hasMultipleImages = index % 2 == 0;

        return Stack(
          children: [
            // Image
            AspectRatio(
              aspectRatio: index % 3 == 0 ? 0.7 : 0.8, // Randomize aspect ratio
              child: Container(
                decoration: BoxDecoration(
                  border: isSelected
                      ? Border.all(color: Colors.blue, width: 2)
                      : null,
                ),
                child: CachedNetworkImage(
                  imageUrl: outfit.imageUrl,
                  fit: BoxFit.cover,
                  errorWidget: (context, url, error) =>
                      Container(color: Colors.grey[200]),
                ),
              ),
            ),

            // Multi-image Icon (Top Right)
            if (hasMultipleImages)
              const Positioned(
                top: 8,
                right: 8,
                child: Icon(
                  Icons.filter_none, // Looks like stacked squares
                  color: Colors.white,
                  size: 16,
                ),
              ),
          ],
        );
      },
    );
  }
}
