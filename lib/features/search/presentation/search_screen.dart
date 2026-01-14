import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/navigation/route_paths.dart';
import '../../../core/theme/app_theme.dart';
import '../../../shared/widgets/themed_text.dart';
import '../application/search_history_notifier.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    // Auto focus the search field
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _onSearch(String query) {
    if (query.trim().isEmpty) return;
    ref.read(searchHistoryNotifierProvider.notifier).add(query);
    context.push(
      Uri(
        path: RoutePaths.searchResults,
        queryParameters: {'q': query},
      ).toString(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
              decoration: BoxDecoration(
                color: colors.background,
                border: Border(
                  bottom: BorderSide(color: colors.border, width: 0.5),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: colors.border,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.search, color: colors.tint, size: 18),
                          const SizedBox(width: 8),
                          Expanded(
                            child: TextField(
                              controller: _controller,
                              focusNode: _focusNode,
                              textInputAction: TextInputAction.search,
                              onSubmitted: _onSearch,
                              decoration: InputDecoration(
                                hintText: '搜索商品或品牌',
                                hintStyle: TextStyle(color: colors.textMuted),
                                border: InputBorder.none,
                              ),
                              style: TextStyle(
                                color: colors.text,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  GestureDetector(
                    onTap: () => context.pop(),
                    child: ThemedText(
                      '取消',
                      style: TextStyle(
                        color: colors.text,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(child: _buildHistory(colors)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHistory(AppColorScheme colors) {
    final historyState = ref.watch(searchHistoryNotifierProvider);

    return historyState.when(
      data: (history) {
        if (history.isEmpty) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 60),
            child: Column(
              children: [
                Icon(Icons.search, size: 48, color: colors.textMuted),
                const SizedBox(height: 12),
                ThemedText(
                  '暂无搜索历史',
                  style: TextStyle(color: colors.textMuted, fontSize: 15),
                ),
              ],
            ),
          );
        }

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ThemedText(
                    '历史记录',
                    type: ThemedTextType.defaultSemiBold,
                  ),
                  GestureDetector(
                    onTap: () {
                      ref.read(searchHistoryNotifierProvider.notifier).clear();
                    },
                    child: Icon(
                      Icons.delete_outline,
                      size: 20,
                      color: colors.textMuted,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: history.map((keyword) {
                  return Stack(
                    clipBehavior: Clip.none,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _controller.text = keyword;
                          _onSearch(keyword);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: colors.border,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            keyword,
                            style: TextStyle(color: colors.text, fontSize: 14),
                          ),
                        ),
                      ),
                      Positioned(
                        top: -6,
                        right: -6,
                        child: GestureDetector(
                          onTap: () {
                            ref
                                .read(searchHistoryNotifierProvider.notifier)
                                .remove(keyword);
                          },
                          child: Icon(
                            Icons.cancel,
                            size: 18,
                            color: colors.textMuted,
                          ),
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ],
          ),
        );
      },
      loading: () => Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Center(child: CircularProgressIndicator(color: colors.tint)),
      ),
      error: (e, s) => const SizedBox.shrink(),
    );
  }
}
