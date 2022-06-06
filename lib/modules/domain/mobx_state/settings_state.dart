import 'package:mobx/mobx.dart';
part 'settings_state.g.dart';

class SettingsState = _SettingsStateBase with _$SettingsState;

final settingsState = SettingsState();

abstract class _SettingsStateBase with Store {
  
}