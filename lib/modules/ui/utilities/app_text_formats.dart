import 'package:intl/intl.dart';

class AppTextFormats {
  var currencyFormat = NumberFormat.currency(
      locale: "pt_BR",
      symbol: "R\$",
      decimalDigits: 2,
      customPattern: "R\$ ####0.00");
}