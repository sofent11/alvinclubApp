import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../home_mock_data.dart';

class CelebrityListScreen extends StatefulWidget {
  const CelebrityListScreen({super.key});

  @override
  State<CelebrityListScreen> createState() => _CelebrityListScreenState();
}

class _CelebrityListScreenState extends State<CelebrityListScreen> {
  final List<String> _indexList = [
    '☆',
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z',
    '#',
  ];

  @override
  Widget build(BuildContext context) {
    // Separate mock data for display
    final trendingList = mockCelebrities.where((c) => !c.isForYou).toList();
    // Duplicating list to make it look populated for "All"
    final allList = [...trendingList, ...trendingList, ...trendingList];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 20),
          onPressed: () => context.pop(),
        ),
        titleSpacing: 0,
        title: Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Container(
            height: 36,
            decoration: BoxDecoration(
              color: const Color(0xFFF7F7F7),
              borderRadius: BorderRadius.circular(6),
            ),
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              decoration: const InputDecoration(
                hintText: '请输入艺人姓名',
                hintStyle: TextStyle(color: Color(0xFF999999), fontSize: 14),
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xFF999999),
                  size: 20,
                ),
                border: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.zero,
              ),
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
                  child: Text(
                    "本期当红",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return _CelebrityListTile(celebrity: trendingList[index]);
                }, childCount: trendingList.length),
              ),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(16, 24, 16, 12),
                  child: Text(
                    "全部明星",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return _CelebrityListTile(celebrity: allList[index]);
                }, childCount: allList.length),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 40)),
            ],
          ),
          // Right Index Bar
          Positioned(
            right: 0,
            top: 40,
            bottom: 40,
            width: 24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _indexList.map((char) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Text(
                    char,
                    style: const TextStyle(
                      fontSize: 10,
                      color: Color(0xFF666666),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class _CelebrityListTile extends StatefulWidget {
  final Celebrity celebrity;

  const _CelebrityListTile({required this.celebrity});

  @override
  State<_CelebrityListTile> createState() => _CelebrityListTileState();
}

class _CelebrityListTileState extends State<_CelebrityListTile> {
  // Randomize initial state for demo purposes to match screenshot variety
  late bool _isFollowing;

  @override
  void initState() {
    super.initState();
    _isFollowing = widget.celebrity.id.hashCode % 3 == 0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          ClipOval(
            child: CachedNetworkImage(
              imageUrl: widget.celebrity.imageUrl,
              width: 56,
              height: 56,
              fit: BoxFit.cover,
              placeholder: (context, url) => Container(color: Colors.grey[200]),
              errorWidget: (context, url, error) => const Icon(Icons.person),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              widget.celebrity.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 12),
          GestureDetector(
            onTap: () {
              setState(() {
                _isFollowing = !_isFollowing;
              });
            },
            child: Container(
              width: 90,
              height: 32,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: _isFollowing
                    ? const Color(0xFFF5F5F5)
                    : const Color(0xFFCCFF00), // Lime Green
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                _isFollowing ? '✓ Followed' : '+ Follow',
                style: TextStyle(
                  color: _isFollowing
                      ? const Color(0xFF999999)
                      : const Color(0xFF1A1A1A),
                  fontWeight: _isFollowing
                      ? FontWeight.normal
                      : FontWeight.w600,
                  fontSize: 13,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16), // Space for index bar
        ],
      ),
    );
  }
}
