import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio_list/application/favorites/favorites_cubit.dart';
import 'package:radio_list/presentation/core/decorations.dart';
import 'package:radio_list/presentation/favorites_list/widgets/favorite_tile.dart';
import 'package:radio_list/utils/string_keys.dart';

class FavoritesListPage extends StatelessWidget {
  const FavoritesListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5),
          ),
        ),
        title: Row(
          children: [
            const SizedBox(width: 8),
            Text(
              StringKeys.favoriteRadios,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Colors.white,
                  ),
            ),
          ],
        ),
        flexibleSpace: Container(
          decoration: getAppBarDecoration(context),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: BlocBuilder<FavoritesCubit, FavoritesState>(
            builder: (context, state) {
              return state.map(
                initial: (_) => Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                loaded: (radios) => ListView.separated(
                  itemCount: radios.radios.length,
                  itemBuilder: (context, index) {
                    final radio = radios.radios[index];
                    return FavoriteTile(radioEntity: radio);
                  },
                  separatorBuilder: (context, index) => Divider(
                    color: Theme.of(context).appBarTheme.backgroundColor!,
                    height: 8,
                    thickness: 1,
                  ),
                ),
                error: (error) => Center(
                  child: Text(error.error),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
