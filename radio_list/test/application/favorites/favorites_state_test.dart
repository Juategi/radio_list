import 'package:flutter_test/flutter_test.dart';
import 'package:radio_list/application/favorites/favorites_cubit.dart';
import '../../helpers/stubs/stubbed_radio.dart';

void main() {
  const String errorMessage = 'error';

  group('favorites cubit states', () {
    test('should have all the states', () {
      expect(const FavoritesState.initial(), isA<FavoritesState>());
      expect(
          FavoritesState.loaded([stubbedRadioEntity]), isA<FavoritesState>());
      expect(const FavoritesState.error(errorMessage), isA<FavoritesState>());
    });

    test('should return an instance of FavoritesInitial', () {
      expect(const FavoritesState.initial(), isA<FavoritesInitial>());
    });

    test('should return an instance of FavoritesLoaded', () {
      expect(
          FavoritesState.loaded([stubbedRadioEntity]), isA<FavoritesLoaded>());
    });

    test('should return an instance of FavoritesError', () {
      expect(const FavoritesState.error(errorMessage), isA<FavoritesError>());
    });
  });
}
