import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:radio_list/injection.dart';
import 'package:radio_list/domain/radio/radio_repository.dart';

void main() {
  Injection.setup();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    GetIt.instance<RadioRepository>().getRadios().then((result) {
      result.fold(
        (l) => print('Error: ${l.message}'),
        (r) => print('Radios: $r'),
      );
    });
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
