import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:radio_list/infraestructure/radio_browser/core/radio_browser_http_service.dart';
import 'package:radio_list/infraestructure/radio_browser/radio_browser_dto.dart';
import 'package:radio_list/domain/radio/radio_entity.dart';
import 'package:radio_list/domain/radio/radio_failure.dart';
import 'package:radio_list/domain/radio/radio_repository.dart';

class RadioBrowserRepositoryImpl implements RadioRepository {
  final RadioBrowserHtttpService _httpService;

  RadioBrowserRepositoryImpl(this._httpService);

  @override
  Future<Either<RadioFailure, List<RadioEntity>>> getRadios(
      String countryCode) async {
    try {
      final path = '/json/stations/bycountrycodeexact/$countryCode';
      String result = await _httpService.get(path);
      final rawList = json.decode(result) as List<dynamic>;
      final radios = rawList
          .map((radio) => RadioBrowserDto.fromJson(radio).toDomain())
          .toList();
      return Right(radios);
    } on Exception catch (e) {
      return Left(RadioFailure(e.toString()));
    }
  }
}
