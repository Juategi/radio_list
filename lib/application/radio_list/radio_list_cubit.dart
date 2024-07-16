import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:radio_list/domain/countries/country.dart';
import 'package:radio_list/domain/radio/radio_entity.dart';
import 'package:radio_list/domain/radio/radio_repository.dart';

part 'radio_list_state.dart';
part 'radio_list_cubit.freezed.dart';

class RadioListCubit extends Cubit<RadioListState> {
  final RadioRepository _radioRepository;

  RadioListCubit(this._radioRepository) : super(const RadioListState.initial());

  Future<void> getRadios(Country? country) async {
    final result = await _radioRepository.getRadios(country.toString());
    result.fold(
      (error) => emit(const RadioListState.error("error: reload app")),
      (radios) => emit(
        RadioListState.loaded(
          radios
              .where((radio) =>
                  radio.favicon != null &&
                  radio.favicon!.trim().isNotEmpty &&
                  !radio.favicon!.contains('.svg'))
              .toList(),
        ),
      ),
    );
  }
}
