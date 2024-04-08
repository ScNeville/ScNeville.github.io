//LIGHT THEME
import 'package:flutter/material.dart';
import '../../utils/themes/text_theme.dart';

class AppTheme {
  static ThemeData getTheme(bool isDarkMode) {
    return isDarkMode ? dark : light;
  }
}

ThemeData light = ThemeData(
    useMaterial3: true,
    fontFamily: TextThemes.textStyle.fontFamily,
    brightness: Brightness.light,
    colorSchemeSeed: Colors.brown.shade200);

//DARK THEME
ThemeData dark = ThemeData(
  useMaterial3: true,
  fontFamily: TextThemes.textStyle.fontFamily,
  brightness: Brightness.dark,
  colorSchemeSeed: Colors.brown.shade700,
);
