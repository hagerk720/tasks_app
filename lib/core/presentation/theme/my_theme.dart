import 'package:flutter/material.dart';
import 'package:tasks_app/core/presentation/theme/colors.dart';

ThemeData myTheme = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: primaryColor,
    onPrimary: Colors.black,
    secondary: secondaryColor,
    onSecondary: Colors.black,
    error: Colors.black,
    onError: Colors.black,
    background: Colors.black,
    onBackground: Colors.black,
    surface: Colors.black,
    onSurface: Colors.black,
  ),
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(
      fontSize: 22,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    backgroundColor: primaryColor,
    foregroundColor: Colors.black,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all(
        const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: MaterialStateProperty.all(primaryColor),
      foregroundColor: MaterialStateProperty.all(Colors.black),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all(
        const TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      foregroundColor: MaterialStateProperty.all(primaryColor),
    ),
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 32,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    headline2: TextStyle(
      fontSize: 18,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    headline3: TextStyle(
      fontSize: 24,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    headline4: TextStyle(
      fontSize: 12,
    ),
    headline5: TextStyle(
      fontSize: 16,
      color: Color.fromARGB(255, 124, 124, 124),
      fontWeight: FontWeight.bold,
    ),
  ),
);
