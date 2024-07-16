part of 'radio_list_cubit.dart';

@freezed
class RadioListState with _$RadioListState {
  const factory RadioListState.initial() = RadioListInitial;
  const factory RadioListState.loaded(
    List<RadioEntity> radios,
  ) = RadioListLoaded;
  const factory RadioListState.error(String error) = RadioListError;
}
