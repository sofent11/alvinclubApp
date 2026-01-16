import '../../../data/repositories/product_repository.dart';

class BrandOutfit {
  final String id;
  final String imageUrl;
  final String label;

  const BrandOutfit({
    required this.id,
    required this.imageUrl,
    this.label = 'Try On',
  });
}

class BrandDetailData {
  final String id;
  final String name;
  final String logoUrl;
  final String bannerUrl; // Optional
  final List<BrandOutfit> outfits;
  final List<String> categories;
  final List<ProductItem> hotItems;

  const BrandDetailData({
    required this.id,
    required this.name,
    required this.logoUrl,
    this.bannerUrl = '',
    required this.outfits,
    required this.categories,
    required this.hotItems,
  });
}

const mockBrandOutfits = [
  BrandOutfit(id: '1', imageUrl: 'https://picsum.photos/seed/outfit1/800/1200'),
  BrandOutfit(id: '2', imageUrl: 'https://picsum.photos/seed/outfit2/800/1200'),
  BrandOutfit(id: '3', imageUrl: 'https://picsum.photos/seed/outfit3/800/1200'),
  BrandOutfit(id: '4', imageUrl: 'https://picsum.photos/seed/outfit4/800/1200'),
  BrandOutfit(id: '5', imageUrl: 'https://picsum.photos/seed/outfit5/800/1200'),
];

const mockBrandProducts = [
  ProductItem(
    id: '1',
    name: 'Antiqued leather shoulder bag',
    price: 3500.0,
    currency: 'USD',
    imageUrl: 'https://picsum.photos/seed/product1/800/800',
    images: [
      'https://picsum.photos/seed/product1/800/800',
      'https://picsum.photos/seed/product1_1/800/800',
      'https://picsum.photos/seed/product1_2/800/800',
      'https://picsum.photos/seed/product1_3/800/800',
    ],
  ),
  ProductItem(
    id: '2',
    name: 'Slingback pumps in patent calfskin',
    price: 1150.0,
    currency: 'USD',
    imageUrl: 'https://picsum.photos/seed/product2/800/800',
    images: [
      'https://picsum.photos/seed/product2/800/800',
      'https://picsum.photos/seed/product2_1/800/800',
      'https://picsum.photos/seed/product2_2/800/800',
      'https://picsum.photos/seed/product2_3/800/800',
    ],
  ),
  ProductItem(
    id: '3',
    name: 'Medium Lady D-Lite Bag',
    price: 4900.0,
    currency: 'USD',
    imageUrl: 'https://picsum.photos/seed/product3/800/800',
    images: [
      'https://picsum.photos/seed/product3/800/800',
      'https://picsum.photos/seed/product3_1/800/800',
      'https://picsum.photos/seed/product3_2/800/800',
      'https://picsum.photos/seed/product3_3/800/800',
    ],
  ),
  ProductItem(
    id: '4',
    name: 'Dior Book Tote',
    price: 3250.0,
    currency: 'USD',
    imageUrl: 'https://picsum.photos/seed/product4/800/800',
    images: [
      'https://picsum.photos/seed/product4/800/800',
      'https://picsum.photos/seed/product4_1/800/800',
      'https://picsum.photos/seed/product4_2/800/800',
      'https://picsum.photos/seed/product4_3/800/800',
    ],
  ),
  ProductItem(
    id: '5',
    name: '30 Montaigne Bag',
    price: 3800.0,
    currency: 'USD',
    imageUrl: 'https://picsum.photos/seed/product5/800/800',
    images: [
      'https://picsum.photos/seed/product5/800/800',
      'https://picsum.photos/seed/product5_1/800/800',
      'https://picsum.photos/seed/product5_2/800/800',
      'https://picsum.photos/seed/product5_3/800/800',
    ],
  ),
  ProductItem(
    id: '6',
    name: 'J\'Adior Slingback Pump',
    price: 1090.0,
    currency: 'USD',
    imageUrl: 'https://picsum.photos/seed/product6/800/800',
    images: [
      'https://picsum.photos/seed/product6/800/800',
      'https://picsum.photos/seed/product6_1/800/800',
      'https://picsum.photos/seed/product6_2/800/800',
      'https://picsum.photos/seed/product6_3/800/800',
    ],
  ),
];

final mockBrandDetail = BrandDetailData(
  id: '1',
  name: 'Louis Vuitton',
  logoUrl: 'https://ui-avatars.com/api/?name=LV&background=000&color=fff',
  bannerUrl: 'https://picsum.photos/seed/lv_runway/800/600',
  outfits: mockBrandOutfits,
  categories: ['Look', 'Shop'],
  hotItems: mockBrandProducts,
);
