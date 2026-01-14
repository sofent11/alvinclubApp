import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:collection/collection.dart';

import '../../../core/navigation/route_paths.dart';
import '../../../data/repositories/product_repository.dart';
import '../../../shared/widgets/empty_state.dart';
import '../application/flash_sale_providers.dart';
import 'widgets/flash_sale_header.dart';
import 'widgets/time_slot_tabs.dart';
import 'widgets/category_filter_bar.dart';
import 'widgets/flash_sale_product_card.dart';

class FlashSaleScreen extends ConsumerStatefulWidget {
  const FlashSaleScreen({super.key, this.productCode});

  final String? productCode;

  @override
  ConsumerState<FlashSaleScreen> createState() => _FlashSaleScreenState();
}

class _FlashSaleScreenState extends ConsumerState<FlashSaleScreen> {
  String? _selectedActivityId;
  String? _selectedCategoryName;
  bool _isInit = true;

  void _onActivitySelected(FlashSaleActivity activity) {
    if (_selectedActivityId == activity.id) return;
    setState(() {
      _selectedActivityId = activity.id;
    });
  }

  void _onCategorySelected(String? categoryName) {
    if (_selectedCategoryName == categoryName) return;
    setState(() {
      _selectedCategoryName = categoryName;
    });

    // Notify provider to filter
    if (_selectedActivityId != null) {
      ref
          .read(flashSaleProductsProvider(_selectedActivityId!).notifier)
          .setCategory(categoryName);
    }
  }

  @override
  Widget build(BuildContext context) {
    final activitiesAsync = ref.watch(flashSaleActivitiesProvider);
    final categoriesAsync = ref.watch(flashSaleCategoriesProvider);

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: activitiesAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
        data: (activities) {
          if (activities.isEmpty) {
            return _buildHeaderWrapper(
              context,
              const EmptyState(
                type: EmptyStateType.search,
                title: 'No flash sales',
                description: 'Please check back later.',
              ),
            );
          }

          // Initialize selection
          if (_isInit) {
            _isInit = false;
            // Select ongoing (status 2) or first
            final ongoing = activities.firstWhereOrNull((a) => a.status == 2);
            _selectedActivityId = ongoing?.id ?? activities.first.id;

            // Handle deep link productCode
            if (widget.productCode != null && _selectedActivityId != null) {
              // Defer to next frame to avoid provider modification during build
              WidgetsBinding.instance.addPostFrameCallback((_) {
                ref
                    .read(
                      flashSaleProductsProvider(_selectedActivityId!).notifier,
                    )
                    .setTargetProductCode(widget.productCode);
              });
            }
          }

          // Safety check if selected ID is somehow invalid (e.g. data refresh)
          if (_selectedActivityId == null ||
              !activities.any((a) => a.id == _selectedActivityId)) {
            _selectedActivityId = activities.first.id;
          }

          return Column(
            children: [
              FlashSaleHeader(
                onBack: () => context.pop(),
                onRulesTap: () {
                  // TODO: Show rules
                },
              ),
              TimeSlotTabs(
                activities: activities,
                selectedActivityId: _selectedActivityId!,
                onActivitySelected: _onActivitySelected,
              ),

              // Category Filter
              categoriesAsync.when(
                data: (categories) => CategoryFilterBar(
                  categories: categories,
                  selectedCategoryName: _selectedCategoryName,
                  onCategorySelected: _onCategorySelected,
                ),
                loading: () => const SizedBox(
                  height: 50,
                  child: Center(child: CircularProgressIndicator()),
                ),
                error: (error, stack) => const SizedBox.shrink(),
              ),

              // Product List
              Expanded(
                child: _FlashSaleProductList(activityId: _selectedActivityId!),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildHeaderWrapper(BuildContext context, Widget child) {
    return Column(
      children: [
        FlashSaleHeader(onBack: () => context.pop()),
        Expanded(child: child),
      ],
    );
  }
}

class _FlashSaleProductList extends ConsumerWidget {
  const _FlashSaleProductList({required this.activityId});

  final String activityId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(flashSaleProductsProvider(activityId));
    final notifier = ref.read(flashSaleProductsProvider(activityId).notifier);

    if (state.isLoading && state.products.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.error != null && state.products.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(state.error!),
            ElevatedButton(
              onPressed: notifier.loadFirstPage,
              child: const Text('Retry'),
            ),
          ],
        ),
      );
    }

    if (state.products.isEmpty) {
      return const EmptyState(
        type: EmptyStateType.search,
        title: 'No products found',
        description: 'Try checking other categories.',
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.only(top: 8, bottom: 20),
      itemCount: state.products.length + (state.hasMore ? 1 : 0),
      itemBuilder: (context, index) {
        if (index == state.products.length) {
          // Load more indicator
          WidgetsBinding.instance.addPostFrameCallback(
            (_) => notifier.loadMore(),
          );
          return const Padding(
            padding: EdgeInsets.all(16),
            child: Center(child: CircularProgressIndicator()),
          );
        }

        final product = state.products[index];
        return FlashSaleProductCard(
          product: product,
          onTap: () => context.pushNamed(
            RoutePaths.productDetail,
            pathParameters: {'productCode': product.id},
          ),
          onAddToCart: () {
            // TODO: Implement add to cart
          },
        );
      },
    );
  }
}
