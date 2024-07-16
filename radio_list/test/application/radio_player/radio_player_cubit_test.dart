import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:radio_list/application/radio_player/radio_player_cubit.dart';

import '../../helpers/stubs/stubbed_radio.dart';

void main() {
  late RadioPlayerCubit radioPlayerCubit;

  setUp(() {
    radioPlayerCubit = RadioPlayerCubit();
  });

  group('radio player cubit', () {
    test('should emit a RadioPlayerMinimized state', () {
      radioPlayerCubit.selectRadio(stubbedRadioEntity);

      expect(
        radioPlayerCubit.state,
        RadioPlayerState.minimized(stubbedRadioEntity, null),
      );
    });

    test('should emit a RadioPlayerFull state', () async {
      radioPlayerCubit.selectRadio(stubbedRadioEntity);
      radioPlayerCubit.setColor(Colors.red);
      radioPlayerCubit.toFullScreen();

      expect(
        radioPlayerCubit.state,
        RadioPlayerState.full(stubbedRadioEntity, Colors.red),
      );
    });

    test('should emit a RadioPlayerMinimized state', () async {
      radioPlayerCubit.selectRadio(stubbedRadioEntity);
      radioPlayerCubit.setColor(Colors.red);
      radioPlayerCubit.toFullScreen();
      radioPlayerCubit.toMinimized();

      expect(
        radioPlayerCubit.state,
        RadioPlayerState.minimized(stubbedRadioEntity, Colors.red),
      );
    });

    test('should emit a RadioPlayerFull state', () async {
      radioPlayerCubit.selectRadio(stubbedRadioEntity);
      radioPlayerCubit.setColor(Colors.red);
      radioPlayerCubit.toFullScreen();
      radioPlayerCubit.setColor(Colors.blue);

      expect(
        radioPlayerCubit.state,
        RadioPlayerState.full(stubbedRadioEntity, Colors.blue),
      );
    });

    test('should emit a RadioPlayerHidden state', () async {
      radioPlayerCubit.selectRadio(stubbedRadioEntity);
      radioPlayerCubit.hide();

      expect(
        radioPlayerCubit.state,
        const RadioPlayerState.hidden(),
      );
    });
  });
}
