import 'package:carsregister/ui/custom_widgets/add_car_dialog/components/add_car_dialog_info.dart';
import 'package:carsregister/ui/custom_widgets/add_car_dialog/components/add_car_dialog_payment.dart';
import 'package:carsregister/ui/custom_widgets/dropdown.dart';
import 'package:carsregister/ui/custom_widgets/main_button.dart';
import 'package:carsregister/utilities/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        child: Container(
          width: MediaQuery.of(context).size.width * .7,
          height: MediaQuery.of(context).size.height * .6,
          decoration: BoxDecoration(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Adicionar carro"),
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
                        color: firstTabSelected
                            ? AppColors().primaryColor
                            : AppColors().transparent,
                        alignment: Alignment.center,
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
                        color: !firstTabSelected
                            ? AppColors().primaryColor
                            : AppColors().transparent,
                        alignment: Alignment.center,
                        child: Text(
                          "Formas de pagamento",
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
                onPressed: {},
                width: 125,
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
