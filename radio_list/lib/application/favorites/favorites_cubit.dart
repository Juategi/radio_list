import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:radio_list/domain/radio/radio_entity.dart';
import 'package:radio_list/domain/radio/radio_repository.dart';

part 'favorites_state.dart';
part 'favorites_cubit.freezed.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  final RadioRepository _radioRepository;

  FavoritesCubit(this._radioRepository) : super(const FavoritesState.initial());

  Future<void> getFavorites() async {
    final result = await _radioRepository.getFavoriteRadios();
    result.fold(
      (error) => emit(const FavoritesState.error("error: reload app")),
      (radios) => emit(FavoritesState.loaded(radios)),
    );
  }

  Future<void> toggleFavoriteRadio(String radioId) async {
    final result = await _radioRepository.toggleFavoriteRadio(radioId);
    result.fold(
      // ignore: avoid_print
      (error) => print("error: $error"),
      (_) => getFavorites(),
    );
  }
}
