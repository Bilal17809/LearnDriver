// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resources.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Resource<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(T? data) loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(T? data)? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(T? data)? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResourceInitial<T> value) initial,
    required TResult Function(ResourceLoading<T> value) loading,
    required TResult Function(ResourceSuccess<T> value) success,
    required TResult Function(ResourceError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResourceInitial<T> value)? initial,
    TResult? Function(ResourceLoading<T> value)? loading,
    TResult? Function(ResourceSuccess<T> value)? success,
    TResult? Function(ResourceError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResourceInitial<T> value)? initial,
    TResult Function(ResourceLoading<T> value)? loading,
    TResult Function(ResourceSuccess<T> value)? success,
    TResult Function(ResourceError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceCopyWith<T, $Res> {
  factory $ResourceCopyWith(
          Resource<T> value, $Res Function(Resource<T>) then) =
      _$ResourceCopyWithImpl<T, $Res, Resource<T>>;
}

/// @nodoc
class _$ResourceCopyWithImpl<T, $Res, $Val extends Resource<T>>
    implements $ResourceCopyWith<T, $Res> {
  _$ResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ResourceInitialImplCopyWith<T, $Res> {
  factory _$$ResourceInitialImplCopyWith(_$ResourceInitialImpl<T> value,
          $Res Function(_$ResourceInitialImpl<T>) then) =
      __$$ResourceInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ResourceInitialImplCopyWithImpl<T, $Res>
    extends _$ResourceCopyWithImpl<T, $Res, _$ResourceInitialImpl<T>>
    implements _$$ResourceInitialImplCopyWith<T, $Res> {
  __$$ResourceInitialImplCopyWithImpl(_$ResourceInitialImpl<T> _value,
      $Res Function(_$ResourceInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResourceInitialImpl<T> implements ResourceInitial<T> {
  const _$ResourceInitialImpl();

  @override
  String toString() {
    return 'Resource<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResourceInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(T? data) loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(T? data)? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(T? data)? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
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
    required TResult Function(ResourceInitial<T> value) initial,
    required TResult Function(ResourceLoading<T> value) loading,
    required TResult Function(ResourceSuccess<T> value) success,
    required TResult Function(ResourceError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResourceInitial<T> value)? initial,
    TResult? Function(ResourceLoading<T> value)? loading,
    TResult? Function(ResourceSuccess<T> value)? success,
    TResult? Function(ResourceError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResourceInitial<T> value)? initial,
    TResult Function(ResourceLoading<T> value)? loading,
    TResult Function(ResourceSuccess<T> value)? success,
    TResult Function(ResourceError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ResourceInitial<T> implements Resource<T> {
  const factory ResourceInitial() = _$ResourceInitialImpl<T>;
}

/// @nodoc
abstract class _$$ResourceLoadingImplCopyWith<T, $Res> {
  factory _$$ResourceLoadingImplCopyWith(_$ResourceLoadingImpl<T> value,
          $Res Function(_$ResourceLoadingImpl<T>) then) =
      __$$ResourceLoadingImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? data});
}

/// @nodoc
class __$$ResourceLoadingImplCopyWithImpl<T, $Res>
    extends _$ResourceCopyWithImpl<T, $Res, _$ResourceLoadingImpl<T>>
    implements _$$ResourceLoadingImplCopyWith<T, $Res> {
  __$$ResourceLoadingImplCopyWithImpl(_$ResourceLoadingImpl<T> _value,
      $Res Function(_$ResourceLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ResourceLoadingImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$ResourceLoadingImpl<T> implements ResourceLoading<T> {
  const _$ResourceLoadingImpl({this.data});

  @override
  final T? data;

  @override
  String toString() {
    return 'Resource<$T>.loading(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourceLoadingImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourceLoadingImplCopyWith<T, _$ResourceLoadingImpl<T>> get copyWith =>
      __$$ResourceLoadingImplCopyWithImpl<T, _$ResourceLoadingImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(T? data) loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(T? data)? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(T? data)? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResourceInitial<T> value) initial,
    required TResult Function(ResourceLoading<T> value) loading,
    required TResult Function(ResourceSuccess<T> value) success,
    required TResult Function(ResourceError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResourceInitial<T> value)? initial,
    TResult? Function(ResourceLoading<T> value)? loading,
    TResult? Function(ResourceSuccess<T> value)? success,
    TResult? Function(ResourceError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResourceInitial<T> value)? initial,
    TResult Function(ResourceLoading<T> value)? loading,
    TResult Function(ResourceSuccess<T> value)? success,
    TResult Function(ResourceError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ResourceLoading<T> implements Resource<T> {
  const factory ResourceLoading({final T? data}) = _$ResourceLoadingImpl<T>;

  T? get data;

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResourceLoadingImplCopyWith<T, _$ResourceLoadingImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResourceSuccessImplCopyWith<T, $Res> {
  factory _$$ResourceSuccessImplCopyWith(_$ResourceSuccessImpl<T> value,
          $Res Function(_$ResourceSuccessImpl<T>) then) =
      __$$ResourceSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ResourceSuccessImplCopyWithImpl<T, $Res>
    extends _$ResourceCopyWithImpl<T, $Res, _$ResourceSuccessImpl<T>>
    implements _$$ResourceSuccessImplCopyWith<T, $Res> {
  __$$ResourceSuccessImplCopyWithImpl(_$ResourceSuccessImpl<T> _value,
      $Res Function(_$ResourceSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ResourceSuccessImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ResourceSuccessImpl<T> implements ResourceSuccess<T> {
  const _$ResourceSuccessImpl({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'Resource<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourceSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourceSuccessImplCopyWith<T, _$ResourceSuccessImpl<T>> get copyWith =>
      __$$ResourceSuccessImplCopyWithImpl<T, _$ResourceSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(T? data) loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(T? data)? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(T? data)? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResourceInitial<T> value) initial,
    required TResult Function(ResourceLoading<T> value) loading,
    required TResult Function(ResourceSuccess<T> value) success,
    required TResult Function(ResourceError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResourceInitial<T> value)? initial,
    TResult? Function(ResourceLoading<T> value)? loading,
    TResult? Function(ResourceSuccess<T> value)? success,
    TResult? Function(ResourceError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResourceInitial<T> value)? initial,
    TResult Function(ResourceLoading<T> value)? loading,
    TResult Function(ResourceSuccess<T> value)? success,
    TResult Function(ResourceError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ResourceSuccess<T> implements Resource<T> {
  const factory ResourceSuccess({required final T data}) =
      _$ResourceSuccessImpl<T>;

  T get data;

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResourceSuccessImplCopyWith<T, _$ResourceSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResourceErrorImplCopyWith<T, $Res> {
  factory _$$ResourceErrorImplCopyWith(_$ResourceErrorImpl<T> value,
          $Res Function(_$ResourceErrorImpl<T>) then) =
      __$$ResourceErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ResourceErrorImplCopyWithImpl<T, $Res>
    extends _$ResourceCopyWithImpl<T, $Res, _$ResourceErrorImpl<T>>
    implements _$$ResourceErrorImplCopyWith<T, $Res> {
  __$$ResourceErrorImplCopyWithImpl(_$ResourceErrorImpl<T> _value,
      $Res Function(_$ResourceErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ResourceErrorImpl<T>(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResourceErrorImpl<T> implements ResourceError<T> {
  const _$ResourceErrorImpl({this.message = 'Something went wrong'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'Resource<$T>.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourceErrorImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourceErrorImplCopyWith<T, _$ResourceErrorImpl<T>> get copyWith =>
      __$$ResourceErrorImplCopyWithImpl<T, _$ResourceErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(T? data) loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(T? data)? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(T? data)? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResourceInitial<T> value) initial,
    required TResult Function(ResourceLoading<T> value) loading,
    required TResult Function(ResourceSuccess<T> value) success,
    required TResult Function(ResourceError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResourceInitial<T> value)? initial,
    TResult? Function(ResourceLoading<T> value)? loading,
    TResult? Function(ResourceSuccess<T> value)? success,
    TResult? Function(ResourceError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResourceInitial<T> value)? initial,
    TResult Function(ResourceLoading<T> value)? loading,
    TResult Function(ResourceSuccess<T> value)? success,
    TResult Function(ResourceError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ResourceError<T> implements Resource<T> {
  const factory ResourceError({final String message}) = _$ResourceErrorImpl<T>;

  String get message;

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResourceErrorImplCopyWith<T, _$ResourceErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
