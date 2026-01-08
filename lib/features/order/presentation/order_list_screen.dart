import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/navigation/route_paths.dart';
import '../../../core/theme/app_theme.dart';
import '../../../data/repositories/order_repository.dart';
import '../../../shared/widgets/themed_button.dart';
import '../../../shared/widgets/themed_text.dart';
import '../application/order_providers.dart';

class OrderListScreen extends ConsumerStatefulWidget {
  const OrderListScreen({super.key, this.initialIndex = 0});

  final int initialIndex;

  @override
  ConsumerState<OrderListScreen> createState() => _OrderListScreenState();
}

class _OrderListScreenState extends ConsumerState<OrderListScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Map<String, dynamic>> _tabs = [
    {'label': 'All', 'status': null},
    {'label': 'Unpaid', 'status': '1'},
    {'label': 'To Ship', 'status': '2'},
    {'label': 'To Receive', 'status': '3'},
    {'label': 'Completed', 'status': '4'},
    {'label': 'Cancelled', 'status': '5'},
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: _tabs.length,
      vsync: this,
      initialIndex: widget.initialIndex,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Orders'),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: _tabs.map((t) => Tab(text: t['label'] as String)).toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _tabs.map((t) {
          return _OrderListTab(status: t['status'] as String?);
        }).toList(),
      ),
    );
  }
}

class _OrderListTab extends ConsumerStatefulWidget {
  const _OrderListTab({this.status});

  final String? status;

  @override
  ConsumerState<_OrderListTab> createState() => _OrderListTabState();
}

class _OrderListTabState extends ConsumerState<_OrderListTab> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final state = ref.watch(orderListProvider(widget.status));
    final notifier = ref.read(orderListProvider(widget.status).notifier);

    if (state.isLoading && state.orders.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.error != null && state.orders.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Error: ${state.error}'),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => notifier.refresh(),
              child: const Text('Retry'),
            ),
          ],
        ),
      );
    }

    if (state.orders.isEmpty) {
      return const Center(child: Text('No orders found.'));
    }

    return RefreshIndicator(
      onRefresh: () => notifier.refresh(),
      child: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: state.orders.length + (state.isLoading ? 1 : 0),
        separatorBuilder: (_, __) => const SizedBox(height: 16),
        itemBuilder: (context, index) {
          if (index == state.orders.length) {
            return const Padding(
              padding: EdgeInsets.all(16),
              child: Center(child: CircularProgressIndicator()),
            );
          }

          // Check if we need to load more
          if (index >= state.orders.length - 2) {
            // Defer loadMore to avoid build phase issues
            WidgetsBinding.instance.addPostFrameCallback((_) {
              notifier.loadMore();
            });
          }

          final order = state.orders[index];
          return OrderCard(order: order);
        },
      ),
    );
  }
}

class OrderCard extends StatelessWidget {
  const OrderCard({super.key, required this.order});

  final OrderListItem order;

  @override
  Widget build(BuildContext context) {
    final currency = order.currency ?? 'USD';
    final total = order.totalAmount ?? 0;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Order #${order.orderId}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                order.statusText,
                style: TextStyle(color: context.appColors.primary, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Divider(),
          ...order.items.take(3).map((item) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: CachedNetworkImage(
                      imageUrl: item.image ?? '',
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                      errorWidget: (_, __, ___) => Container(color: Colors.grey[200]),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.productName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        if (item.options.isNotEmpty)
                          Text(
                            item.options.map((o) => o.value).join(', '),
                            style: TextStyle(color: Colors.grey[600], fontSize: 12),
                          ),
                        const SizedBox(height: 4),
                        Text('x${item.quantity}', style: const TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
          if (order.items.length > 3)
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                'View ${order.items.length - 3} more items...',
                style: TextStyle(color: Colors.grey[600], fontSize: 12),
              ),
            ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${order.quantity} Items'),
              RichText(
                text: TextSpan(
                  style: const TextStyle(color: Colors.black),
                  children: [
                    const TextSpan(text: 'Total: '),
                    TextSpan(
                      text: '$currency ${total.toStringAsFixed(2)}',
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Actions based on status
              if (order.frontStatus == 1) ...[
                // Unpaid
                OutlinedButton(
                  onPressed: () {
                    // TODO: Cancel Order
                  },
                  child: const Text('Cancel'),
                ),
                const SizedBox(width: 8),
                ThemedButton(
                  label: 'Pay Now',
                  variant: ThemedButtonVariant.primary,
                  size: ThemedButtonSize.sm,
                  onPressed: () {
                    context.pushNamed(
                      RoutePaths.orderPay,
                      pathParameters: {'orderId': order.orderId},
                    );
                  },
                ),
              ],
              if (order.frontStatus == 3) ...[
                // To Receive
                 ThemedButton(
                  label: 'Confirm Receipt',
                  variant: ThemedButtonVariant.primary,
                  size: ThemedButtonSize.sm,
                  onPressed: () {
                    // TODO: Confirm Receipt
                  },
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}
