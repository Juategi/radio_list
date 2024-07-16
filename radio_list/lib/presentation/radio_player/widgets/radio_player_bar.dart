import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:radio_list/application/radio_audio/radio_audio_cubit.dart';
import 'package:radio_list/domain/radio/radio_entity.dart';
import 'package:radio_list/presentation/widgets/radio_image.dart';
import 'package:radio_list/utils/string_keys.dart';
import 'package:radio_list/utils/string_utils.dart';
import 'package:text_scroll/text_scroll.dart';

class RadioPlayerBar extends StatelessWidget {
  RadioPlayerBar({super.key, this.radioEntity});
  final RadioEntity? radioEntity;
  final RadioAudioCubit radioAudioCubit = GetIt.instance<RadioAudioCubit>();

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
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TextScroll(
                      "${radioEntity?.name ?? ''}   ${StringUtils.tagsFromList(radioEntity!.tags)}     ",
                      style: Theme.of(context).textTheme.headlineSmall,
                      mode: TextScrollMode.endless,
                      velocity: const Velocity(pixelsPerSecond: Offset(50, 0)),
                      delayBefore: const Duration(milliseconds: 2000),
                      pauseBetween: const Duration(milliseconds: 2000),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    StringKeys.listening,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              const Spacer(),
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
          ),
        ],
      ),
    );
  }
}
