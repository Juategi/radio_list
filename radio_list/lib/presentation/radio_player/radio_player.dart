import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio_list/application/radio_player/radio_player_cubit.dart';

class RadioPlayer extends StatefulWidget {
  const RadioPlayer({super.key});

  @override
  State<RadioPlayer> createState() => _RadioPlayerState();
}

class _RadioPlayerState extends State<RadioPlayer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.green,
      ),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<RadioPlayerCubit>(context).toMinimized();
            },
            child: Text("to minimized"),
          ),
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<RadioPlayerCubit>(context).toFullScreen();
            },
            child: Text('to full'),
          ),
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<RadioPlayerCubit>(context).hide();
            },
            child: Text('close'),
          ),
        ],
      ),
    );
  }
}
