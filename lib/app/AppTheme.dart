import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

ThemeData lightModeTheme = ThemeData(
  colorSchemeSeed: Colors.deepPurple,
  fontFamily: 'Inter',
);

ThemeData darkModeTheme = FlexThemeData.dark(
  scheme: FlexScheme.dellGenoa,
  fontFamily: 'Inter',
  // textTheme: GoogleFonts.interTextTheme(),
);
