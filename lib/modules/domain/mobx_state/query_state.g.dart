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

  late final _$carListDisplayAtom =
      Atom(name: '_QueryStateBase.carListDisplay', context: context);

  @override
  List<dynamic> get carListDisplay {
    _$carListDisplayAtom.reportRead();
    return super.carListDisplay;
  }

  @override
  set carListDisplay(List<dynamic> value) {
    _$carListDisplayAtom.reportWrite(value, super.carListDisplay, () {
      super.carListDisplay = value;
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

  late final _$showSearchAndAddAtom =
      Atom(name: '_QueryStateBase.showSearchAndAdd', context: context);

  @override
  bool get showSearchAndAdd {
    _$showSearchAndAddAtom.reportRead();
    return super.showSearchAndAdd;
  }

  @override
  set showSearchAndAdd(bool value) {
    _$showSearchAndAddAtom.reportWrite(value, super.showSearchAndAdd, () {
      super.showSearchAndAdd = value;
    });
  }

  late final _$searchBarControllerAtom =
      Atom(name: '_QueryStateBase.searchBarController', context: context);

  @override
  TextEditingController get searchBarController {
    _$searchBarControllerAtom.reportRead();
    return super.searchBarController;
  }

  @override
  set searchBarController(TextEditingController value) {
    _$searchBarControllerAtom.reportWrite(value, super.searchBarController, () {
      super.searchBarController = value;
    });
  }

  late final _$updateCarListAsyncAction =
      AsyncAction('_QueryStateBase.updateCarList', context: context);

  @override
  Future updateCarList() {
    return _$updateCarListAsyncAction.run(() => super.updateCarList());
  }

  late final _$_QueryStateBaseActionController =
      ActionController(name: '_QueryStateBase', context: context);

  @override
  void searchCarList({required String searchString}) {
    final _$actionInfo = _$_QueryStateBaseActionController.startAction(
        name: '_QueryStateBase.searchCarList');
    try {
      return super.searchCarList(searchString: searchString);
    } finally {
      _$_QueryStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
carList: ${carList},
carListDisplay: ${carListDisplay},
showOption: ${showOption},
showSearchAndAdd: ${showSearchAndAdd},
searchBarController: ${searchBarController}
    ''';
  }
}
