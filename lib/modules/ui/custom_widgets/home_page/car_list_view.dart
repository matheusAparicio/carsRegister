import 'package:carsregister/modules/domain/mobx_state/register_state.dart';
import 'package:carsregister/modules/ui/utilities/app_colors.dart';
import 'package:carsregister/modules/ui/utilities/app_formats.dart';
import 'package:carsregister/modules/ui/utilities/app_text_styles.dart';
import 'package:carsregister/modules/ui/utilities/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CarListView extends StatefulWidget {
  const CarListView({Key? key}) : super(key: key);

  @override
  State<CarListView> createState() => _CarListViewState();
}

class _CarListViewState extends State<CarListView> {
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return ListView.builder(
          itemCount: registerState.carList.length,
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
                      border: Border(right: BorderSide()),
                    ),
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(right: 5),
                    child: const FaIcon(FontAwesomeIcons.car, size: 30),
                  ),
                  Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: registerState.carList[index]
                                          ["carBrandName"] +
                                      " ",
                                ),
                                TextSpan(
                                    text: registerState.carList[index]
                                            ["carModelName"] +
                                        " ",
                                    style: AppTextStyles().mainTextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14)),
                                TextSpan(
                                  text: registerState.carList[index]
                                          ["carYearName"]
                                      .toString().firstWord(),
                                ),
                              ],
                            ),
                            style: AppTextStyles().mainTextStyle(fontSize: 14),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "Valor FIPE: ${registerState.carList[index]["carFipe"]}",
                            style: GoogleFonts.roboto(
                              color: AppColors().secondaryTextColor,
                            ),
                          ),
                          Text(
                            "Aluguel: ${AppFormats().currencyFormat.format(registerState.carList[index]["billingValue"])}/${registerState.carList[index]["billingMethod"].substring(4)}",
                            style: GoogleFonts.roboto(
                              color: AppColors().secondaryTextColor,
                            ),
                          ),
                        ]),
                  ),
                  Container(
                    width: 50,
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
    });
  }
}
