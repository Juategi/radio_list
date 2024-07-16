// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'radio_player_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RadioPlayerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hidden,
    required TResult Function(RadioEntity radioSelected, Color? mainColor)
        minimized,
    required TResult Function(RadioEntity radioSelected, Color? mainColor) full,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? hidden,
    TResult? Function(RadioEntity radioSelected, Color? mainColor)? minimized,
    TResult? Function(RadioEntity radioSelected, Color? mainColor)? full,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hidden,
    TResult Function(RadioEntity radioSelected, Color? mainColor)? minimized,
    TResult Function(RadioEntity radioSelected, Color? mainColor)? full,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RadioPlayerHidden value) hidden,
    required TResult Function(RadioPlayerMinimized value) minimized,
    required TResult Function(RadioPlayerFull value) full,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RadioPlayerHidden value)? hidden,
    TResult? Function(RadioPlayerMinimized value)? minimized,
    TResult? Function(RadioPlayerFull value)? full,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RadioPlayerHidden value)? hidden,
    TResult Function(RadioPlayerMinimized value)? minimized,
    TResult Function(RadioPlayerFull value)? full,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RadioPlayerStateCopyWith<$Res> {
  factory $RadioPlayerStateCopyWith(
          RadioPlayerState value, $Res Function(RadioPlayerState) then) =
      _$RadioPlayerStateCopyWithImpl<$Res, RadioPlayerState>;
}

/// @nodoc
class _$RadioPlayerStateCopyWithImpl<$Res, $Val extends RadioPlayerState>
    implements $RadioPlayerStateCopyWith<$Res> {
  _$RadioPlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RadioPlayerHiddenImplCopyWith<$Res> {
  factory _$$RadioPlayerHiddenImplCopyWith(_$RadioPlayerHiddenImpl value,
          $Res Function(_$RadioPlayerHiddenImpl) then) =
      __$$RadioPlayerHiddenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RadioPlayerHiddenImplCopyWithImpl<$Res>
    extends _$RadioPlayerStateCopyWithImpl<$Res, _$RadioPlayerHiddenImpl>
    implements _$$RadioPlayerHiddenImplCopyWith<$Res> {
  __$$RadioPlayerHiddenImplCopyWithImpl(_$RadioPlayerHiddenImpl _value,
      $Res Function(_$RadioPlayerHiddenImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RadioPlayerHiddenImpl implements RadioPlayerHidden {
  const _$RadioPlayerHiddenImpl();

  @override
  String toString() {
    return 'RadioPlayerState.hidden()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RadioPlayerHiddenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hidden,
    required TResult Function(RadioEntity radioSelected, Color? mainColor)
        minimized,
    required TResult Function(RadioEntity radioSelected, Color? mainColor) full,
  }) {
    return hidden();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? hidden,
    TResult? Function(RadioEntity radioSelected, Color? mainColor)? minimized,
    TResult? Function(RadioEntity radioSelected, Color? mainColor)? full,
  }) {
    return hidden?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hidden,
    TResult Function(RadioEntity radioSelected, Color? mainColor)? minimized,
    TResult Function(RadioEntity radioSelected, Color? mainColor)? full,
    required TResult orElse(),
  }) {
    if (hidden != null) {
      return hidden();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RadioPlayerHidden value) hidden,
    required TResult Function(RadioPlayerMinimized value) minimized,
    required TResult Function(RadioPlayerFull value) full,
  }) {
    return hidden(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RadioPlayerHidden value)? hidden,
    TResult? Function(RadioPlayerMinimized value)? minimized,
    TResult? Function(RadioPlayerFull value)? full,
  }) {
    return hidden?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RadioPlayerHidden value)? hidden,
    TResult Function(RadioPlayerMinimized value)? minimized,
    TResult Function(RadioPlayerFull value)? full,
    required TResult orElse(),
  }) {
    if (hidden != null) {
      return hidden(this);
    }
    return orElse();
  }
}

abstract class RadioPlayerHidden implements RadioPlayerState {
  const factory RadioPlayerHidden() = _$RadioPlayerHiddenImpl;
}

/// @nodoc
abstract class _$$RadioPlayerMinimizedImplCopyWith<$Res> {
  factory _$$RadioPlayerMinimizedImplCopyWith(_$RadioPlayerMinimizedImpl value,
          $Res Function(_$RadioPlayerMinimizedImpl) then) =
      __$$RadioPlayerMinimizedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RadioEntity radioSelected, Color? mainColor});
}

/// @nodoc
class __$$RadioPlayerMinimizedImplCopyWithImpl<$Res>
    extends _$RadioPlayerStateCopyWithImpl<$Res, _$RadioPlayerMinimizedImpl>
    implements _$$RadioPlayerMinimizedImplCopyWith<$Res> {
  __$$RadioPlayerMinimizedImplCopyWithImpl(_$RadioPlayerMinimizedImpl _value,
      $Res Function(_$RadioPlayerMinimizedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? radioSelected = null,
    Object? mainColor = freezed,
  }) {
    return _then(_$RadioPlayerMinimizedImpl(
      null == radioSelected
          ? _value.radioSelected
          : radioSelected // ignore: cast_nullable_to_non_nullable
              as RadioEntity,
      freezed == mainColor
          ? _value.mainColor
          : mainColor // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc

class _$RadioPlayerMinimizedImpl implements RadioPlayerMinimized {
  const _$RadioPlayerMinimizedImpl(this.radioSelected, this.mainColor);

  @override
  final RadioEntity radioSelected;
  @override
  final Color? mainColor;

  @override
  String toString() {
    return 'RadioPlayerState.minimized(radioSelected: $radioSelected, mainColor: $mainColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RadioPlayerMinimizedImpl &&
            (identical(other.radioSelected, radioSelected) ||
                other.radioSelected == radioSelected) &&
            (identical(other.mainColor, mainColor) ||
                other.mainColor == mainColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, radioSelected, mainColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RadioPlayerMinimizedImplCopyWith<_$RadioPlayerMinimizedImpl>
      get copyWith =>
          __$$RadioPlayerMinimizedImplCopyWithImpl<_$RadioPlayerMinimizedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hidden,
    required TResult Function(RadioEntity radioSelected, Color? mainColor)
        minimized,
    required TResult Function(RadioEntity radioSelected, Color? mainColor) full,
  }) {
    return minimized(radioSelected, mainColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? hidden,
    TResult? Function(RadioEntity radioSelected, Color? mainColor)? minimized,
    TResult? Function(RadioEntity radioSelected, Color? mainColor)? full,
  }) {
    return minimized?.call(radioSelected, mainColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hidden,
    TResult Function(RadioEntity radioSelected, Color? mainColor)? minimized,
    TResult Function(RadioEntity radioSelected, Color? mainColor)? full,
    required TResult orElse(),
  }) {
    if (minimized != null) {
      return minimized(radioSelected, mainColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RadioPlayerHidden value) hidden,
    required TResult Function(RadioPlayerMinimized value) minimized,
    required TResult Function(RadioPlayerFull value) full,
  }) {
    return minimized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RadioPlayerHidden value)? hidden,
    TResult? Function(RadioPlayerMinimized value)? minimized,
    TResult? Function(RadioPlayerFull value)? full,
  }) {
    return minimized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RadioPlayerHidden value)? hidden,
    TResult Function(RadioPlayerMinimized value)? minimized,
    TResult Function(RadioPlayerFull value)? full,
    required TResult orElse(),
  }) {
    if (minimized != null) {
      return minimized(this);
    }
    return orElse();
  }
}

abstract class RadioPlayerMinimized implements RadioPlayerState {
  const factory RadioPlayerMinimized(
          final RadioEntity radioSelected, final Color? mainColor) =
      _$RadioPlayerMinimizedImpl;

  RadioEntity get radioSelected;
  Color? get mainColor;
  @JsonKey(ignore: true)
  _$$RadioPlayerMinimizedImplCopyWith<_$RadioPlayerMinimizedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RadioPlayerFullImplCopyWith<$Res> {
  factory _$$RadioPlayerFullImplCopyWith(_$RadioPlayerFullImpl value,
          $Res Function(_$RadioPlayerFullImpl) then) =
      __$$RadioPlayerFullImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RadioEntity radioSelected, Color? mainColor});
}

/// @nodoc
class __$$RadioPlayerFullImplCopyWithImpl<$Res>
    extends _$RadioPlayerStateCopyWithImpl<$Res, _$RadioPlayerFullImpl>
    implements _$$RadioPlayerFullImplCopyWith<$Res> {
  __$$RadioPlayerFullImplCopyWithImpl(
      _$RadioPlayerFullImpl _value, $Res Function(_$RadioPlayerFullImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? radioSelected = null,
    Object? mainColor = freezed,
  }) {
    return _then(_$RadioPlayerFullImpl(
      null == radioSelected
          ? _value.radioSelected
          : radioSelected // ignore: cast_nullable_to_non_nullable
              as RadioEntity,
      freezed == mainColor
          ? _value.mainColor
          : mainColor // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc

class _$RadioPlayerFullImpl implements RadioPlayerFull {
  const _$RadioPlayerFullImpl(this.radioSelected, this.mainColor);

  @override
  final RadioEntity radioSelected;
  @override
  final Color? mainColor;

  @override
  String toString() {
    return 'RadioPlayerState.full(radioSelected: $radioSelected, mainColor: $mainColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RadioPlayerFullImpl &&
            (identical(other.radioSelected, radioSelected) ||
                other.radioSelected == radioSelected) &&
            (identical(other.mainColor, mainColor) ||
                other.mainColor == mainColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, radioSelected, mainColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RadioPlayerFullImplCopyWith<_$RadioPlayerFullImpl> get copyWith =>
      __$$RadioPlayerFullImplCopyWithImpl<_$RadioPlayerFullImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hidden,
    required TResult Function(RadioEntity radioSelected, Color? mainColor)
        minimized,
    required TResult Function(RadioEntity radioSelected, Color? mainColor) full,
  }) {
    return full(radioSelected, mainColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? hidden,
    TResult? Function(RadioEntity radioSelected, Color? mainColor)? minimized,
    TResult? Function(RadioEntity radioSelected, Color? mainColor)? full,
  }) {
    return full?.call(radioSelected, mainColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hidden,
    TResult Function(RadioEntity radioSelected, Color? mainColor)? minimized,
    TResult Function(RadioEntity radioSelected, Color? mainColor)? full,
    required TResult orElse(),
  }) {
    if (full != null) {
      return full(radioSelected, mainColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RadioPlayerHidden value) hidden,
    required TResult Function(RadioPlayerMinimized value) minimized,
    required TResult Function(RadioPlayerFull value) full,
  }) {
    return full(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RadioPlayerHidden value)? hidden,
    TResult? Function(RadioPlayerMinimized value)? minimized,
    TResult? Function(RadioPlayerFull value)? full,
  }) {
    return full?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RadioPlayerHidden value)? hidden,
    TResult Function(RadioPlayerMinimized value)? minimized,
    TResult Function(RadioPlayerFull value)? full,
    required TResult orElse(),
  }) {
    if (full != null) {
      return full(this);
    }
    return orElse();
  }
}

abstract class RadioPlayerFull implements RadioPlayerState {
  const factory RadioPlayerFull(
          final RadioEntity radioSelected, final Color? mainColor) =
      _$RadioPlayerFullImpl;

  RadioEntity get radioSelected;
  Color? get mainColor;
  @JsonKey(ignore: true)
  _$$RadioPlayerFullImplCopyWith<_$RadioPlayerFullImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
