import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:w2capp/features/product/product_detail_screen.dart';
import 'package:w2capp/features/product/product_providers.dart';
import 'package:w2capp/data/repositories/product_repository.dart';
import 'package:w2capp/core/theme/app_theme.dart';

void main() {
  testWidgets('ProductDetailScreen renders correctly', (tester) async {
    const productCode = '123';

    // Mock Data
    const mockDetail = ProductDetail(
      id: productCode,
      name: 'Test Product',
      images: [], // Empty to avoid CachedNetworkImage issues
      detailImages: [],
      options: [],
      attributes: [],
      price: 100.0,
      currency: 'USD',
    );

    // Set a large screen size to ensure everything renders
    tester.view.physicalSize = const Size(1080, 2400);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(() => tester.view.resetPhysicalSize());

    await tester.runAsync(() async {
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            productDetailProvider(
              productCode,
            ).overrideWith((ref) => Future.value(mockDetail)),
            productSkusProvider(
              productCode,
            ).overrideWith((ref) => Future.value([])),
            productReviewsProvider(productCode).overrideWith(
              (ref) => Future.value((reviews: <ProductReview>[], total: 0)),
            ),
            productReviewSummaryProvider(
              productCode,
            ).overrideWith((ref) => Future.value(null)),
            similarProductsProvider(
              productCode,
            ).overrideWith((ref) => Future.value([])),
            isFavoriteProvider(
              productCode,
            ).overrideWith((ref) => const AsyncData(false)),
          ],
          child: MaterialApp(
            theme: AppTheme.light(),
            home: const ProductDetailScreen(productCode: productCode),
          ),
        ),
      );

      await tester.pump();
      await tester.pump(const Duration(milliseconds: 100));
    });

    // One more pump outside async just in case
    await tester.pump();

    if (find.byType(CircularProgressIndicator).evaluate().isNotEmpty) {
      print('DEBUG: Still showing CircularProgressIndicator');
    }

    expect(find.text('Test Product'), findsOneWidget);
    expect(find.text('USD 100.00'), findsOneWidget);
    expect(find.text('Add to Cart'), findsOneWidget);
  });
}
