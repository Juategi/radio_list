// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'radio_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RadioListState {
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
    required TResult Function(RadioListInitial value) initial,
    required TResult Function(RadioListLoaded value) loaded,
    required TResult Function(RadioListError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RadioListInitial value)? initial,
    TResult? Function(RadioListLoaded value)? loaded,
    TResult? Function(RadioListError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RadioListInitial value)? initial,
    TResult Function(RadioListLoaded value)? loaded,
    TResult Function(RadioListError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RadioListStateCopyWith<$Res> {
  factory $RadioListStateCopyWith(
          RadioListState value, $Res Function(RadioListState) then) =
      _$RadioListStateCopyWithImpl<$Res, RadioListState>;
}

/// @nodoc
class _$RadioListStateCopyWithImpl<$Res, $Val extends RadioListState>
    implements $RadioListStateCopyWith<$Res> {
  _$RadioListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RadioListInitialImplCopyWith<$Res> {
  factory _$$RadioListInitialImplCopyWith(_$RadioListInitialImpl value,
          $Res Function(_$RadioListInitialImpl) then) =
      __$$RadioListInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RadioListInitialImplCopyWithImpl<$Res>
    extends _$RadioListStateCopyWithImpl<$Res, _$RadioListInitialImpl>
    implements _$$RadioListInitialImplCopyWith<$Res> {
  __$$RadioListInitialImplCopyWithImpl(_$RadioListInitialImpl _value,
      $Res Function(_$RadioListInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RadioListInitialImpl implements RadioListInitial {
  const _$RadioListInitialImpl();

  @override
  String toString() {
    return 'RadioListState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RadioListInitialImpl);
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
    required TResult Function(RadioListInitial value) initial,
    required TResult Function(RadioListLoaded value) loaded,
    required TResult Function(RadioListError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RadioListInitial value)? initial,
    TResult? Function(RadioListLoaded value)? loaded,
    TResult? Function(RadioListError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RadioListInitial value)? initial,
    TResult Function(RadioListLoaded value)? loaded,
    TResult Function(RadioListError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RadioListInitial implements RadioListState {
  const factory RadioListInitial() = _$RadioListInitialImpl;
}

/// @nodoc
abstract class _$$RadioListLoadedImplCopyWith<$Res> {
  factory _$$RadioListLoadedImplCopyWith(_$RadioListLoadedImpl value,
          $Res Function(_$RadioListLoadedImpl) then) =
      __$$RadioListLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RadioEntity> radios});
}

/// @nodoc
class __$$RadioListLoadedImplCopyWithImpl<$Res>
    extends _$RadioListStateCopyWithImpl<$Res, _$RadioListLoadedImpl>
    implements _$$RadioListLoadedImplCopyWith<$Res> {
  __$$RadioListLoadedImplCopyWithImpl(
      _$RadioListLoadedImpl _value, $Res Function(_$RadioListLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? radios = null,
  }) {
    return _then(_$RadioListLoadedImpl(
      null == radios
          ? _value._radios
          : radios // ignore: cast_nullable_to_non_nullable
              as List<RadioEntity>,
    ));
  }
}

/// @nodoc

class _$RadioListLoadedImpl implements RadioListLoaded {
  const _$RadioListLoadedImpl(final List<RadioEntity> radios)
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
    return 'RadioListState.loaded(radios: $radios)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RadioListLoadedImpl &&
            const DeepCollectionEquality().equals(other._radios, _radios));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_radios));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RadioListLoadedImplCopyWith<_$RadioListLoadedImpl> get copyWith =>
      __$$RadioListLoadedImplCopyWithImpl<_$RadioListLoadedImpl>(
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
    required TResult Function(RadioListInitial value) initial,
    required TResult Function(RadioListLoaded value) loaded,
    required TResult Function(RadioListError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RadioListInitial value)? initial,
    TResult? Function(RadioListLoaded value)? loaded,
    TResult? Function(RadioListError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RadioListInitial value)? initial,
    TResult Function(RadioListLoaded value)? loaded,
    TResult Function(RadioListError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class RadioListLoaded implements RadioListState {
  const factory RadioListLoaded(final List<RadioEntity> radios) =
      _$RadioListLoadedImpl;

  List<RadioEntity> get radios;
  @JsonKey(ignore: true)
  _$$RadioListLoadedImplCopyWith<_$RadioListLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RadioListErrorImplCopyWith<$Res> {
  factory _$$RadioListErrorImplCopyWith(_$RadioListErrorImpl value,
          $Res Function(_$RadioListErrorImpl) then) =
      __$$RadioListErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$RadioListErrorImplCopyWithImpl<$Res>
    extends _$RadioListStateCopyWithImpl<$Res, _$RadioListErrorImpl>
    implements _$$RadioListErrorImplCopyWith<$Res> {
  __$$RadioListErrorImplCopyWithImpl(
      _$RadioListErrorImpl _value, $Res Function(_$RadioListErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$RadioListErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RadioListErrorImpl implements RadioListError {
  const _$RadioListErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'RadioListState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RadioListErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RadioListErrorImplCopyWith<_$RadioListErrorImpl> get copyWith =>
      __$$RadioListErrorImplCopyWithImpl<_$RadioListErrorImpl>(
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
    required TResult Function(RadioListInitial value) initial,
    required TResult Function(RadioListLoaded value) loaded,
    required TResult Function(RadioListError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RadioListInitial value)? initial,
    TResult? Function(RadioListLoaded value)? loaded,
    TResult? Function(RadioListError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RadioListInitial value)? initial,
    TResult Function(RadioListLoaded value)? loaded,
    TResult Function(RadioListError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RadioListError implements RadioListState {
  const factory RadioListError(final String error) = _$RadioListErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$RadioListErrorImplCopyWith<_$RadioListErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
