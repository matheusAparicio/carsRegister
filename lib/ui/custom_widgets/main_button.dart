import 'package:carsregister/utilities/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainButton extends StatefulWidget {
  String buttonName;
  double width;
  double height;
  void onPressed;
  Decoration? boxDecoration;
  MainButton(
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
      onTap: () => widget.onPressed,
      child: Container(
        width: widget.width,
        height: widget.height,
        alignment: Alignment.center,
        decoration: widget.boxDecoration ??
            BoxDecoration(
              color: AppColors().primaryColor,
              borderRadius: BorderRadius.circular(15)
            ),
        child: Text(
          widget.buttonName,
          style: GoogleFonts.roboto(color: AppColors().primaryTextColor),
        ),
      ),
    );
  }
}
