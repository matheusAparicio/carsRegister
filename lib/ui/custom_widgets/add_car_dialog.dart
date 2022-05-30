import 'package:flutter/material.dart';

class AddCarDialog extends StatefulWidget {
  const AddCarDialog({ Key? key }) : super(key: key);

  @override
  State<AddCarDialog> createState() => _AddCarDialogState();
}

class _AddCarDialogState extends State<AddCarDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        width: MediaQuery.of(context).size.width * .5,
        height: MediaQuery.of(context).size.height * .5,
      ),
    );
  }
}