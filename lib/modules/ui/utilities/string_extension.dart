extension StringExtension on String {

  String firstWord() {
    List firstWord = [];
    for (int i = 0; i < this.length; i++) {
      if (this[i] != ' ') {
        firstWord.add(this[i]);
      } else {
        break;
      }
    }
    return firstWord.join('');
  }

  String currencyToDouble() {
    List convertibleString = [];
    int commaNumber = 0;
    for (int i = 3; i < this.length; i++) {
      if (this[i] != '.' && this[i] != ',') {
        convertibleString.add(this[i]);
      } else if (this[i] == ',' && commaNumber < 1) {
        convertibleString.add('.');
        commaNumber++;
      }
    }
    return convertibleString.join('');
  }

  String doubleToCurrency() {
    List convertibleString = [];
    //int dotNumber = 0;
    for (int i = 0; i < this.length; i++) {
      if (this[i] != '.') {
        convertibleString.add(this[i]);
      } else {
        convertibleString.add(',');
      }
    }
    return "R\$ " + convertibleString.join('');
  }
  
}

/*
String currencyToDouble() {
    List convertibleString = [];
    int commaNumber = 0;
    int decimalQuantity = 0;
    for (int i = 3; i < this.length; i++) {
      if (this[i] != '.' && this[i] != ',') {
        if (commaNumber >= 1 && decimalQuantity < 2) {
          decimalQuantity++;
        }
        if (decimalQuantity >= 2) {
          return convertibleString.join('');
        }
        convertibleString.add(this[i]);
      } else if (this[i] == ',' && commaNumber < 1) {
        convertibleString.add('.');
        commaNumber++;
      }
      print(convertibleString);
    }
    print(this);
    return convertibleString.join('');
  }
  */