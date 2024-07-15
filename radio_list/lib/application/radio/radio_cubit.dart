import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:radio_list/domain/radio/radio_entity.dart';
import 'package:radio_list/domain/radio/radio_repository.dart';

part 'radio_state.dart';
part 'radio_cubit.freezed.dart';

class RadioCubit extends Cubit<RadioState> {
  final RadioRepository _radioRepository;

  RadioCubit(this._radioRepository) : super(const RadioState.initial());

  Future<void> getRadios(String countryCode) async {
    final result = await _radioRepository.getRadios(countryCode);
    result.fold(
      (error) => emit(RadioState.error(error.message)),
      (radios) => emit(RadioState.loaded(radios)),
    );
  }
}
