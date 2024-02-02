// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exception_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExceptionState {
  int get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int code, String? messageId, String? message)
        snackBar,
    required TResult Function(int code, String? messageId, String? message)
        toast,
    required TResult Function(int code, String? messageId, String? message)
        onPage,
    required TResult Function(int code, List<Tag> tags, String? message) inline,
    required TResult Function(
            int code, String? titleId, String? messageId, String? message)
        alert,
    required TResult Function(
            int code, Redirect redirect, dynamic data, String? message)
        redirect,
    required TResult Function(int code, Dialogs dialogs, String? message)
        dialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int code, String? messageId, String? message)? snackBar,
    TResult? Function(int code, String? messageId, String? message)? toast,
    TResult? Function(int code, String? messageId, String? message)? onPage,
    TResult? Function(int code, List<Tag> tags, String? message)? inline,
    TResult? Function(
            int code, String? titleId, String? messageId, String? message)?
        alert,
    TResult? Function(
            int code, Redirect redirect, dynamic data, String? message)?
        redirect,
    TResult? Function(int code, Dialogs dialogs, String? message)? dialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int code, String? messageId, String? message)? snackBar,
    TResult Function(int code, String? messageId, String? message)? toast,
    TResult Function(int code, String? messageId, String? message)? onPage,
    TResult Function(int code, List<Tag> tags, String? message)? inline,
    TResult Function(
            int code, String? titleId, String? messageId, String? message)?
        alert,
    TResult Function(
            int code, Redirect redirect, dynamic data, String? message)?
        redirect,
    TResult Function(int code, Dialogs dialogs, String? message)? dialog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SnackBarException value) snackBar,
    required TResult Function(ToastException value) toast,
    required TResult Function(OnPageException value) onPage,
    required TResult Function(InlineException value) inline,
    required TResult Function(AlertException value) alert,
    required TResult Function(RedirectException value) redirect,
    required TResult Function(DialogException value) dialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SnackBarException value)? snackBar,
    TResult? Function(ToastException value)? toast,
    TResult? Function(OnPageException value)? onPage,
    TResult? Function(InlineException value)? inline,
    TResult? Function(AlertException value)? alert,
    TResult? Function(RedirectException value)? redirect,
    TResult? Function(DialogException value)? dialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SnackBarException value)? snackBar,
    TResult Function(ToastException value)? toast,
    TResult Function(OnPageException value)? onPage,
    TResult Function(InlineException value)? inline,
    TResult Function(AlertException value)? alert,
    TResult Function(RedirectException value)? redirect,
    TResult Function(DialogException value)? dialog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExceptionStateCopyWith<ExceptionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExceptionStateCopyWith<$Res> {
  factory $ExceptionStateCopyWith(
          ExceptionState value, $Res Function(ExceptionState) then) =
      _$ExceptionStateCopyWithImpl<$Res, ExceptionState>;
  @useResult
  $Res call({int code, String? message});
}

/// @nodoc
class _$ExceptionStateCopyWithImpl<$Res, $Val extends ExceptionState>
    implements $ExceptionStateCopyWith<$Res> {
  _$ExceptionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnackBarExceptionImplCopyWith<$Res>
    implements $ExceptionStateCopyWith<$Res> {
  factory _$$SnackBarExceptionImplCopyWith(_$SnackBarExceptionImpl value,
          $Res Function(_$SnackBarExceptionImpl) then) =
      __$$SnackBarExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String? messageId, String? message});
}

/// @nodoc
class __$$SnackBarExceptionImplCopyWithImpl<$Res>
    extends _$ExceptionStateCopyWithImpl<$Res, _$SnackBarExceptionImpl>
    implements _$$SnackBarExceptionImplCopyWith<$Res> {
  __$$SnackBarExceptionImplCopyWithImpl(_$SnackBarExceptionImpl _value,
      $Res Function(_$SnackBarExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? messageId = freezed,
    Object? message = freezed,
  }) {
    return _then(_$SnackBarExceptionImpl(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SnackBarExceptionImpl implements SnackBarException {
  const _$SnackBarExceptionImpl(this.code, {this.messageId, this.message});

  @override
  final int code;
  @override
  final String? messageId;
  @override
  final String? message;

  @override
  String toString() {
    return 'ExceptionState.snackBar(code: $code, messageId: $messageId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnackBarExceptionImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, messageId, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SnackBarExceptionImplCopyWith<_$SnackBarExceptionImpl> get copyWith =>
      __$$SnackBarExceptionImplCopyWithImpl<_$SnackBarExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int code, String? messageId, String? message)
        snackBar,
    required TResult Function(int code, String? messageId, String? message)
        toast,
    required TResult Function(int code, String? messageId, String? message)
        onPage,
    required TResult Function(int code, List<Tag> tags, String? message) inline,
    required TResult Function(
            int code, String? titleId, String? messageId, String? message)
        alert,
    required TResult Function(
            int code, Redirect redirect, dynamic data, String? message)
        redirect,
    required TResult Function(int code, Dialogs dialogs, String? message)
        dialog,
  }) {
    return snackBar(code, messageId, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int code, String? messageId, String? message)? snackBar,
    TResult? Function(int code, String? messageId, String? message)? toast,
    TResult? Function(int code, String? messageId, String? message)? onPage,
    TResult? Function(int code, List<Tag> tags, String? message)? inline,
    TResult? Function(
            int code, String? titleId, String? messageId, String? message)?
        alert,
    TResult? Function(
            int code, Redirect redirect, dynamic data, String? message)?
        redirect,
    TResult? Function(int code, Dialogs dialogs, String? message)? dialog,
  }) {
    return snackBar?.call(code, messageId, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int code, String? messageId, String? message)? snackBar,
    TResult Function(int code, String? messageId, String? message)? toast,
    TResult Function(int code, String? messageId, String? message)? onPage,
    TResult Function(int code, List<Tag> tags, String? message)? inline,
    TResult Function(
            int code, String? titleId, String? messageId, String? message)?
        alert,
    TResult Function(
            int code, Redirect redirect, dynamic data, String? message)?
        redirect,
    TResult Function(int code, Dialogs dialogs, String? message)? dialog,
    required TResult orElse(),
  }) {
    if (snackBar != null) {
      return snackBar(code, messageId, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SnackBarException value) snackBar,
    required TResult Function(ToastException value) toast,
    required TResult Function(OnPageException value) onPage,
    required TResult Function(InlineException value) inline,
    required TResult Function(AlertException value) alert,
    required TResult Function(RedirectException value) redirect,
    required TResult Function(DialogException value) dialog,
  }) {
    return snackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SnackBarException value)? snackBar,
    TResult? Function(ToastException value)? toast,
    TResult? Function(OnPageException value)? onPage,
    TResult? Function(InlineException value)? inline,
    TResult? Function(AlertException value)? alert,
    TResult? Function(RedirectException value)? redirect,
    TResult? Function(DialogException value)? dialog,
  }) {
    return snackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SnackBarException value)? snackBar,
    TResult Function(ToastException value)? toast,
    TResult Function(OnPageException value)? onPage,
    TResult Function(InlineException value)? inline,
    TResult Function(AlertException value)? alert,
    TResult Function(RedirectException value)? redirect,
    TResult Function(DialogException value)? dialog,
    required TResult orElse(),
  }) {
    if (snackBar != null) {
      return snackBar(this);
    }
    return orElse();
  }
}

abstract class SnackBarException implements ExceptionState {
  const factory SnackBarException(final int code,
      {final String? messageId,
      final String? message}) = _$SnackBarExceptionImpl;

  @override
  int get code;
  String? get messageId;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SnackBarExceptionImplCopyWith<_$SnackBarExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToastExceptionImplCopyWith<$Res>
    implements $ExceptionStateCopyWith<$Res> {
  factory _$$ToastExceptionImplCopyWith(_$ToastExceptionImpl value,
          $Res Function(_$ToastExceptionImpl) then) =
      __$$ToastExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String? messageId, String? message});
}

/// @nodoc
class __$$ToastExceptionImplCopyWithImpl<$Res>
    extends _$ExceptionStateCopyWithImpl<$Res, _$ToastExceptionImpl>
    implements _$$ToastExceptionImplCopyWith<$Res> {
  __$$ToastExceptionImplCopyWithImpl(
      _$ToastExceptionImpl _value, $Res Function(_$ToastExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? messageId = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ToastExceptionImpl(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ToastExceptionImpl implements ToastException {
  const _$ToastExceptionImpl(this.code, {this.messageId, this.message});

  @override
  final int code;
  @override
  final String? messageId;
  @override
  final String? message;

  @override
  String toString() {
    return 'ExceptionState.toast(code: $code, messageId: $messageId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToastExceptionImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, messageId, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToastExceptionImplCopyWith<_$ToastExceptionImpl> get copyWith =>
      __$$ToastExceptionImplCopyWithImpl<_$ToastExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int code, String? messageId, String? message)
        snackBar,
    required TResult Function(int code, String? messageId, String? message)
        toast,
    required TResult Function(int code, String? messageId, String? message)
        onPage,
    required TResult Function(int code, List<Tag> tags, String? message) inline,
    required TResult Function(
            int code, String? titleId, String? messageId, String? message)
        alert,
    required TResult Function(
            int code, Redirect redirect, dynamic data, String? message)
        redirect,
    required TResult Function(int code, Dialogs dialogs, String? message)
        dialog,
  }) {
    return toast(code, messageId, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int code, String? messageId, String? message)? snackBar,
    TResult? Function(int code, String? messageId, String? message)? toast,
    TResult? Function(int code, String? messageId, String? message)? onPage,
    TResult? Function(int code, List<Tag> tags, String? message)? inline,
    TResult? Function(
            int code, String? titleId, String? messageId, String? message)?
        alert,
    TResult? Function(
            int code, Redirect redirect, dynamic data, String? message)?
        redirect,
    TResult? Function(int code, Dialogs dialogs, String? message)? dialog,
  }) {
    return toast?.call(code, messageId, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int code, String? messageId, String? message)? snackBar,
    TResult Function(int code, String? messageId, String? message)? toast,
    TResult Function(int code, String? messageId, String? message)? onPage,
    TResult Function(int code, List<Tag> tags, String? message)? inline,
    TResult Function(
            int code, String? titleId, String? messageId, String? message)?
        alert,
    TResult Function(
            int code, Redirect redirect, dynamic data, String? message)?
        redirect,
    TResult Function(int code, Dialogs dialogs, String? message)? dialog,
    required TResult orElse(),
  }) {
    if (toast != null) {
      return toast(code, messageId, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SnackBarException value) snackBar,
    required TResult Function(ToastException value) toast,
    required TResult Function(OnPageException value) onPage,
    required TResult Function(InlineException value) inline,
    required TResult Function(AlertException value) alert,
    required TResult Function(RedirectException value) redirect,
    required TResult Function(DialogException value) dialog,
  }) {
    return toast(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SnackBarException value)? snackBar,
    TResult? Function(ToastException value)? toast,
    TResult? Function(OnPageException value)? onPage,
    TResult? Function(InlineException value)? inline,
    TResult? Function(AlertException value)? alert,
    TResult? Function(RedirectException value)? redirect,
    TResult? Function(DialogException value)? dialog,
  }) {
    return toast?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SnackBarException value)? snackBar,
    TResult Function(ToastException value)? toast,
    TResult Function(OnPageException value)? onPage,
    TResult Function(InlineException value)? inline,
    TResult Function(AlertException value)? alert,
    TResult Function(RedirectException value)? redirect,
    TResult Function(DialogException value)? dialog,
    required TResult orElse(),
  }) {
    if (toast != null) {
      return toast(this);
    }
    return orElse();
  }
}

abstract class ToastException implements ExceptionState {
  const factory ToastException(final int code,
      {final String? messageId, final String? message}) = _$ToastExceptionImpl;

  @override
  int get code;
  String? get messageId;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ToastExceptionImplCopyWith<_$ToastExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnPageExceptionImplCopyWith<$Res>
    implements $ExceptionStateCopyWith<$Res> {
  factory _$$OnPageExceptionImplCopyWith(_$OnPageExceptionImpl value,
          $Res Function(_$OnPageExceptionImpl) then) =
      __$$OnPageExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String? messageId, String? message});
}

/// @nodoc
class __$$OnPageExceptionImplCopyWithImpl<$Res>
    extends _$ExceptionStateCopyWithImpl<$Res, _$OnPageExceptionImpl>
    implements _$$OnPageExceptionImplCopyWith<$Res> {
  __$$OnPageExceptionImplCopyWithImpl(
      _$OnPageExceptionImpl _value, $Res Function(_$OnPageExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? messageId = freezed,
    Object? message = freezed,
  }) {
    return _then(_$OnPageExceptionImpl(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OnPageExceptionImpl implements OnPageException {
  const _$OnPageExceptionImpl(this.code, {this.messageId, this.message});

  @override
  final int code;
  @override
  final String? messageId;
  @override
  final String? message;

  @override
  String toString() {
    return 'ExceptionState.onPage(code: $code, messageId: $messageId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnPageExceptionImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, messageId, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnPageExceptionImplCopyWith<_$OnPageExceptionImpl> get copyWith =>
      __$$OnPageExceptionImplCopyWithImpl<_$OnPageExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int code, String? messageId, String? message)
        snackBar,
    required TResult Function(int code, String? messageId, String? message)
        toast,
    required TResult Function(int code, String? messageId, String? message)
        onPage,
    required TResult Function(int code, List<Tag> tags, String? message) inline,
    required TResult Function(
            int code, String? titleId, String? messageId, String? message)
        alert,
    required TResult Function(
            int code, Redirect redirect, dynamic data, String? message)
        redirect,
    required TResult Function(int code, Dialogs dialogs, String? message)
        dialog,
  }) {
    return onPage(code, messageId, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int code, String? messageId, String? message)? snackBar,
    TResult? Function(int code, String? messageId, String? message)? toast,
    TResult? Function(int code, String? messageId, String? message)? onPage,
    TResult? Function(int code, List<Tag> tags, String? message)? inline,
    TResult? Function(
            int code, String? titleId, String? messageId, String? message)?
        alert,
    TResult? Function(
            int code, Redirect redirect, dynamic data, String? message)?
        redirect,
    TResult? Function(int code, Dialogs dialogs, String? message)? dialog,
  }) {
    return onPage?.call(code, messageId, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int code, String? messageId, String? message)? snackBar,
    TResult Function(int code, String? messageId, String? message)? toast,
    TResult Function(int code, String? messageId, String? message)? onPage,
    TResult Function(int code, List<Tag> tags, String? message)? inline,
    TResult Function(
            int code, String? titleId, String? messageId, String? message)?
        alert,
    TResult Function(
            int code, Redirect redirect, dynamic data, String? message)?
        redirect,
    TResult Function(int code, Dialogs dialogs, String? message)? dialog,
    required TResult orElse(),
  }) {
    if (onPage != null) {
      return onPage(code, messageId, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SnackBarException value) snackBar,
    required TResult Function(ToastException value) toast,
    required TResult Function(OnPageException value) onPage,
    required TResult Function(InlineException value) inline,
    required TResult Function(AlertException value) alert,
    required TResult Function(RedirectException value) redirect,
    required TResult Function(DialogException value) dialog,
  }) {
    return onPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SnackBarException value)? snackBar,
    TResult? Function(ToastException value)? toast,
    TResult? Function(OnPageException value)? onPage,
    TResult? Function(InlineException value)? inline,
    TResult? Function(AlertException value)? alert,
    TResult? Function(RedirectException value)? redirect,
    TResult? Function(DialogException value)? dialog,
  }) {
    return onPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SnackBarException value)? snackBar,
    TResult Function(ToastException value)? toast,
    TResult Function(OnPageException value)? onPage,
    TResult Function(InlineException value)? inline,
    TResult Function(AlertException value)? alert,
    TResult Function(RedirectException value)? redirect,
    TResult Function(DialogException value)? dialog,
    required TResult orElse(),
  }) {
    if (onPage != null) {
      return onPage(this);
    }
    return orElse();
  }
}

abstract class OnPageException implements ExceptionState {
  const factory OnPageException(final int code,
      {final String? messageId, final String? message}) = _$OnPageExceptionImpl;

  @override
  int get code;
  String? get messageId;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$OnPageExceptionImplCopyWith<_$OnPageExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InlineExceptionImplCopyWith<$Res>
    implements $ExceptionStateCopyWith<$Res> {
  factory _$$InlineExceptionImplCopyWith(_$InlineExceptionImpl value,
          $Res Function(_$InlineExceptionImpl) then) =
      __$$InlineExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, List<Tag> tags, String? message});
}

/// @nodoc
class __$$InlineExceptionImplCopyWithImpl<$Res>
    extends _$ExceptionStateCopyWithImpl<$Res, _$InlineExceptionImpl>
    implements _$$InlineExceptionImplCopyWith<$Res> {
  __$$InlineExceptionImplCopyWithImpl(
      _$InlineExceptionImpl _value, $Res Function(_$InlineExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? tags = null,
    Object? message = freezed,
  }) {
    return _then(_$InlineExceptionImpl(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InlineExceptionImpl implements InlineException {
  const _$InlineExceptionImpl(this.code, final List<Tag> tags, {this.message})
      : _tags = tags;

  @override
  final int code;
  final List<Tag> _tags;
  @override
  List<Tag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final String? message;

  @override
  String toString() {
    return 'ExceptionState.inline(code: $code, tags: $tags, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InlineExceptionImpl &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, code, const DeepCollectionEquality().hash(_tags), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InlineExceptionImplCopyWith<_$InlineExceptionImpl> get copyWith =>
      __$$InlineExceptionImplCopyWithImpl<_$InlineExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int code, String? messageId, String? message)
        snackBar,
    required TResult Function(int code, String? messageId, String? message)
        toast,
    required TResult Function(int code, String? messageId, String? message)
        onPage,
    required TResult Function(int code, List<Tag> tags, String? message) inline,
    required TResult Function(
            int code, String? titleId, String? messageId, String? message)
        alert,
    required TResult Function(
            int code, Redirect redirect, dynamic data, String? message)
        redirect,
    required TResult Function(int code, Dialogs dialogs, String? message)
        dialog,
  }) {
    return inline(code, tags, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int code, String? messageId, String? message)? snackBar,
    TResult? Function(int code, String? messageId, String? message)? toast,
    TResult? Function(int code, String? messageId, String? message)? onPage,
    TResult? Function(int code, List<Tag> tags, String? message)? inline,
    TResult? Function(
            int code, String? titleId, String? messageId, String? message)?
        alert,
    TResult? Function(
            int code, Redirect redirect, dynamic data, String? message)?
        redirect,
    TResult? Function(int code, Dialogs dialogs, String? message)? dialog,
  }) {
    return inline?.call(code, tags, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int code, String? messageId, String? message)? snackBar,
    TResult Function(int code, String? messageId, String? message)? toast,
    TResult Function(int code, String? messageId, String? message)? onPage,
    TResult Function(int code, List<Tag> tags, String? message)? inline,
    TResult Function(
            int code, String? titleId, String? messageId, String? message)?
        alert,
    TResult Function(
            int code, Redirect redirect, dynamic data, String? message)?
        redirect,
    TResult Function(int code, Dialogs dialogs, String? message)? dialog,
    required TResult orElse(),
  }) {
    if (inline != null) {
      return inline(code, tags, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SnackBarException value) snackBar,
    required TResult Function(ToastException value) toast,
    required TResult Function(OnPageException value) onPage,
    required TResult Function(InlineException value) inline,
    required TResult Function(AlertException value) alert,
    required TResult Function(RedirectException value) redirect,
    required TResult Function(DialogException value) dialog,
  }) {
    return inline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SnackBarException value)? snackBar,
    TResult? Function(ToastException value)? toast,
    TResult? Function(OnPageException value)? onPage,
    TResult? Function(InlineException value)? inline,
    TResult? Function(AlertException value)? alert,
    TResult? Function(RedirectException value)? redirect,
    TResult? Function(DialogException value)? dialog,
  }) {
    return inline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SnackBarException value)? snackBar,
    TResult Function(ToastException value)? toast,
    TResult Function(OnPageException value)? onPage,
    TResult Function(InlineException value)? inline,
    TResult Function(AlertException value)? alert,
    TResult Function(RedirectException value)? redirect,
    TResult Function(DialogException value)? dialog,
    required TResult orElse(),
  }) {
    if (inline != null) {
      return inline(this);
    }
    return orElse();
  }
}

abstract class InlineException implements ExceptionState {
  const factory InlineException(final int code, final List<Tag> tags,
      {final String? message}) = _$InlineExceptionImpl;

  @override
  int get code;
  List<Tag> get tags;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$InlineExceptionImplCopyWith<_$InlineExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AlertExceptionImplCopyWith<$Res>
    implements $ExceptionStateCopyWith<$Res> {
  factory _$$AlertExceptionImplCopyWith(_$AlertExceptionImpl value,
          $Res Function(_$AlertExceptionImpl) then) =
      __$$AlertExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String? titleId, String? messageId, String? message});
}

/// @nodoc
class __$$AlertExceptionImplCopyWithImpl<$Res>
    extends _$ExceptionStateCopyWithImpl<$Res, _$AlertExceptionImpl>
    implements _$$AlertExceptionImplCopyWith<$Res> {
  __$$AlertExceptionImplCopyWithImpl(
      _$AlertExceptionImpl _value, $Res Function(_$AlertExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? titleId = freezed,
    Object? messageId = freezed,
    Object? message = freezed,
  }) {
    return _then(_$AlertExceptionImpl(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      titleId: freezed == titleId
          ? _value.titleId
          : titleId // ignore: cast_nullable_to_non_nullable
              as String?,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AlertExceptionImpl implements AlertException {
  const _$AlertExceptionImpl(this.code,
      {this.titleId, this.messageId, this.message});

  @override
  final int code;
  @override
  final String? titleId;
  @override
  final String? messageId;
  @override
  final String? message;

  @override
  String toString() {
    return 'ExceptionState.alert(code: $code, titleId: $titleId, messageId: $messageId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlertExceptionImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.titleId, titleId) || other.titleId == titleId) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, code, titleId, messageId, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlertExceptionImplCopyWith<_$AlertExceptionImpl> get copyWith =>
      __$$AlertExceptionImplCopyWithImpl<_$AlertExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int code, String? messageId, String? message)
        snackBar,
    required TResult Function(int code, String? messageId, String? message)
        toast,
    required TResult Function(int code, String? messageId, String? message)
        onPage,
    required TResult Function(int code, List<Tag> tags, String? message) inline,
    required TResult Function(
            int code, String? titleId, String? messageId, String? message)
        alert,
    required TResult Function(
            int code, Redirect redirect, dynamic data, String? message)
        redirect,
    required TResult Function(int code, Dialogs dialogs, String? message)
        dialog,
  }) {
    return alert(code, titleId, messageId, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int code, String? messageId, String? message)? snackBar,
    TResult? Function(int code, String? messageId, String? message)? toast,
    TResult? Function(int code, String? messageId, String? message)? onPage,
    TResult? Function(int code, List<Tag> tags, String? message)? inline,
    TResult? Function(
            int code, String? titleId, String? messageId, String? message)?
        alert,
    TResult? Function(
            int code, Redirect redirect, dynamic data, String? message)?
        redirect,
    TResult? Function(int code, Dialogs dialogs, String? message)? dialog,
  }) {
    return alert?.call(code, titleId, messageId, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int code, String? messageId, String? message)? snackBar,
    TResult Function(int code, String? messageId, String? message)? toast,
    TResult Function(int code, String? messageId, String? message)? onPage,
    TResult Function(int code, List<Tag> tags, String? message)? inline,
    TResult Function(
            int code, String? titleId, String? messageId, String? message)?
        alert,
    TResult Function(
            int code, Redirect redirect, dynamic data, String? message)?
        redirect,
    TResult Function(int code, Dialogs dialogs, String? message)? dialog,
    required TResult orElse(),
  }) {
    if (alert != null) {
      return alert(code, titleId, messageId, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SnackBarException value) snackBar,
    required TResult Function(ToastException value) toast,
    required TResult Function(OnPageException value) onPage,
    required TResult Function(InlineException value) inline,
    required TResult Function(AlertException value) alert,
    required TResult Function(RedirectException value) redirect,
    required TResult Function(DialogException value) dialog,
  }) {
    return alert(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SnackBarException value)? snackBar,
    TResult? Function(ToastException value)? toast,
    TResult? Function(OnPageException value)? onPage,
    TResult? Function(InlineException value)? inline,
    TResult? Function(AlertException value)? alert,
    TResult? Function(RedirectException value)? redirect,
    TResult? Function(DialogException value)? dialog,
  }) {
    return alert?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SnackBarException value)? snackBar,
    TResult Function(ToastException value)? toast,
    TResult Function(OnPageException value)? onPage,
    TResult Function(InlineException value)? inline,
    TResult Function(AlertException value)? alert,
    TResult Function(RedirectException value)? redirect,
    TResult Function(DialogException value)? dialog,
    required TResult orElse(),
  }) {
    if (alert != null) {
      return alert(this);
    }
    return orElse();
  }
}

abstract class AlertException implements ExceptionState {
  const factory AlertException(final int code,
      {final String? titleId,
      final String? messageId,
      final String? message}) = _$AlertExceptionImpl;

  @override
  int get code;
  String? get titleId;
  String? get messageId;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$AlertExceptionImplCopyWith<_$AlertExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RedirectExceptionImplCopyWith<$Res>
    implements $ExceptionStateCopyWith<$Res> {
  factory _$$RedirectExceptionImplCopyWith(_$RedirectExceptionImpl value,
          $Res Function(_$RedirectExceptionImpl) then) =
      __$$RedirectExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, Redirect redirect, dynamic data, String? message});
}

/// @nodoc
class __$$RedirectExceptionImplCopyWithImpl<$Res>
    extends _$ExceptionStateCopyWithImpl<$Res, _$RedirectExceptionImpl>
    implements _$$RedirectExceptionImplCopyWith<$Res> {
  __$$RedirectExceptionImplCopyWithImpl(_$RedirectExceptionImpl _value,
      $Res Function(_$RedirectExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? redirect = null,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$RedirectExceptionImpl(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      null == redirect
          ? _value.redirect
          : redirect // ignore: cast_nullable_to_non_nullable
              as Redirect,
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RedirectExceptionImpl implements RedirectException {
  const _$RedirectExceptionImpl(this.code, this.redirect, this.data,
      {this.message});

  @override
  final int code;
  @override
  final Redirect redirect;
  @override
  final dynamic data;
  @override
  final String? message;

  @override
  String toString() {
    return 'ExceptionState.redirect(code: $code, redirect: $redirect, data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RedirectExceptionImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.redirect, redirect) ||
                other.redirect == redirect) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, redirect,
      const DeepCollectionEquality().hash(data), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RedirectExceptionImplCopyWith<_$RedirectExceptionImpl> get copyWith =>
      __$$RedirectExceptionImplCopyWithImpl<_$RedirectExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int code, String? messageId, String? message)
        snackBar,
    required TResult Function(int code, String? messageId, String? message)
        toast,
    required TResult Function(int code, String? messageId, String? message)
        onPage,
    required TResult Function(int code, List<Tag> tags, String? message) inline,
    required TResult Function(
            int code, String? titleId, String? messageId, String? message)
        alert,
    required TResult Function(
            int code, Redirect redirect, dynamic data, String? message)
        redirect,
    required TResult Function(int code, Dialogs dialogs, String? message)
        dialog,
  }) {
    return redirect(code, this.redirect, data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int code, String? messageId, String? message)? snackBar,
    TResult? Function(int code, String? messageId, String? message)? toast,
    TResult? Function(int code, String? messageId, String? message)? onPage,
    TResult? Function(int code, List<Tag> tags, String? message)? inline,
    TResult? Function(
            int code, String? titleId, String? messageId, String? message)?
        alert,
    TResult? Function(
            int code, Redirect redirect, dynamic data, String? message)?
        redirect,
    TResult? Function(int code, Dialogs dialogs, String? message)? dialog,
  }) {
    return redirect?.call(code, this.redirect, data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int code, String? messageId, String? message)? snackBar,
    TResult Function(int code, String? messageId, String? message)? toast,
    TResult Function(int code, String? messageId, String? message)? onPage,
    TResult Function(int code, List<Tag> tags, String? message)? inline,
    TResult Function(
            int code, String? titleId, String? messageId, String? message)?
        alert,
    TResult Function(
            int code, Redirect redirect, dynamic data, String? message)?
        redirect,
    TResult Function(int code, Dialogs dialogs, String? message)? dialog,
    required TResult orElse(),
  }) {
    if (redirect != null) {
      return redirect(code, this.redirect, data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SnackBarException value) snackBar,
    required TResult Function(ToastException value) toast,
    required TResult Function(OnPageException value) onPage,
    required TResult Function(InlineException value) inline,
    required TResult Function(AlertException value) alert,
    required TResult Function(RedirectException value) redirect,
    required TResult Function(DialogException value) dialog,
  }) {
    return redirect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SnackBarException value)? snackBar,
    TResult? Function(ToastException value)? toast,
    TResult? Function(OnPageException value)? onPage,
    TResult? Function(InlineException value)? inline,
    TResult? Function(AlertException value)? alert,
    TResult? Function(RedirectException value)? redirect,
    TResult? Function(DialogException value)? dialog,
  }) {
    return redirect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SnackBarException value)? snackBar,
    TResult Function(ToastException value)? toast,
    TResult Function(OnPageException value)? onPage,
    TResult Function(InlineException value)? inline,
    TResult Function(AlertException value)? alert,
    TResult Function(RedirectException value)? redirect,
    TResult Function(DialogException value)? dialog,
    required TResult orElse(),
  }) {
    if (redirect != null) {
      return redirect(this);
    }
    return orElse();
  }
}

abstract class RedirectException implements ExceptionState {
  const factory RedirectException(
      final int code, final Redirect redirect, final dynamic data,
      {final String? message}) = _$RedirectExceptionImpl;

  @override
  int get code;
  Redirect get redirect;
  dynamic get data;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$RedirectExceptionImplCopyWith<_$RedirectExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DialogExceptionImplCopyWith<$Res>
    implements $ExceptionStateCopyWith<$Res> {
  factory _$$DialogExceptionImplCopyWith(_$DialogExceptionImpl value,
          $Res Function(_$DialogExceptionImpl) then) =
      __$$DialogExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, Dialogs dialogs, String? message});
}

/// @nodoc
class __$$DialogExceptionImplCopyWithImpl<$Res>
    extends _$ExceptionStateCopyWithImpl<$Res, _$DialogExceptionImpl>
    implements _$$DialogExceptionImplCopyWith<$Res> {
  __$$DialogExceptionImplCopyWithImpl(
      _$DialogExceptionImpl _value, $Res Function(_$DialogExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? dialogs = null,
    Object? message = freezed,
  }) {
    return _then(_$DialogExceptionImpl(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      null == dialogs
          ? _value.dialogs
          : dialogs // ignore: cast_nullable_to_non_nullable
              as Dialogs,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DialogExceptionImpl implements DialogException {
  const _$DialogExceptionImpl(this.code, this.dialogs, {this.message});

  @override
  final int code;
  @override
  final Dialogs dialogs;
  @override
  final String? message;

  @override
  String toString() {
    return 'ExceptionState.dialog(code: $code, dialogs: $dialogs, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DialogExceptionImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.dialogs, dialogs) || other.dialogs == dialogs) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, dialogs, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DialogExceptionImplCopyWith<_$DialogExceptionImpl> get copyWith =>
      __$$DialogExceptionImplCopyWithImpl<_$DialogExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int code, String? messageId, String? message)
        snackBar,
    required TResult Function(int code, String? messageId, String? message)
        toast,
    required TResult Function(int code, String? messageId, String? message)
        onPage,
    required TResult Function(int code, List<Tag> tags, String? message) inline,
    required TResult Function(
            int code, String? titleId, String? messageId, String? message)
        alert,
    required TResult Function(
            int code, Redirect redirect, dynamic data, String? message)
        redirect,
    required TResult Function(int code, Dialogs dialogs, String? message)
        dialog,
  }) {
    return dialog(code, dialogs, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int code, String? messageId, String? message)? snackBar,
    TResult? Function(int code, String? messageId, String? message)? toast,
    TResult? Function(int code, String? messageId, String? message)? onPage,
    TResult? Function(int code, List<Tag> tags, String? message)? inline,
    TResult? Function(
            int code, String? titleId, String? messageId, String? message)?
        alert,
    TResult? Function(
            int code, Redirect redirect, dynamic data, String? message)?
        redirect,
    TResult? Function(int code, Dialogs dialogs, String? message)? dialog,
  }) {
    return dialog?.call(code, dialogs, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int code, String? messageId, String? message)? snackBar,
    TResult Function(int code, String? messageId, String? message)? toast,
    TResult Function(int code, String? messageId, String? message)? onPage,
    TResult Function(int code, List<Tag> tags, String? message)? inline,
    TResult Function(
            int code, String? titleId, String? messageId, String? message)?
        alert,
    TResult Function(
            int code, Redirect redirect, dynamic data, String? message)?
        redirect,
    TResult Function(int code, Dialogs dialogs, String? message)? dialog,
    required TResult orElse(),
  }) {
    if (dialog != null) {
      return dialog(code, dialogs, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SnackBarException value) snackBar,
    required TResult Function(ToastException value) toast,
    required TResult Function(OnPageException value) onPage,
    required TResult Function(InlineException value) inline,
    required TResult Function(AlertException value) alert,
    required TResult Function(RedirectException value) redirect,
    required TResult Function(DialogException value) dialog,
  }) {
    return dialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SnackBarException value)? snackBar,
    TResult? Function(ToastException value)? toast,
    TResult? Function(OnPageException value)? onPage,
    TResult? Function(InlineException value)? inline,
    TResult? Function(AlertException value)? alert,
    TResult? Function(RedirectException value)? redirect,
    TResult? Function(DialogException value)? dialog,
  }) {
    return dialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SnackBarException value)? snackBar,
    TResult Function(ToastException value)? toast,
    TResult Function(OnPageException value)? onPage,
    TResult Function(InlineException value)? inline,
    TResult Function(AlertException value)? alert,
    TResult Function(RedirectException value)? redirect,
    TResult Function(DialogException value)? dialog,
    required TResult orElse(),
  }) {
    if (dialog != null) {
      return dialog(this);
    }
    return orElse();
  }
}

abstract class DialogException implements ExceptionState {
  const factory DialogException(final int code, final Dialogs dialogs,
      {final String? message}) = _$DialogExceptionImpl;

  @override
  int get code;
  Dialogs get dialogs;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$DialogExceptionImplCopyWith<_$DialogExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
