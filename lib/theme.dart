import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// create a custom theme for the app and let all the colors blank for now
var mainTheme = ThemeData(
    colorScheme: mainScheme,
    textTheme: mainTextTheme,
    scaffoldBackgroundColor: Color(0xffc2d9ad));

const mainScheme = ColorScheme(
  primary: Color(0xffdc0a2d),
  secondary: Color(0xff89061c),
  surface: Color(0xff89061c), //
  background: Color(0xffc2d9ad),
  error: Color(0xff232323),
  onPrimary: Color(0xffdedede),
  onSecondary: Color(0xffdedede),
  onSurface: Color(0xffdedede),
  onBackground: Color(0xff232323),
  onError: Color(0xffdedede),
  brightness: Brightness.light,
);

var mainTextTheme = TextTheme(
  labelSmall: GoogleFonts.vt323(
    textStyle: TextStyle(
      fontSize: 20,
      color: Color(0xff868686),
      fontStyle: FontStyle.italic,
    ),
  ),
  labelMedium: GoogleFonts.vt323(
    textStyle: TextStyle(
      fontSize: 20,
    ),
  ),
  labelLarge: GoogleFonts.vt323(
    textStyle: TextStyle(
      fontSize: 30,
    ),
  ),
);
