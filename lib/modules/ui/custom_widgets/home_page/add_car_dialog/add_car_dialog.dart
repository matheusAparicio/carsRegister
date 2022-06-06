import 'package:carsregister/modules/database/cars_database.dart';
import 'package:carsregister/modules/domain/mobx_state/query_state.dart';
import 'package:carsregister/modules/ui/custom_widgets/general/main_button.dart';
import 'package:carsregister/modules/ui/custom_widgets/home_page/add_car_dialog/components/add_car_dialog_info.dart';
import 'package:carsregister/modules/ui/custom_widgets/home_page/add_car_dialog/components/add_car_dialog_payment.dart';
import 'package:carsregister/modules/ui/pages/home_page/home_page.dart';
import 'package:carsregister/modules/ui/utilities/app_colors.dart';
import 'package:carsregister/modules/ui/utilities/app_text_styles.dart';
import 'package:carsregister/modules/ui/utilities/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carsregister/modules/domain/mobx_state/register_state.dart';

class AddCarDialog extends StatefulWidget {
  final String purpose;
  final int? carId;
  const AddCarDialog({Key? key, required this.purpose, this.carId})
      : super(key: key);

  @override
  State<AddCarDialog> createState() => _AddCarDialogState();
}

class _AddCarDialogState extends State<AddCarDialog> {
  bool firstTabSelected = true;
  double widthMultiplier = .75;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: AppColors().transparent,
        borderRadius: BorderRadius.circular(25),
        child: Container(
          width: MediaQuery.of(context).size.width * .725,
          height: MediaQuery.of(context).size.height * .6,
          margin: MediaQuery.of(context).viewInsets,
          decoration: BoxDecoration(
              color: AppColors().secondaryColor,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: AppColors().shadowColor,
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 5), // changes position of shadow
                ),
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * widthMultiplier,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: AppColors().primaryColor),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        widget.purpose == "insert"
                            ? "Adicionar carro"
                            : "Modificar carro",
                        style: AppTextStyles().mainTextStyle(
                          color: AppColors().primaryTextColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      width:
                          MediaQuery.of(context).size.width * widthMultiplier,
                      height: MediaQuery.of(context).size.height * .05,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                firstTabSelected = true;
                              });
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * .35,
                              height: MediaQuery.of(context).size.height * .05,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: !firstTabSelected
                                    ? const Border(bottom: BorderSide())
                                    : null,
                                color: firstTabSelected
                                    ? AppColors().primaryColor
                                    : AppColors().secondaryColor,
                              ),
                              child: Text(
                                "Dados cadastrais",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                    color: firstTabSelected
                                        ? AppColors().primaryTextColor
                                        : AppColors().secondaryTextColor),
                              ),
                            ),
                          ),
                          Expanded(
                              child:
                                  Container(color: AppColors().secondaryColor)),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                firstTabSelected = false;
                              });
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * .35,
                              height: MediaQuery.of(context).size.height * .05,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: firstTabSelected
                                    ? const Border(bottom: BorderSide())
                                    : null,
                                color: !firstTabSelected
                                    ? AppColors().primaryColor
                                    : AppColors().secondaryColor,
                              ),
                              child: Text(
                                "Forma de cobrança",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                    color: !firstTabSelected
                                        ? AppColors().primaryTextColor
                                        : AppColors().secondaryTextColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .4,
                child: firstTabSelected
                    ? const AddCarDialogInfo()
                    : const AddCarDialogPayment(),
              ),
              MainButton(
                buttonName: "Confirmar",
                onPressed: () {
                  if (widget.purpose == "insert") {
                    CarsDatabase().insertCar(
                        carBrandCode: registerState.dropdownBrandValue[0],
                        carBrandName: registerState.dropdownBrandValue[1],
                        carModelCode: registerState.dropdownModelValue[0],
                        carModelName: registerState.dropdownModelValue[1],
                        carYearCode: registerState.dropdownYearValue[0],
                        carYearName: registerState.dropdownYearValue[1],
                        carFipe: registerState.carFipeValue,
                        billingMethod: registerState.dropdownBillingMethod,
                        billingValue: double.parse(registerState
                            .billingValueController.text
                            .toString()
                            .currencyToDouble()),
                        isGasCharged: registerState.isGasCharged ? 1 : 0);
                  } else {
                    CarsDatabase().updateCar(
                        carId: widget.carId,
                        carBrandCode: registerState.dropdownBrandValue[0],
                        carBrandName: registerState.dropdownBrandValue[1],
                        carModelCode: registerState.dropdownModelValue[0],
                        carModelName: registerState.dropdownModelValue[1],
                        carYearCode: registerState.dropdownYearValue[0],
                        carYearName: registerState.dropdownYearValue[1],
                        carFipe: registerState.carFipeValue,
                        billingMethod: registerState.dropdownBillingMethod,
                        billingValue: double.parse(registerState
                            .billingValueController.text
                            .toString()
                            .currencyToDouble()),
                        isGasCharged: registerState.isGasCharged ? 1 : 0);
                  }
                  registerState.resetValues();
                  queryState.updateCarList();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                width: 150,
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
