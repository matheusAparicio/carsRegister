import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  TextStyle mainTextStyle(
      {FontWeight fontWeight = FontWeight.w400,
      double fontSize = 16,
      Color color = Colors.white}) {
    return GoogleFonts.roboto(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }
}
