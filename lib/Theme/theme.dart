import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      background: Colors.white,
      primary: Color.fromARGB(255, 246, 247, 214),
      onSecondary: Colors.black,
      secondary: Color.fromARGB(255, 231, 234, 242),
    ));

ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
        background: Colors.grey.shade900,
        primary: Color.fromARGB(26, 246, 247, 214),
        onSecondary: Colors.white,
        secondary: Colors.grey.shade700,
        ));
