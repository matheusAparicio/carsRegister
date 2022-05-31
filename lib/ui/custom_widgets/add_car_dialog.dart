import 'package:carsregister/ui/custom_widgets/dropdown.dart';
import 'package:flutter/material.dart';

class AddCarDialog extends StatefulWidget {
  const AddCarDialog({Key? key}) : super(key: key);

  @override
  State<AddCarDialog> createState() => _AddCarDialogState();
}

class _AddCarDialogState extends State<AddCarDialog> {
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
    return AlertDialog(
      content: Container(
          width: MediaQuery.of(context).size.width * .5,
          height: MediaQuery.of(context).size.height * .5,
          decoration: const BoxDecoration(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Adicionar carro"),
              SizedBox(
                height: MediaQuery.of(context).size.height * .4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Dropdown(items: dropdownBrandItems),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Dropdown(items: dropdownModelItems),
                        Dropdown(items: dropdownYearsItems),
                      ],
                    ),
                    Text("Valor FIPE"),
                    Text("R\$100.000,00"),
                  ],
                ),
              ),
              Text("Confirmar"),
            ],
          )),
    );
  }
}
