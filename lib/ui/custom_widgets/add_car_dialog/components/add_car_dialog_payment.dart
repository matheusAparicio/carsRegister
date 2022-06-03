import 'package:carsregister/mobx_state/register_state.dart';
import 'package:carsregister/ui/utilities/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddCarDialogPayment extends StatefulWidget {
  const AddCarDialogPayment({Key? key}) : super(key: key);

  @override
  State<AddCarDialogPayment> createState() => _AddCarDialogPaymentState();
}

class _AddCarDialogPaymentState extends State<AddCarDialogPayment> {
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
            DropdownButton(
                value: registerState.dropdownBillingFormValue,
                items: registerState.dropdownBillingFormItems.map((String item) {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    registerState.dropdownBillingFormValue = newValue!;
                  });
                }),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Valor ${registerState.dropdownBillingFormValue.toLowerCase()}:",
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
              value: registerState.isGasCharged,
              onChanged: (value) {
                setState(() {
                  registerState.isGasCharged = value;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
