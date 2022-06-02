import 'package:carsregister/ui/custom_widgets/dropdown.dart';
import 'package:carsregister/ui/custom_widgets/main_button.dart';
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
                        SizedBox(height: 10,),
                        Text("R\$100.000,00"),
                      ],
                    ),
                  ],
                ),
              ),
              MainButton(
                buttonName: "Confirmar",
                onPressed: {},
                width: 125,
                height: 40,
              ),
            ],
          )),
    );
  }
}
