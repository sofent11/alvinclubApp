import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
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
                      fontSize: 18, // Reduced from 20
                      fontWeight: FontWeight.bold,
                      fontFamily: 'serif',
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'WeLove',
                    style: TextStyle(
                      fontSize: 18, // Reduced from 20
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFFCCFF00).withValues(alpha: 0.8),
                      fontFamily: 'serif',
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'SHOP ALL BRANDS ►',
                  style: TextStyle(
                    fontSize: 11, // Reduced from 12
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 100, // Reduced from 140
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            itemCount: mockBrands.length,
            separatorBuilder: (context, index) =>
                const SizedBox(width: 10), // Reduced from 12
            itemBuilder: (context, index) {
              final brand = mockBrands[index];
              return _BrandItem(brand: brand);
            },
          ),
        ),
      ],
    );
  }
}

class _BrandItem extends StatelessWidget {
  final Brand brand;

  const _BrandItem({required this.brand});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80, // Reduced from 100
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), // Reduced radius
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
                      height: 32, // Reduced height
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
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  if (brand.logoUrl.isNotEmpty)
                    Positioned(
                      bottom: 6,
                      right: 6,
                      child: Container(
                        width: 16, // Reduced from 20
                        height: 16, // Reduced from 20
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        padding: const EdgeInsets.all(1.5),
                        child: ClipOval(
                          child: CachedNetworkImage(
                            imageUrl: brand.logoUrl,
                            fit: BoxFit.contain,
                            errorWidget: (_, __, ___) =>
                                const Icon(Icons.error, size: 8),
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
