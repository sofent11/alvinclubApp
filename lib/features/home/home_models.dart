import 'package:flutter/foundation.dart';

@immutable
class HomeTopNavImage {
  const HomeTopNavImage({
    required this.url,
    this.width,
    this.height,
  });

  final String url;
  final double? width;
  final double? height;

  factory HomeTopNavImage.fromJson(Map<String, dynamic> json) {
    return HomeTopNavImage(
      url: json['url']?.toString() ?? '',
      width: _toDouble(json['width']),
      height: _toDouble(json['height']),
    );
  }
}

@immutable
class HomeTopNavItem {
  const HomeTopNavItem({
    required this.title,
    this.link,
    this.code,
    this.showType,
    this.portalCode = const [],
    this.categoryId,
    this.bgImage,
  });

  final String title;
  final String? link;
  final String? code;
  final String? showType;
  final List<String> portalCode;
  final String? categoryId;
  final HomeTopNavImage? bgImage;

  String get key => link?.isNotEmpty == true ? link! : title;

  factory HomeTopNavItem.fromJson(Map<String, dynamic> json) {
    final portalCodeRaw = json['portalCode'];
    return HomeTopNavItem(
      title: json['title']?.toString() ?? '',
      link: json['link']?.toString(),
      code: json['code']?.toString(),
      showType: json['showType']?.toString(),
      portalCode: portalCodeRaw is List
          ? portalCodeRaw.map((item) => item.toString()).toList()
          : const [],
      categoryId: json['categoryId']?.toString(),
      bgImage: json['bgImage'] is Map<String, dynamic>
          ? HomeTopNavImage.fromJson(json['bgImage'] as Map<String, dynamic>)
          : null,
    );
  }
}

@immutable
class HomeAlbumItem {
  const HomeAlbumItem({
    required this.title,
    required this.albumCode,
    this.icon,
    this.newIcon,
  });

  final String title;
  final String albumCode;
  final String? icon;
  final String? newIcon;

  factory HomeAlbumItem.fromJson(Map<String, dynamic> json) {
    return HomeAlbumItem(
      title: json['title']?.toString() ?? '',
      albumCode: json['albumCode']?.toString() ?? '',
      icon: json['icon']?.toString(),
      newIcon: json['newIcon']?.toString(),
    );
  }
}

@immutable
class PremiumInspiredConfigItem {
  const PremiumInspiredConfigItem({
    required this.image,
    this.tabNormalColor,
    this.tabSelectedColor,
    this.tabsBackgroundColor,
  });

  final String image;
  final String? tabNormalColor;
  final String? tabSelectedColor;
  final String? tabsBackgroundColor;

  factory PremiumInspiredConfigItem.fromJson(Map<String, dynamic> json) {
    return PremiumInspiredConfigItem(
      image: json['image']?.toString() ?? '',
      tabNormalColor: json['tabNormalColor']?.toString(),
      tabSelectedColor: json['tabSelectedColor']?.toString(),
      tabsBackgroundColor: json['tabsBackgroundColor']?.toString(),
    );
  }
}

double? _toDouble(Object? value) {
  if (value == null) return null;
  if (value is num) return value.toDouble();
  return double.tryParse(value.toString());
}
