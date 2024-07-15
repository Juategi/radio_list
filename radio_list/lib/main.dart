import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:radio_list/application/radio/radio_cubit.dart';
import 'package:radio_list/injection.dart';
import 'package:radio_list/domain/radio/radio_repository.dart';
import 'package:radio_list/presentation/core/theme.dart';

void main() {
  Injection.setup();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  ThemeMode _themeMode = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    GetIt.instance<RadioRepository>().getRadios('es').then((result) {
      result.fold(
        (l) => print('Error: ${l.message}'),
        (r) => print('Radios: $r'),
      );
    });
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => GetIt.instance<RadioCubit>()),
      ],
      child: MaterialApp(
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: _themeMode,
        home: const Scaffold(
          body: Center(
            child: Text('Hello World!'),
          ),
        ),
      ),
    );
  }

  void _toggleTheme(ThemeMode mode) {
    setState(() {
      _themeMode = mode;
    });
  }
}
