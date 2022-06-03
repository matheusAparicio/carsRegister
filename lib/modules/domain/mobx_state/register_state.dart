import 'package:carsregister/modules/domain/model/car_brand_entity.dart';
import 'package:carsregister/modules/domain/model/car_fipe_entity.dart';
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
      dropdownBrandValue = dropdownBrandItems[0].codigo;
      return value;
    });
  }

  @action
  Future getCarModels({required String brandCode}) async {
    dropdownModelItems =
        await CarModelResponse().get(brandCode: brandCode).then((value) {
      dropdownModelItems = value;
      dropdownModelValue = dropdownModelItems[0].codigo.toString();
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
      dropdownYearValue = dropdownYearItems[0].codigo;
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
}
