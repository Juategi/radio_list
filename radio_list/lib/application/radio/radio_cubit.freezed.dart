// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'radio_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RadioState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<RadioEntity> radios) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<RadioEntity> radios)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<RadioEntity> radios)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RadioInitial value) initial,
    required TResult Function(RadioLoaded value) loaded,
    required TResult Function(RadioError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RadioInitial value)? initial,
    TResult? Function(RadioLoaded value)? loaded,
    TResult? Function(RadioError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RadioInitial value)? initial,
    TResult Function(RadioLoaded value)? loaded,
    TResult Function(RadioError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RadioStateCopyWith<$Res> {
  factory $RadioStateCopyWith(
          RadioState value, $Res Function(RadioState) then) =
      _$RadioStateCopyWithImpl<$Res, RadioState>;
}

/// @nodoc
class _$RadioStateCopyWithImpl<$Res, $Val extends RadioState>
    implements $RadioStateCopyWith<$Res> {
  _$RadioStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RadioInitialImplCopyWith<$Res> {
  factory _$$RadioInitialImplCopyWith(
          _$RadioInitialImpl value, $Res Function(_$RadioInitialImpl) then) =
      __$$RadioInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RadioInitialImplCopyWithImpl<$Res>
    extends _$RadioStateCopyWithImpl<$Res, _$RadioInitialImpl>
    implements _$$RadioInitialImplCopyWith<$Res> {
  __$$RadioInitialImplCopyWithImpl(
      _$RadioInitialImpl _value, $Res Function(_$RadioInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RadioInitialImpl implements RadioInitial {
  const _$RadioInitialImpl();

  @override
  String toString() {
    return 'RadioState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RadioInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<RadioEntity> radios) loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<RadioEntity> radios)? loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<RadioEntity> radios)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RadioInitial value) initial,
    required TResult Function(RadioLoaded value) loaded,
    required TResult Function(RadioError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RadioInitial value)? initial,
    TResult? Function(RadioLoaded value)? loaded,
    TResult? Function(RadioError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RadioInitial value)? initial,
    TResult Function(RadioLoaded value)? loaded,
    TResult Function(RadioError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RadioInitial implements RadioState {
  const factory RadioInitial() = _$RadioInitialImpl;
}

/// @nodoc
abstract class _$$RadioLoadedImplCopyWith<$Res> {
  factory _$$RadioLoadedImplCopyWith(
          _$RadioLoadedImpl value, $Res Function(_$RadioLoadedImpl) then) =
      __$$RadioLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RadioEntity> radios});
}

/// @nodoc
class __$$RadioLoadedImplCopyWithImpl<$Res>
    extends _$RadioStateCopyWithImpl<$Res, _$RadioLoadedImpl>
    implements _$$RadioLoadedImplCopyWith<$Res> {
  __$$RadioLoadedImplCopyWithImpl(
      _$RadioLoadedImpl _value, $Res Function(_$RadioLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? radios = null,
  }) {
    return _then(_$RadioLoadedImpl(
      null == radios
          ? _value._radios
          : radios // ignore: cast_nullable_to_non_nullable
              as List<RadioEntity>,
    ));
  }
}

/// @nodoc

class _$RadioLoadedImpl implements RadioLoaded {
  const _$RadioLoadedImpl(final List<RadioEntity> radios) : _radios = radios;

  final List<RadioEntity> _radios;
  @override
  List<RadioEntity> get radios {
    if (_radios is EqualUnmodifiableListView) return _radios;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_radios);
  }

  @override
  String toString() {
    return 'RadioState.loaded(radios: $radios)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RadioLoadedImpl &&
            const DeepCollectionEquality().equals(other._radios, _radios));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_radios));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RadioLoadedImplCopyWith<_$RadioLoadedImpl> get copyWith =>
      __$$RadioLoadedImplCopyWithImpl<_$RadioLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<RadioEntity> radios) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(radios);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<RadioEntity> radios)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(radios);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<RadioEntity> radios)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(radios);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RadioInitial value) initial,
    required TResult Function(RadioLoaded value) loaded,
    required TResult Function(RadioError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RadioInitial value)? initial,
    TResult? Function(RadioLoaded value)? loaded,
    TResult? Function(RadioError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RadioInitial value)? initial,
    TResult Function(RadioLoaded value)? loaded,
    TResult Function(RadioError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class RadioLoaded implements RadioState {
  const factory RadioLoaded(final List<RadioEntity> radios) = _$RadioLoadedImpl;

  List<RadioEntity> get radios;
  @JsonKey(ignore: true)
  _$$RadioLoadedImplCopyWith<_$RadioLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RadioErrorImplCopyWith<$Res> {
  factory _$$RadioErrorImplCopyWith(
          _$RadioErrorImpl value, $Res Function(_$RadioErrorImpl) then) =
      __$$RadioErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$RadioErrorImplCopyWithImpl<$Res>
    extends _$RadioStateCopyWithImpl<$Res, _$RadioErrorImpl>
    implements _$$RadioErrorImplCopyWith<$Res> {
  __$$RadioErrorImplCopyWithImpl(
      _$RadioErrorImpl _value, $Res Function(_$RadioErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$RadioErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RadioErrorImpl implements RadioError {
  const _$RadioErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'RadioState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RadioErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RadioErrorImplCopyWith<_$RadioErrorImpl> get copyWith =>
      __$$RadioErrorImplCopyWithImpl<_$RadioErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<RadioEntity> radios) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<RadioEntity> radios)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<RadioEntity> radios)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RadioInitial value) initial,
    required TResult Function(RadioLoaded value) loaded,
    required TResult Function(RadioError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RadioInitial value)? initial,
    TResult? Function(RadioLoaded value)? loaded,
    TResult? Function(RadioError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RadioInitial value)? initial,
    TResult Function(RadioLoaded value)? loaded,
    TResult Function(RadioError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RadioError implements RadioState {
  const factory RadioError(final String error) = _$RadioErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$RadioErrorImplCopyWith<_$RadioErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
