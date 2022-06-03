import 'package:auto_size_text/auto_size_text.dart';
import 'package:carsregister/utilities/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerButton extends StatefulWidget {
  final IconData buttonIcon;
  final String buttonName;
  double buttonWidth;
  final BoxDecoration? buttonDecoration;
  final Color? buttonColor;
  DrawerButton({
    Key? key,
    required this.buttonIcon,
    required this.buttonName,
    required this.buttonWidth,
    this.buttonDecoration,
    this.buttonColor,
  }) : super(key: key);

  @override
  State<DrawerButton> createState() => _DrawerButtonState();
}

class _DrawerButtonState extends State<DrawerButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.buttonWidth,
      //decoration: widget.buttonDecoration,
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: widget.buttonWidth * .12,
            child: Icon(
              widget.buttonIcon,
              color: widget.buttonColor ?? AppColors().secondaryTextColor,
            ),
          ),
          SizedBox(
            width: widget.buttonWidth * .575,
            child: AutoSizeText(
              widget.buttonName,
              maxLines: 2,
              minFontSize: 10,
              maxFontSize: 20,
              style: GoogleFonts.roboto(
                color: widget.buttonColor ?? AppColors().secondaryTextColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
