/// Utility for formatting prices and currency symbols.
class PriceUtils {
  PriceUtils._();

  static const _symbolMap = {
    'CNY': '¥',
    'RMB': '¥',
    'USD': '\$',
    'AUD': 'A\$',
    'CAD': 'C\$',
    'GBP': '£',
    'EUR': '€',
    'JPY': '¥',
    'HKD': 'HK\$',
  };

  /// Returns the currency symbol for the given currency code.
  /// Defaults to '¥' if currency is null or empty.
  /// Returns the original code if no symbol is found.
  static String getCurrencySymbol(String? currency) {
    if (currency == null || currency.trim().isEmpty) {
      return '¥';
    }
    final normalized = currency.trim().toUpperCase();
    return _symbolMap[normalized] ?? currency;
  }

  /// Formats the sales count.
  /// 12345 -> 1.2万+
  /// 1234 -> 1.2k+
  /// 123 -> 123+
  static String formatSales(int sales) {
    if (sales >= 10000) {
      return '${(sales / 10000).toStringAsFixed(1)}万+';
    }
    if (sales >= 1000) {
      return '${(sales / 1000).toStringAsFixed(1)}k+';
    }
    return '$sales+';
  }
}
