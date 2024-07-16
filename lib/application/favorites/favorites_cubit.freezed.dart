// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoritesState {
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
    required TResult Function(FavoritesInitial value) initial,
    required TResult Function(FavoritesLoaded value) loaded,
    required TResult Function(FavoritesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesInitial value)? initial,
    TResult? Function(FavoritesLoaded value)? loaded,
    TResult? Function(FavoritesError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesInitial value)? initial,
    TResult Function(FavoritesLoaded value)? loaded,
    TResult Function(FavoritesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateCopyWith(
          FavoritesState value, $Res Function(FavoritesState) then) =
      _$FavoritesStateCopyWithImpl<$Res, FavoritesState>;
}

/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res, $Val extends FavoritesState>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FavoritesInitialImplCopyWith<$Res> {
  factory _$$FavoritesInitialImplCopyWith(_$FavoritesInitialImpl value,
          $Res Function(_$FavoritesInitialImpl) then) =
      __$$FavoritesInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoritesInitialImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$FavoritesInitialImpl>
    implements _$$FavoritesInitialImplCopyWith<$Res> {
  __$$FavoritesInitialImplCopyWithImpl(_$FavoritesInitialImpl _value,
      $Res Function(_$FavoritesInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoritesInitialImpl implements FavoritesInitial {
  const _$FavoritesInitialImpl();

  @override
  String toString() {
    return 'FavoritesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavoritesInitialImpl);
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
    required TResult Function(FavoritesInitial value) initial,
    required TResult Function(FavoritesLoaded value) loaded,
    required TResult Function(FavoritesError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesInitial value)? initial,
    TResult? Function(FavoritesLoaded value)? loaded,
    TResult? Function(FavoritesError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesInitial value)? initial,
    TResult Function(FavoritesLoaded value)? loaded,
    TResult Function(FavoritesError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FavoritesInitial implements FavoritesState {
  const factory FavoritesInitial() = _$FavoritesInitialImpl;
}

/// @nodoc
abstract class _$$FavoritesLoadedImplCopyWith<$Res> {
  factory _$$FavoritesLoadedImplCopyWith(_$FavoritesLoadedImpl value,
          $Res Function(_$FavoritesLoadedImpl) then) =
      __$$FavoritesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RadioEntity> radios});
}

/// @nodoc
class __$$FavoritesLoadedImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$FavoritesLoadedImpl>
    implements _$$FavoritesLoadedImplCopyWith<$Res> {
  __$$FavoritesLoadedImplCopyWithImpl(
      _$FavoritesLoadedImpl _value, $Res Function(_$FavoritesLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? radios = null,
  }) {
    return _then(_$FavoritesLoadedImpl(
      null == radios
          ? _value._radios
          : radios // ignore: cast_nullable_to_non_nullable
              as List<RadioEntity>,
    ));
  }
}

/// @nodoc

class _$FavoritesLoadedImpl implements FavoritesLoaded {
  const _$FavoritesLoadedImpl(final List<RadioEntity> radios)
      : _radios = radios;

  final List<RadioEntity> _radios;
  @override
  List<RadioEntity> get radios {
    if (_radios is EqualUnmodifiableListView) return _radios;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_radios);
  }

  @override
  String toString() {
    return 'FavoritesState.loaded(radios: $radios)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesLoadedImpl &&
            const DeepCollectionEquality().equals(other._radios, _radios));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_radios));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesLoadedImplCopyWith<_$FavoritesLoadedImpl> get copyWith =>
      __$$FavoritesLoadedImplCopyWithImpl<_$FavoritesLoadedImpl>(
          this, _$identity);

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
    required TResult Function(FavoritesInitial value) initial,
    required TResult Function(FavoritesLoaded value) loaded,
    required TResult Function(FavoritesError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesInitial value)? initial,
    TResult? Function(FavoritesLoaded value)? loaded,
    TResult? Function(FavoritesError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesInitial value)? initial,
    TResult Function(FavoritesLoaded value)? loaded,
    TResult Function(FavoritesError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FavoritesLoaded implements FavoritesState {
  const factory FavoritesLoaded(final List<RadioEntity> radios) =
      _$FavoritesLoadedImpl;

  List<RadioEntity> get radios;
  @JsonKey(ignore: true)
  _$$FavoritesLoadedImplCopyWith<_$FavoritesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoritesErrorImplCopyWith<$Res> {
  factory _$$FavoritesErrorImplCopyWith(_$FavoritesErrorImpl value,
          $Res Function(_$FavoritesErrorImpl) then) =
      __$$FavoritesErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FavoritesErrorImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$FavoritesErrorImpl>
    implements _$$FavoritesErrorImplCopyWith<$Res> {
  __$$FavoritesErrorImplCopyWithImpl(
      _$FavoritesErrorImpl _value, $Res Function(_$FavoritesErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FavoritesErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FavoritesErrorImpl implements FavoritesError {
  const _$FavoritesErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'FavoritesState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesErrorImplCopyWith<_$FavoritesErrorImpl> get copyWith =>
      __$$FavoritesErrorImplCopyWithImpl<_$FavoritesErrorImpl>(
          this, _$identity);

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
    required TResult Function(FavoritesInitial value) initial,
    required TResult Function(FavoritesLoaded value) loaded,
    required TResult Function(FavoritesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesInitial value)? initial,
    TResult? Function(FavoritesLoaded value)? loaded,
    TResult? Function(FavoritesError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesInitial value)? initial,
    TResult Function(FavoritesLoaded value)? loaded,
    TResult Function(FavoritesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FavoritesError implements FavoritesState {
  const factory FavoritesError(final String error) = _$FavoritesErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$FavoritesErrorImplCopyWith<_$FavoritesErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
