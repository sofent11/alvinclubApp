import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/auth/auth_store.dart';
import '../../features/account/account_screen.dart';
import '../../features/auth/sign_in_screen.dart';
import '../../features/splash/splash_screen.dart';
import '../../features/cart/cart_screen.dart';
import '../../features/catalog/categories_screen.dart';
import '../../features/catalog/category_detail_screen.dart';
import '../../features/catalog/topic_detail_screen.dart';
import '../../features/home/home_screen.dart';
import '../../features/home/kol_landing_screen.dart';
import '../../data/repositories/cart_repository.dart';
import '../../data/repositories/address_repository.dart';
import '../../features/account/presentation/profile_edit_screen.dart';
import '../../features/address/presentation/address_edit_screen.dart';
import '../../features/address/presentation/address_list_screen.dart';
import '../../features/ai_fashion/presentation/ai_fashion_feed_screen.dart';
import '../../features/ai_fashion/presentation/ai_fashion_screen.dart';
import '../../features/ai_fashion/presentation/history_screen.dart';
import '../../features/ai_fashion/presentation/post_detail_screen.dart';
import '../../features/ai_fashion/presentation/model_settings_screen.dart';
import '../../features/ai_fashion/presentation/custom_model_screen.dart';
import '../../features/ai_fashion/presentation/outfit_result_screen.dart';
import '../../features/checkout/presentation/checkout_screen.dart';
import '../../features/checkout/presentation/order_success_screen.dart';
import '../../features/checkout/presentation/payment_screen.dart';
import '../../features/community/presentation/community_screen.dart';
import '../../features/coupon/presentation/coupon_screen.dart';
import '../../features/favorites/presentation/favorites_screen.dart';
import '../../features/flash_sale/presentation/flash_sale_screen.dart';
import '../../features/order/presentation/order_list_screen.dart';
import '../../features/product/product_detail_screen.dart';
import '../../features/wallet/presentation/wallet_screen.dart';
import '../../features/search/presentation/search_results_screen.dart';
import '../../features/search/presentation/search_screen.dart';
import '../../shared/widgets/placeholder_screen.dart';
import 'route_paths.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authControllerProvider);

  return GoRouter(
    initialLocation: RoutePaths.splash,
    routes: [
      ShellRoute(
        builder: (context, state, child) =>
            TabsScaffold(location: state.uri.toString(), child: child),
        routes: [
          GoRoute(
            path: RoutePaths.home,
            name: RoutePaths.home,
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: RoutePaths.categories,
            name: RoutePaths.categories,
            builder: (context, state) => const CategoriesScreen(),
          ),
          GoRoute(
            path: RoutePaths.cart,
            name: RoutePaths.cart,
            builder: (context, state) => const CartScreen(),
          ),
          GoRoute(
            path: RoutePaths.account,
            name: RoutePaths.account,
            builder: (context, state) => const AccountScreen(),
          ),
        ],
      ),
      GoRoute(
        path: RoutePaths.signIn,
        name: RoutePaths.signIn,
        builder: (context, state) => const SignInScreen(),
      ),
      GoRoute(
        path: RoutePaths.splash,
        name: RoutePaths.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: RoutePaths.search,
        name: RoutePaths.search,
        builder: (context, state) => const SearchScreen(),
      ),
      GoRoute(
        path: RoutePaths.searchResults,
        name: RoutePaths.searchResults,
        builder: (context, state) {
          final query = state.uri.queryParameters['q'] ?? '';
          return SearchResultsScreen(query: query);
        },
      ),
      GoRoute(
        path: RoutePaths.productDetail,
        name: RoutePaths.productDetail,
        builder: (context, state) => ProductDetailScreen(
          productCode: state.pathParameters['productCode'] ?? '',
        ),
      ),
      GoRoute(
        path: RoutePaths.categoryDetail,
        name: RoutePaths.categoryDetail,
        builder: (context, state) {
          final id = state.pathParameters['id'] ?? '';
          final title = state.uri.queryParameters['title'];
          return CategoryDetailScreen(id: id, title: title);
        },
      ),
      GoRoute(
        path: RoutePaths.topicDetail,
        name: RoutePaths.topicDetail,
        builder: (context, state) {
          final id = state.pathParameters['id'] ?? '';
          final title = state.uri.queryParameters['title'];
          return TopicDetailScreen(id: id, title: title);
        },
      ),
      GoRoute(
        path: RoutePaths.flashSale,
        name: RoutePaths.flashSale,
        builder: (context, state) => const FlashSaleScreen(),
      ),
      GoRoute(
        path: RoutePaths.kol,
        name: RoutePaths.kol,
        builder: (context, state) {
          final code = state.pathParameters['code'] ?? '';
          return KolLandingScreen(code: code);
        },
      ),
      GoRoute(
        path: RoutePaths.checkout,
        name: RoutePaths.checkout,
        builder: (context, state) {
          final items = state.extra as List<CartPricingRequestItem>? ?? [];
          return CheckoutScreen(items: items);
        },
      ),
      GoRoute(
        path: RoutePaths.orderList,
        name: RoutePaths.orderList,
        builder: (context, state) => const OrderListScreen(),
      ),
      GoRoute(
        path: RoutePaths.orderPay,
        name: RoutePaths.orderPay,
        builder: (context, state) => PaymentScreen(
          orderId: state.pathParameters['orderId'] ?? '',
          timeoutSeconds: int.tryParse(
            state.uri.queryParameters['timeout'] ?? '',
          ),
        ),
      ),
      GoRoute(
        path: RoutePaths.orderSuccess,
        name: RoutePaths.orderSuccess,
        builder: (context, state) =>
            OrderSuccessScreen(orderId: state.pathParameters['orderId'] ?? ''),
      ),
      GoRoute(
        path: RoutePaths.addressList,
        name: RoutePaths.addressList,
        builder: (context, state) => const AddressListScreen(),
      ),
      GoRoute(
        path: RoutePaths.addressNew,
        name: RoutePaths.addressNew,
        builder: (context, state) => const AddressEditScreen(),
      ),
      GoRoute(
        path: RoutePaths.addressDetail,
        name: RoutePaths.addressDetail,
        builder: (context, state) {
          final address = state.extra as ShippingAddress?;
          return AddressEditScreen(address: address);
        },
      ),
      GoRoute(
        path: RoutePaths.profileEdit,
        name: RoutePaths.profileEdit,
        builder: (context, state) => const ProfileEditScreen(),
      ),
      GoRoute(
        path: RoutePaths.favorite,
        name: RoutePaths.favorite,
        builder: (context, state) => const FavoritesScreen(),
      ),
      GoRoute(
        path: RoutePaths.coupon,
        name: RoutePaths.coupon,
        builder: (context, state) => const CouponScreen(),
      ),
      GoRoute(
        path: RoutePaths.community,
        name: RoutePaths.community,
        builder: (context, state) => const CommunityScreen(),
      ),
      GoRoute(
        path: RoutePaths.wallet,
        name: RoutePaths.wallet,
        builder: (context, state) => const WalletScreen(),
      ),
      GoRoute(
        path: RoutePaths.walletRebate,
        name: RoutePaths.walletRebate,
        builder: (context, state) =>
            const PlaceholderScreen(title: 'Wallet Rebate'),
      ),
      GoRoute(
        path: RoutePaths.walletTransactions,
        name: RoutePaths.walletTransactions,
        builder: (context, state) =>
            const PlaceholderScreen(title: 'Wallet Transactions'),
      ),
      GoRoute(
        path: RoutePaths.webview,
        name: RoutePaths.webview,
        builder: (context, state) => const PlaceholderScreen(title: 'WebView'),
      ),
      GoRoute(
        path: RoutePaths.modal,
        name: RoutePaths.modal,
        builder: (context, state) => const PlaceholderScreen(title: 'Modal'),
      ),
      GoRoute(
        path: RoutePaths.fashionFeed,
        name: RoutePaths.fashionFeed,
        builder: (context, state) => const AiFashionFeedScreen(),
      ),
      GoRoute(
        path: RoutePaths.fashionStyleMe,
        name: RoutePaths.fashionStyleMe,
        builder: (context, state) {
          return AiFashionScreen(
            productImageUrl: state.uri.queryParameters['imageUrl'] ?? '',
            taskId: state.uri.queryParameters['taskId'],
            templateId: state.uri.queryParameters['templateId'],
            modelId: state.uri.queryParameters['modelId'],
            prompt: state.uri.queryParameters['prompt'],
            modelImage: state.uri.queryParameters['modelImage'],
            modelHeaderImg: state.uri.queryParameters['modelHeaderImg'],
          );
        },
      ),
      GoRoute(
        path: RoutePaths.fashionModelSettings,
        name: RoutePaths.fashionModelSettings,
        builder: (context, state) => const ModelSettingsScreen(),
      ),
      GoRoute(
        path: RoutePaths.fashionCustomModel,
        name: RoutePaths.fashionCustomModel,
        builder: (context, state) => const CustomModelScreen(),
      ),
      GoRoute(
        path: RoutePaths.fashionOutfitResult,
        name: RoutePaths.fashionOutfitResult,
        builder: (context, state) {
          final taskId = state.uri.queryParameters['taskId'] ?? '';
          return OutfitResultScreen(taskId: taskId);
        },
      ),
      GoRoute(
        path: RoutePaths.fashionHistory,
        name: RoutePaths.fashionHistory,
        builder: (context, state) => const HistoryScreen(),
      ),
      GoRoute(
        path: RoutePaths.fashionPost,
        name: RoutePaths.fashionPost,
        builder: (context, state) =>
            PostDetailScreen(postId: state.pathParameters['id'] ?? ''),
      ),
    ],
    redirect: (context, state) {
      final status = authState.status;
      final isAuthed = status == AuthStatus.authenticated;
      final isSignIn = state.matchedLocation == RoutePaths.signIn;
      final isProtected = _protectedPrefixes.any(
        (path) => state.matchedLocation.startsWith(path),
      );

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
    if (location.startsWith(RoutePaths.community)) return 2;
    if (location.startsWith(RoutePaths.cart)) return 3;
    if (location.startsWith(RoutePaths.account)) return 4;
    return 0;
  }

  void _onTap(BuildContext context, int index) {
    HapticFeedback.selectionClick();
    switch (index) {
      case 1:
        context.go(RoutePaths.categories);
        break;
      case 2:
        context.go(RoutePaths.community);
        break;
      case 3:
        context.go(RoutePaths.cart);
        break;
      case 4:
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
    const selectedColor = Color(0xFFFF6B81);
    final unselectedColor = const Color(0xFF1A1A1A).withValues(alpha: 0.55);

    return Scaffold(
      body: SafeArea(child: child),
      bottomNavigationBar: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          border: const Border(top: BorderSide(color: Color(0x14000000))),
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => _onTap(context, index),
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          iconSize: 28,
          backgroundColor: Colors.white,
          selectedItemColor: selectedColor,
          unselectedItemColor: unselectedColor,
          selectedLabelStyle: const TextStyle(fontSize: 12),
          unselectedLabelStyle: const TextStyle(fontSize: 12),
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_rounded),
              label: 'Category',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.forum_outlined),
              label: 'Inbox',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
