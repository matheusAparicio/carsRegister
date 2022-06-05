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
  
}