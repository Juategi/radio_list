import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:radio_list/domain/radio/radio_entity.dart';

part 'radio_player_state.dart';
part 'radio_player_cubit.freezed.dart';

class RadioPlayerCubit extends Cubit<RadioPlayerState> {
  RadioPlayerCubit() : super(const RadioPlayerState.hidden());

  void selectRadio(RadioEntity radio) {
    emit(RadioPlayerState.minimized(radio, null));
  }

  void toFullScreen() {
    emit(RadioPlayerState.full(
      (state as RadioPlayerMinimized).radioSelected,
      (state as RadioPlayerMinimized).mainColor,
    ));
  }

  void toMinimized() {
    emit(RadioPlayerState.minimized(
      (state as RadioPlayerFull).radioSelected,
      (state as RadioPlayerFull).mainColor,
    ));
  }

  void setColor(Color color) {
    if (state is RadioPlayerFull) {
      emit(RadioPlayerState.full(
        (state as RadioPlayerFull).radioSelected,
        color,
      ));
    } else if (state is RadioPlayerMinimized) {
      emit(RadioPlayerState.minimized(
        (state as RadioPlayerMinimized).radioSelected,
        color,
      ));
    }
  }

  void hide() {
    emit(const RadioPlayerState.hidden());
  }
}
