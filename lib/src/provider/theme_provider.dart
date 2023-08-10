import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    hintColor: Colors.black,
    colorScheme: const ColorScheme.light(
      primary: Colors.blue,
      onPrimary: Colors.black,
      secondary: Colors.red,
      onSecondary: Colors.white,
      background: Colors.white,
      surface: Colors.grey,
      onSurface: Colors.black,
      brightness: Brightness.light,
    ),
  );

  ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.deepPurple,
    hintColor: Colors.white,
    colorScheme: const ColorScheme.dark(
      primary: Colors.deepPurple,
      onPrimary: Colors.white,
      secondary: Colors.orange,
      onSecondary: Colors.black,
      background: Colors.black,
      surface: Colors.grey,
      onSurface: Colors.white,
      brightness: Brightness.dark,
    ),
  );

  ThemeData currentTheme = ThemeData();

  ThemeProvider() {
    currentTheme = lightTheme;
  }

  void toggleTheme() {
    currentTheme = currentTheme == lightTheme ? darkTheme : lightTheme;
    notifyListeners();
  }
}
