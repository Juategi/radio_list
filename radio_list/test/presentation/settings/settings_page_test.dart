import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';
import 'package:radio_list/application/radio_list/radio_list_cubit.dart';
import 'package:radio_list/domain/countries/country.dart';
import 'package:radio_list/presentation/core/theme.dart';
import 'package:radio_list/presentation/settings/settings_page.dart';
import '../../application/radio_list/radio_list_cubit_test.mocks.dart';
import '../../helpers/stubs/stubbed_radio.dart';

void main() {
  late RadioListCubit radioListCubit;
  final MockRadioRepository mockRadioRepository = MockRadioRepository();

  setUp(() {
    radioListCubit = RadioListCubit(mockRadioRepository);
    GetIt.I.registerSingleton<RadioListCubit>(radioListCubit);
  });

  tearDown(() {
    GetIt.I.unregister<RadioListCubit>();
  });

  Widget testWidget() => MaterialApp(
        home: MaterialApp(
          theme: darkTheme,
          home: const SettingsPage(),
        ),
      );

  group('settings page', () {
    testWidgets('should change radio list', (tester) async {
      when(mockRadioRepository.getRadios(any))
          .thenAnswer((_) async => Right([stubbedRadioEntity]));

      await tester.pumpWidget(testWidget());
      await tester.pump();

      final dropdown = find.byType(DropdownButton<Country>);
      await tester.tap(dropdown);
      await tester.pumpAndSettle();

      final dropdownMenuItem = find.byType(DropdownMenuItem<Country>);
      await tester.tap(dropdownMenuItem.last);
      await tester.pumpAndSettle();

      expect(dropdownMenuItem, findsWidgets);
      expect(dropdown, findsOneWidget);

      verify(mockRadioRepository.getRadios(any));
    });
  });
}
