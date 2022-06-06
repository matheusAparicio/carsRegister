import 'package:carsregister/modules/domain/mobx_state/register_state.dart';
import 'package:carsregister/modules/domain/mobx_state/preferences_state.dart';
import 'package:carsregister/modules/ui/utilities/app_text_styles.dart';
import 'package:carsregister/modules/ui/utilities/currency_text_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
                color: preferencesState.secondaryTextColor,
              ),
            ),
            DropdownButton(
                dropdownColor: preferencesState.secondaryColor,
                value: registerState.dropdownBillingMethod,
                items:
                    registerState.dropdownBillingFormItems.map((String item) {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(
                      item,
                      style: AppTextStyles().mainTextStyle(
                          color: preferencesState.secondaryTextColor),
                    ),
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
                color: preferencesState.secondaryTextColor,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * .3,
              height: 40,
              decoration: BoxDecoration(border: Border.all(color: preferencesState.secondaryTextColor)),
              padding: const EdgeInsets.only(bottom: 5),
              child: TextFormField(
                controller: registerState.billingValueController,
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.center,
                cursorColor: preferencesState.secondaryTextColor,
                inputFormatters: [
                  FilteringTextInputFormatter.deny(RegExp(" ")),
                  NumericTextFormatter()
                ],
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
                style: AppTextStyles().mainTextStyle(color: preferencesState.secondaryTextColor)
              ),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              "A gasolina é cobrada?",
              style: GoogleFonts.roboto(
                color: preferencesState.secondaryTextColor,
              ),
            ),
            Switch(
              value: registerState.isGasCharged,
              onChanged: (value) {
                setState(() {
                  registerState.isGasCharged = value;
                });
              },
              activeColor: preferencesState.primaryColor,
              trackColor: MaterialStateProperty.all(preferencesState.secondaryTextColor),
            ),
          ],
        ),
      ],
    );
  }
}
