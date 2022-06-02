import 'package:carsregister/utilities/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerButton extends StatefulWidget {
  final IconData buttonIcon;
  final String buttonName;
  double? buttonWidth;
  final BoxDecoration? buttonDecoration;
  final Color? buttonColor;
  DrawerButton({
    Key? key,
    required this.buttonIcon,
    required this.buttonName,
    this.buttonWidth,
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
      decoration: widget.buttonDecoration,
      alignment: Alignment.centerLeft,
      child: FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              widget.buttonIcon,
              color: widget.buttonColor ?? AppColors().secondaryTextColor,
            ),
            Text(
              widget.buttonName,
              maxLines: 2,
              style: GoogleFonts.roboto(
                color: widget.buttonColor ?? AppColors().secondaryTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
