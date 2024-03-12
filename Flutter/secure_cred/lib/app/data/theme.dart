import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  inputDecorationTheme: const InputDecorationTheme(
    suffixIconColor: Color.fromARGB(104, 255, 255, 255),
  ),
  brightness: Brightness.light,
  hintColor: Colors.white60,
  appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.black,
      elevation: 0,
      titleTextStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontFamily: 'Poppins')),
  textTheme: const TextTheme(
      bodyLarge: TextStyle(fontFamily: 'Poppins'),
      bodySmall: TextStyle(fontFamily: 'Poppins') // Set font family
      ),
);

ThemeData darkTheme = ThemeData(
  appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontFamily: 'Poppins')),
  brightness: Brightness.dark,
  textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontFamily: 'Poppins',
      ),
      bodySmall: TextStyle(fontFamily: 'Poppins') // Set font family
      ),
);
