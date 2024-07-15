import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:radio_list/domain/radio/radio_repository.dart';
import 'package:radio_list/infraestructure/radio_browser/core/radio_browser_http_service.dart';
import 'package:radio_list/infraestructure/radio_browser/radio_browser_repository_impl.dart';
import '../../helpers/stubs/stubbed_radio.dart';
import 'radio_browser_impl_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<RadioBrowserHtttpService>(),
])
void main() {
  final MockRadioBrowserHtttpService mockHttpService =
      MockRadioBrowserHtttpService();
  final radioBrowserRepository = RadioBrowserRepositoryImpl(mockHttpService);

  setUp(() {
    GetIt.instance.registerSingleton<RadioRepository>(radioBrowserRepository);
  });

  tearDown(() {
    GetIt.instance.unregister<RadioRepository>();
  });

  group('getRadios', () {
    test('should return a Right<List<RadioEntity> if successful', () async {
      when(mockHttpService.get(any)).thenAnswer(
          (_) => Future.value(utf8.encode(json.encode([stubbedRadioJson]))));
      final result = await radioBrowserRepository.getRadios('es');
      expect(result, isA<Right>());
    });

    test('should return a Left<RadioFailure> if unsuccessful', () async {
      when(mockHttpService.get(any)).thenThrow(Exception('error'));
      final result = await radioBrowserRepository.getRadios('es');
      expect(result, isA<Left>());
    });
  });
}
