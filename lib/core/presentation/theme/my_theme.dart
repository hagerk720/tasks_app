import 'package:flutter/material.dart';

ThemeData myTheme = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xff0b113c),
    onPrimary: Color(0xfff1f2f8),
    secondary: Color(0xff0b113c),
    onSecondary: Color(0xffd6f1ff),
    error: Colors.black,
    onError: Colors.black,
    background: Colors.black,
    onBackground: Colors.black,
    surface: Color(0xffffe3c7),
    onSurface: Colors.black,
  ),
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(
      fontSize: 22,
      color: Color(0xff0b113c),
      fontWeight: FontWeight.bold,
    ),
    foregroundColor: Color(0xff0b113c),
    backgroundColor: Colors.white,
    elevation: 0,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all(
        const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: MaterialStateProperty.all(const Color(0xff0b113c)),
      foregroundColor: MaterialStateProperty.all(Colors.white),
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
      foregroundColor: MaterialStateProperty.all(const Color(0xff0b113c)),
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
    headline6: TextStyle(
      fontSize: 18,
      color: Color.fromARGB(255, 117, 117, 117),
      fontWeight: FontWeight.bold,
    ),
  ),
);
