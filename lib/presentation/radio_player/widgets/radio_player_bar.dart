import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:radio_list/application/radio_audio/radio_audio_cubit.dart';
import 'package:radio_list/application/radio_player/radio_player_cubit.dart';
import 'package:radio_list/domain/radio/radio_entity.dart';
import 'package:radio_list/presentation/radio_player/widgets/play_pause_button.dart';
import 'package:radio_list/presentation/radio_player/widgets/text_scroll_widget.dart';
import 'package:radio_list/presentation/widgets/radio_image.dart';
import 'package:radio_list/utils/string_keys.dart';
import 'package:radio_list/utils/string_utils.dart';

class RadioPlayerBar extends StatelessWidget {
  RadioPlayerBar({super.key, this.radioEntity});
  final RadioEntity? radioEntity;
  final RadioAudioCubit radioAudioCubit = GetIt.instance<RadioAudioCubit>();
  final RadioPlayerCubit radioPlayerCubit = GetIt.instance<RadioPlayerCubit>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              RadioImage(
                favicon: radioEntity?.favicon ?? '',
                width: 45,
                withBackground: true,
              ),
              const SizedBox(width: 8),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 5),
                  TextScrollWidget(
                    text:
                        "${radioEntity?.name ?? ''}   ${StringUtils.tagsFromList(radioEntity!.tags)}     ",
                    widthOffset: 0.4,
                    textStyle: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    StringKeys.listening,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              const Spacer(),
              PlayPauseButton(radioEntity: radioEntity),
            ],
          ),
        ],
      ),
    );
  }
}
