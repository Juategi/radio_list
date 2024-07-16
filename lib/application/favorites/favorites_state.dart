part of 'favorites_cubit.dart';

@freezed
class FavoritesState with _$FavoritesState {
  const factory FavoritesState.initial() = FavoritesInitial;
  const factory FavoritesState.loaded(
    List<RadioEntity> radios,
  ) = FavoritesLoaded;
  const factory FavoritesState.error(String error) = FavoritesError;
}
