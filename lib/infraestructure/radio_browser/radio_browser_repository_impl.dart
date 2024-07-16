import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:radio_list/infraestructure/radio_browser/core/radio_browser_http_service.dart';
import 'package:radio_list/infraestructure/radio_browser/core/shared_preferences_service.dart';
import 'package:radio_list/infraestructure/radio_browser/radio_browser_dto.dart';
import 'package:radio_list/domain/radio/radio_entity.dart';
import 'package:radio_list/domain/radio/radio_failure.dart';
import 'package:radio_list/domain/radio/radio_repository.dart';

class RadioBrowserRepositoryImpl implements RadioRepository {
  final RadioBrowserHtttpService _httpService;
  final SharedPreferencesService _sharedPreferencesService;
  RadioBrowserRepositoryImpl(this._httpService, this._sharedPreferencesService);

  final favoritesKey = 'favorite_radios';

  @override
  Future<Either<RadioFailure, List<RadioEntity>>> getRadios(
      String countryCode) async {
    try {
      final path = '/json/stations/bycountryexact/$countryCode';
      final result = await _httpService.get(path);
      final rawList = json.decode(utf8.decode(result)) as List<dynamic>;
      final radios = rawList
          .map((radio) => RadioBrowserDto.fromJson(radio).toDomain())
          .toList();
      return Right(radios);
    } on Exception catch (e) {
      return Left(RadioFailure(e.toString()));
    }
  }

  @override
  Future<Either<RadioFailure, List<RadioEntity>>> getFavoriteRadios() async {
    try {
      List<String> favorites =
          await _sharedPreferencesService.getList(favoritesKey) ?? [];
      if (favorites.isEmpty) {
        return const Right([]);
      }
      const path = '/json/stations/byuuid';
      final result = await _httpService.get(path, uuids: favorites.join(','));
      final rawList = json.decode(utf8.decode(result)) as List<dynamic>;
      final radios = rawList
          .map((radio) => RadioBrowserDto.fromJson(radio).toDomain())
          .toList();
      return Right(radios);
    } on Exception catch (e) {
      return Left(RadioFailure(e.toString()));
    }
  }

  @override
  Future<Either<RadioFailure, Unit>> toggleFavoriteRadio(String radioId) async {
    try {
      List<String> favorites =
          await _sharedPreferencesService.getList(favoritesKey) ?? [];
      if (favorites.contains(radioId)) {
        favorites.remove(radioId);
      } else {
        favorites.add(radioId);
      }
      _sharedPreferencesService.saveList(favoritesKey, favorites);
      return const Right(unit);
    } on Exception catch (e) {
      return Left(RadioFailure(e.toString()));
    }
  }

  @override
  Future<Either<RadioFailure, List<RadioEntity>>> searchRadios(
      String name, String countryCode) async {
    try {
      const path = '/json/stations/search';
      final result =
          await _httpService.get(path, name: name, country: countryCode);
      final rawList = json.decode(utf8.decode(result)) as List<dynamic>;
      final radios = rawList
          .map((radio) => RadioBrowserDto.fromJson(radio).toDomain())
          .toList();
      return Right(radios);
    } on Exception catch (e) {
      return Left(RadioFailure(e.toString()));
    }
  }
}
