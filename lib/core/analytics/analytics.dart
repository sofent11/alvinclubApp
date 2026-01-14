import 'package:flutter/foundation.dart';

typedef EventParams = Map<String, dynamic>;

enum EventName {
  pageView,
  productExposure,
  productClick,
  searchSubmit,
  tabSwitch,
  topicView,
  categoryClick,
  quickEntryClick,
  addToCart,
  initiateCheckout,
  paymentSuccess,
  paymentFail,
  submitRebate,
  shareClick,
  communityPostView,
  communityPostLike,
  imageTranslate,
  couponClaim,
  couponUse,
  favoriteAdd,
  favoriteRemove,
}

class AnalyticsEvent {
  AnalyticsEvent({
    required this.name,
    required this.params,
    required this.timestamp,
  });

  final EventName name;
  final EventParams params;
  final int timestamp;
}

class AnalyticsClient {
  final List<AnalyticsEvent> _events = [];

  void track(EventName name, [EventParams params = const {}]) {
    final event = AnalyticsEvent(
      name: name,
      params: params,
      timestamp: DateTime.now().millisecondsSinceEpoch,
    );

    _events.add(event);

    if (kDebugMode) {
      debugPrint('[Analytics] ${name.name} $params');
    }
  }

  void pageView(String pageName, [EventParams params = const {}]) {
    track(EventName.pageView, {'page_name': pageName, ...params});
  }

  void productExposure(String productId, {String? productName, int? position}) {
    track(EventName.productExposure, {
      'product_id': productId,
      'product_name': productName,
      'position': position,
    });
  }

  void productClick(
    String productId, {
    String? productName,
    String? pageSource,
  }) {
    track(EventName.productClick, {
      'product_id': productId,
      'product_name': productName,
      'page_source': pageSource,
    });
  }

  void searchSubmit(String keyword, {int? resultCount}) {
    track(EventName.searchSubmit, {
      'keyword': keyword,
      'result_count': resultCount,
    });
  }

  void tabSwitch(String tabName, {String? pageSource}) {
    track(EventName.tabSwitch, {
      'tab_name': tabName,
      'page_source': pageSource,
    });
  }

  void topicView(String topicId, {String? topicName}) {
    track(EventName.topicView, {'topic_id': topicId, 'topic_name': topicName});
  }

  void categoryClick(
    String categoryId,
    String categoryName, {
    String? pageSource,
  }) {
    track(EventName.categoryClick, {
      'category_id': categoryId,
      'category_name': categoryName,
      'page_source': pageSource,
    });
  }

  void quickEntryClick(String entryId, String entryName) {
    track(EventName.quickEntryClick, {
      'entry_id': entryId,
      'entry_name': entryName,
    });
  }

  void addToCart(String skuCode, int quantity, {String? pageSource}) {
    track(EventName.addToCart, {
      'sku_code': skuCode,
      'quantity': quantity,
      'page_source': pageSource,
    });
  }

  void initiateCheckout(String orderId, double amount, String currency) {
    track(EventName.initiateCheckout, {
      'order_id': orderId,
      'amount': amount,
      'currency': currency,
    });
  }

  void paymentSuccess(
    String orderId,
    double amount,
    String currency,
    String method,
  ) {
    track(EventName.paymentSuccess, {
      'order_id': orderId,
      'amount': amount,
      'currency': currency,
      'method': method,
    });
  }

  void paymentFail(String orderId, String reason) {
    track(EventName.paymentFail, {'order_id': orderId, 'reason': reason});
  }

  void submitRebate(String orderId, double amount) {
    track(EventName.submitRebate, {'order_id': orderId, 'amount': amount});
  }

  void shareClick(String contentType, String contentId, {String? platform}) {
    track(EventName.shareClick, {
      'content_type': contentType,
      'content_id': contentId,
      'platform': platform,
    });
  }

  void communityPostView(String postId) {
    track(EventName.communityPostView, {'post_id': postId});
  }

  void communityPostLike(String postId, bool isLiked) {
    track(EventName.communityPostLike, {
      'post_id': postId,
      'is_liked': isLiked,
    });
  }

  void imageTranslate(String imageUrl, bool success) {
    track(EventName.imageTranslate, {
      'image_url': imageUrl,
      'success': success,
    });
  }

  void couponClaim(String couponId) {
    track(EventName.couponClaim, {'coupon_id': couponId});
  }

  void couponUse(String couponId, {String? orderId}) {
    track(EventName.couponUse, {'coupon_id': couponId, 'order_id': orderId});
  }

  void favoriteAdd(String productCode) {
    track(EventName.favoriteAdd, {'product_code': productCode});
  }

  void favoriteRemove(String productCode) {
    track(EventName.favoriteRemove, {'product_code': productCode});
  }

  List<AnalyticsEvent> getEvents() => List.unmodifiable(_events);

  void clearEvents() => _events.clear();
}

final analytics = AnalyticsClient();
