import 'package:carsregister/modules/domain/mobx_state/settings_state.dart';
import 'package:carsregister/modules/ui/utilities/app_colors.dart';
import 'package:carsregister/modules/ui/utilities/app_text_styles.dart';
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
            color: settingsState.secondaryColor,
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    widget.confirmationMessage,
                    style: AppTextStyles().mainTextStyle(),
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: widget.confirmationAction,
                        child: Container(
                          width: MediaQuery.of(context).size.width * .22,
                          height: MediaQuery.of(context).size.height * .05,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: settingsState.primaryColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            "Confirmar",
                            style: AppTextStyles().mainTextStyle(
                                color: settingsState.primaryTextColor),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop((context));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * .22,
                          height: MediaQuery.of(context).size.height * .05,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors().redColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            "Cancelar",
                            style: AppTextStyles().mainTextStyle(
                                color: settingsState.primaryTextColor),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ]),
              ]),
        ),
      ),
    );
  }
}
