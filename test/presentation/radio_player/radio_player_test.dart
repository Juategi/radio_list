import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';
import 'package:radio_list/application/favorites/favorites_cubit.dart';
import 'package:radio_list/application/radio_audio/radio_audio_cubit.dart';
import 'package:radio_list/application/radio_player/radio_player_cubit.dart';
import 'package:radio_list/presentation/core/theme.dart';
import 'package:radio_list/presentation/radio_player/radio_player.dart';
import 'package:radio_list/presentation/radio_player/widgets/favorite_button.dart';
import 'package:radio_list/presentation/radio_player/widgets/play_pause_button.dart';
import 'package:radio_list/presentation/radio_player/widgets/radio_player_bar.dart';
import 'package:radio_list/presentation/radio_player/widgets/radio_player_full_screen.dart';

import '../../application/radio_audio/radio_audio_cubit_test.mocks.dart';
import '../../application/radio_list/radio_list_cubit_test.mocks.dart';
import '../../helpers/stubs/stubbed_radio.dart';

void main() {
  final MockAudioPlayer mockAudioPlayer = MockAudioPlayer();
  final MockRadioRepository radioRepository = MockRadioRepository();
  late RadioPlayerCubit radioPlayerCubit;
  late RadioAudioCubit radioAudioCubit;
  late FavoritesCubit favoritesCubit;

  onErrorIgnoreOverflowErrors(
    FlutterErrorDetails details, {
    bool forceReport = false,
  }) {
    bool ifIsOverflowError = false;

    // Detect overflow error.
    var exception = details.exception;
    if (exception is FlutterError) {
      ifIsOverflowError = !exception.diagnostics.any(
          (e) => e.value.toString().startsWith("A RenderFlex overflowed by"));
    }

    // Ignore if is overflow error.
    if (ifIsOverflowError) {
      // ignore: avoid_print
      print('Overflow error.');
    } else {
      FlutterError.dumpErrorToConsole(details, forceReport: forceReport);
    }
  }

  setUp(() {
    radioPlayerCubit = RadioPlayerCubit();
    radioAudioCubit = RadioAudioCubit(mockAudioPlayer);
    favoritesCubit = FavoritesCubit(radioRepository);
    GetIt.I.registerSingleton<RadioPlayerCubit>(radioPlayerCubit);
    GetIt.I.registerSingleton<RadioAudioCubit>(radioAudioCubit);
    GetIt.I.registerSingleton<FavoritesCubit>(favoritesCubit);
  });

  tearDown(() {
    GetIt.I.unregister<RadioPlayerCubit>();
    GetIt.I.unregister<RadioAudioCubit>();
    GetIt.I.unregister<FavoritesCubit>();
  });

  setUpAll(() => HttpOverrides.global = null);

  Widget testWidget() => MaterialApp(
        home: MaterialApp(
          theme: darkTheme,
          home: MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => radioPlayerCubit),
              BlocProvider(create: (context) => radioAudioCubit),
              BlocProvider(create: (context) => favoritesCubit),
            ],
            child: Scaffold(body: RadioPlayer()),
          ),
        ),
      );

  group('radio player', () {
    testWidgets('should change widget color and be minimized', (tester) async {
      radioPlayerCubit.selectRadio(stubbedRadioEntity);
      await tester.pumpWidget(testWidget());
      await tester.pump();
      await tester.pumpAndSettle();

      final deco = (tester.firstWidget(find.byType(AnimatedContainer))
              as AnimatedContainer)
          .decoration as BoxDecoration;
      List<Color> colors = deco.gradient!.colors.toList();

      expect(
        colors,
        equals(
          <Color>[
            Colors.red,
            Colors.black,
          ],
        ),
      );
      expect(find.byType(RadioPlayerBar), findsOneWidget);
      expect(radioPlayerCubit.state, isA<RadioPlayerMinimized>());
      expect(radioPlayerCubit.state,
          RadioPlayerState.minimized(stubbedRadioEntity, Colors.red));
    });

    testWidgets('should full screen', (tester) async {
      FlutterError.onError = onErrorIgnoreOverflowErrors;
      radioPlayerCubit.selectRadio(stubbedRadioEntity);
      await tester.pumpWidget(testWidget());
      await tester.pump();
      await tester.pumpAndSettle();

      final radioPlayerBar = find.byType(RadioPlayerBar);
      await tester.tap(radioPlayerBar);
      await tester.pump();
      await tester.pumpAndSettle();

      expect(radioPlayerCubit.state,
          RadioPlayerState.full(stubbedRadioEntity, Colors.red));
      expect(find.byType(RadioPlayerFullScreen), findsOneWidget);
    });

    testWidgets('should play and pause', (tester) async {
      when(mockAudioPlayer.play(any)).thenAnswer((_) => Future.value());
      when(mockAudioPlayer.pause()).thenAnswer((_) => Future.value());
      when(mockAudioPlayer.stop()).thenAnswer((_) => Future.value());

      radioPlayerCubit.selectRadio(stubbedRadioEntity);
      await tester.pumpWidget(testWidget());
      await tester.pump();
      await tester.pumpAndSettle();

      expect(radioAudioCubit.state, const RadioAudioState.off());

      final playPauseButton = find.byType(PlayPauseButton);
      await tester.tap(playPauseButton.first);
      await tester.pump();

      expect(radioAudioCubit.state, const RadioAudioState.on());

      await tester.tap(playPauseButton.first);
      await tester.pump();

      expect(playPauseButton, findsOneWidget);
      expect(radioAudioCubit.state, const RadioAudioState.off());
    });

    testWidgets('should toggle favorite', (tester) async {
      FlutterError.onError = onErrorIgnoreOverflowErrors;
      when(radioRepository.toggleFavoriteRadio(any))
          .thenAnswer((_) async => const Right(unit));
      when(radioRepository.getFavoriteRadios())
          .thenAnswer((_) async => Right([stubbedRadioEntity]));

      radioPlayerCubit.selectRadio(stubbedRadioEntity);
      await tester.pumpWidget(testWidget());
      await tester.pump();
      await tester.pumpAndSettle();
      final radioPlayerBar = find.byType(RadioPlayerBar);
      await tester.tap(radioPlayerBar);
      await tester.pump();
      await tester.pumpAndSettle();
      final favoriteButton = find.byType(FavoriteButton);
      await tester.tap(favoriteButton.first);
      await tester.pump();

      expect(favoriteButton, findsOneWidget);
      verify(radioRepository.toggleFavoriteRadio(stubbedRadioEntity.id));
      verify(radioRepository.getFavoriteRadios());
    });
  });
}
