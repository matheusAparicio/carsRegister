import 'package:carsregister/modules/domain/mobx_state/settings_state.dart';
import 'package:carsregister/modules/ui/custom_widgets/general/compact_button.dart';
import 'package:carsregister/modules/ui/custom_widgets/home_page/add_car_dialog/add_car_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageAppBar extends StatefulWidget {
  final double appBarHeight;
  const HomePageAppBar({Key? key, required this.appBarHeight})
      : super(key: key);

  @override
  State<HomePageAppBar> createState() => _HomePageAppBarState();
}

class _HomePageAppBarState extends State<HomePageAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: widget.appBarHeight,
      decoration: BoxDecoration(
        color: settingsState.primaryColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * .15,
                      child: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Column(
                  // Título e subtítulo
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Mobicar",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Aluguel de carros na palma de sua mão",
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                CompactButton(
                  width: MediaQuery.of(context).size.width * .15,
                  height: widget.appBarHeight * .7,
                  buttonName: "Carro",
                  buttonIcon: Icons.add,
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const AddCarDialog(
                            purpose: "insert",
                          );
                        });
                  },
                )
              ]),
        ],
      ),
    );
  }
}
