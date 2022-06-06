// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PreferencesState on _PreferencesStateBase, Store {
  late final _$darkModeAtom =
      Atom(name: '_PreferencesStateBase.darkMode', context: context);

  @override
  bool get darkMode {
    _$darkModeAtom.reportRead();
    return super.darkMode;
  }

  @override
  set darkMode(bool value) {
    _$darkModeAtom.reportWrite(value, super.darkMode, () {
      super.darkMode = value;
    });
  }

  late final _$primaryColorAtom =
      Atom(name: '_PreferencesStateBase.primaryColor', context: context);

  @override
  Color get primaryColor {
    _$primaryColorAtom.reportRead();
    return super.primaryColor;
  }

  @override
  set primaryColor(Color value) {
    _$primaryColorAtom.reportWrite(value, super.primaryColor, () {
      super.primaryColor = value;
    });
  }

  late final _$primaryTextColorAtom =
      Atom(name: '_PreferencesStateBase.primaryTextColor', context: context);

  @override
  Color get primaryTextColor {
    _$primaryTextColorAtom.reportRead();
    return super.primaryTextColor;
  }

  @override
  set primaryTextColor(Color value) {
    _$primaryTextColorAtom.reportWrite(value, super.primaryTextColor, () {
      super.primaryTextColor = value;
    });
  }

  late final _$secondaryColorAtom =
      Atom(name: '_PreferencesStateBase.secondaryColor', context: context);

  @override
  Color get secondaryColor {
    _$secondaryColorAtom.reportRead();
    return super.secondaryColor;
  }

  @override
  set secondaryColor(Color value) {
    _$secondaryColorAtom.reportWrite(value, super.secondaryColor, () {
      super.secondaryColor = value;
    });
  }

  late final _$secondaryTextColorAtom =
      Atom(name: '_PreferencesStateBase.secondaryTextColor', context: context);

  @override
  Color get secondaryTextColor {
    _$secondaryTextColorAtom.reportRead();
    return super.secondaryTextColor;
  }

  @override
  set secondaryTextColor(Color value) {
    _$secondaryTextColorAtom.reportWrite(value, super.secondaryTextColor, () {
      super.secondaryTextColor = value;
    });
  }

  late final _$_PreferencesStateBaseActionController =
      ActionController(name: '_PreferencesStateBase', context: context);

  @override
  void toggleLightMode() {
    final _$actionInfo = _$_PreferencesStateBaseActionController.startAction(
        name: '_PreferencesStateBase.toggleLightMode');
    try {
      return super.toggleLightMode();
    } finally {
      _$_PreferencesStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
darkMode: ${darkMode},
primaryColor: ${primaryColor},
primaryTextColor: ${primaryTextColor},
secondaryColor: ${secondaryColor},
secondaryTextColor: ${secondaryTextColor}
    ''';
  }
}
