part of 'radio_player_cubit.dart';

@freezed
class RadioPlayerState with _$RadioPlayerState {
  const factory RadioPlayerState.hidden() = RadioPlayerHidden;
  const factory RadioPlayerState.minimized(
    RadioEntity radioSelected,
    Color? mainColor,
  ) = RadioPlayerMinimized;
  const factory RadioPlayerState.full(
    RadioEntity radioSelected,
    Color? mainColor,
  ) = RadioPlayerFull;
}
