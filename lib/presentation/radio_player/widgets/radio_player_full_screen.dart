import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:radio_list/application/radio_audio/radio_audio_cubit.dart';
import 'package:radio_list/application/radio_player/radio_player_cubit.dart';
import 'package:radio_list/domain/radio/radio_entity.dart';
import 'package:radio_list/presentation/radio_player/widgets/favorite_button.dart';
import 'package:radio_list/presentation/radio_player/widgets/image_pulse_animation.dart';
import 'package:radio_list/presentation/radio_player/widgets/play_pause_button.dart';
import 'package:radio_list/presentation/radio_player/widgets/text_scroll_widget.dart';
import 'package:radio_list/utils/string_utils.dart';

class RadioPlayerFullScreen extends StatelessWidget {
  RadioPlayerFullScreen({super.key, this.radioEntity});
  final RadioEntity? radioEntity;

  final RadioAudioCubit radioAudioCubit = GetIt.instance<RadioAudioCubit>();
  final RadioPlayerCubit radioPlayerCubit = GetIt.instance<RadioPlayerCubit>();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        //To avoid a overflow error while building
        future: Future.delayed(const Duration(milliseconds: 400)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: SizedBox(),
            );
          }
          return PopScope(
            onPopInvokedWithResult: (didPop, _) {
              if (!didPop) {
                radioPlayerCubit.toMinimized();
              }
            },
            canPop: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FavoriteButton(
                        radioId: radioEntity!.id,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: IconButton(
                          onPressed: () {
                            radioPlayerCubit.toMinimized();
                          },
                          icon: const Icon(
                            Icons.keyboard_double_arrow_down,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
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
                      ),
                    ],
                  ),
                  ImagePulseAnimation(favicon: radioEntity?.favicon ?? ''),
                  TextScrollWidget(
                    text: radioEntity?.name ?? '',
                    widthOffset: 0.8,
                    textStyle: Theme.of(context).textTheme.headlineLarge,
                  ),
                  TextScrollWidget(
                    text: StringUtils.tagsFromList(radioEntity!.tags),
                    widthOffset: 0.8,
                    textStyle: Theme.of(context).textTheme.bodyMedium,
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
                      PlayPauseButton(radioEntity: radioEntity),
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
            ),
          );
        });
  }
}
