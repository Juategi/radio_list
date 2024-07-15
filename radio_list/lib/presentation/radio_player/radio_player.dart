import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:radio_list/application/radio_player/radio_player_cubit.dart';
import 'package:radio_list/domain/radio/radio_entity.dart';
import 'package:radio_list/presentation/widgets/radio_image.dart';

class RadioPlayer extends StatelessWidget {
  RadioPlayer({super.key});

  final RadioPlayerCubit radioPlayerCubit = GetIt.instance<RadioPlayerCubit>();

  void toggleSheet() {
    radioPlayerCubit.state.maybeWhen(
      full: (_) {
        radioPlayerCubit.toMinimized();
      },
      minimized: (_) {
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
    bool isExpanded = radioPlayerCubit.state.maybeWhen(
      full: (_) => true,
      minimized: (_) => false,
      hidden: () => false,
      orElse: () => false,
    );
    RadioEntity? radioEntity = radioPlayerCubit.state.maybeWhen(
      full: (radio) => radio,
      minimized: (radio) => radio,
      hidden: () => null,
      orElse: () => null,
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
              height: isExpanded ? MediaQuery.of(context).size.height : 70,
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: isExpanded
                  ? const RadioPlayerFullScreen()
                  : RadioPlayerBar(
                      radioEntity: radioEntity,
                    ),
            ),
          ),
        ),
      ],
    );
  }
}

class RadioPlayerBar extends StatelessWidget {
  const RadioPlayerBar({super.key, this.radioEntity});
  final RadioEntity? radioEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
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
              Text(
                radioEntity?.name ?? '',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 5),
              Text(
                'Escuchando...',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          const Spacer(),
          IgnorePointer(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_upward_rounded),
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.play_arrow_rounded, size: 40),
          ),
        ],
      ),
    );
  }
}

class RadioPlayerFullScreen extends StatelessWidget {
  const RadioPlayerFullScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
