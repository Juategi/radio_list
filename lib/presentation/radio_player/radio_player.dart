import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:radio_list/application/radio_player/radio_player_cubit.dart';
import 'package:radio_list/domain/radio/radio_entity.dart';
import 'package:radio_list/presentation/radio_player/widgets/radio_player_bar.dart';
import 'package:radio_list/presentation/radio_player/widgets/radio_player_full_screen.dart';
import 'package:radio_list/utils/color_utils.dart';

class RadioPlayer extends StatelessWidget {
  RadioPlayer({super.key});

  final RadioPlayerCubit radioPlayerCubit = GetIt.instance<RadioPlayerCubit>();

  // Extract the main color from the radio favicon, also used for testing
  Future<void> extractMainColor(RadioEntity? radioEntity) async {
    if (Platform.environment.containsKey('FLUTTER_TEST')) {
      radioPlayerCubit.setColor(Colors.red);
    } else {
      Color color = await ColorExtractor.getMainColor(NetworkImage(
        radioEntity?.favicon ?? '',
      ));
      radioPlayerCubit.setColor(color);
    }
  }

  // Toggle the radio player sheet
  void toggleSheet() {
    radioPlayerCubit.state.maybeWhen(
      full: (_, __) {
        radioPlayerCubit.toMinimized();
      },
      minimized: (_, __) {
        radioPlayerCubit.toFullScreen();
      },
      hidden: () {
        radioPlayerCubit.toMinimized();
      },
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    RadioEntity? radioEntity = radioPlayerCubit.state.maybeWhen(
      full: (radio, _) => radio,
      minimized: (radio, _) => radio,
      hidden: () => null,
      orElse: () => null,
    );
    extractMainColor(radioEntity);
    return BlocBuilder<RadioPlayerCubit, RadioPlayerState>(
        builder: (context, state) {
      bool isExpanded = state.maybeWhen(
        full: (_, __) => true,
        minimized: (_, __) => false,
        hidden: () => false,
        orElse: () => false,
      );
      Color mainColor = state.map(
        hidden: (_) => Theme.of(context).canvasColor,
        minimized: (state) => state.mainColor ?? Theme.of(context).canvasColor,
        full: (state) => state.mainColor ?? Theme.of(context).canvasColor,
      );
      return Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: GestureDetector(
              onTap: toggleSheet,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 400),
                height: isExpanded ? MediaQuery.of(context).size.height : 75,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      mainColor,
                      Colors.black,
                    ],
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                child: isExpanded
                    ? RadioPlayerFullScreen(
                        radioEntity: radioEntity,
                      )
                    : RadioPlayerBar(
                        radioEntity: radioEntity,
                      ),
              ),
            ),
          ),
        ],
      );
    });
  }
}
