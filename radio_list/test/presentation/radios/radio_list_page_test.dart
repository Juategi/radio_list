import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:radio_list/application/radio/radio_cubit.dart';
import 'package:radio_list/domain/radio/radio_failure.dart';
import 'package:radio_list/presentation/core/theme.dart';
import 'package:radio_list/presentation/radios/radio_list_page.dart';
import '../../application/radio/radio_cubit_test.mocks.dart';
import '../../helpers/stubs/stubbed_radio.dart';

void main() {
  late RadioCubit radioCubit;
  final MockRadioRepository mockRadioRepository = MockRadioRepository();

  setUp(() {
    radioCubit = RadioCubit(mockRadioRepository);
  });

  setUpAll(() => HttpOverrides.global = null);

  Widget testWidget() => MaterialApp(
        home: MaterialApp(
          theme: darkTheme,
          home: MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => radioCubit),
            ],
            child: const RadioListPage(),
          ),
        ),
      );

  group('radio list page', () {
    testWidgets('should show radio tiles', (tester) async {
      when(mockRadioRepository.getRadios(any))
          .thenAnswer((_) async => Right([stubbedRadioEntity]));
      await radioCubit.getRadios('Spain');
      await tester.pumpWidget(testWidget());
      await tester.pump();
      expect(find.text('random_name'), findsOneWidget);
    });

    testWidgets('should show error', (tester) async {
      when(mockRadioRepository.getRadios(any))
          .thenAnswer((_) async => Left(RadioFailure('error')));
      await radioCubit.getRadios('Spain');
      await tester.pumpWidget(testWidget());
      await tester.pump();
      expect(find.text('error'), findsOneWidget);
    });
  });
}
