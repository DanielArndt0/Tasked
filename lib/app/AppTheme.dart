import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightModeTheme = FlexThemeData.light(
  scheme: FlexScheme.greys,
  textTheme: GoogleFonts.interTextTheme(),
);

ThemeData darkModeTheme = FlexThemeData.dark(
  scheme: FlexScheme.greys,
  textTheme: GoogleFonts.interTextTheme(),
);
