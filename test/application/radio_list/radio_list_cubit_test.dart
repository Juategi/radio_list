import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:radio_list/application/radio_list/radio_list_cubit.dart';
import 'package:radio_list/domain/countries/country.dart';
import 'package:radio_list/domain/radio/radio_failure.dart';
import 'package:radio_list/domain/radio/radio_repository.dart';

import '../../helpers/stubs/stubbed_radio.dart';
import 'radio_list_cubit_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<RadioRepository>(),
])
void main() {
  final MockRadioRepository mockRadioRepository = MockRadioRepository();
  late RadioListCubit radioCubit;

  setUp(() {
    radioCubit = RadioListCubit(mockRadioRepository);
  });

  group('getRadios', () {
    test('should emit a RadioLoaded state when succesful', () async {
      when(mockRadioRepository.getRadios(any))
          .thenAnswer((_) => Future.value(Right([stubbedRadioEntity])));

      await radioCubit.getRadios(Country.spain);

      expect(
        radioCubit.state,
        RadioListState.loaded([stubbedRadioEntity]),
      );
    });

    test('should emit a RadioError state when unsuccesful', () async {
      when(mockRadioRepository.getRadios(any))
          .thenAnswer((_) => Future.value(Left(RadioFailure('error'))));

      await radioCubit.getRadios(Country.spain);

      expect(
        radioCubit.state,
        const RadioListState.error("error: reload app"),
      );
    });
  });

  group('searchRadios', () {
    test('should emit a RadioLoaded state when succesful', () async {
      when(mockRadioRepository.searchRadios(any, any))
          .thenAnswer((_) => Future.value(Right([stubbedRadioEntity])));

      await radioCubit.searchRadios('text', Country.spain);

      expect(
        radioCubit.state,
        RadioListState.loaded([stubbedRadioEntity]),
      );
    });

    test('should emit a RadioError state when unsuccesful', () async {
      when(mockRadioRepository.searchRadios(any, any))
          .thenAnswer((_) => Future.value(Left(RadioFailure('error'))));

      await radioCubit.searchRadios('text', Country.spain);

      expect(
        radioCubit.state,
        const RadioListState.error("error: reload app"),
      );
    });
  });
}
