import 'package:flutter/material.dart';

class AppTheme {
  static Function(ThemeMode mode)? toogleTheme;
}

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  fontFamily: 'Inter',
  brightness: Brightness.light,
  canvasColor: Colors.grey[600],
  cardColor: Colors.white,
  primarySwatch: Colors.blueGrey,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    color: Color.fromARGB(255, 52, 101, 122),
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.black, fontSize: 16.0),
    bodyLarge: TextStyle(color: Colors.black54, fontSize: 16.0),
    bodySmall: TextStyle(color: Colors.black54, fontSize: 14.0),
    headlineLarge: TextStyle(
        color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold),
    headlineMedium: TextStyle(
        color: Colors.black87, fontSize: 20.0, fontWeight: FontWeight.w600),
    headlineSmall: TextStyle(
        color: Colors.black87, fontSize: 14.0, fontWeight: FontWeight.w600),
  ),
);

final ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  fontFamily: 'Inter',
  brightness: Brightness.dark,
  cardColor: const Color.fromARGB(255, 22, 22, 22),
  canvasColor: Colors.grey[800],
  primaryColor: Colors.white,
  scaffoldBackgroundColor: const Color.fromARGB(255, 22, 22, 22),
  appBarTheme: const AppBarTheme(
    color: Color.fromARGB(255, 52, 101, 122),
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.white, fontSize: 16.0),
    bodyLarge: TextStyle(color: Colors.white54, fontSize: 16.0),
    bodySmall: TextStyle(color: Colors.white54, fontSize: 14.0),
    headlineLarge: TextStyle(
        color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold),
    headlineMedium: TextStyle(
        color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w600),
    headlineSmall: TextStyle(
        color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w600),
  ),
);
