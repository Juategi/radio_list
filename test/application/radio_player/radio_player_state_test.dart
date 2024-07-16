import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:radio_list/application/radio_player/radio_player_cubit.dart';

import '../../helpers/stubs/stubbed_radio.dart';

void main() {
  group('radio player cubit states', () {
    test('should have all the states', () {
      expect(const RadioPlayerState.hidden(), isA<RadioPlayerState>());
      expect(RadioPlayerState.minimized(stubbedRadioEntity, Colors.red),
          isA<RadioPlayerState>());
      expect(RadioPlayerState.full(stubbedRadioEntity, Colors.red),
          isA<RadioPlayerState>());
    });

    test('should return an instance of RadioPlayerHidden', () {
      expect(const RadioPlayerState.hidden(), isA<RadioPlayerHidden>());
    });

    test('should return an instance of RadioPlayerMinimized', () {
      expect(RadioPlayerState.minimized(stubbedRadioEntity, Colors.red),
          isA<RadioPlayerMinimized>());
    });

    test('should return an instance of RadioPlayerFull', () {
      expect(RadioPlayerState.full(stubbedRadioEntity, Colors.red),
          isA<RadioPlayerFull>());
    });
  });
}
