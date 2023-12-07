import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemeData {
  final appFontFamily = 'OpenSans';

  ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      fontFamily: appFontFamily,
    );
  }

  ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      fontFamily: appFontFamily,
    );
  }
}
