import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:radio_list/application/radio_audio/radio_audio_cubit.dart';
import 'package:radio_list/application/radio_player/radio_player_cubit.dart';
import 'package:radio_list/domain/radio/radio_entity.dart';
import 'package:radio_list/presentation/widgets/radio_image.dart';
import 'package:radio_list/utils/string_utils.dart';
import 'package:text_scroll/text_scroll.dart';
import 'package:pulsator/pulsator.dart';

class RadioPlayerFullScreen extends StatelessWidget {
  RadioPlayerFullScreen({super.key, this.radioEntity});
  final RadioEntity? radioEntity;

  final RadioAudioCubit radioAudioCubit = GetIt.instance<RadioAudioCubit>();
  final RadioPlayerCubit radioPlayerCubit = GetIt.instance<RadioPlayerCubit>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  radioAudioCubit.stop();
                  radioPlayerCubit.hide();
                },
                icon: const Icon(
                  Icons.close,
                  size: 30,
                  color: Colors.white,
                ),
              )
            ],
          ),
          BlocBuilder<RadioAudioCubit, RadioAudioState>(
            builder: (context, state) {
              if (state is RadioAudioOff) {
                return Padding(
                  padding: const EdgeInsets.only(top: 17),
                  child: RadioImage(
                    favicon: radioEntity?.favicon ?? '',
                    width: 150,
                    withBackground: true,
                  ),
                );
              }
              return SizedBox(
                width: 250,
                height: 250,
                child: BlocBuilder<RadioPlayerCubit, RadioPlayerState>(
                  builder: (context, state) {
                    return state.map(
                      minimized: (minimized) => Pulsator(
                        style: PulseStyle(color: minimized.mainColor!),
                        count: 5,
                        duration: const Duration(seconds: 4),
                        repeat: 0,
                        startFromScratch: false,
                        autoStart: true,
                        fit: PulseFit.contain,
                        child: RadioImage(
                          favicon: radioEntity?.favicon ?? '',
                          width: 150,
                          withBackground: true,
                        ),
                      ),
                      full: (full) => Pulsator(
                        style: PulseStyle(color: full.mainColor!),
                        count: 5,
                        duration: const Duration(seconds: 4),
                        repeat: 0,
                        startFromScratch: false,
                        autoStart: true,
                        fit: PulseFit.contain,
                        child: RadioImage(
                          favicon: radioEntity?.favicon ?? '',
                          width: 150,
                          withBackground: true,
                        ),
                      ),
                      hidden: (_) => const SizedBox(),
                    );
                  },
                ),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: TextScroll(
                  "${radioEntity?.name ?? ''}   ${StringUtils.tagsFromList(radioEntity!.tags)}  ",
                  style: Theme.of(context).textTheme.headlineLarge,
                  mode: TextScrollMode.endless,
                  velocity: const Velocity(pixelsPerSecond: Offset(50, 0)),
                  delayBefore: const Duration(milliseconds: 2000),
                  pauseBetween: const Duration(milliseconds: 2000),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  radioAudioCubit.volumeDown();
                },
                icon: Icon(
                  Icons.remove_rounded,
                  size: 40,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Row(
                children: [
                  BlocBuilder<RadioAudioCubit, RadioAudioState>(
                    builder: (context, state) {
                      return state.map(
                        off: (_) => IconButton(
                          onPressed: () {
                            radioAudioCubit
                                .play(radioEntity?.urlResolved ?? '');
                          },
                          icon: Icon(
                            Icons.play_arrow_rounded,
                            size: 40,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        on: (_) => IconButton(
                          onPressed: () {
                            radioAudioCubit.pause();
                          },
                          icon: Icon(
                            Icons.pause_rounded,
                            size: 40,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  radioAudioCubit.volumeUp();
                },
                icon: Icon(
                  Icons.add_rounded,
                  size: 40,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
