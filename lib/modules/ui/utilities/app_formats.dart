import 'package:intl/intl.dart';

class AppFormats {
  var currencyFormat = NumberFormat.currency(
      locale: "pt_BR",
      symbol: "R\$",
      decimalDigits: 2,
      customPattern: "R\$ ####0.00");
}