import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/navigation/route_paths.dart';
import '../../../core/theme/app_theme.dart';
import '../../../data/repositories/address_repository.dart';
import '../../../shared/widgets/themed_button.dart';
import '../../../shared/widgets/themed_text.dart';
import '../application/address_providers.dart';

class AddressListScreen extends ConsumerWidget {
  const AddressListScreen({super.key, this.isPicker = false});

  final bool isPicker;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addressListAsync = ref.watch(addressListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Shipping Addresses'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => context.push(RoutePaths.addressNew),
          ),
        ],
      ),
      body: addressListAsync.when(
        data: (addresses) {
          if (addresses.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.location_off_outlined, size: 64, color: Colors.grey),
                  const SizedBox(height: 16),
                  const Text('No addresses found'),
                  const SizedBox(height: 24),
                  ThemedButton(
                    label: 'Add New Address',
                    onPressed: () => context.push(RoutePaths.addressNew),
                  ),
                ],
              ),
            );
          }

          return ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: addresses.length,
            separatorBuilder: (_, __) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              final address = addresses[index];
              return _AddressCard(
                address: address,
                isPicker: isPicker,
                onTap: () {
                  if (isPicker) {
                    context.pop(address);
                  } else {
                    context.push(
                      RoutePaths.addressDetail.replaceFirst(':id', address.id),
                      extra: address,
                    );
                  }
                },
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text('Error: $err')),
      ),
      bottomNavigationBar: addressListAsync.valueOrNull?.isNotEmpty == true
          ? SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: ThemedButton(
                  label: 'Add New Address',
                  onPressed: () => context.push(RoutePaths.addressNew),
                ),
              ),
            )
          : null,
    );
  }
}

class _AddressCard extends StatelessWidget {
  const _AddressCard({
    required this.address,
    required this.isPicker,
    this.onTap,
  });

  final ShippingAddress address;
  final bool isPicker;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: colors.border),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ThemedText(
                        '${address.firstName} ${address.lastName}',
                        type: ThemedTextType.defaultSemiBold,
                      ),
                      if (address.isDefault) ...[
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            color: colors.tint.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            'Default',
                            style: TextStyle(color: colors.tint, fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(address.phone, style: TextStyle(color: colors.textMuted, fontSize: 13)),
                  const SizedBox(height: 8),
                  Text(
                    '${address.addressLine1}${address.addressLine2 != null ? ', ${address.addressLine2}' : ''}',
                    style: const TextStyle(fontSize: 14),
                  ),
                  Text(
                    '${address.city}, ${address.province}, ${address.country} ${address.zipCode}',
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            if (!isPicker)
              IconButton(
                icon: const Icon(Icons.edit_outlined, size: 20),
                onPressed: onTap,
              ),
          ],
        ),
      ),
    );
  }
}
