import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio_list/application/radio_audio/radio_audio_cubit.dart';
import 'package:radio_list/application/radio_player/radio_player_cubit.dart';
import 'package:radio_list/domain/radio/radio_entity.dart';
import 'package:radio_list/presentation/widgets/radio_image.dart';
import 'package:radio_list/utils/string_utils.dart';

class FavoriteTile extends StatelessWidget {
  const FavoriteTile({super.key, required this.radioEntity});
  final RadioEntity radioEntity;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<RadioPlayerCubit>(context).selectRadio(radioEntity);
        BlocProvider.of<RadioAudioCubit>(context).play(radioEntity.urlResolved);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RadioImage(
                favicon: radioEntity.favicon ?? '',
                width: 75,
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.5,
                    ),
                    child: Text(
                      radioEntity.name,
                      style: Theme.of(context).textTheme.bodyMedium,
                      overflow: TextOverflow.fade,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.5,
                    ),
                    child: Text(
                      StringUtils.tagsFromList(radioEntity.tags),
                      style: Theme.of(context).textTheme.bodySmall,
                      maxLines: 2,
                      overflow: TextOverflow.fade,
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
