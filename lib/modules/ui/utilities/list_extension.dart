extension ListExtension on List {

  List fullFillList({required int listSize, fullFillValue=""}) {
    List fullList = [];
    for (int i = 0; i < listSize; i++) {
      fullList.add(fullFillValue);
    }
    return fullList;
  }

}