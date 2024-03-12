import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  textTheme: const TextTheme(
      bodyLarge: TextStyle(fontFamily: 'Poppins'),
      bodySmall: TextStyle(fontFamily: 'Poppins') // Set font family
      ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  textTheme: const TextTheme(
      bodyLarge: TextStyle(fontFamily: 'Poppins', ),
      bodySmall: TextStyle(fontFamily: 'Poppins') // Set font family
      ),
);
