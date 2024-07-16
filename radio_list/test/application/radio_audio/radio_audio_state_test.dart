import 'package:flutter_test/flutter_test.dart';
import 'package:radio_list/application/radio_audio/radio_audio_cubit.dart';

void main() {
  group('radio audio cubit states', () {
    test('should have all the states', () {
      expect(const RadioAudioState.on(), isA<RadioAudioState>());
      expect(const RadioAudioState.off(), isA<RadioAudioState>());
    });

    test('should return an instance of RadioAudioOn', () {
      expect(const RadioAudioState.on(), isA<RadioAudioOn>());
    });

    test('should return an instance of RadioAudioOff', () {
      expect(const RadioAudioState.off(), isA<RadioAudioOff>());
    });
  });
}
