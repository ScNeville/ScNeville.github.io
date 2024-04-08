import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

//Theme Change Class
class ThemeNotifier extends ChangeNotifier {
  final String key = "theme"; //Stores current setting under the key theme
  late SharedPreferences prefs; //To save option
  late bool _darkTheme;
  bool get darkTheme => _darkTheme; //Returns whether already in dark mode

  _initPrefs() async {
    prefs = await SharedPreferences.getInstance();
  }

  _loadFromPrefs() async {
    await _initPrefs();
    _darkTheme = prefs.getBool(key) ??
        true; // Default value is true for dark mode if no choice found
    notifyListeners();
  }

  _saveToPrefs() async {
    await _initPrefs();
    prefs.setBool(key, _darkTheme);
  }

  toggleTheme() {
    _darkTheme = !_darkTheme;
    _saveToPrefs();
    notifyListeners();
  }

  ThemeNotifier() {
    _darkTheme = true;
    _loadFromPrefs();
  }
}
