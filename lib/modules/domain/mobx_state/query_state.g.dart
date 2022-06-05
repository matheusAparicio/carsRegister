// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$QueryState on _QueryStateBase, Store {
  late final _$carListAtom =
      Atom(name: '_QueryStateBase.carList', context: context);

  @override
  List<dynamic> get carList {
    _$carListAtom.reportRead();
    return super.carList;
  }

  @override
  set carList(List<dynamic> value) {
    _$carListAtom.reportWrite(value, super.carList, () {
      super.carList = value;
    });
  }

  late final _$showOptionAtom =
      Atom(name: '_QueryStateBase.showOption', context: context);

  @override
  List<dynamic> get showOption {
    _$showOptionAtom.reportRead();
    return super.showOption;
  }

  @override
  set showOption(List<dynamic> value) {
    _$showOptionAtom.reportWrite(value, super.showOption, () {
      super.showOption = value;
    });
  }

  late final _$updateCarListAsyncAction =
      AsyncAction('_QueryStateBase.updateCarList', context: context);

  @override
  Future updateCarList() {
    return _$updateCarListAsyncAction.run(() => super.updateCarList());
  }

  @override
  String toString() {
    return '''
carList: ${carList},
showOption: ${showOption}
    ''';
  }
}
