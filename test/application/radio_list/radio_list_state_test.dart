import 'package:flutter_test/flutter_test.dart';
import 'package:radio_list/application/radio_list/radio_list_cubit.dart';

import '../../helpers/stubs/stubbed_radio.dart';

void main() {
  const String errorMessage = 'error';

  group('radio cubit states', () {
    test('should have all the states', () {
      expect(const RadioListState.initial(), isA<RadioListState>());
      expect(
          RadioListState.loaded([stubbedRadioEntity]), isA<RadioListState>());
      expect(const RadioListState.error(errorMessage), isA<RadioListState>());
    });

    test('should return an instance of RadioInitial', () {
      expect(const RadioListState.initial(), isA<RadioListInitial>());
    });

    test('should return an instance of RadioLoaded', () {
      expect(
          RadioListState.loaded([stubbedRadioEntity]), isA<RadioListLoaded>());
    });

    test('should return an instance of RadioError', () {
      expect(const RadioListState.error(errorMessage), isA<RadioListError>());
    });
  });
}
