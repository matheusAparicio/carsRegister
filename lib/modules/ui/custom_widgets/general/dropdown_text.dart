import 'package:auto_size_text/auto_size_text.dart';
import 'package:carsregister/modules/domain/mobx_state/preferences_state.dart';
import 'package:carsregister/modules/ui/utilities/app_text_styles.dart';
import 'package:flutter/material.dart';

class DropdownText extends StatefulWidget {
  final String name;
  const DropdownText({Key? key, required this.name}) : super(key: key);

  @override
  State<DropdownText> createState() => _DropdownTextState();
}

class _DropdownTextState extends State<DropdownText> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AutoSizeText(
        widget.name,
        style: AppTextStyles()
            .mainTextStyle(color: preferencesState.secondaryTextColor),
        minFontSize: 6,
        maxLines: 3,
        textAlign: TextAlign.center,
      ),
    );
  }
}
