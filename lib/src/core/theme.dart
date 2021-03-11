import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: purple,
    textTheme: textTheme(),
    appBarTheme: appBarTheme(),
    scaffoldBackgroundColor: Colors.white,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextTheme textTheme() {
  return GoogleFonts.merriweatherTextTheme().copyWith(
    bodyText1: GoogleFonts.sourceSansPro(
      color: kTextColor,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    elevation: 0,
    color: white,
    centerTitle: true,
    brightness: Brightness.light,
    textTheme: GoogleFonts.merriweatherTextTheme(),
  );
}
