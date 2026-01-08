import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/auth/auth_store.dart';
import '../../features/account/account_screen.dart';
import '../../features/auth/sign_in_screen.dart';
import '../../features/cart/cart_screen.dart';
import '../../features/catalog/categories_screen.dart';
import '../../features/home/home_screen.dart';
import '../../features/product/product_detail_screen.dart';
import '../../shared/widgets/placeholder_screen.dart';
import 'route_paths.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authControllerProvider);

  return GoRouter(
    initialLocation: RoutePaths.home,
    routes: [
      ShellRoute(
        builder: (context, state, child) => TabsScaffold(location: state.uri.toString(), child: child),
        routes: [
          GoRoute(path: RoutePaths.home, builder: (context, state) => const HomeScreen()),
          GoRoute(path: RoutePaths.categories, builder: (context, state) => const CategoriesScreen()),
          GoRoute(path: RoutePaths.cart, builder: (context, state) => const CartScreen()),
          GoRoute(path: RoutePaths.account, builder: (context, state) => const AccountScreen()),
        ],
      ),
      GoRoute(path: RoutePaths.signIn, builder: (context, state) => const SignInScreen()),
      GoRoute(
        path: RoutePaths.search,
        builder: (context, state) => const PlaceholderScreen(title: 'Search'),
      ),
      GoRoute(
        path: RoutePaths.searchResults,
        builder: (context, state) => const PlaceholderScreen(title: 'Search Results'),
      ),
      GoRoute(
        path: RoutePaths.productDetail,
        builder: (context, state) => ProductDetailScreen(
          productCode: state.pathParameters['productCode'] ?? '',
        ),
      ),
      GoRoute(
        path: RoutePaths.categoryDetail,
        builder: (context, state) => PlaceholderScreen(title: 'Category ${state.pathParameters['id']}'),
      ),
      GoRoute(
        path: RoutePaths.topicDetail,
        builder: (context, state) => PlaceholderScreen(title: 'Topic ${state.pathParameters['id']}'),
      ),
      GoRoute(path: RoutePaths.flashSale, builder: (context, state) => const PlaceholderScreen(title: 'Flash Sale')),
      GoRoute(path: RoutePaths.kol, builder: (context, state) => PlaceholderScreen(title: 'KOL ${state.pathParameters['code']}')),
      GoRoute(path: RoutePaths.checkout, builder: (context, state) => const PlaceholderScreen(title: 'Checkout')),
      GoRoute(path: RoutePaths.orderList, builder: (context, state) => const PlaceholderScreen(title: 'Orders')),
      GoRoute(
        path: RoutePaths.orderPay,
        builder: (context, state) => PlaceholderScreen(title: 'Order Pay ${state.pathParameters['orderId']}'),
      ),
      GoRoute(
        path: RoutePaths.orderSuccess,
        builder: (context, state) => PlaceholderScreen(title: 'Order Success ${state.pathParameters['orderId']}'),
      ),
      GoRoute(path: RoutePaths.addressList, builder: (context, state) => const PlaceholderScreen(title: 'Addresses')),
      GoRoute(path: RoutePaths.addressNew, builder: (context, state) => const PlaceholderScreen(title: 'New Address')),
      GoRoute(
        path: RoutePaths.addressDetail,
        builder: (context, state) => PlaceholderScreen(title: 'Address ${state.pathParameters['id']}'),
      ),
      GoRoute(path: RoutePaths.profileEdit, builder: (context, state) => const PlaceholderScreen(title: 'Edit Profile')),
      GoRoute(path: RoutePaths.coupon, builder: (context, state) => const PlaceholderScreen(title: 'Coupons')),
      GoRoute(path: RoutePaths.favorite, builder: (context, state) => const PlaceholderScreen(title: 'Favorites')),
      GoRoute(path: RoutePaths.community, builder: (context, state) => const PlaceholderScreen(title: 'Community')),
      GoRoute(path: RoutePaths.wallet, builder: (context, state) => const PlaceholderScreen(title: 'Wallet')),
      GoRoute(path: RoutePaths.walletRebate, builder: (context, state) => const PlaceholderScreen(title: 'Wallet Rebate')),
      GoRoute(
        path: RoutePaths.walletTransactions,
        builder: (context, state) => const PlaceholderScreen(title: 'Wallet Transactions'),
      ),
      GoRoute(path: RoutePaths.webview, builder: (context, state) => const PlaceholderScreen(title: 'WebView')),
      GoRoute(path: RoutePaths.modal, builder: (context, state) => const PlaceholderScreen(title: 'Modal')),
      GoRoute(path: RoutePaths.fashionStyleMe, builder: (context, state) => const PlaceholderScreen(title: 'Style Me')),
      GoRoute(
        path: RoutePaths.fashionModelSettings,
        builder: (context, state) => const PlaceholderScreen(title: 'Model Settings'),
      ),
      GoRoute(
        path: RoutePaths.fashionCustomModel,
        builder: (context, state) => const PlaceholderScreen(title: 'Custom Model'),
      ),
      GoRoute(
        path: RoutePaths.fashionOutfitResult,
        builder: (context, state) => const PlaceholderScreen(title: 'Outfit Result'),
      ),
      GoRoute(path: RoutePaths.fashionHistory, builder: (context, state) => const PlaceholderScreen(title: 'History')),
      GoRoute(
        path: RoutePaths.fashionPost,
        builder: (context, state) => PlaceholderScreen(title: 'Fashion Post ${state.pathParameters['id']}'),
      ),
    ],
    redirect: (context, state) {
      final status = authState.status;
      final isAuthed = status == AuthStatus.authenticated;
      final isSignIn = state.matchedLocation == RoutePaths.signIn;
      final isProtected = _protectedPrefixes.any((path) => state.matchedLocation.startsWith(path));

      if (isProtected && !isAuthed) {
        return RoutePaths.signIn;
      }

      if (isSignIn && isAuthed) {
        return RoutePaths.home;
      }

      return null;
    },
  );
});

const List<String> _protectedPrefixes = [
  RoutePaths.cart,
  RoutePaths.checkout,
  RoutePaths.orderList,
  '/order/',
  RoutePaths.addressList,
  '/address/',
  RoutePaths.profileEdit,
  RoutePaths.coupon,
  RoutePaths.favorite,
  RoutePaths.community,
  RoutePaths.wallet,
];

class TabsScaffold extends StatelessWidget {
  const TabsScaffold({super.key, required this.location, required this.child});

  final String location;
  final Widget child;

  int _indexForLocation() {
    if (location.startsWith(RoutePaths.categories)) return 1;
    if (location.startsWith(RoutePaths.cart)) return 2;
    if (location.startsWith(RoutePaths.account)) return 3;
    return 0;
  }

  void _onTap(BuildContext context, int index) {
    HapticFeedback.selectionClick();
    switch (index) {
      case 1:
        context.go(RoutePaths.categories);
        break;
      case 2:
        context.go(RoutePaths.cart);
        break;
      case 3:
        context.go(RoutePaths.account);
        break;
      case 0:
      default:
        context.go(RoutePaths.home);
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentIndex = _indexForLocation();

    return Scaffold(
      body: SafeArea(child: child),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => _onTap(context, index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.category_outlined), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Account'),
        ],
      ),
    );
  }
}
