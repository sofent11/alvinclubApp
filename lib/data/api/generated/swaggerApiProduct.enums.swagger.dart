// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum ProductServiceProductPremiumDupeNoAuthPagePostRequestSort {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('DEFAULT')
  $default('DEFAULT'),
  @JsonValue('PRICE')
  price('PRICE'),
  @JsonValue('SALES')
  sales('SALES');

  final String? value;

  const ProductServiceProductPremiumDupeNoAuthPagePostRequestSort(this.value);
}

enum ProductServiceProductPremiumDupeNoAuthPagePostRequestOrder {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ASC')
  asc('ASC'),
  @JsonValue('DESC')
  desc('DESC');

  final String? value;

  const ProductServiceProductPremiumDupeNoAuthPagePostRequestOrder(this.value);
}

enum ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('DEFAULT')
  $default('DEFAULT'),
  @JsonValue('PRICE')
  price('PRICE'),
  @JsonValue('SALES')
  sales('SALES');

  final String? value;

  const ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemSort(
    this.value,
  );
}

enum ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ASC')
  asc('ASC'),
  @JsonValue('DESC')
  desc('DESC');

  final String? value;

  const ProductServiceProductPremiumDupeNoAuthMetaGet$Response$Data$Sorts$ItemOrder(
    this.value,
  );
}
