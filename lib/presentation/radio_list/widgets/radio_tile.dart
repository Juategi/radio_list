import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio_list/application/radio_audio/radio_audio_cubit.dart';
import 'package:radio_list/application/radio_player/radio_player_cubit.dart';
import 'package:radio_list/domain/radio/radio_entity.dart';
import 'package:radio_list/presentation/widgets/radio_image.dart';
import 'package:radio_list/utils/color_utils.dart';
import 'package:radio_list/utils/string_utils.dart';

class RadioTile extends StatefulWidget {
  const RadioTile({super.key, required this.radioEntity});
  final RadioEntity radioEntity;

  @override
  State<RadioTile> createState() => _RadioTileState();
}

class _RadioTileState extends State<RadioTile> {
  final double width = 110;

  Color color = Colors.transparent;

  Future<void> extractMainColor(RadioEntity? radioEntity) async {
    if (Platform.environment.containsKey('FLUTTER_TEST')) {
      return;
    }
    color = await ColorExtractor.getMainColor(NetworkImage(
      radioEntity?.favicon ?? '',
    ));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<RadioPlayerCubit>(context)
            .selectRadio(widget.radioEntity);
        BlocProvider.of<RadioAudioCubit>(context)
            .play(widget.radioEntity.urlResolved);
      },
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: FutureBuilder(
            future: extractMainColor(widget.radioEntity),
            builder: (context, snapshot) {
              return Container(
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 18),
                  child: Column(
                    children: [
                      RadioImage(
                        favicon: widget.radioEntity.favicon ?? '',
                        width: width,
                        withBackground: true,
                      ),
                      const SizedBox(height: 15),
                      Container(
                        constraints: BoxConstraints(
                          maxWidth: width,
                        ),
                        child: Text(
                          widget.radioEntity.name,
                          style: Theme.of(context).textTheme.bodyMedium,
                          maxLines: 2,
                          overflow: TextOverflow.fade,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Container(
                        constraints: BoxConstraints(
                          maxWidth: width,
                        ),
                        child: Text(
                          StringUtils.tagsFromList(widget.radioEntity.tags),
                          style: Theme.of(context).textTheme.bodySmall,
                          maxLines: 2,
                          overflow: TextOverflow.fade,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
