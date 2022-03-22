import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData;

  ThemeProvider({required bool isDarkmode})
      : _themeData = isDarkmode ? ThemeData.dark() : ThemeData.light();

  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  setLightMode() {
    _themeData = ThemeData.light();
    notifyListeners();
  }

  setDarkMode() {
    _themeData = ThemeData.dark();
    notifyListeners();
  }
}
