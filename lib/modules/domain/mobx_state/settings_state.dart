import 'package:carsregister/modules/ui/utilities/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'settings_state.g.dart';

class SettingsState = _SettingsStateBase with _$SettingsState;

final settingsState = SettingsState();

abstract class _SettingsStateBase with Store {
  
  @observable
  Color primaryColor = AppColors().jewelColor;

  @observable
  Color primaryTextColor = AppColors().starkColor;

  @observable
  Color secondaryColor = AppColors().starkColor;

  @observable
  Color secondaryTextColor = AppColors().voidColor;

}