import 'package:carsregister/modules/ui/utilities/app_colors.dart';
import 'package:flutter/material.dart';

class ConfirmationDialog extends StatefulWidget {
  final String confirmationMessage;
  final dynamic confirmationAction;
  const ConfirmationDialog({
    Key? key,
    required this.confirmationMessage,
    required this.confirmationAction,
  }) : super(key: key);

  @override
  State<ConfirmationDialog> createState() => _ConfirmationDialogState();
}

class _ConfirmationDialogState extends State<ConfirmationDialog> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: AppColors().transparent,
        borderRadius: BorderRadius.circular(25),
        child: Container(
            width: MediaQuery.of(context).size.width * .6,
            height: MediaQuery.of(context).size.height * .2,
            decoration: BoxDecoration(
              color: AppColors().secondaryColor,
            )),
      ),
    );
  }
}
