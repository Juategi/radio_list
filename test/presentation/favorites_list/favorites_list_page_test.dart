import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:radio_list/application/favorites/favorites_cubit.dart';
import 'package:radio_list/domain/radio/radio_failure.dart';
import 'package:radio_list/presentation/core/theme.dart';
import 'package:radio_list/presentation/favorites_list/favorites_list_page.dart';
import '../../application/radio_list/radio_list_cubit_test.mocks.dart';
import '../../helpers/stubs/stubbed_radio.dart';

void main() {
  late FavoritesCubit favoritesCubit;
  final MockRadioRepository mockRadioRepository = MockRadioRepository();

  setUp(() {
    favoritesCubit = FavoritesCubit(mockRadioRepository);
  });

  setUpAll(() => HttpOverrides.global = null);

  Widget testWidget() => MaterialApp(
        home: MaterialApp(
          theme: darkTheme,
          home: MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => favoritesCubit),
            ],
            child: const FavoritesListPage(),
          ),
        ),
      );

  group('favorites list page', () {
    testWidgets('should show favorite tiles', (tester) async {
      when(mockRadioRepository.getFavoriteRadios())
          .thenAnswer((_) async => Right([stubbedRadioEntity]));

      await favoritesCubit.getFavorites();
      await tester.pumpWidget(testWidget());
      await tester.pump();

      expect(find.text('random_name'), findsOneWidget);
    });

    testWidgets('should show error', (tester) async {
      when(mockRadioRepository.getFavoriteRadios())
          .thenAnswer((_) async => Left(RadioFailure('error')));

      await favoritesCubit.getFavorites();
      await tester.pumpWidget(testWidget());
      await tester.pump();

      expect(find.textContaining('error'), findsOneWidget);
    });
  });
}
