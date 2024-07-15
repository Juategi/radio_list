import 'package:flutter/material.dart';

//Theme.of(context).textTheme.bodySmall,

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  fontFamily: 'Inter',
  brightness: Brightness.light,
  primarySwatch: Colors.blue,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    color: Colors.blue,
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.black),
    bodyLarge: TextStyle(color: Colors.black54),
    bodySmall: TextStyle(color: Colors.black38),
    headlineLarge: TextStyle(
        color: Colors.black87, fontSize: 24.0, fontWeight: FontWeight.bold),
    headlineMedium: TextStyle(
        color: Colors.black87, fontSize: 20.0, fontWeight: FontWeight.bold),
    headlineSmall: TextStyle(
        color: Colors.black87, fontSize: 16.0, fontWeight: FontWeight.bold),
  ),
);

final ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  fontFamily: 'Inter',
  brightness: Brightness.dark,
  primarySwatch: Colors.blue,
  primaryColor: Colors.black,
  scaffoldBackgroundColor: Colors.black,
  appBarTheme: const AppBarTheme(
    color: Colors.black,
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.white),
    bodyLarge: TextStyle(color: Colors.white54),
    bodySmall: TextStyle(color: Colors.white38),
    headlineLarge: TextStyle(
        color: Colors.white70, fontSize: 24.0, fontWeight: FontWeight.bold),
    headlineMedium: TextStyle(
        color: Colors.white70, fontSize: 20.0, fontWeight: FontWeight.bold),
    headlineSmall: TextStyle(
        color: Colors.white70, fontSize: 16.0, fontWeight: FontWeight.bold),
  ),
);
