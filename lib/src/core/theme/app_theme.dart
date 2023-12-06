import 'package:flutter/material.dart';

class AppThemeData {
  final double appBarHeight = 200;

  ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      appBarTheme: AppBarTheme(
        toolbarHeight: appBarHeight,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
    );
  }

  ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        toolbarHeight: appBarHeight,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
    );
  }
}
