part of 'radio_audio_cubit.dart';

@freezed
class RadioAudioState with _$RadioAudioState {
  const factory RadioAudioState.off() = RadioAudioOff;
  const factory RadioAudioState.on() = RadioAudioOn;
}
