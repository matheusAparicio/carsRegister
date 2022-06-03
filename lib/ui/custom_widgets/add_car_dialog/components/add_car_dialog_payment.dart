import 'package:carsregister/ui/custom_widgets/dropdown.dart';
import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Forma de cobrança:"),
            Dropdown(items: dropdownBillingForm),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Valor:"),
            Container(),
          ],
        ),
      ],
    );
  }
}
