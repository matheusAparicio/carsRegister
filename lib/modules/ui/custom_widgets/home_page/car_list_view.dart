import 'package:carsregister/modules/ui/utilities/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CarListView extends StatefulWidget {
  const CarListView({Key? key}) : super(key: key);

  @override
  State<CarListView> createState() => _CarListViewState();
}

class _CarListViewState extends State<CarListView> {

  String carBrand = "Renault";
  String carModel = "Captur";
  String carYear = "2022";

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
            itemCount: 15,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                height: 75,
                margin: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  //border: Border.all(),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 50,
                      decoration: const BoxDecoration(
                          border: Border(right: BorderSide())),
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(right: 5),
                      child: const FaIcon(FontAwesomeIcons.car, size: 30),
                    ),
                    Expanded(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  carBrand,
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      color: AppColors().secondaryTextColor),
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  carModel,
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w500,
                                      color: AppColors().secondaryTextColor),
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  carYear,
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      color: AppColors().secondaryTextColor),
                                ),
                              ],
                            ),
                            Text(
                              "Valor FIPE: R\$50.000,00",
                              style: GoogleFonts.roboto(
                                color: AppColors().secondaryTextColor,
                              ),
                            ),
                            Text(
                              "Aluguel: R\$100,00/dia",
                              style: GoogleFonts.roboto(
                                color: AppColors().secondaryTextColor,
                              ),
                            ),
                          ]),
                    ),
                    Container(
                      width: 25,
                      decoration: const BoxDecoration(
                          //border: Border(left: BorderSide()),
                          ),
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 5),
                      child: const Icon(Icons.edit_outlined, size: 25),
                    ),
                  ],
                ),
              );
            });
  }
}

