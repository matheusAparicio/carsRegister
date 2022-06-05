import 'package:carsregister/modules/ui/utilities/app_formats.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class NumericTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final currencySymbol = 'R\$';
    if (newValue.text.isEmpty || newValue.text.trim() == currencySymbol) {
      return newValue.copyWith(text: '');
    } else if (newValue.text.compareTo(oldValue.text) != 0) {
      var selectionIndexFromTheRight =
          newValue.text.length - newValue.selection.end;
      final f =
          NumberFormat.currency(locale: 'pt_BR', decimalDigits: 0, symbol: '');
      var num = double.tryParse(newValue.text.replaceAll(RegExp('[^0-9,]'), ''));
      final newString = '$currencySymbol ' + f.format(num).trim();
      return TextEditingValue(
        text: newString,
        selection: TextSelection.collapsed(
            offset: newString.length - selectionIndexFromTheRight),
      );
    } else {
      return newValue;
    }
  }
}