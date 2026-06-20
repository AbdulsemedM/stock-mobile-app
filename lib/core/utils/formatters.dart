import 'package:intl/intl.dart';

/// Currency and date formatting helpers.
class Formatters {
  Formatters._();

  static String currency(num amount, {String symbol = '\$'}) {
    final formatter = NumberFormat.currency(symbol: symbol, decimalDigits: 2);
    return formatter.format(amount);
  }

  static String date(DateTime date) {
    return DateFormat.yMMMd().format(date);
  }

  static String dateTime(DateTime date) {
    return DateFormat.yMMMd().add_jm().format(date);
  }

  static String relative(DateTime date) {
    final now = DateTime.now();
    final diff = now.difference(date);
    if (diff.inMinutes < 1) return 'Just now';
    if (diff.inHours < 1) return '${diff.inMinutes}m ago';
    if (diff.inDays < 1) return '${diff.inHours}h ago';
    if (diff.inDays < 7) return '${diff.inDays}d ago';
    return Formatters.date(date);
  }
}
