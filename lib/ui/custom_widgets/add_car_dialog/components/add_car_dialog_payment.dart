import 'package:carsregister/ui/custom_widgets/dropdown.dart';
import 'package:carsregister/utilities/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddCarDialogPayment extends StatefulWidget {
  const AddCarDialogPayment({Key? key}) : super(key: key);

  @override
  State<AddCarDialogPayment> createState() => _AddCarDialogPaymentState();
}

class _AddCarDialogPaymentState extends State<AddCarDialogPayment> {
  var dropdownBillingForm = [
    "Por hora",
    "Por dia",
  ];

  bool isGasCharged = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Forma de cobrança:",
              style: GoogleFonts.roboto(
                color: AppColors().secondaryTextColor,
              ),
            ),
            Dropdown(items: dropdownBillingForm),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Valor:",
              style: GoogleFonts.roboto(
                color: AppColors().secondaryTextColor,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * .3,
              height: 40,
              decoration: BoxDecoration(border: Border.all()),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              "A gasolina é cobrada?",
              style: GoogleFonts.roboto(
                color: AppColors().secondaryTextColor,
              ),
            ),
            Switch(
              value: isGasCharged,
              onChanged: (value) {
                setState(() {
                  isGasCharged = value;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
