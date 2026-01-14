import 'package:w2capp/data/repositories/product_repository.dart';
import 'package:w2capp/features/home/widgets/flash_sale_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('FlashSaleSection renders correctly with empty products', (
    tester,
  ) async {
    const activity = FlashSaleActivity(
      id: '1',
      title: 'Test Sale',
      startTime: '2023-01-01',
      endTime: '2023-01-02',
      status: 1,
    );

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FlashSaleSection(activity: activity, products: []),
        ),
      ),
    );

    // Verify Icon is present (part of 'Flash Sale' title)
    expect(find.byIcon(Icons.bolt), findsWidgets);

    // Verify 'More' button
    expect(find.text('More'), findsOneWidget);

    // Verify timer blocks are present (00:00:00 because date is in past)
    // There are 3 blocks of '00'
    expect(find.text('00'), findsNWidgets(3));
  });
}
