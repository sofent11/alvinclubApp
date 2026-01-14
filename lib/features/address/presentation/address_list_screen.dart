import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/navigation/route_paths.dart';
import '../../../core/theme/app_theme.dart';
import '../../../data/repositories/address_repository.dart';
import '../../../shared/widgets/themed_text.dart';
import '../application/address_providers.dart';

class AddressListScreen extends ConsumerWidget {
  const AddressListScreen({super.key, this.isPicker = false});

  final bool isPicker;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addressListAsync = ref.watch(addressListProvider);
    final currentAddressAsync = ref.watch(currentShippingAddressProvider);
    final selectedId = currentAddressAsync.valueOrNull?.id;

    return Scaffold(
      backgroundColor: const Color(
        0xFFF7F7F7,
      ), // Light grey background for contrast
      appBar: AppBar(
        title: const Text(
          'Select Shipping Address',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: addressListAsync.when(
        data: (addresses) {
          if (addresses.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.location_off_outlined,
                    size: 64,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'No addresses found',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            );
          }

          return ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: addresses.length,
            separatorBuilder: (_, _) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              final address = addresses[index];
              final isSelected = isPicker && address.id == selectedId;

              return _AddressCard(
                address: address,
                isPicker: isPicker,
                isSelected: isSelected,
                onTap: () async {
                  if (isPicker) {
                    // 1. Update selection immediately
                    await ref
                        .read(addressSelectionProvider.notifier)
                        .selectAddress(address.id);

                    // 2. Wait for visual feedback
                    await Future.delayed(const Duration(milliseconds: 200));

                    // 3. Pop
                    if (context.mounted) {
                      context.pop();
                    }
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
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: SizedBox(
            width: double.infinity,
            height: 54,
            child: ElevatedButton(
              onPressed: () => context.push(RoutePaths.addressNew),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF9F7AEA), // Purple background
                foregroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(27), // Pill shape
                ),
              ),
              child: const Text(
                'Add New Address',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _AddressCard extends StatelessWidget {
  const _AddressCard({
    required this.address,
    required this.isPicker,
    this.isSelected = false,
    this.onTap,
  });

  final ShippingAddress address;
  final bool isPicker;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: colors.border, // Always subtle grey border
            width: 1,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Row 1: Name + Phone
                  Row(
                    children: [
                      ThemedText(
                        '${address.firstName} ${address.lastName}',
                        type: ThemedTextType.defaultSemiBold,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        address.phone,
                        style: TextStyle(color: colors.textMuted, fontSize: 13),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  // Row 2: Address Lines
                  Text(
                    '${address.addressLine1}${address.addressLine2 != null ? ', ${address.addressLine2}' : ''}',
                    style: TextStyle(fontSize: 13, color: colors.textMuted),
                  ),
                  const SizedBox(height: 2),
                  // Row 3: City, State, Zip, Country
                  Text(
                    '${address.city}, ${address.province}, ${address.zipCode}, ${address.country}',
                    style: TextStyle(
                      fontSize: 13,
                      color: colors.text, // Darker text
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            // Selection Indicator
            if (isSelected)
              const Padding(
                padding: EdgeInsets.only(left: 12),
                child: Icon(
                  Icons.check_circle,
                  color: Color(0xFFF56565), // Red/Orange
                  size: 24,
                ),
              )
            else if (!isPicker)
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Icon(
                  Icons.edit_outlined,
                  color: colors.textMuted,
                  size: 20,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
