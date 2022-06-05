import 'package:carsregister/modules/database/cars_database.dart';
import 'package:carsregister/modules/ui/custom_widgets/general/main_button.dart';
import 'package:carsregister/modules/ui/custom_widgets/home_page/add_car_dialog/components/add_car_dialog_info.dart';
import 'package:carsregister/modules/ui/custom_widgets/home_page/add_car_dialog/components/add_car_dialog_payment.dart';
import 'package:carsregister/modules/ui/pages/home_page/home_page.dart';
import 'package:carsregister/modules/ui/utilities/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carsregister/modules/domain/mobx_state/register_state.dart';

class AddCarDialog extends StatefulWidget {
  const AddCarDialog({Key? key}) : super(key: key);

  @override
  State<AddCarDialog> createState() => _AddCarDialogState();
}

class _AddCarDialogState extends State<AddCarDialog> {
  bool firstTabSelected = true;

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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Adicionar carro",
                style: GoogleFonts.roboto(
                  color: AppColors().secondaryTextColor,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .7,
                height: MediaQuery.of(context).size.height * .05,
                child: Row(
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
                              : AppColors().transparent,
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
                              : AppColors().transparent,
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
              SizedBox(
                height: MediaQuery.of(context).size.height * .4,
                child: firstTabSelected
                    ? const AddCarDialogInfo()
                    : const AddCarDialogPayment(),
              ),
              MainButton(
                buttonName: "Confirmar",
                onPressed: () {
                  CarsDatabase().insertCar(
                      carBrandCode: registerState.dropdownBrandValue[0],
                      carBrandName: registerState.dropdownBrandValue[1],
                      carModelCode: registerState.dropdownModelValue[0],
                      carModelName: registerState.dropdownModelValue[1],
                      carYearCode: registerState.dropdownYearValue[0],
                      carYearName: registerState.dropdownYearValue[1],
                      carFipe: registerState.carFipeValue,
                      billingMethod: registerState.dropdownBillingMethod,
                      billingValue: double.parse(
                          registerState.billingValueController.text.toString()),
                      isGasCharged: registerState.isGasCharged);
                  registerState.resetValues();
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
