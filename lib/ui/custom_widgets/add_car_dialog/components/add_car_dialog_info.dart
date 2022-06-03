import 'package:carsregister/ui/custom_widgets/dropdown.dart';
import 'package:flutter/material.dart';

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
            Text("Fabricante:"),
            Dropdown(items: dropdownBrandItems),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Modelo:"),
                Dropdown(items: dropdownModelItems),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Ano:"),
                Dropdown(items: dropdownYearsItems),
              ],
            ),
          ],
        ),
        Column(
          children: const [
            Text("Valor FIPE:"),
            SizedBox(
              height: 10,
            ),
            Text("R\$100.000,00"),
          ],
        ),
      ],
    );
  }
}
