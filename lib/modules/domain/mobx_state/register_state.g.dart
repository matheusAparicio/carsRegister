// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RegisterState on _RegisterStateBase, Store {
  late final _$dropdownBrandItemsAtom =
      Atom(name: '_RegisterStateBase.dropdownBrandItems', context: context);

  @override
  List<CarBrandEntity> get dropdownBrandItems {
    _$dropdownBrandItemsAtom.reportRead();
    return super.dropdownBrandItems;
  }

  @override
  set dropdownBrandItems(List<CarBrandEntity> value) {
    _$dropdownBrandItemsAtom.reportWrite(value, super.dropdownBrandItems, () {
      super.dropdownBrandItems = value;
    });
  }

  late final _$dropdownModelItemsAtom =
      Atom(name: '_RegisterStateBase.dropdownModelItems', context: context);

  @override
  List<CarModelEntity> get dropdownModelItems {
    _$dropdownModelItemsAtom.reportRead();
    return super.dropdownModelItems;
  }

  @override
  set dropdownModelItems(List<CarModelEntity> value) {
    _$dropdownModelItemsAtom.reportWrite(value, super.dropdownModelItems, () {
      super.dropdownModelItems = value;
    });
  }

  late final _$dropdownYearItemsAtom =
      Atom(name: '_RegisterStateBase.dropdownYearItems', context: context);

  @override
  List<CarYearEntity> get dropdownYearItems {
    _$dropdownYearItemsAtom.reportRead();
    return super.dropdownYearItems;
  }

  @override
  set dropdownYearItems(List<CarYearEntity> value) {
    _$dropdownYearItemsAtom.reportWrite(value, super.dropdownYearItems, () {
      super.dropdownYearItems = value;
    });
  }

  late final _$carFipeValueAtom =
      Atom(name: '_RegisterStateBase.carFipeValue', context: context);

  @override
  String get carFipeValue {
    _$carFipeValueAtom.reportRead();
    return super.carFipeValue;
  }

  @override
  set carFipeValue(String value) {
    _$carFipeValueAtom.reportWrite(value, super.carFipeValue, () {
      super.carFipeValue = value;
    });
  }

  late final _$dropdownBillingFormItemsAtom = Atom(
      name: '_RegisterStateBase.dropdownBillingFormItems', context: context);

  @override
  List<String> get dropdownBillingFormItems {
    _$dropdownBillingFormItemsAtom.reportRead();
    return super.dropdownBillingFormItems;
  }

  @override
  set dropdownBillingFormItems(List<String> value) {
    _$dropdownBillingFormItemsAtom
        .reportWrite(value, super.dropdownBillingFormItems, () {
      super.dropdownBillingFormItems = value;
    });
  }

  late final _$dropdownBrandValueAtom =
      Atom(name: '_RegisterStateBase.dropdownBrandValue', context: context);

  @override
  List<String> get dropdownBrandValue {
    _$dropdownBrandValueAtom.reportRead();
    return super.dropdownBrandValue;
  }

  @override
  set dropdownBrandValue(List<String> value) {
    _$dropdownBrandValueAtom.reportWrite(value, super.dropdownBrandValue, () {
      super.dropdownBrandValue = value;
    });
  }

  late final _$dropdownModelValueAtom =
      Atom(name: '_RegisterStateBase.dropdownModelValue', context: context);

  @override
  List<String> get dropdownModelValue {
    _$dropdownModelValueAtom.reportRead();
    return super.dropdownModelValue;
  }

  @override
  set dropdownModelValue(List<String> value) {
    _$dropdownModelValueAtom.reportWrite(value, super.dropdownModelValue, () {
      super.dropdownModelValue = value;
    });
  }

  late final _$dropdownYearValueAtom =
      Atom(name: '_RegisterStateBase.dropdownYearValue', context: context);

  @override
  List<String> get dropdownYearValue {
    _$dropdownYearValueAtom.reportRead();
    return super.dropdownYearValue;
  }

  @override
  set dropdownYearValue(List<String> value) {
    _$dropdownYearValueAtom.reportWrite(value, super.dropdownYearValue, () {
      super.dropdownYearValue = value;
    });
  }

  late final _$dropdownBillingFormValueAtom = Atom(
      name: '_RegisterStateBase.dropdownBillingFormValue', context: context);

  @override
  String get dropdownBillingFormValue {
    _$dropdownBillingFormValueAtom.reportRead();
    return super.dropdownBillingFormValue;
  }

  @override
  set dropdownBillingFormValue(String value) {
    _$dropdownBillingFormValueAtom
        .reportWrite(value, super.dropdownBillingFormValue, () {
      super.dropdownBillingFormValue = value;
    });
  }

  late final _$isGasChargedAtom =
      Atom(name: '_RegisterStateBase.isGasCharged', context: context);

  @override
  bool get isGasCharged {
    _$isGasChargedAtom.reportRead();
    return super.isGasCharged;
  }

  @override
  set isGasCharged(bool value) {
    _$isGasChargedAtom.reportWrite(value, super.isGasCharged, () {
      super.isGasCharged = value;
    });
  }

  late final _$getCarBrandsAsyncAction =
      AsyncAction('_RegisterStateBase.getCarBrands', context: context);

  @override
  Future<dynamic> getCarBrands() {
    return _$getCarBrandsAsyncAction.run(() => super.getCarBrands());
  }

  late final _$getCarModelsAsyncAction =
      AsyncAction('_RegisterStateBase.getCarModels', context: context);

  @override
  Future<dynamic> getCarModels({required String brandCode}) {
    return _$getCarModelsAsyncAction
        .run(() => super.getCarModels(brandCode: brandCode));
  }

  late final _$getCarYearsAsyncAction =
      AsyncAction('_RegisterStateBase.getCarYears', context: context);

  @override
  Future<dynamic> getCarYears(
      {required String brandCode, required String modelCode}) {
    return _$getCarYearsAsyncAction.run(
        () => super.getCarYears(brandCode: brandCode, modelCode: modelCode));
  }

  late final _$getCarFipeAsyncAction =
      AsyncAction('_RegisterStateBase.getCarFipe', context: context);

  @override
  Future<dynamic> getCarFipe(
      {required String brandCode,
      required String modelCode,
      required String yearCode}) {
    return _$getCarFipeAsyncAction.run(() => super.getCarFipe(
        brandCode: brandCode, modelCode: modelCode, yearCode: yearCode));
  }

  late final _$_RegisterStateBaseActionController =
      ActionController(name: '_RegisterStateBase', context: context);

  @override
  void resetValues() {
    final _$actionInfo = _$_RegisterStateBaseActionController.startAction(
        name: '_RegisterStateBase.resetValues');
    try {
      return super.resetValues();
    } finally {
      _$_RegisterStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
dropdownBrandItems: ${dropdownBrandItems},
dropdownModelItems: ${dropdownModelItems},
dropdownYearItems: ${dropdownYearItems},
carFipeValue: ${carFipeValue},
dropdownBillingFormItems: ${dropdownBillingFormItems},
dropdownBrandValue: ${dropdownBrandValue},
dropdownModelValue: ${dropdownModelValue},
dropdownYearValue: ${dropdownYearValue},
dropdownBillingFormValue: ${dropdownBillingFormValue},
isGasCharged: ${isGasCharged}
    ''';
  }
}
