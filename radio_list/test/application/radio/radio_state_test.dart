import 'package:flutter_test/flutter_test.dart';
import 'package:radio_list/application/radio/radio_cubit.dart';

import '../../helpers/stubs/stubbed_radio.dart';

void main() {
  const String errorMessage = 'error';

  group('radio cubit states', () {
    test('should have all the states', () {
      expect(const RadioState.initial(), isA<RadioState>());
      expect(RadioState.loaded([stubbedRadioEntity]), isA<RadioState>());
      expect(const RadioState.error(errorMessage), isA<RadioState>());
    });

    test('should return an instance of RadioInitial', () {
      expect(const RadioState.initial(), isA<RadioInitial>());
    });

    test('should return an instance of RadioLoaded', () {
      expect(RadioState.loaded([stubbedRadioEntity]), isA<RadioLoaded>());
    });

    test('should return an instance of RadioError', () {
      expect(const RadioState.error(errorMessage), isA<RadioError>());
    });
  });
}
