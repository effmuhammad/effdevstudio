import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemeData {
  ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
    );
  }

  ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
    );
  }
}
