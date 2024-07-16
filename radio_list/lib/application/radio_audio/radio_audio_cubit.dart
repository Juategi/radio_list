import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'radio_audio_state.dart';
part 'radio_audio_cubit.freezed.dart';

class RadioAudioCubit extends Cubit<RadioAudioState> {
  RadioAudioCubit(this.player) : super(const RadioAudioState.off());
  final AudioPlayer player;

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

  void volumeUp() {
    player.setVolume(player.volume + 0.1);
  }

  void volumeDown() {
    player.setVolume(player.volume - 0.1);
  }
}
