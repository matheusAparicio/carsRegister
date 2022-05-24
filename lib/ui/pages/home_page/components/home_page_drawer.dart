import 'package:carsregister/utilities/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      color: AppColors().secondaryColor,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.person),
                  Text("Usuário"),
                ]),
            Text(
              "Sair do aplicativo",
              style: GoogleFonts.roboto(
                color: AppColors().secondaryTextColor,
              ),
            )
          ]),
    );
  }
}
