import 'package:dartz/dartz.dart';
import 'package:radio_list/domain/radio/radio_entity.dart';
import 'package:radio_list/domain/radio/radio_failure.dart';

abstract class RadioRepository {
  Future<Either<RadioFailure, List<RadioEntity>>> getRadios(String countryCode);
  Future<Either<RadioFailure, List<RadioEntity>>> getFavoriteRadios();
  Future<Either<RadioFailure, Unit>> toggleFavoriteRadio(String radioId);
  Future<Either<RadioFailure, List<RadioEntity>>> searchRadios(
      String name, String countryCode);
}
