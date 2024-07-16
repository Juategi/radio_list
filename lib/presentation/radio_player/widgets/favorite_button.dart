import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:radio_list/application/favorites/favorites_cubit.dart';

class FavoriteButton extends StatelessWidget {
  FavoriteButton({super.key, required this.radioId});

  final FavoritesCubit favoritesCubit = GetIt.instance<FavoritesCubit>();
  final String radioId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesCubit, FavoritesState>(
      builder: (context, state) {
        return IconButton(
          onPressed: () {
            favoritesCubit.toggleFavoriteRadio(radioId);
          },
          icon: state.maybeWhen(
            loaded: (radios) {
              return radios.any((element) => element.id == radioId)
                  ? const Icon(
                      Icons.workspace_premium,
                      size: 30,
                      color: Colors.yellow,
                    )
                  : const Icon(
                      Icons.workspace_premium_outlined,
                      size: 30,
                      color: Colors.white,
                    );
            },
            orElse: () => const Icon(
              Icons.favorite_border_rounded,
              size: 30,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
