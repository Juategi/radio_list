import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:radio_list/application/favorites/favorites_cubit.dart';
import 'package:radio_list/domain/radio/radio_failure.dart';
import 'package:radio_list/domain/radio/radio_repository.dart';

import '../../helpers/stubs/stubbed_radio.dart';
import '../radio_list/radio_list_cubit_test.mocks.dart';

void main() {
  final RadioRepository mockRadioRepository = MockRadioRepository();
  late FavoritesCubit favoritesCubit;

  setUp(() {
    favoritesCubit = FavoritesCubit(mockRadioRepository);
  });

  group('getFavorites', () {
    test('should emit a FavoriteLoaded state when succesful', () async {
      when(mockRadioRepository.getFavoriteRadios())
          .thenAnswer((_) => Future.value(Right([stubbedRadioEntity])));

      await favoritesCubit.getFavorites();

      expect(
        favoritesCubit.state,
        FavoritesState.loaded([stubbedRadioEntity]),
      );
    });

    test('should emit a FavoriteError state when unsuccesful', () async {
      when(mockRadioRepository.getFavoriteRadios())
          .thenAnswer((_) => Future.value(Left(RadioFailure('error'))));

      await favoritesCubit.getFavorites();

      expect(
        favoritesCubit.state,
        const FavoritesState.error("error: reload app"),
      );
    });
  });
}
