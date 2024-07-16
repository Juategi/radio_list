import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:radio_list/infraestructure/radio_browser/core/radio_browser_http_service.dart';
import 'package:radio_list/infraestructure/radio_browser/core/shared_preferences_service.dart';
import 'package:radio_list/infraestructure/radio_browser/radio_browser_repository_impl.dart';
import '../../helpers/stubs/stubbed_radio.dart';
import 'radio_browser_impl_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<RadioBrowserHtttpService>(),
  MockSpec<SharedPreferencesService>(),
])
void main() {
  final MockRadioBrowserHtttpService mockHttpService =
      MockRadioBrowserHtttpService();
  final MockSharedPreferencesService mocSharedPreferencesService =
      MockSharedPreferencesService();
  final radioBrowserRepository =
      RadioBrowserRepositoryImpl(mockHttpService, mocSharedPreferencesService);

  group('getRadios', () {
    test('should return a Right<List<RadioEntity> if successful', () async {
      when(mockHttpService.get(any, uuids: null)).thenAnswer(
          (_) => Future.value(utf8.encode(json.encode([stubbedRadioJson]))));

      final result = await radioBrowserRepository.getRadios('Spain');

      expect(result, isA<Right>());
    });

    test('should return a Left<RadioFailure> if unsuccessful', () async {
      when(mockHttpService.get(any, uuids: null)).thenThrow(Exception('error'));

      final result = await radioBrowserRepository.getRadios('Spain');

      expect(result, isA<Left>());
    });
  });

  group('getFavoriteRadios', () {
    test('should return a Right<List<RadioEntity> if successful', () async {
      when(mockHttpService.get(any, uuids: 'a,b')).thenAnswer(
          (_) => Future.value(utf8.encode(json.encode([stubbedRadioJson]))));
      when(mocSharedPreferencesService.getList(any))
          .thenAnswer((_) => Future.value(['a', 'b']));

      final result = await radioBrowserRepository.getFavoriteRadios();

      expect(result, isA<Right>());
    });

    test('should return a Left<RadioFailure> if unsuccessful', () async {
      when(mockHttpService.get(any, uuids: 'a,b'))
          .thenThrow(Exception('error'));
      when(mocSharedPreferencesService.getList(any))
          .thenAnswer((_) => Future.value(['a', 'b']));

      final result = await radioBrowserRepository.getFavoriteRadios();

      expect(result, isA<Left>());
    });
  });

  group('toggleFavoriteRadio', () {
    test('should return a Right<Unit> if successful', () async {
      when(mocSharedPreferencesService.getList(any))
          .thenAnswer((_) => Future.value(['a', 'b']));
      when(mocSharedPreferencesService.saveList(any, any))
          .thenAnswer((_) => Future.value());

      final result = await radioBrowserRepository.toggleFavoriteRadio('a');

      expect(result, isA<Right>());
    });

    test('should return a Left<RadioFailure> if unsuccessful', () async {
      when(mocSharedPreferencesService.getList(any))
          .thenAnswer((_) => Future.value(['a', 'b']));
      when(mocSharedPreferencesService.saveList(any, any))
          .thenThrow(Exception('error'));

      final result = await radioBrowserRepository.toggleFavoriteRadio('b');

      expect(result, isA<Left>());
    });
  });

  group('searchRadios', () {
    test('should return a Right<List<RadioEntity> if successful', () async {
      when(mockHttpService.get(any, name: 'text', country: 'Spain')).thenAnswer(
          (_) => Future.value(utf8.encode(json.encode([stubbedRadioJson]))));

      final result = await radioBrowserRepository.searchRadios('text', 'Spain');

      expect(result, isA<Right>());
    });

    test('should return a Left<RadioFailure> if unsuccessful', () async {
      when(mockHttpService.get(any)).thenThrow(Exception('error'));

      final result = await radioBrowserRepository.searchRadios('text', 'Spain');

      expect(result, isA<Left>());
    });
  });
}
