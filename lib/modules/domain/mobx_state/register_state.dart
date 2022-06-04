import 'package:carsregister/modules/domain/model/car_brand_entity.dart';
import 'package:carsregister/modules/domain/model/car_entity.dart';
import 'package:carsregister/modules/domain/model/car_model_entity.dart';
import 'package:carsregister/modules/domain/model/car_year_entity.dart';
import 'package:carsregister/modules/external/car_brand_response.dart';
import 'package:carsregister/modules/external/car_fipe_response.dart';
import 'package:carsregister/modules/external/car_model_response.dart';
import 'package:carsregister/modules/external/car_year_response.dart';
import 'package:mobx/mobx.dart';
part 'register_state.g.dart';

class RegisterState = _RegisterStateBase with _$RegisterState;

final registerState = RegisterState();

abstract class _RegisterStateBase with Store {
  @observable
  List<CarEntity> carList = [];

  @observable
  List<CarBrandEntity> dropdownBrandItems = [];

  @observable
  List<CarModelEntity> dropdownModelItems = [];

  @observable
  List<CarYearEntity> dropdownYearItems = [];

  @observable
  String carFipeValue = "0,00";

  @observable
  List<String> dropdownBillingFormItems = [
    "Por hora",
    "Por dia",
  ];

  @observable
  List<String> dropdownBrandValue = ["", ""]; // O index 0 é o código, o index 1 é o nome.

  @observable
  List<String> dropdownModelValue = ["", ""];

  @observable
  List<String> dropdownYearValue = ["", ""];

  @observable
  String dropdownBillingFormValue = "Por hora";

  @observable
  bool isGasCharged = false;

  @action
  Future getCarBrands() async {
    dropdownBrandItems = await CarBrandResponse().get().then((value) {
      dropdownBrandItems = value;
      dropdownBrandValue[0] = dropdownBrandItems[0].codigo;
      dropdownBrandValue[1] = dropdownBrandItems[0].nome;
      return value;
    });
  }

  @action
  Future getCarModels({required String brandCode}) async {
    dropdownModelItems =
        await CarModelResponse().get(brandCode: brandCode).then((value) {
      dropdownModelItems = value;
      dropdownModelValue[0] = dropdownModelItems[0].codigo.toString();
      dropdownModelValue[1] = dropdownModelItems[0].nome.toString();
      return value;
    });
  }

  @action
  Future getCarYears(
      {required String brandCode, required String modelCode}) async {
    dropdownYearItems = await CarYearResponse()
        .get(brandCode: brandCode, modelCode: modelCode)
        .then((value) {
      dropdownYearItems = value;
      dropdownYearValue[0] = dropdownYearItems[0].codigo;
      dropdownYearValue[1] = dropdownYearItems[0].nome;
      return value;
    });
  }

  @action
  Future getCarFipe({
    required String brandCode,
    required String modelCode,
    required String yearCode,
  }) async {
    carFipeValue = await CarFipeResponse()
        .get(brandCode: brandCode, modelCode: modelCode, yearCode: yearCode)
        .then((value) {
      carFipeValue = value;
      return value;
    });
  }

  @action
  void resetValues() {
    dropdownModelItems = [];
    dropdownYearItems = [];
    carFipeValue = "R\$0,00";

    dropdownModelValue = ["", ""];
    dropdownYearValue = ["", ""];
    dropdownBillingFormValue = "Por hora";

    isGasCharged = false;
  }
}
