import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

import '../../../core/navigation/route_paths.dart';
import '../../../core/theme/app_theme.dart';
import '../../../data/repositories/product_repository.dart';
import '../../../shared/widgets/product_card.dart';
import '../../../shared/widgets/themed_text.dart';
import '../application/flash_sale_providers.dart';

class FlashSaleScreen extends ConsumerStatefulWidget {
  const FlashSaleScreen({super.key});

  @override
  ConsumerState<FlashSaleScreen> createState() => _FlashSaleScreenState();
}

class _FlashSaleScreenState extends ConsumerState<FlashSaleScreen> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final activitiesAsync = ref.watch(flashSaleActivitiesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flash Sale'),
      ),
      body: activitiesAsync.when(
        data: (activities) {
          if (activities.isEmpty) {
            return const Center(child: Text('No flash sales at the moment.'));
          }

          if (_tabController == null || _tabController!.length != activities.length) {
            _tabController = TabController(length: activities.length, vsync: this);
          }

          return Column(
            children: [
              TabBar(
                controller: _tabController,
                isScrollable: true,
                tabs: activities.map((a) => Tab(text: a.title)).toList(),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: activities.map((a) => _FlashSaleList(activity: a)).toList(),
                ),
              ),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text('Error: $err')),
      ),
    );
  }
}

class _FlashSaleList extends ConsumerWidget {
  const _FlashSaleList({required this.activity});

  final FlashSaleActivity activity;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(flashSaleProductsProvider(activity.id));
    final notifier = ref.read(flashSaleProductsProvider(activity.id).notifier);

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: _FlashSaleHeader(activity: activity),
        ),
        if (state.isLoading && state.products.isEmpty)
          const SliverFillRemaining(child: Center(child: CircularProgressIndicator()))
        else if (state.error != null && state.products.isEmpty)
          SliverFillRemaining(child: Center(child: Text('Error: ${state.error}')))
        else if (state.products.isEmpty)
          const SliverFillRemaining(child: Center(child: Text('No products found.')))
        else
          SliverPadding(
            padding: const EdgeInsets.all(12),
            sliver: SliverMasonryGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childCount: state.products.length,
              itemBuilder: (context, index) {
                // Load more check
                if (index >= state.products.length - 2) {
                  WidgetsBinding.instance.addPostFrameCallback((_) => notifier.loadMore());
                }
                
                final product = state.products[index];
                return ProductCard(
                  product: product,
                  onTap: () => context.pushNamed(
                    RoutePaths.productDetail,
                    pathParameters: {'productCode': product.id},
                  ),
                );
              },
            ),
          ),
        if (state.isLoading && state.products.isNotEmpty)
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Center(child: CircularProgressIndicator()),
            ),
          ),
      ],
    );
  }
}

class _FlashSaleHeader extends StatefulWidget {
  const _FlashSaleHeader({required this.activity});

  final FlashSaleActivity activity;

  @override
  State<_FlashSaleHeader> createState() => _FlashSaleHeaderState();
}

class _FlashSaleHeaderState extends State<_FlashSaleHeader> {
  Timer? _timer;
  Duration _timeLeft = Duration.zero;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    final endTime = DateTime.tryParse(widget.activity.endTime);
    if (endTime == null) return;

    _updateTime(endTime);
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _updateTime(endTime);
    });
  }

  void _updateTime(DateTime endTime) {
    final now = DateTime.now();
    setState(() {
      _timeLeft = endTime.isAfter(now) ? endTime.difference(now) : Duration.zero;
    });
  }

  String _formatDuration(Duration d) {
    final hours = d.inHours.toString().padLeft(2, '0');
    final minutes = (d.inMinutes % 60).toString().padLeft(2, '0');
    final seconds = (d.inSeconds % 60).toString().padLeft(2, '0');
    return '$hours:$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colors.tint.withValues(alpha: 0.05),
      ),
      child: Column(
        children: [
          if (widget.activity.banner != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CachedNetworkImage(imageUrl: widget.activity.banner!, fit: BoxFit.cover),
              ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ThemedText('Ends In: ', type: ThemedTextType.defaultSemiBold),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: colors.tint,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  _formatDuration(_timeLeft),
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
