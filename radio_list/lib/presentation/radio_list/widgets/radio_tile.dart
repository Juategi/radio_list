import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio_list/application/radio_player/radio_player_cubit.dart';
import 'package:radio_list/domain/radio/radio_entity.dart';
import 'package:radio_list/presentation/widgets/radio_image.dart';
import 'package:radio_list/utils/string_utils.dart';

class RadioTile extends StatelessWidget {
  const RadioTile({super.key, required this.radioEntity});
  final RadioEntity radioEntity;
  final double width = 110;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<RadioPlayerCubit>(context).selectRadio(radioEntity);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 18),
          child: Column(
            children: [
              RadioImage(
                favicon: radioEntity.favicon ?? '',
                width: width,
              ),
              const SizedBox(height: 15),
              Container(
                constraints: BoxConstraints(
                  maxWidth: width,
                ),
                child: Text(
                  radioEntity.name ?? '',
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
                  StringUtils.tagsFromList(radioEntity.tags),
                  style: Theme.of(context).textTheme.bodySmall,
                  maxLines: 3,
                  overflow: TextOverflow.fade,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
