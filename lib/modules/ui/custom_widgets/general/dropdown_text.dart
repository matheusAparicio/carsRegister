import 'package:auto_size_text/auto_size_text.dart';
import 'package:carsregister/modules/domain/mobx_state/settings_state.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        style: GoogleFonts.roboto(
          color: settingsState.secondaryTextColor,
        ),
        minFontSize: 6,
        maxLines: 3,
        textAlign: TextAlign.center,
      ),
    );
  }
}
