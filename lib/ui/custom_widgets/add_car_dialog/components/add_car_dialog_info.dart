import 'package:carsregister/ui/custom_widgets/dropdown.dart';
import 'package:carsregister/utilities/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddCarDialogInfo extends StatefulWidget {
  const AddCarDialogInfo({Key? key}) : super(key: key);

  @override
  State<AddCarDialogInfo> createState() => _AddCarDialogInfoState();
}

class _AddCarDialogInfoState extends State<AddCarDialogInfo> {
  var dropdownBrandItems = [
    "Renault",
    "Ford",
  ];

  var dropdownModelItems = [
    "Sandero",
    "Captur",
  ];

  var dropdownYearsItems = [
    "2022",
    "2021",
  ];

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
            Dropdown(items: dropdownBrandItems),
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
                Dropdown(items: dropdownModelItems),
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
                Dropdown(items: dropdownYearsItems),
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
