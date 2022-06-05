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
    for (int i = 2; i < this.length; i++) {
      if (this[i] != '.' && this[i] != ',') {
        convertibleString.add(this[i]);
      } else if (this[i] == ',' && commaNumber < 1) {
        convertibleString.add('.');
        commaNumber++;
      }
    }
    return convertibleString.join('');
  }
  
}