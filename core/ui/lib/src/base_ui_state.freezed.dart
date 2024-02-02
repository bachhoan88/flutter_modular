// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UiState<T> {
  bool get isLoading => throw _privateConstructorUsedError;
  Exception? get exception => throw _privateConstructorUsedError;
  T? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, Exception? exception, T? data)
        loading,
    required TResult Function(Exception exception, bool isLoading, T? data)
        exception,
    required TResult Function(T data, bool isLoading, Exception? exception)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, Exception? exception, T? data)? loading,
    TResult? Function(Exception exception, bool isLoading, T? data)? exception,
    TResult? Function(T data, bool isLoading, Exception? exception)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, Exception? exception, T? data)? loading,
    TResult Function(Exception exception, bool isLoading, T? data)? exception,
    TResult Function(T data, bool isLoading, Exception? exception)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UiStateLoading<T> value) loading,
    required TResult Function(UiStateException<T> value) exception,
    required TResult Function(UiStateSuccess<T> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UiStateLoading<T> value)? loading,
    TResult? Function(UiStateException<T> value)? exception,
    TResult? Function(UiStateSuccess<T> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UiStateLoading<T> value)? loading,
    TResult Function(UiStateException<T> value)? exception,
    TResult Function(UiStateSuccess<T> value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UiStateCopyWith<T, UiState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UiStateCopyWith<T, $Res> {
  factory $UiStateCopyWith(UiState<T> value, $Res Function(UiState<T>) then) =
      _$UiStateCopyWithImpl<T, $Res, UiState<T>>;
  @useResult
  $Res call({bool isLoading, Exception exception});
}

/// @nodoc
class _$UiStateCopyWithImpl<T, $Res, $Val extends UiState<T>>
    implements $UiStateCopyWith<T, $Res> {
  _$UiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? exception = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      exception: null == exception
          ? _value.exception!
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UiStateLoadingImplCopyWith<T, $Res>
    implements $UiStateCopyWith<T, $Res> {
  factory _$$UiStateLoadingImplCopyWith(_$UiStateLoadingImpl<T> value,
          $Res Function(_$UiStateLoadingImpl<T>) then) =
      __$$UiStateLoadingImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({bool isLoading, Exception? exception, T? data});
}

/// @nodoc
class __$$UiStateLoadingImplCopyWithImpl<T, $Res>
    extends _$UiStateCopyWithImpl<T, $Res, _$UiStateLoadingImpl<T>>
    implements _$$UiStateLoadingImplCopyWith<T, $Res> {
  __$$UiStateLoadingImplCopyWithImpl(_$UiStateLoadingImpl<T> _value,
      $Res Function(_$UiStateLoadingImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? exception = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UiStateLoadingImpl<T>(
      null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$UiStateLoadingImpl<T> implements UiStateLoading<T> {
  const _$UiStateLoadingImpl(this.isLoading,
      {this.exception = null, this.data = null});

  @override
  final bool isLoading;
  @override
  @JsonKey()
  final Exception? exception;
  @override
  @JsonKey()
  final T? data;

  @override
  String toString() {
    return 'UiState<$T>.loading(isLoading: $isLoading, exception: $exception, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UiStateLoadingImpl<T> &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, exception,
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UiStateLoadingImplCopyWith<T, _$UiStateLoadingImpl<T>> get copyWith =>
      __$$UiStateLoadingImplCopyWithImpl<T, _$UiStateLoadingImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, Exception? exception, T? data)
        loading,
    required TResult Function(Exception exception, bool isLoading, T? data)
        exception,
    required TResult Function(T data, bool isLoading, Exception? exception)
        success,
  }) {
    return loading(isLoading, this.exception, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, Exception? exception, T? data)? loading,
    TResult? Function(Exception exception, bool isLoading, T? data)? exception,
    TResult? Function(T data, bool isLoading, Exception? exception)? success,
  }) {
    return loading?.call(isLoading, this.exception, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, Exception? exception, T? data)? loading,
    TResult Function(Exception exception, bool isLoading, T? data)? exception,
    TResult Function(T data, bool isLoading, Exception? exception)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(isLoading, this.exception, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UiStateLoading<T> value) loading,
    required TResult Function(UiStateException<T> value) exception,
    required TResult Function(UiStateSuccess<T> value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UiStateLoading<T> value)? loading,
    TResult? Function(UiStateException<T> value)? exception,
    TResult? Function(UiStateSuccess<T> value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UiStateLoading<T> value)? loading,
    TResult Function(UiStateException<T> value)? exception,
    TResult Function(UiStateSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UiStateLoading<T> implements UiState<T> {
  const factory UiStateLoading(final bool isLoading,
      {final Exception? exception, final T? data}) = _$UiStateLoadingImpl<T>;

  @override
  bool get isLoading;
  @override
  Exception? get exception;
  @override
  T? get data;
  @override
  @JsonKey(ignore: true)
  _$$UiStateLoadingImplCopyWith<T, _$UiStateLoadingImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UiStateExceptionImplCopyWith<T, $Res>
    implements $UiStateCopyWith<T, $Res> {
  factory _$$UiStateExceptionImplCopyWith(_$UiStateExceptionImpl<T> value,
          $Res Function(_$UiStateExceptionImpl<T>) then) =
      __$$UiStateExceptionImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({Exception exception, bool isLoading, T? data});
}

/// @nodoc
class __$$UiStateExceptionImplCopyWithImpl<T, $Res>
    extends _$UiStateCopyWithImpl<T, $Res, _$UiStateExceptionImpl<T>>
    implements _$$UiStateExceptionImplCopyWith<T, $Res> {
  __$$UiStateExceptionImplCopyWithImpl(_$UiStateExceptionImpl<T> _value,
      $Res Function(_$UiStateExceptionImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
    Object? isLoading = null,
    Object? data = freezed,
  }) {
    return _then(_$UiStateExceptionImpl<T>(
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$UiStateExceptionImpl<T> implements UiStateException<T> {
  const _$UiStateExceptionImpl(this.exception,
      {this.isLoading = false, this.data = null});

  @override
  final Exception exception;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final T? data;

  @override
  String toString() {
    return 'UiState<$T>.exception(exception: $exception, isLoading: $isLoading, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UiStateExceptionImpl<T> &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception, isLoading,
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UiStateExceptionImplCopyWith<T, _$UiStateExceptionImpl<T>> get copyWith =>
      __$$UiStateExceptionImplCopyWithImpl<T, _$UiStateExceptionImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, Exception? exception, T? data)
        loading,
    required TResult Function(Exception exception, bool isLoading, T? data)
        exception,
    required TResult Function(T data, bool isLoading, Exception? exception)
        success,
  }) {
    return exception(this.exception, isLoading, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, Exception? exception, T? data)? loading,
    TResult? Function(Exception exception, bool isLoading, T? data)? exception,
    TResult? Function(T data, bool isLoading, Exception? exception)? success,
  }) {
    return exception?.call(this.exception, isLoading, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, Exception? exception, T? data)? loading,
    TResult Function(Exception exception, bool isLoading, T? data)? exception,
    TResult Function(T data, bool isLoading, Exception? exception)? success,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this.exception, isLoading, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UiStateLoading<T> value) loading,
    required TResult Function(UiStateException<T> value) exception,
    required TResult Function(UiStateSuccess<T> value) success,
  }) {
    return exception(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UiStateLoading<T> value)? loading,
    TResult? Function(UiStateException<T> value)? exception,
    TResult? Function(UiStateSuccess<T> value)? success,
  }) {
    return exception?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UiStateLoading<T> value)? loading,
    TResult Function(UiStateException<T> value)? exception,
    TResult Function(UiStateSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this);
    }
    return orElse();
  }
}

abstract class UiStateException<T> implements UiState<T> {
  const factory UiStateException(final Exception exception,
      {final bool isLoading, final T? data}) = _$UiStateExceptionImpl<T>;

  @override
  Exception get exception;
  @override
  bool get isLoading;
  @override
  T? get data;
  @override
  @JsonKey(ignore: true)
  _$$UiStateExceptionImplCopyWith<T, _$UiStateExceptionImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UiStateSuccessImplCopyWith<T, $Res>
    implements $UiStateCopyWith<T, $Res> {
  factory _$$UiStateSuccessImplCopyWith(_$UiStateSuccessImpl<T> value,
          $Res Function(_$UiStateSuccessImpl<T>) then) =
      __$$UiStateSuccessImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T data, bool isLoading, Exception? exception});
}

/// @nodoc
class __$$UiStateSuccessImplCopyWithImpl<T, $Res>
    extends _$UiStateCopyWithImpl<T, $Res, _$UiStateSuccessImpl<T>>
    implements _$$UiStateSuccessImplCopyWith<T, $Res> {
  __$$UiStateSuccessImplCopyWithImpl(_$UiStateSuccessImpl<T> _value,
      $Res Function(_$UiStateSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? isLoading = null,
    Object? exception = freezed,
  }) {
    return _then(_$UiStateSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$UiStateSuccessImpl<T> implements UiStateSuccess<T> {
  const _$UiStateSuccessImpl(this.data,
      {this.isLoading = false, this.exception = null});

  @override
  final T data;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final Exception? exception;

  @override
  String toString() {
    return 'UiState<$T>.success(data: $data, isLoading: $isLoading, exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UiStateSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(data), isLoading, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UiStateSuccessImplCopyWith<T, _$UiStateSuccessImpl<T>> get copyWith =>
      __$$UiStateSuccessImplCopyWithImpl<T, _$UiStateSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, Exception? exception, T? data)
        loading,
    required TResult Function(Exception exception, bool isLoading, T? data)
        exception,
    required TResult Function(T data, bool isLoading, Exception? exception)
        success,
  }) {
    return success(data, isLoading, this.exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, Exception? exception, T? data)? loading,
    TResult? Function(Exception exception, bool isLoading, T? data)? exception,
    TResult? Function(T data, bool isLoading, Exception? exception)? success,
  }) {
    return success?.call(data, isLoading, this.exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, Exception? exception, T? data)? loading,
    TResult Function(Exception exception, bool isLoading, T? data)? exception,
    TResult Function(T data, bool isLoading, Exception? exception)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data, isLoading, this.exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UiStateLoading<T> value) loading,
    required TResult Function(UiStateException<T> value) exception,
    required TResult Function(UiStateSuccess<T> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UiStateLoading<T> value)? loading,
    TResult? Function(UiStateException<T> value)? exception,
    TResult? Function(UiStateSuccess<T> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UiStateLoading<T> value)? loading,
    TResult Function(UiStateException<T> value)? exception,
    TResult Function(UiStateSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class UiStateSuccess<T> implements UiState<T> {
  const factory UiStateSuccess(final T data,
      {final bool isLoading,
      final Exception? exception}) = _$UiStateSuccessImpl<T>;

  @override
  T get data;
  @override
  bool get isLoading;
  @override
  Exception? get exception;
  @override
  @JsonKey(ignore: true)
  _$$UiStateSuccessImplCopyWith<T, _$UiStateSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
