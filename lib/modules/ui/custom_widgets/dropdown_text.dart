import 'package:auto_size_text/auto_size_text.dart';
import 'package:carsregister/modules/ui/utilities/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DropdownText extends StatefulWidget {
  String name;
  DropdownText({Key? key, required this.name}) : super(key: key);

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
          color: AppColors().secondaryTextColor,
        ),
        minFontSize: 6,
        maxLines: 3,
        textAlign: TextAlign.center,
      ),
    );
  }
}
