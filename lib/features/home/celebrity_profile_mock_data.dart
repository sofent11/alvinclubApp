class CelebrityProfile {
  final String id;
  final String name;
  final String subtitle;
  final String avatarUrl;
  final String headerImageUrl;
  final bool isFollowed;

  const CelebrityProfile({
    required this.id,
    required this.name,
    required this.subtitle,
    required this.avatarUrl,
    required this.headerImageUrl,
    this.isFollowed = false,
  });
}

class CelebrityPost {
  final String id;
  final String title;
  final String imageUrl;
  final String authorName;
  final String authorAvatarUrl;
  final int likes;
  final bool hasTryOn;

  const CelebrityPost({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.authorName,
    required this.authorAvatarUrl,
    required this.likes,
    this.hasTryOn = false,
  });
}

const mockCelebrityProfile = CelebrityProfile(
  id: 'kim_kardashian',
  name: 'Kim\nKardashian',
  subtitle: '2025 COLLECTION · 38 LOOKS',
  avatarUrl:
      'https://images.unsplash.com/photo-1531123897727-8f129e1688ce?auto=format&fit=crop&q=80&w=200',
  headerImageUrl:
      'https://images.unsplash.com/photo-1549062572-544a64fb0c56?auto=format&fit=crop&q=80&w=800', // Christmas/Celebrity vibe
  isFollowed: false,
);

final List<CelebrityPost> mockCelebrityPosts = [
  const CelebrityPost(
    id: '1',
    title: 'Christmas Day Lookbook:\nDec 25',
    imageUrl:
        'https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?auto=format&fit=crop&q=80&w=600',
    authorName: 'Kardashian St...',
    authorAvatarUrl:
        'https://images.unsplash.com/photo-1531123897727-8f129e1688ce?auto=format&fit=crop&q=80&w=100',
    likes: 998,
    hasTryOn: true,
  ),
  const CelebrityPost(
    id: '2',
    title: 'Christmas Day Lookbook:\nDec 25',
    imageUrl:
        'https://images.unsplash.com/photo-1584917865442-de89df76afd3?auto=format&fit=crop&q=80&w=600',
    authorName: 'Kardashian St...',
    authorAvatarUrl:
        'https://images.unsplash.com/photo-1531123897727-8f129e1688ce?auto=format&fit=crop&q=80&w=100',
    likes: 998,
    hasTryOn: true,
  ),
  const CelebrityPost(
    id: '3',
    title: 'Christmas Day Lookbook:\nDec 25',
    imageUrl:
        'https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&q=80&w=600',
    authorName: 'Kardashian St...',
    authorAvatarUrl:
        'https://images.unsplash.com/photo-1531123897727-8f129e1688ce?auto=format&fit=crop&q=80&w=100',
    likes: 998,
    hasTryOn: true,
  ),
  const CelebrityPost(
    id: '4',
    title: 'Christmas Day Lookbook:\nDec 25',
    imageUrl:
        'https://images.unsplash.com/photo-1496747611176-843222e1e57c?auto=format&fit=crop&q=80&w=600',
    authorName: 'Kardashian St...',
    authorAvatarUrl:
        'https://images.unsplash.com/photo-1531123897727-8f129e1688ce?auto=format&fit=crop&q=80&w=100',
    likes: 998,
    hasTryOn: true,
  ),
  const CelebrityPost(
    id: '5',
    title: 'Christmas Day Lookbook:\nDec 25',
    imageUrl:
        'https://images.unsplash.com/photo-1515886657613-9f3515b0c78f?auto=format&fit=crop&q=80&w=600',
    authorName: 'Kardashian St...',
    authorAvatarUrl:
        'https://images.unsplash.com/photo-1531123897727-8f129e1688ce?auto=format&fit=crop&q=80&w=100',
    likes: 998,
    hasTryOn: true,
  ),
  const CelebrityPost(
    id: '6',
    title: 'Christmas Day Lookbook:\nDec 25',
    imageUrl:
        'https://images.unsplash.com/photo-1550614000-4b9519e09063?auto=format&fit=crop&q=80&w=600',
    authorName: 'Kardashian St...',
    authorAvatarUrl:
        'https://images.unsplash.com/photo-1531123897727-8f129e1688ce?auto=format&fit=crop&q=80&w=100',
    likes: 998,
    hasTryOn: true,
  ),
];
