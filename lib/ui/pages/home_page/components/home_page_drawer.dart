import 'package:carsregister/ui/custom_widgets/drawer_button.dart';
import 'package:carsregister/utilities/app_colors.dart';
import 'package:flutter/material.dart';

class HomePageDrawer extends StatefulWidget {
  const HomePageDrawer({Key? key}) : super(key: key);

  @override
  State<HomePageDrawer> createState() => _HomePageDrawerState();
}

class _HomePageDrawerState extends State<HomePageDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .5,
      height: MediaQuery.of(context).size.height * .8,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors().secondaryColor,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .35,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DrawerButton(
                buttonIcon: Icons.person,
                buttonName: "Usuário",
                buttonWidth: MediaQuery.of(context).size.width * .5,
                buttonDecoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .6,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      DrawerButton(
                        buttonIcon: Icons.search,
                        buttonName: "Consultar valores FIPE",
                        buttonWidth: MediaQuery.of(context).size.width * .5,
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .05),
                      DrawerButton(
                        buttonIcon: Icons.question_mark,
                        buttonName: "Sobre",
                        buttonWidth: MediaQuery.of(context).size.width * .5,
                      ),
                    ]),
              ),
              DrawerButton(
                buttonIcon: Icons.exit_to_app,
                buttonName: "Sair do aplicativo",
                buttonWidth: MediaQuery.of(context).size.width * .5,
                buttonColor: AppColors().redColor,
              ),
            ]),
      ),
    );
  }
}
