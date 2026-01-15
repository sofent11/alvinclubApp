class Celebrity {
  final String id;
  final String name;
  final String imageUrl;
  final bool isForYou;

  const Celebrity({
    required this.id,
    required this.name,
    required this.imageUrl,
    this.isForYou = false,
  });
}

class Magazine {
  final String id;
  final String title;
  final String imageUrl;
  final String subtitle;

  const Magazine({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.subtitle,
  });
}

class Brand {
  final String id;
  final String name;
  final String imageUrl;
  final String logoUrl;

  const Brand({
    required this.id,
    required this.name,
    required this.imageUrl,
    this.logoUrl = '',
  });
}

class FeedItem {
  final String id;
  final String type; // 'ai_fashion_entry', 'product', 'post'
  final String title;
  final String imageUrl;
  final String? avatarUrl;
  final String? authorName;
  final int likes;
  final double? price;
  final double? originalPrice;
  final bool isLiked;

  const FeedItem({
    required this.id,
    required this.type,
    required this.title,
    required this.imageUrl,
    this.avatarUrl,
    this.authorName,
    this.likes = 0,
    this.price,
    this.originalPrice,
    this.isLiked = false,
  });
}

// Mock Data
final List<Celebrity> mockCelebrities = [
  const Celebrity(
    id: 'foryou',
    name: 'FOR YOU',
    imageUrl: '', // Will be handled specially in UI
    isForYou: true,
  ),
  const Celebrity(
    id: '1',
    name: 'Hailey...',
    imageUrl: 'https://i.pravatar.cc/150?u=hailey',
  ),
  const Celebrity(
    id: '2',
    name: 'Kendal...',
    imageUrl: 'https://i.pravatar.cc/150?u=kendall',
  ),
  const Celebrity(
    id: '3',
    name: 'Zendaya',
    imageUrl: 'https://i.pravatar.cc/150?u=zendaya',
  ),
  const Celebrity(
    id: '4',
    name: 'Dua Lipa',
    imageUrl: 'https://i.pravatar.cc/150?u=dualipa',
  ),
  const Celebrity(
    id: '5',
    name: 'Bella',
    imageUrl: 'https://i.pravatar.cc/150?u=bella',
  ),
];

final List<Magazine> mockMagazines = [
  const Magazine(
    id: '1',
    title: 'PEAR SHAPED',
    subtitle: 'FASHION GUIDE!',
    imageUrl:
        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&q=80&w=600',
  ),
  const Magazine(
    id: '2',
    title: 'SUMMER VIBES',
    subtitle: 'HOT TRENDS',
    imageUrl:
        'https://images.unsplash.com/photo-1515886657613-9f3515b0c78f?auto=format&fit=crop&q=80&w=600',
  ),
  const Magazine(
    id: '3',
    title: 'WINTER CHIC',
    subtitle: 'COZY LOOKS',
    imageUrl:
        'https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&q=80&w=600',
  ),
];

final List<Brand> mockBrands = [
  const Brand(
    id: '1',
    name: 'Miu Miu',
    imageUrl:
        'https://images.unsplash.com/photo-1550614000-4b9519e090eb?auto=format&fit=crop&q=80&w=300',
    logoUrl: 'https://logo.clearbit.com/miumiu.com',
  ),
  const Brand(
    id: '2',
    name: 'Nike',
    imageUrl:
        'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&q=80&w=300',
    logoUrl: 'https://logo.clearbit.com/nike.com',
  ),
  const Brand(
    id: '3',
    name: 'Vogue',
    imageUrl:
        'https://images.unsplash.com/photo-1529139574466-a302c27524ed?auto=format&fit=crop&q=80&w=300',
    logoUrl: 'https://logo.clearbit.com/vogue.com',
  ),
  const Brand(
    id: '4',
    name: 'Bazaar',
    imageUrl:
        'https://images.unsplash.com/photo-1509631179647-0177331693ae?auto=format&fit=crop&q=80&w=300',
    logoUrl: 'https://logo.clearbit.com/harpersbazaar.com',
  ),
];

final List<FeedItem> mockFeedItems = [
  // First item is typically the AI Fashion Entry
  const FeedItem(
    id: 'ai_entry',
    type: 'ai_fashion_entry',
    title: 'Star Style',
    imageUrl: '', // Asset or gradient
  ),
  const FeedItem(
    id: '1',
    type: 'post',
    title: 'Super cool styling— effortlessly laid-back. I’...',
    imageUrl:
        'https://images.unsplash.com/photo-1515886657613-9f3515b0c78f?auto=format&fit=crop&q=80&w=400',
    avatarUrl: 'https://i.pravatar.cc/150?u=alvin',
    authorName: "Alvin's Club",
    likes: 22,
  ),
  const FeedItem(
    id: '2',
    type: 'post',
    title: '',
    imageUrl:
        'https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&q=80&w=400',
    avatarUrl: 'https://logo.clearbit.com/chanel.com',
    authorName: 'CHANEL',
    likes: 22,
  ),
  const FeedItem(
    id: '3',
    type: 'post',
    title: 'Christmas Day Lookbook: Dec 25',
    imageUrl:
        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&q=80&w=400',
    avatarUrl: 'https://i.pravatar.cc/150?u=kardashian',
    authorName: 'Kardashian St...',
    likes: 998,
  ),
  const FeedItem(
    id: '4',
    type: 'post',
    title: 'What\'s your style today?',
    imageUrl: '', // Special card for Style Quiz
  ),
  const FeedItem(
    id: '5',
    type: 'product',
    title: 'Global Thich-sGlobal Thi...',
    imageUrl:
        'https://images.unsplash.com/photo-1584917865442-de89df76afd3?auto=format&fit=crop&q=80&w=400',
    price: 11.99,
    originalPrice: 99.99,
  ),
  const FeedItem(
    id: '6',
    type: 'post',
    title: 'DEC.23TH',
    imageUrl:
        'https://images.unsplash.com/photo-1496747611176-843222e1e57c?auto=format&fit=crop&q=80&w=400',
    avatarUrl: 'https://i.pravatar.cc/150?u=how',
    authorName: 'How to Dress f...',
    likes: 22,
  ),
];
