import 'package:carsregister/modules/domain/mobx_state/register_state.dart';
import 'package:carsregister/modules/ui/utilities/app_colors.dart';
import 'package:carsregister/modules/ui/utilities/app_formats.dart';
import 'package:carsregister/modules/ui/utilities/currency_text_formatter.dart';
import 'package:carsregister/modules/ui/utilities/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

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
                value: registerState.dropdownBillingMethod,
                items:
                    registerState.dropdownBillingFormItems.map((String item) {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    registerState.dropdownBillingMethod = newValue!;
                  });
                }),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Valor ${registerState.dropdownBillingMethod.toLowerCase()}:",
              style: GoogleFonts.roboto(
                color: AppColors().secondaryTextColor,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * .3,
              height: 40,
              decoration: BoxDecoration(border: Border.all()),
              padding: const EdgeInsets.only(bottom: 5),
              child: TextFormField(
                controller: registerState.billingValueController,
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.center,
                cursorColor: AppColors().secondaryTextColor,
                inputFormatters: [
                  FilteringTextInputFormatter.deny(RegExp(" ")),
                  NumericTextFormatter()
                ],
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
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
