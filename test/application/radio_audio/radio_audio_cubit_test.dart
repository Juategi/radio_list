import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:radio_list/application/radio_audio/radio_audio_cubit.dart';

import 'radio_audio_cubit_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<AudioPlayer>(),
])
void main() {
  final mockAudioPlayer = MockAudioPlayer();
  late RadioAudioCubit radioAudioCubit;

  setUp(() {
    radioAudioCubit = RadioAudioCubit(mockAudioPlayer);
  });

  group('radio audio cubit', () {
    test('should emit a RadioAudioOn state', () {
      when(mockAudioPlayer.play(any)).thenAnswer((_) => Future.value());

      radioAudioCubit.play('url');

      expect(
        radioAudioCubit.state,
        const RadioAudioState.on(),
      );
    });

    test('should emit a RadioAudioOff state', () async {
      when(mockAudioPlayer.pause()).thenAnswer((_) => Future.value());

      radioAudioCubit.pause();

      expect(
        radioAudioCubit.state,
        const RadioAudioState.off(),
      );
    });

    test('should emit a RadioAudioOff state', () async {
      when(mockAudioPlayer.stop()).thenAnswer((_) => Future.value());

      radioAudioCubit.stop();

      expect(
        radioAudioCubit.state,
        const RadioAudioState.off(),
      );
    });

    test('should increase volume by 0.4', () {
      when(mockAudioPlayer.setVolume(any)).thenAnswer((_) => Future.value());

      radioAudioCubit.volumeUp();

      verify(mockAudioPlayer.setVolume(0.4));
    });

    test('should decrease volume by 0.4', () {
      when(mockAudioPlayer.setVolume(any)).thenAnswer((_) => Future.value());

      radioAudioCubit.volumeDown();

      verify(mockAudioPlayer.setVolume(-0.4));
    });
  });
}
