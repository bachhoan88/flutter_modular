// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UiState<T> {
  bool get isLoading;
  SingleObserver<Exception>? get exception;
  T? get data;

  /// Create a copy of UiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UiStateCopyWith<T, UiState<T>> get copyWith =>
      _$UiStateCopyWithImpl<T, UiState<T>>(this as UiState<T>, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UiState<T> &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, exception,
      const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'UiState<$T>(isLoading: $isLoading, exception: $exception, data: $data)';
  }
}

/// @nodoc
abstract mixin class $UiStateCopyWith<T, $Res> {
  factory $UiStateCopyWith(UiState<T> value, $Res Function(UiState<T>) _then) =
      _$UiStateCopyWithImpl;
  @useResult
  $Res call({bool isLoading, SingleObserver<Exception> exception});
}

/// @nodoc
class _$UiStateCopyWithImpl<T, $Res> implements $UiStateCopyWith<T, $Res> {
  _$UiStateCopyWithImpl(this._self, this._then);

  final UiState<T> _self;
  final $Res Function(UiState<T>) _then;

  /// Create a copy of UiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? exception = null,
  }) {
    return _then(_self.copyWith(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      exception: null == exception
          ? _self.exception!
          : exception // ignore: cast_nullable_to_non_nullable
              as SingleObserver<Exception>,
    ));
  }
}

/// @nodoc

class UiStateLoading<T> implements UiState<T> {
  const UiStateLoading(this.isLoading,
      {this.exception = null, this.data = null});

  @override
  final bool isLoading;
  @override
  @JsonKey()
  final SingleObserver<Exception>? exception;
  @override
  @JsonKey()
  final T? data;

  /// Create a copy of UiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UiStateLoadingCopyWith<T, UiStateLoading<T>> get copyWith =>
      _$UiStateLoadingCopyWithImpl<T, UiStateLoading<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UiStateLoading<T> &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, exception,
      const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'UiState<$T>.loading(isLoading: $isLoading, exception: $exception, data: $data)';
  }
}

/// @nodoc
abstract mixin class $UiStateLoadingCopyWith<T, $Res>
    implements $UiStateCopyWith<T, $Res> {
  factory $UiStateLoadingCopyWith(
          UiStateLoading<T> value, $Res Function(UiStateLoading<T>) _then) =
      _$UiStateLoadingCopyWithImpl;
  @override
  @useResult
  $Res call({bool isLoading, SingleObserver<Exception>? exception, T? data});
}

/// @nodoc
class _$UiStateLoadingCopyWithImpl<T, $Res>
    implements $UiStateLoadingCopyWith<T, $Res> {
  _$UiStateLoadingCopyWithImpl(this._self, this._then);

  final UiStateLoading<T> _self;
  final $Res Function(UiStateLoading<T>) _then;

  /// Create a copy of UiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? exception = freezed,
    Object? data = freezed,
  }) {
    return _then(UiStateLoading<T>(
      null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      exception: freezed == exception
          ? _self.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as SingleObserver<Exception>?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class UiStateException<T> implements UiState<T> {
  const UiStateException(this.exception,
      {this.isLoading = false, this.data = null});

  @override
  final SingleObserver<Exception> exception;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final T? data;

  /// Create a copy of UiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UiStateExceptionCopyWith<T, UiStateException<T>> get copyWith =>
      _$UiStateExceptionCopyWithImpl<T, UiStateException<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UiStateException<T> &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception, isLoading,
      const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'UiState<$T>.exception(exception: $exception, isLoading: $isLoading, data: $data)';
  }
}

/// @nodoc
abstract mixin class $UiStateExceptionCopyWith<T, $Res>
    implements $UiStateCopyWith<T, $Res> {
  factory $UiStateExceptionCopyWith(
          UiStateException<T> value, $Res Function(UiStateException<T>) _then) =
      _$UiStateExceptionCopyWithImpl;
  @override
  @useResult
  $Res call({SingleObserver<Exception> exception, bool isLoading, T? data});
}

/// @nodoc
class _$UiStateExceptionCopyWithImpl<T, $Res>
    implements $UiStateExceptionCopyWith<T, $Res> {
  _$UiStateExceptionCopyWithImpl(this._self, this._then);

  final UiStateException<T> _self;
  final $Res Function(UiStateException<T>) _then;

  /// Create a copy of UiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? exception = null,
    Object? isLoading = null,
    Object? data = freezed,
  }) {
    return _then(UiStateException<T>(
      null == exception
          ? _self.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as SingleObserver<Exception>,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class UiStateSuccess<T> implements UiState<T> {
  const UiStateSuccess(this.data,
      {this.isLoading = false, this.exception = null});

  @override
  final T data;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final SingleObserver<Exception>? exception;

  /// Create a copy of UiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UiStateSuccessCopyWith<T, UiStateSuccess<T>> get copyWith =>
      _$UiStateSuccessCopyWithImpl<T, UiStateSuccess<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UiStateSuccess<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(data), isLoading, exception);

  @override
  String toString() {
    return 'UiState<$T>.success(data: $data, isLoading: $isLoading, exception: $exception)';
  }
}

/// @nodoc
abstract mixin class $UiStateSuccessCopyWith<T, $Res>
    implements $UiStateCopyWith<T, $Res> {
  factory $UiStateSuccessCopyWith(
          UiStateSuccess<T> value, $Res Function(UiStateSuccess<T>) _then) =
      _$UiStateSuccessCopyWithImpl;
  @override
  @useResult
  $Res call({T data, bool isLoading, SingleObserver<Exception>? exception});
}

/// @nodoc
class _$UiStateSuccessCopyWithImpl<T, $Res>
    implements $UiStateSuccessCopyWith<T, $Res> {
  _$UiStateSuccessCopyWithImpl(this._self, this._then);

  final UiStateSuccess<T> _self;
  final $Res Function(UiStateSuccess<T>) _then;

  /// Create a copy of UiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = freezed,
    Object? isLoading = null,
    Object? exception = freezed,
  }) {
    return _then(UiStateSuccess<T>(
      freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      exception: freezed == exception
          ? _self.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as SingleObserver<Exception>?,
    ));
  }
}

// dart format on
