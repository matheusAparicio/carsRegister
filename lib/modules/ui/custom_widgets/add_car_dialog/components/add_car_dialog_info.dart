import 'package:carsregister/modules/domain/mobx_state/register_state.dart';
import 'package:carsregister/modules/domain/model/car_brand_entity.dart';
import 'package:carsregister/modules/ui/utilities/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddCarDialogInfo extends StatefulWidget {
  const AddCarDialogInfo({Key? key}) : super(key: key);

  @override
  State<AddCarDialogInfo> createState() => _AddCarDialogInfoState();
}

class _AddCarDialogInfoState extends State<AddCarDialogInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Fabricante:",
              style: GoogleFonts.roboto(
                color: AppColors().secondaryTextColor,
              ),
            ),
            DropdownButton(
                value: registerState.dropdownBrandValue,
                items: registerState.dropdownBrandItems.map((CarBrandEntity item) {
                  return DropdownMenuItem(
                    value: item.nome,
                    child: Text(item.nome),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    registerState.dropdownBrandValue = newValue!;
                  });
                }),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Modelo:",
                  style: GoogleFonts.roboto(
                    color: AppColors().secondaryTextColor,
                  ),
                ),
                DropdownButton(
                value: registerState.dropdownModelValue,
                items: registerState.dropdownModelItems.map((String item) {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    registerState.dropdownModelValue = newValue!;
                  });
                }),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Ano:",
                  style: GoogleFonts.roboto(
                    color: AppColors().secondaryTextColor,
                  ),
                ),
                DropdownButton(
                value: registerState.dropdownYearValue,
                items: registerState.dropdownYearsItems.map((String item) {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    registerState.dropdownYearValue = newValue!;
                  });
                }),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Text(
              "Valor FIPE:",
              style: GoogleFonts.roboto(
                color: AppColors().secondaryTextColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "R\$100.000,00",
              style: GoogleFonts.roboto(
                color: AppColors().secondaryTextColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
