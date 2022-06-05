import 'package:carsregister/modules/database/cars_database.dart';
import 'package:carsregister/modules/ui/utilities/list_extension.dart';
import 'package:mobx/mobx.dart';
part 'query_state.g.dart';

class QueryState = _QueryStateBase with _$QueryState;

final queryState = QueryState();

abstract class _QueryStateBase with Store {
  @observable
  List<dynamic> carList = [];

  @observable
  List showOption = [];

  @action
  dynamic updateCarList() async {
    await CarsDatabase().selectCar().then((value) {
      carList = value.toList();
      showOption = showOption.fullFillList(listSize: carList.length, fullFillValue: false);
    });
  }
}
