import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pulsator/pulsator.dart';
import 'package:radio_list/application/radio_audio/radio_audio_cubit.dart';
import 'package:radio_list/application/radio_player/radio_player_cubit.dart';
import 'package:radio_list/presentation/widgets/radio_image.dart';

class ImagePulseAnimation extends StatelessWidget {
  const ImagePulseAnimation({super.key, required this.favicon});
  final String favicon;

  Widget getPulsator(Color mainColor) {
    return Pulsator(
      style: PulseStyle(color: mainColor),
      count: 5,
      duration: const Duration(seconds: 4),
      repeat: 0,
      startFromScratch: false,
      autoStart: true,
      fit: PulseFit.contain,
      child: RadioImage(
        favicon: favicon,
        width: 150,
        withBackground: true,
        circular: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RadioAudioCubit, RadioAudioState>(
      builder: (context, state) {
        if (state is RadioAudioOff) {
          return Padding(
            padding: const EdgeInsets.all(50),
            child: RadioImage(
              favicon: favicon,
              width: 150,
              withBackground: true,
              circular: true,
            ),
          );
        }
        return SizedBox(
          width: 250,
          height: 250,
          child: BlocBuilder<RadioPlayerCubit, RadioPlayerState>(
            builder: (context, state) {
              return state.map(
                minimized: (minimized) => getPulsator(minimized.mainColor!),
                full: (full) => getPulsator(full.mainColor!),
                hidden: (_) => const SizedBox(),
              );
            },
          ),
        );
      },
    );
  }
}
