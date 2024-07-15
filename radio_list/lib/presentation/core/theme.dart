import 'package:flutter/material.dart';

class AppTheme {
  static Function(ThemeMode mode)? toogleTheme;
}

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  fontFamily: 'Inter',
  brightness: Brightness.light,
  cardColor: Colors.white,
  primarySwatch: Colors.blueGrey,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    color: Color.fromARGB(255, 52, 101, 122),
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.black),
    bodyLarge: TextStyle(color: Colors.black54),
    bodySmall: TextStyle(color: Colors.black54),
    headlineLarge: TextStyle(
        color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold),
    headlineMedium: TextStyle(
        color: Colors.black87, fontSize: 20.0, fontWeight: FontWeight.bold),
    headlineSmall: TextStyle(
        color: Colors.black87, fontSize: 14.0, fontWeight: FontWeight.w600),
  ),
);

final ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  fontFamily: 'Inter',
  brightness: Brightness.dark,
  cardColor: Colors.black,
  primaryColor: Colors.white,
  scaffoldBackgroundColor: Colors.black,
  appBarTheme: const AppBarTheme(
    color: Color.fromARGB(255, 52, 101, 122),
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.white),
    bodyLarge: TextStyle(color: Colors.white54),
    bodySmall: TextStyle(color: Colors.white54),
    headlineLarge: TextStyle(
        color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold),
    headlineMedium: TextStyle(
        color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
    headlineSmall: TextStyle(
        color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w600),
  ),
);
