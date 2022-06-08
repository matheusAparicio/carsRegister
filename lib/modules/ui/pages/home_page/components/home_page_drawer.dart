import 'dart:io';
import 'package:carsregister/modules/domain/mobx_state/preferences_state.dart';
import 'package:carsregister/modules/ui/custom_widgets/general/drawer_button.dart';
import 'package:carsregister/modules/ui/custom_widgets/general/toggle_light_mode_switch.dart';
import 'package:carsregister/modules/ui/pages/about_page/about_page.dart';
import 'package:carsregister/modules/ui/utilities/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePageDrawer extends StatefulWidget {
  const HomePageDrawer({Key? key}) : super(key: key);

  @override
  State<HomePageDrawer> createState() => _HomePageDrawerState();
}

class _HomePageDrawerState extends State<HomePageDrawer> {
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Container(
        width: MediaQuery.of(context).size.width * .55,
        height: MediaQuery.of(context).size.height * .8,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: preferencesState.secondaryColor,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                DrawerButton(
                  buttonIcon: Icons.person,
                  buttonName: "Usuário",
                  buttonWidth: MediaQuery.of(context).size.width * .42,
                  buttonDecoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: preferencesState.secondaryTextColor),
                    ),
                  ),
                  iconOnTop: true,
                  hasArrow: false,
                ),
                ToggleLightModeSwitch(
                    width: MediaQuery.of(context).size.width * .13),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .6,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DrawerButton(
                      buttonIcon: Icons.ads_click,
                      buttonName: "Botão demonstrativo 1",
                      buttonWidth: MediaQuery.of(context).size.width * .5,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .035),
                    DrawerButton(
                      buttonIcon: Icons.ads_click,
                      buttonName: "Botão demonstrativo 2",
                      buttonWidth: MediaQuery.of(context).size.width * .5,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .035),
                    DrawerButton(
                      buttonIcon: Icons.ads_click,
                      buttonName: "Botão demonstrativo 3",
                      buttonWidth: MediaQuery.of(context).size.width * .5,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .035),
                    DrawerButton(
                      buttonIcon: Icons.question_mark,
                      buttonName: "Sobre",
                      buttonWidth: MediaQuery.of(context).size.width * .5,
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AboutPage()),
                        );
                      },
                    ),
                  ]),
            ),
            DrawerButton(
                buttonIcon: Icons.exit_to_app,
                buttonName: "Sair do aplicativo",
                buttonWidth: MediaQuery.of(context).size.width * .5,
                buttonColor: AppColors().redColor,
                arrowColor: AppColors().redColor,
                onTap: () {
                  exit(0);
                }),
          ],
        ),
      );
    });
  }
}
