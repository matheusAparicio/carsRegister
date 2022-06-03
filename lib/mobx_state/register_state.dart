import 'package:mobx/mobx.dart';
part 'register_state.g.dart';

class RegisterState = _RegisterStateBase with _$RegisterState;

final registerState = RegisterState();

abstract class _RegisterStateBase with Store {

  @observable
  var dropdownBrandItems = [
    "Renault",
    "Ford",
  ];

  @observable
  var dropdownModelItems = [
    "Sandero",
    "Captur",
  ];

  @observable
  var dropdownYearsItems = [
    "2022",
    "2021",
  ];

  @observable
  var dropdownBillingFormItems = [
    "Por hora",
    "Por dia",
  ];
  
  @observable
  String dropdownBrandValue = "Renault";

  @observable
  String dropdownModelValue = "Sandero";

  @observable
  String dropdownYearValue = "2022";

  @observable
  String dropdownBillingFormValue = "Por hora";

  @observable
  bool isGasCharged = false;

}