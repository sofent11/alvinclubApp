import 'package:go_router/go_router.dart';
import '../../../core/navigation/route_paths.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'dart:ui'; // For ImageFilter
import '../home_mock_data.dart';

class BrandSectionWidget extends StatelessWidget {
  const BrandSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ), // Reduced vertical padding
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Text(
                    'Brands',
                    style: TextStyle(
                      fontSize: 16, // Reduced from 18
                      fontWeight: FontWeight.bold,
                      fontFamily: 'serif',
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'WeLove',
                    style: TextStyle(
                      fontSize: 16, // Reduced from 18
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFFCCFF00).withValues(alpha: 0.8),
                      fontFamily: 'serif',
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => context.push(RoutePaths.brandList),
                child: const Text(
                  'SHOP ALL BRANDS ►',
                  style: TextStyle(
                    fontSize: 10, // Reduced from 11
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 94, // Slightly larger than original 80
          child: Stack(
            children: [
              // Main content
              ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                itemCount: mockBrands.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(width: 8), // Back to original spacing
                itemBuilder: (context, index) {
                  final brand = mockBrands[index];
                  return _BrandItem(brand: brand);
                },
              ),
              // Glass Window Effect Overlay
              Positioned(
                bottom: 0,
                left: 16,
                right: 16,
                height: 32, // Adjusted for proportion
                child: IgnorePointer(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10), // Reduced from 12
                      bottomRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    // Removed BackdropFilter/Blur here for clear glass effect
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFADE887).withValues(alpha: 0.3),
                        border: Border.all(
                          color: Colors.white.withValues(
                            alpha: 0.2,
                          ), // Subtler border
                          width: 1,
                        ),
                      ),
                      child: Stack(
                        children: [
                          // Glossy Reflection
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            height: 12, // Reduced height
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.white.withValues(
                                      alpha: 0.3,
                                    ), // Subtler reflection
                                    Colors.white.withValues(alpha: 0.0),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // Bolts
                          Positioned(
                            left: 10, // Adjusted padding
                            bottom: 10,
                            child: _MetalBolt(),
                          ),
                          Positioned(
                            right: 10,
                            bottom: 10,
                            child: _MetalBolt(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _MetalBolt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 6, // Reduced form 8
      height: 6,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [Colors.grey[200]!, Colors.grey[400]!, Colors.grey[600]!],
          stops: const [0.0, 0.6, 1.0],
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

class _BrandItem extends StatelessWidget {
  final Brand brand;

  const _BrandItem({required this.brand});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 74, // Slightly larger than original 64
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  9,
                ), // Slightly adjusted radius
                image: DecorationImage(
                  image: CachedNetworkImageProvider(brand.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 26, // Slightly larger height
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black.withValues(alpha: 0.6),
                            Colors.transparent,
                          ],
                        ),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(9),
                          bottomRight: Radius.circular(9),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
