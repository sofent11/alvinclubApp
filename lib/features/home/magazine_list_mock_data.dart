class MagazineIssue {
  final String id;
  final String date;
  final String title;
  final String imageUrl;
  final String month;

  const MagazineIssue({
    required this.id,
    required this.date,
    required this.title,
    required this.imageUrl,
    required this.month,
  });
}

final List<MagazineIssue> mockMagazineList = [
  // December
  MagazineIssue(
    id: '1',
    date: 'JAN.03TH',
    title: 'Pear-shaped Body Type Outfits',
    imageUrl:
        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&q=80&w=600',
    month: 'December',
  ),
  MagazineIssue(
    id: '2',
    date: 'DEC.23TH',
    title: 'Pear-shaped Body Type Outfits',
    imageUrl:
        'https://images.unsplash.com/photo-1515886657613-9f3515b0c78f?auto=format&fit=crop&q=80&w=600',
    month: 'December',
  ),
  MagazineIssue(
    id: '3',
    date: 'DEC.13TH',
    title: 'Pear-shaped Body Type Outfits',
    imageUrl:
        'https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&q=80&w=600',
    month: 'December',
  ),
  MagazineIssue(
    id: '4',
    date: 'DEC.03TH',
    title: 'Pear-shaped Body Type Outfits',
    imageUrl:
        'https://images.unsplash.com/photo-1576566588028-4147f3842f27?auto=format&fit=crop&q=80&w=600',
    month: 'December',
  ),

  // November
  MagazineIssue(
    id: '5',
    date: 'NOV.23TH',
    title: 'Pear-shaped Body Type Outfits',
    imageUrl:
        'https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?auto=format&fit=crop&q=80&w=600',
    month: 'November',
  ),
  MagazineIssue(
    id: '6',
    date: 'NOV.13TH',
    title: 'Pear-shaped Body Type Outfits',
    imageUrl:
        'https://images.unsplash.com/photo-1509631179647-0177331693ae?auto=format&fit=crop&q=80&w=600',
    month: 'November',
  ),
  MagazineIssue(
    id: '7',
    date: 'NOV.03TH',
    title: 'Pear-shaped Body Type Outfits',
    imageUrl:
        'https://images.unsplash.com/photo-1496747611176-843222e1e57c?auto=format&fit=crop&q=80&w=600',
    month: 'November',
  ),

  // October
  MagazineIssue(
    id: '8',
    date: 'OCT.23TH',
    title: 'Pear-shaped Body Type Outfits',
    imageUrl:
        'https://images.unsplash.com/photo-1584917865442-de89df76afd3?auto=format&fit=crop&q=80&w=600',
    month: 'October',
  ),
  MagazineIssue(
    id: '9',
    date: 'OCT.13TH',
    title: 'Pear-shaped Body Type Outfits',
    imageUrl:
        'https://images.unsplash.com/photo-1515886657613-9f3515b0c78f?auto=format&fit=crop&q=80&w=600',
    month: 'October',
  ),
  MagazineIssue(
    id: '10',
    date: 'OCT.03TH',
    title: 'Pear-shaped Body Type Outfits',
    imageUrl:
        'https://images.unsplash.com/photo-1534796636912-3b95b3ab5986?auto=format&fit=crop&q=80&w=600',
    month: 'October',
  ),

  // September
  MagazineIssue(
    id: '11',
    date: 'SEP.23TH',
    title: 'Pear-shaped Body Type Outfits',
    imageUrl:
        'https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?auto=format&fit=crop&q=80&w=600',
    month: 'September',
  ),
  MagazineIssue(
    id: '12',
    date: 'SEP.13TH',
    title: 'Pear-shaped Body Type Outfits',
    imageUrl:
        'https://images.unsplash.com/photo-1576566588028-4147f3842f27?auto=format&fit=crop&q=80&w=600',
    month: 'September',
  ),
];
