import 'package:carsregister/modules/domain/mobx_state/preferences_state.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ToggleLightModeSwitch extends StatefulWidget {
  final double? width;
  const ToggleLightModeSwitch({Key? key, this.width}) : super(key: key);

  @override
  State<ToggleLightModeSwitch> createState() => _ToggleLightModeSwitch();
}

class _ToggleLightModeSwitch extends State<ToggleLightModeSwitch>
    with SingleTickerProviderStateMixin {
  late AnimationController toggleLightModeController;

  @override
  dispose() {
    toggleLightModeController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    toggleLightModeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
      reverseDuration: const Duration(milliseconds: 800),
    );

    if (preferencesState.darkMode) {
      toggleLightModeController.animateTo(1,
          duration: const Duration(milliseconds: 0));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () async {
          preferencesState.toggleLightMode();
          preferencesState.darkMode
              ? await toggleLightModeController.forward()
              : await toggleLightModeController.animateTo(0);
        },
        child: SizedBox(
          width: widget.width,
          child: Lottie.asset(
            "lib/assets/lottie/toggle_light_mode.json",
            controller: toggleLightModeController,
          ),
        ),
      ),
    );
  }
}
