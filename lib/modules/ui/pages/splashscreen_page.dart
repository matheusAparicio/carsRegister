import 'dart:io';

import 'package:carsregister/modules/database/cars_database.dart';
import 'package:carsregister/modules/domain/mobx_state/query_state.dart';
import 'package:carsregister/modules/domain/mobx_state/register_state.dart';
import 'package:carsregister/modules/ui/pages/home_page/home_page.dart';
import 'package:carsregister/modules/ui/utilities/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:permission_handler/permission_handler.dart';

class SplashscreenPage extends StatefulWidget {
  const SplashscreenPage({Key? key}) : super(key: key);

  @override
  State<SplashscreenPage> createState() => _SplashscreenPageState();
}

class _SplashscreenPageState extends State<SplashscreenPage> {
  Future _getStoragePermission() async {
    if (await Permission.storage.request().isGranted) {
    } else if (await Permission.storage.request().isPermanentlyDenied) {
      await openAppSettings();
    } else if (await Permission.storage.request().isDenied) {
      exit(0);
    }
  }

  @override
  void initState() {
    _getStoragePermission();
    CarsDatabase().initDB();
    registerState.resetValues();
    queryState.updateCarList();
    registerState.getCarBrands().then((value) {
      Future.delayed(const Duration(milliseconds: 3500)).then((value) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors().primaryColor),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Lottie.asset("lib/assets/lottie/splashcreen_animation.json",
            repeat: false),
        Text(
          "Mobicar, aluguel de carros inteligente.",
          style: GoogleFonts.roboto(
            color: AppColors().primaryTextColor,
            decoration: TextDecoration.none,
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        )
      ]),
    );
  }
}
