import 'package:auto_size_text/auto_size_text.dart';
import 'package:carsregister/modules/domain/mobx_state/settings_state.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerButton extends StatefulWidget {
  final IconData buttonIcon;
  final String buttonName;
  final double buttonWidth;
  final BoxDecoration? buttonDecoration;
  final Color? buttonColor;
  final dynamic onTap;
  const DrawerButton({
    Key? key,
    required this.buttonIcon,
    required this.buttonName,
    required this.buttonWidth,
    this.buttonDecoration,
    this.buttonColor,
    this.onTap
  }) : super(key: key);

  @override
  State<DrawerButton> createState() => _DrawerButtonState();
}

class _DrawerButtonState extends State<DrawerButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: widget.buttonWidth,
        decoration: widget.buttonDecoration,
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: widget.buttonWidth * .1,
              margin: EdgeInsets.only(right: widget.buttonWidth * .05),
              alignment: Alignment.center,
              child: Icon(
                widget.buttonIcon,
                color: widget.buttonColor ?? settingsState.secondaryTextColor,
              ),
            ),
            SizedBox(
              width: widget.buttonWidth * .85,
              child: AutoSizeText(
                widget.buttonName,
                maxLines: 2,
                minFontSize: 10,
                maxFontSize: 20,
                style: GoogleFonts.roboto(
                  color: widget.buttonColor ?? settingsState.secondaryTextColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
