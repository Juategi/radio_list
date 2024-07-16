import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:radio_list/application/radio_audio/radio_audio_cubit.dart';
import 'package:radio_list/application/radio_list/radio_list_cubit.dart';
import 'package:radio_list/application/radio_player/radio_player_cubit.dart';
import 'package:radio_list/injection.dart';
import 'package:radio_list/presentation/core/theme.dart';
import 'package:radio_list/presentation/dashboard/dashboard_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Injection.setup();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  ThemeMode _themeMode = ThemeMode.dark;

  @override
  void initState() {
    GetIt.instance<RadioListCubit>().getRadios('Spain');
    AppTheme.toogleTheme = _toggleTheme;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => GetIt.instance<RadioListCubit>()),
        BlocProvider(create: (context) => GetIt.instance<RadioPlayerCubit>()),
        BlocProvider(create: (context) => GetIt.instance<RadioAudioCubit>()),
      ],
      child: MaterialApp(
        theme: darkTheme,
        darkTheme: darkTheme,
        themeMode: _themeMode,
        home: const DashboardPage(),
      ),
    );
  }

  void _toggleTheme(ThemeMode mode) {
    setState(() {
      _themeMode = mode;
    });
  }
}
