import 'package:flutter/material.dart';

// Mock Data for Magazine Detail
class MagazineIssueDetail {
  final String id;
  final String date;
  final String title;
  final String tag;
  final Color tagColor;
  final List<MagazineLook> looks;

  const MagazineIssueDetail({
    required this.id,
    required this.date,
    required this.title,
    required this.tag,
    required this.tagColor,
    required this.looks,
  });
}

class MagazineLook {
  final String imageUrl;
  final String aiComment;

  const MagazineLook({required this.imageUrl, required this.aiComment});
}

final List<MagazineIssueDetail> mockMagazineDetails = [
  MagazineIssueDetail(
    id: '1',
    date: 'JAN.6TH',
    title: 'Pear Shaped',
    tag: 'Street Look',
    tagColor: const Color(0xFFCCFF00),
    looks: [
      MagazineLook(
        imageUrl:
            'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&q=80&w=800',
        aiComment:
            'Gilded styling uses subtle shine to shape rich layers, revealing a quiet yet unmistakable sense of luxury.',
      ),
      MagazineLook(
        imageUrl:
            'https://images.unsplash.com/photo-1515886657613-9f3515b0c78f?auto=format&fit=crop&q=80&w=800',
        aiComment:
            'Oversized blazer balances the silhouette, making it perfect for office-to-dinner transitions.',
      ),
    ],
  ),
  MagazineIssueDetail(
    id: '2',
    date: 'JAN.3TH',
    title: 'Casual Chic',
    tag: 'Daily',
    tagColor: const Color(0xFFE0E0E0),
    looks: [
      MagazineLook(
        imageUrl:
            'https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&q=80&w=800',
        aiComment:
            'Effortless layering with neutral tones creates a cozy yet sophisticated winter vibe.',
      ),
      MagazineLook(
        imageUrl:
            'https://images.unsplash.com/photo-1576566588028-4147f3842f27?auto=format&fit=crop&q=80&w=800',
        aiComment: 'Mixing textures adds depth to this monochromatic ensemble.',
      ),
    ],
  ),
  MagazineIssueDetail(
    id: '3',
    date: 'JAN.1ST',
    title: 'New Year',
    tag: 'Party',
    tagColor: const Color(0xFFE0E0E0),
    looks: [
      MagazineLook(
        imageUrl:
            'https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?auto=format&fit=crop&q=80&w=800',
        aiComment:
            'Bold red accents bring good fortune and high energy to your new year look.',
      ),
      MagazineLook(
        imageUrl:
            'https://images.unsplash.com/photo-1509631179647-0177331693ae?auto=format&fit=crop&q=80&w=800',
        aiComment:
            'Sparkles and sequins: essential for ringing in the new year in style.',
      ),
    ],
  ),
];
