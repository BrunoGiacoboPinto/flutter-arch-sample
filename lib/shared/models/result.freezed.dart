// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Result<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, Object? error, StackTrace? stackTrace)
        error,
    required TResult Function() loading,
    required TResult Function(T value) value,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, Object? error, StackTrace? stackTrace)?
        error,
    TResult Function()? loading,
    TResult Function(T value)? value,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, Object? error, StackTrace? stackTrace)?
        error,
    TResult Function()? loading,
    TResult Function(T value)? value,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultError<T> value) error,
    required TResult Function(_ResultLoading<T> value) loading,
    required TResult Function(_ResultValue<T> value) value,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResultError<T> value)? error,
    TResult Function(_ResultLoading<T> value)? loading,
    TResult Function(_ResultValue<T> value)? value,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultError<T> value)? error,
    TResult Function(_ResultLoading<T> value)? loading,
    TResult Function(_ResultValue<T> value)? value,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<T, $Res> {
  factory $ResultCopyWith(Result<T> value, $Res Function(Result<T>) then) =
      _$ResultCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ResultCopyWithImpl<T, $Res> implements $ResultCopyWith<T, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result<T> _value;
  // ignore: unused_field
  final $Res Function(Result<T>) _then;
}

/// @nodoc
abstract class _$$_ResultErrorCopyWith<T, $Res> {
  factory _$$_ResultErrorCopyWith(
          _$_ResultError<T> value, $Res Function(_$_ResultError<T>) then) =
      __$$_ResultErrorCopyWithImpl<T, $Res>;
  $Res call({String message, Object? error, StackTrace? stackTrace});
}

/// @nodoc
class __$$_ResultErrorCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res>
    implements _$$_ResultErrorCopyWith<T, $Res> {
  __$$_ResultErrorCopyWithImpl(
      _$_ResultError<T> _value, $Res Function(_$_ResultError<T>) _then)
      : super(_value, (v) => _then(v as _$_ResultError<T>));

  @override
  _$_ResultError<T> get _value => super._value as _$_ResultError<T>;

  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$_ResultError<T>(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: error == freezed ? _value.error : error,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$_ResultError<T> implements _ResultError<T> {
  const _$_ResultError({required this.message, this.error, this.stackTrace});

  @override
  final String message;
  @override
  final Object? error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'Result<$T>.error(message: $message, error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultError<T> &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  _$$_ResultErrorCopyWith<T, _$_ResultError<T>> get copyWith =>
      __$$_ResultErrorCopyWithImpl<T, _$_ResultError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, Object? error, StackTrace? stackTrace)
        error,
    required TResult Function() loading,
    required TResult Function(T value) value,
  }) {
    return error(message, this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, Object? error, StackTrace? stackTrace)?
        error,
    TResult Function()? loading,
    TResult Function(T value)? value,
  }) {
    return error?.call(message, this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, Object? error, StackTrace? stackTrace)?
        error,
    TResult Function()? loading,
    TResult Function(T value)? value,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultError<T> value) error,
    required TResult Function(_ResultLoading<T> value) loading,
    required TResult Function(_ResultValue<T> value) value,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResultError<T> value)? error,
    TResult Function(_ResultLoading<T> value)? loading,
    TResult Function(_ResultValue<T> value)? value,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultError<T> value)? error,
    TResult Function(_ResultLoading<T> value)? loading,
    TResult Function(_ResultValue<T> value)? value,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ResultError<T> implements Result<T> {
  const factory _ResultError(
      {required final String message,
      final Object? error,
      final StackTrace? stackTrace}) = _$_ResultError<T>;

  String get message;
  Object? get error;
  StackTrace? get stackTrace;
  @JsonKey(ignore: true)
  _$$_ResultErrorCopyWith<T, _$_ResultError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResultLoadingCopyWith<T, $Res> {
  factory _$$_ResultLoadingCopyWith(
          _$_ResultLoading<T> value, $Res Function(_$_ResultLoading<T>) then) =
      __$$_ResultLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_ResultLoadingCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res>
    implements _$$_ResultLoadingCopyWith<T, $Res> {
  __$$_ResultLoadingCopyWithImpl(
      _$_ResultLoading<T> _value, $Res Function(_$_ResultLoading<T>) _then)
      : super(_value, (v) => _then(v as _$_ResultLoading<T>));

  @override
  _$_ResultLoading<T> get _value => super._value as _$_ResultLoading<T>;
}

/// @nodoc

class _$_ResultLoading<T> implements _ResultLoading<T> {
  const _$_ResultLoading();

  @override
  String toString() {
    return 'Result<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResultLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, Object? error, StackTrace? stackTrace)
        error,
    required TResult Function() loading,
    required TResult Function(T value) value,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, Object? error, StackTrace? stackTrace)?
        error,
    TResult Function()? loading,
    TResult Function(T value)? value,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, Object? error, StackTrace? stackTrace)?
        error,
    TResult Function()? loading,
    TResult Function(T value)? value,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultError<T> value) error,
    required TResult Function(_ResultLoading<T> value) loading,
    required TResult Function(_ResultValue<T> value) value,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResultError<T> value)? error,
    TResult Function(_ResultLoading<T> value)? loading,
    TResult Function(_ResultValue<T> value)? value,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultError<T> value)? error,
    TResult Function(_ResultLoading<T> value)? loading,
    TResult Function(_ResultValue<T> value)? value,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ResultLoading<T> implements Result<T> {
  const factory _ResultLoading() = _$_ResultLoading<T>;
}

/// @nodoc
abstract class _$$_ResultValueCopyWith<T, $Res> {
  factory _$$_ResultValueCopyWith(
          _$_ResultValue<T> value, $Res Function(_$_ResultValue<T>) then) =
      __$$_ResultValueCopyWithImpl<T, $Res>;
  $Res call({T value});
}

/// @nodoc
class __$$_ResultValueCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res>
    implements _$$_ResultValueCopyWith<T, $Res> {
  __$$_ResultValueCopyWithImpl(
      _$_ResultValue<T> _value, $Res Function(_$_ResultValue<T>) _then)
      : super(_value, (v) => _then(v as _$_ResultValue<T>));

  @override
  _$_ResultValue<T> get _value => super._value as _$_ResultValue<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_ResultValue<T>(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_ResultValue<T> implements _ResultValue<T> {
  const _$_ResultValue({required this.value});

  @override
  final T value;

  @override
  String toString() {
    return 'Result<$T>.value(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultValue<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_ResultValueCopyWith<T, _$_ResultValue<T>> get copyWith =>
      __$$_ResultValueCopyWithImpl<T, _$_ResultValue<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, Object? error, StackTrace? stackTrace)
        error,
    required TResult Function() loading,
    required TResult Function(T value) value,
  }) {
    return value(this.value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, Object? error, StackTrace? stackTrace)?
        error,
    TResult Function()? loading,
    TResult Function(T value)? value,
  }) {
    return value?.call(this.value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, Object? error, StackTrace? stackTrace)?
        error,
    TResult Function()? loading,
    TResult Function(T value)? value,
    required TResult orElse(),
  }) {
    if (value != null) {
      return value(this.value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultError<T> value) error,
    required TResult Function(_ResultLoading<T> value) loading,
    required TResult Function(_ResultValue<T> value) value,
  }) {
    return value(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResultError<T> value)? error,
    TResult Function(_ResultLoading<T> value)? loading,
    TResult Function(_ResultValue<T> value)? value,
  }) {
    return value?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultError<T> value)? error,
    TResult Function(_ResultLoading<T> value)? loading,
    TResult Function(_ResultValue<T> value)? value,
    required TResult orElse(),
  }) {
    if (value != null) {
      return value(this);
    }
    return orElse();
  }
}

abstract class _ResultValue<T> implements Result<T> {
  const factory _ResultValue({required final T value}) = _$_ResultValue<T>;

  T get value;
  @JsonKey(ignore: true)
  _$$_ResultValueCopyWith<T, _$_ResultValue<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
