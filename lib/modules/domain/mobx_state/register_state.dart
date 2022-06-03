import 'package:carsregister/modules/domain/model/car_brand_entity.dart';
import 'package:carsregister/modules/external/car_brand_response.dart';
import 'package:mobx/mobx.dart';
part 'register_state.g.dart';

class RegisterState = _RegisterStateBase with _$RegisterState;

final registerState = RegisterState();

abstract class _RegisterStateBase with Store {
  @observable
  List<CarBrandEntity> dropdownBrandItems = [];

  @observable
  List<String> dropdownModelItems = [];

  @observable
  List<String> dropdownYearsItems = [];

  @observable
  List<String> dropdownBillingFormItems = [
    "Por hora",
    "Por dia",
  ];

  @observable
  String dropdownBrandValue = "";

  @observable
  String dropdownModelValue = "";

  @observable
  String dropdownYearValue = "";

  @observable
  String dropdownBillingFormValue = "Por hora";

  @observable
  bool isGasCharged = false;

  @action
  Future getCarBrands() async {
    dropdownBrandItems = await CarBrandResponse().get().then((value) {
      dropdownBrandItems = value;
      dropdownBrandValue = dropdownBrandItems[0].nome;
      return value;
    });
  }

  @action
  Future getCarModels() async {

  }

  @action
  Future getCarYears() async {

  }

  @action
  Future getCarFipe() async {

  }
}
