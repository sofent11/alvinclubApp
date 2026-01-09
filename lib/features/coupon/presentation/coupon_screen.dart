import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/theme/app_theme.dart';
import '../../../data/repositories/coupon_repository.dart';
import '../../../shared/widgets/themed_text.dart';
import '../application/coupon_providers.dart';

class CouponScreen extends StatefulWidget {
  const CouponScreen({super.key});

  @override
  State<CouponScreen> createState() => _CouponScreenState();
}

class _CouponScreenState extends State<CouponScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
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
        title: const Text('My Coupons'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Usable'),
            Tab(text: 'Used'),
            Tab(text: 'Expired'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          _CouponList(status: '0'),
          _CouponList(status: '1'),
          _CouponList(status: '2'),
        ],
      ),
    );
  }
}

class _CouponList extends ConsumerWidget {
  const _CouponList({required this.status});

  final String status;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final couponsAsync = ref.watch(userCouponsProvider(status));

    return couponsAsync.when(
      data: (coupons) {
        if (coupons.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.local_offer_outlined, size: 64, color: Colors.grey[300]),
                const SizedBox(height: 16),
                const Text('No coupons available'),
              ],
            ),
          );
        }

        return ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: coupons.length,
          separatorBuilder: (_, _) => const SizedBox(height: 12),
          itemBuilder: (context, index) {
            final coupon = coupons[index];
            return _CouponCard(coupon: coupon, isInactive: status != '0');
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, _) => Center(child: Text('Error: $err')),
    );
  }
}

class _CouponCard extends StatelessWidget {
  const _CouponCard({required this.coupon, this.isInactive = false});

  final UserCoupon coupon;
  final bool isInactive;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final currency = coupon.currency ?? 'USD';

    return Opacity(
      opacity: isInactive ? 0.6 : 1.0,
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: colors.border),
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Container(
              width: 100,
              color: isInactive ? Colors.grey[400] : colors.tint.withValues(alpha: 0.1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    currency,
                    style: TextStyle(
                      color: isInactive ? Colors.grey[600] : colors.tint,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    coupon.discountAmount?.toStringAsFixed(0) ?? '0',
                    style: TextStyle(
                      color: isInactive ? Colors.grey[600] : colors.tint,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ThemedText(coupon.title, type: ThemedTextType.defaultSemiBold),
                    if (coupon.minSpend != null)
                      Text(
                        'Min Spend: $currency ${coupon.minSpend}',
                        style: TextStyle(fontSize: 12, color: colors.textMuted),
                      ),
                    const Spacer(),
                    if (coupon.endTime != null)
                      Text(
                        'Expires: ${coupon.endTime}',
                        style: TextStyle(fontSize: 11, color: Colors.grey[500]),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
