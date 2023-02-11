import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle lexendDecaStyle(
    {required double fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    required Color color}) {
  return GoogleFonts.lexendDeca(
      textStyle: TextStyle(
          letterSpacing: letterSpacing,
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color));
}

TextStyle lexendStyle(
    {required double fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    double? lineHeight,
    Color? color}) {
  return GoogleFonts.lexend(
      textStyle: TextStyle(
          height: lineHeight,
          letterSpacing: letterSpacing,
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color));
}

TextStyle poppinsStyle(
    {required double fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    double? lineHeight,
    Color? color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          height: lineHeight,
          letterSpacing: letterSpacing,
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color));
}

// background gradient color
Gradient backgroundGradient() {
  return const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.35, 192.77],
    colors: [
      Color(0xff252525),
      Color(0xff35373B),
    ],
  );
}

double width(double width) {
  double minus = 375 - width;

  double div = minus / 375;

  double mul = 100 * div;

  double actualwidth = 100 - mul;
  return actualwidth;
}

double height(double height) {
  double minus = 812 - height;

  double div = minus / 812;

  double mul = 100 * div;

  double actualheight = 100 - mul;

  return actualheight;
}
