import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:radio_list/application/radio_audio/radio_audio_cubit.dart';
import 'package:radio_list/application/radio_player/radio_player_cubit.dart';
import 'package:radio_list/domain/radio/radio_entity.dart';
import 'package:radio_list/presentation/widgets/radio_image.dart';
import 'package:radio_list/utils/string_utils.dart';
import 'package:text_scroll/text_scroll.dart';

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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          const SizedBox(height: 20),
          RadioImage(
            favicon: radioEntity?.favicon ?? '',
            width: 150,
            withBackground: true,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<RadioAudioCubit, RadioAudioState>(
                builder: (context, state) {
                  return state.map(
                    off: (_) => IconButton(
                      onPressed: () {
                        radioAudioCubit.play(radioEntity?.urlResolved ?? '');
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
          )
        ],
      ),
    );
  }
}
