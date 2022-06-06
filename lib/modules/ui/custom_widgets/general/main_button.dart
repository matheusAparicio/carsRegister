import 'package:carsregister/modules/domain/mobx_state/settings_state.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainButton extends StatefulWidget {
  final String buttonName;
  final double width;
  final double height;
  final dynamic onPressed;
  final Decoration? boxDecoration;
  const MainButton(
      {Key? key,
      required this.buttonName,
      required this.width,
      required this.height,
      required this.onPressed,
      this.boxDecoration})
      : super(key: key);

  @override
  State<MainButton> createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        width: widget.width,
        height: widget.height,
        alignment: Alignment.center,
        margin: const EdgeInsets.only(bottom: 15),
        decoration: widget.boxDecoration ??
            BoxDecoration(
                color: settingsState.primaryColor,
                borderRadius: BorderRadius.circular(25)),
        child: Text(
          widget.buttonName,
          style: GoogleFonts.roboto(
            color: settingsState.primaryTextColor,
            fontSize: 16
          ),
        ),
      ),
    );
  }
}
