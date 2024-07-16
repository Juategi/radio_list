import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'radio_audio_state.dart';
part 'radio_audio_cubit.freezed.dart';

class RadioAudioCubit extends Cubit<RadioAudioState> {
  RadioAudioCubit() : super(const RadioAudioState.off());
  final player = AudioPlayer();

  void play(String url) {
    player.play(UrlSource(url));
    emit(const RadioAudioState.on());
  }

  void pause() {
    player.pause();
    emit(const RadioAudioState.off());
  }

  void stop() {
    player.stop();
    emit(const RadioAudioState.off());
  }
}
