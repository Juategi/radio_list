part of 'radio_cubit.dart';

@freezed
class RadioState with _$RadioState {
  const factory RadioState.initial() = RadioInitial;
  const factory RadioState.loaded(
    List<RadioEntity> radios,
  ) = RadioLoaded;
  const factory RadioState.error(String error) = RadioError;
}
