import 'package:flutter/material.dart';

class AppThemeData {
  static const appFontFamily = 'OpenSans';

  static const appPrimaryColor = Color(0xFFf26d6d);
  static const appPrimaryColorAccent = Color(0xFFee8988);
  static const appSecondaryColor = Color(0xFF6d83f2);
  static const appSecondaryColorAccent = Color(0xFFa8b8ff);

  static ThemeData lightTheme(context) {
    return ThemeData(
      fontFamily: appFontFamily,
      brightness: Brightness.light,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.black,
        ),
      ),
    );
  }

  static ThemeData darkTheme(context) {
    return ThemeData(
      fontFamily: appFontFamily,
      brightness: Brightness.dark,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 5,
          shadowColor: Colors.white12,
        ),
      ),
      colorScheme: const ColorScheme.dark(
        background: Color(0xFF282828),
      ),
    );
  }
}
