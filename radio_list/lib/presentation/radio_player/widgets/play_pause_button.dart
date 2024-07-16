import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:radio_list/application/radio_audio/radio_audio_cubit.dart';
import 'package:radio_list/domain/radio/radio_entity.dart';

class PlayPauseButton extends StatelessWidget {
  PlayPauseButton({super.key, this.radioEntity});
  final RadioAudioCubit radioAudioCubit = GetIt.instance<RadioAudioCubit>();
  final RadioEntity? radioEntity;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RadioAudioCubit, RadioAudioState>(
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
    );
  }
}
