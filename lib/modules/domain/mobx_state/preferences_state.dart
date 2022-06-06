import 'package:carsregister/modules/ui/utilities/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'preferences_state.g.dart';

class PreferencesState = _PreferencesStateBase with _$PreferencesState;

final preferencesState = PreferencesState();

abstract class _PreferencesStateBase with Store {
  @observable
  bool darkMode = false;

  @observable
  Color primaryColor = AppColors().jewelColor;

  @observable
  Color primaryTextColor = AppColors().starkColor;

  @observable
  Color secondaryColor = AppColors().starkColor;

  @observable
  Color secondaryTextColor = AppColors().voidColor;

  @action
  void toggleLightMode() {
    if (darkMode) {
      primaryColor = AppColors().jewelColor;
      primaryTextColor = AppColors().starkColor;
      secondaryColor = AppColors().starkColor;
      secondaryTextColor = AppColors().voidColor;

      darkMode = false;
    } else {
      primaryColor = AppColors().jewelColor;
      primaryTextColor = AppColors().starkColor;
      secondaryColor = AppColors().voidColor;
      secondaryTextColor = AppColors().starkColor;

      darkMode = true;
    }
  }
}
