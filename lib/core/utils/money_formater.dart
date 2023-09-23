import 'package:intl/intl.dart';

NumberFormat moneyFormat({String? name}) {
  return NumberFormat.currency(
    name: name ?? 'NGN ', // currency symbol
    decimalDigits: 2, // number of decimal places
  );
}
