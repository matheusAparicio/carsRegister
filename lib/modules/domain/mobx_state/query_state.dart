import 'package:carsregister/modules/database/cars_database.dart';
import 'package:carsregister/modules/ui/utilities/list_extension.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'query_state.g.dart';

class QueryState = _QueryStateBase with _$QueryState;

final queryState = QueryState();

abstract class _QueryStateBase with Store {
  @observable
  List<dynamic> carList = [];

  @observable
  List<dynamic> carListDisplay = [];

  @observable
  List showOption = [];

  @observable
  bool showSearchAndAdd = false;

  @observable
  TextEditingController searchBarController = TextEditingController();

  @action
  dynamic updateCarList() async {
    await CarsDatabase().selectCar().then((value) {
      carList = value.toList();
      carListDisplay = carList;
      searchBarController.text = "";
      showSearchAndAdd = false;
      showOption = showOption.fullFillList(
          listSize: carList.length, fullFillValue: false);
    });
  }

  @action
  void searchCarList({required String searchString}) {
    queryState.carListDisplay = queryState.carList.where((element) {
      return (element["carBrandName"]
              .toString()
              .toLowerCase()
              .contains(searchString.toLowerCase())) ||
          (element["carModelName"]
              .toString()
              .toLowerCase()
              .contains(searchString.toLowerCase())) ||
          (element["carYearName"]
              .toString()
              .toLowerCase()
              .contains(searchString.toLowerCase()));
    }).toList();
  }
}
