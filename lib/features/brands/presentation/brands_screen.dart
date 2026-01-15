import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/navigation/route_paths.dart';
import '../../../shared/widgets/themed_text.dart';
import '../../home/home_mock_data.dart';
import '../data/brands_mock_data.dart';

class BrandsScreen extends StatelessWidget {
  const BrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const ThemedText(
          'Brands list',
          type: ThemedTextType.title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, size: 20),
          color: Colors.black,
          onPressed: () => context.pop(),
        ),
        surfaceTintColor: Colors.transparent,
      ),
      body: CustomScrollView(
        slivers: [
          // Brands We Love Header
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 12),
              child: _SectionHeader(
                title: 'Brands',
                highlight: 'WeLove',
                highlightColor: Color(0xFF4CAF50),
              ),
            ),
          ),

          // Brands We Love Horizontal List with Continuous Glass
          SliverToBoxAdapter(
            child: SizedBox(
              height:
                  120, // Reduced height to maintain aspect ratio with 80px width
              child: Stack(
                children: [
                  // Scrolling List (Behind Glass)
                  ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    scrollDirection: Axis.horizontal,
                    itemCount: mockBrandsWeLove.length,
                    itemBuilder: (context, index) {
                      final brand = mockBrandsWeLove[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: SizedBox(
                          width: 80, // Reduced width
                          child: GestureDetector(
                            onTap: () {
                              context.push(
                                RoutePaths.brandDetail.replaceAll(
                                  ':id',
                                  brand.id,
                                ),
                              );
                            },
                            child: _BrandImageCard(brand: brand),
                          ),
                        ),
                      );
                    },
                  ),

                  // Continuous Glass Overlay (Fixed on Top)
                  Positioned(
                    left: 16,
                    right: 16,
                    bottom: 0,
                    height: 40, // Reduced glass height for proportion
                    child: const _ContinuousGlassOverlay(
                      glassColor: Color(0xFFADE887),
                      hasRoundedCorners: true,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // More Brands Header
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 24, 16, 12),
              child: _SectionHeader(
                title: 'More',
                highlight: 'Brands',
                highlightColor: Color(0xFF2E7D32),
              ),
            ),
          ),

          // More Brands List (Rows of 3)
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                // Calculate range for this row
                final start = index * 3;
                final end = (start + 3) > mockMoreBrands.length
                    ? mockMoreBrands.length
                    : start + 3;
                final rowBrands = mockMoreBrands.sublist(start, end);

                // Cycle through different glass colors
                final colors = [
                  const Color(0xFF64B5F6).withValues(alpha: 0.3), // Blue
                  const Color(0xFFFFB74D).withValues(alpha: 0.3), // Orange
                  const Color(0xFFBA68C8).withValues(alpha: 0.3), // Purple
                  const Color(0xFF4DB6AC).withValues(alpha: 0.3), // Teal
                ];
                final glassColor = colors[index % colors.length];

                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: _BrandRowItem(
                    brands: rowBrands,
                    glassColor: glassColor,
                  ),
                );
              }, childCount: (mockMoreBrands.length / 3).ceil()),
            ),
          ),

          // Bottom padding
          const SliverToBoxAdapter(child: SizedBox(height: 40)),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({
    required this.title,
    required this.highlight,
    required this.highlightColor,
  });

  final String title;
  final String highlight;
  final Color highlightColor;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontFamily: 'serif',
        ),
        children: [
          TextSpan(text: '$title '),
          TextSpan(
            text: highlight,
            style: TextStyle(color: highlightColor),
          ),
        ],
      ),
    );
  }
}

/// A row containing up to 3 brands with a continuous glass overlay
class _BrandRowItem extends StatelessWidget {
  const _BrandRowItem({required this.brands, required this.glassColor});

  final List<Brand> brands;
  final Color glassColor;

  @override
  Widget build(BuildContext context) {
    // 3 items per row, equal width
    // We use a Row with Expanded children
    return SizedBox(
      height: 140, // Fixed height for the row
      child: Stack(
        children: [
          // 1. The Brand Images (Background Layer)
          Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              for (int i = 0; i < 3; i++)
                Expanded(
                  child: i < brands.length
                      ? Padding(
                          padding: EdgeInsets.only(
                            right: i == 2 ? 0 : 12,
                          ), // Gap between items
                          child: GestureDetector(
                            onTap: () {
                              context.push(
                                RoutePaths.brandDetail.replaceAll(
                                  ':id',
                                  brands[i].id,
                                ),
                              );
                            },
                            child: _BrandImageCard(brand: brands[i]),
                          ),
                        )
                      : const SizedBox(), // Placeholder for empty slots
                ),
            ],
          ),

          // 2. The Continuous Glass Overlay (Foreground Layer)
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: 50, // Height of the glass pane
            child: _ContinuousGlassOverlay(
              glassColor: glassColor,
              // For rows, we round only bottom corners to match items
              // but the items are separated. To match the visual of a single pane:
              hasRoundedCorners: true,
            ),
          ),
        ],
      ),
    );
  }
}

/// Simple widget to display the brand image and logo
class _BrandImageCard extends StatelessWidget {
  const _BrandImageCard({required this.brand});

  final Brand brand;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Stack(
          children: [
            // Image
            Positioned.fill(
              child: CachedNetworkImage(
                imageUrl: brand.imageUrl,
                fit: BoxFit.cover,
                errorWidget: (context, url, error) => Container(
                  color: Colors.grey[200],
                  child: const Icon(Icons.error),
                ),
              ),
            ),
            // Logo overlay (bottom right, visible even under glass)
            Positioned(
              bottom: 12, // Adjusted to sit nicely in the glass area
              right: 8,
              child: Container(
                width: 20,
                height: 20,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(2),
                child: CachedNetworkImage(
                  imageUrl: brand.logoUrl,
                  fit: BoxFit.contain,
                  errorWidget: (_, __, ___) => const SizedBox(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// The continuous glass pane that spans the full width
class _ContinuousGlassOverlay extends StatelessWidget {
  const _ContinuousGlassOverlay({
    required this.glassColor,
    this.hasRoundedCorners = true,
  });

  final Color glassColor;
  final bool hasRoundedCorners;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: ClipRRect(
        borderRadius: hasRoundedCorners
            ? const BorderRadius.vertical(bottom: Radius.circular(8))
            : BorderRadius.zero,
        // Removed BackdropFilter/Blur here for clear glass effect
        child: Container(
          decoration: BoxDecoration(
            color: glassColor,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                glassColor.withValues(alpha: 0.4),
                glassColor.withValues(alpha: 0.8),
              ],
            ),
            border: Border.all(
              color: glassColor.withValues(alpha: 1.0),
              width: 1,
            ),
          ),
          child: Stack(
            children: [
              // Bolt/Screw decoration (Left)
              Positioned(left: 6, top: 6, child: _MetalBolt()),

              // Bolt/Screw decoration (Right)
              Positioned(right: 6, top: 6, child: _MetalBolt()),

              // Glossy Reflection (Top gradient)
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                height: 15,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white.withValues(alpha: 0.3),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MetalBolt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 6,
      height: 6,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.white, Colors.grey.shade400, Colors.grey.shade800],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.3),
            blurRadius: 1,
            offset: const Offset(0, 1),
          ),
        ],
      ),
    );
  }
}
