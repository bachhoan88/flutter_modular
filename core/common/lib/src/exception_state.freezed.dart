// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exception_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExceptionState {
  int get code;
  String? get message;

  /// Create a copy of ExceptionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExceptionStateCopyWith<ExceptionState> get copyWith =>
      _$ExceptionStateCopyWithImpl<ExceptionState>(
          this as ExceptionState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExceptionState &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @override
  String toString() {
    return 'ExceptionState(code: $code, message: $message)';
  }
}

/// @nodoc
abstract mixin class $ExceptionStateCopyWith<$Res> {
  factory $ExceptionStateCopyWith(
          ExceptionState value, $Res Function(ExceptionState) _then) =
      _$ExceptionStateCopyWithImpl;
  @useResult
  $Res call({int code, String? message});
}

/// @nodoc
class _$ExceptionStateCopyWithImpl<$Res>
    implements $ExceptionStateCopyWith<$Res> {
  _$ExceptionStateCopyWithImpl(this._self, this._then);

  final ExceptionState _self;
  final $Res Function(ExceptionState) _then;

  /// Create a copy of ExceptionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = freezed,
  }) {
    return _then(_self.copyWith(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class SnackBarException implements ExceptionState {
  const SnackBarException(this.code, {this.messageId, this.message});

  @override
  final int code;
  final String? messageId;
  @override
  final String? message;

  /// Create a copy of ExceptionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnackBarExceptionCopyWith<SnackBarException> get copyWith =>
      _$SnackBarExceptionCopyWithImpl<SnackBarException>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnackBarException &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, messageId, message);

  @override
  String toString() {
    return 'ExceptionState.snackBar(code: $code, messageId: $messageId, message: $message)';
  }
}

/// @nodoc
abstract mixin class $SnackBarExceptionCopyWith<$Res>
    implements $ExceptionStateCopyWith<$Res> {
  factory $SnackBarExceptionCopyWith(
          SnackBarException value, $Res Function(SnackBarException) _then) =
      _$SnackBarExceptionCopyWithImpl;
  @override
  @useResult
  $Res call({int code, String? messageId, String? message});
}

/// @nodoc
class _$SnackBarExceptionCopyWithImpl<$Res>
    implements $SnackBarExceptionCopyWith<$Res> {
  _$SnackBarExceptionCopyWithImpl(this._self, this._then);

  final SnackBarException _self;
  final $Res Function(SnackBarException) _then;

  /// Create a copy of ExceptionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
    Object? messageId = freezed,
    Object? message = freezed,
  }) {
    return _then(SnackBarException(
      null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      messageId: freezed == messageId
          ? _self.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class ToastException implements ExceptionState {
  const ToastException(this.code, {this.messageId, this.message});

  @override
  final int code;
  final String? messageId;
  @override
  final String? message;

  /// Create a copy of ExceptionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ToastExceptionCopyWith<ToastException> get copyWith =>
      _$ToastExceptionCopyWithImpl<ToastException>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ToastException &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, messageId, message);

  @override
  String toString() {
    return 'ExceptionState.toast(code: $code, messageId: $messageId, message: $message)';
  }
}

/// @nodoc
abstract mixin class $ToastExceptionCopyWith<$Res>
    implements $ExceptionStateCopyWith<$Res> {
  factory $ToastExceptionCopyWith(
          ToastException value, $Res Function(ToastException) _then) =
      _$ToastExceptionCopyWithImpl;
  @override
  @useResult
  $Res call({int code, String? messageId, String? message});
}

/// @nodoc
class _$ToastExceptionCopyWithImpl<$Res>
    implements $ToastExceptionCopyWith<$Res> {
  _$ToastExceptionCopyWithImpl(this._self, this._then);

  final ToastException _self;
  final $Res Function(ToastException) _then;

  /// Create a copy of ExceptionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
    Object? messageId = freezed,
    Object? message = freezed,
  }) {
    return _then(ToastException(
      null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      messageId: freezed == messageId
          ? _self.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class OnPageException implements ExceptionState {
  const OnPageException(this.code, {this.messageId, this.message});

  @override
  final int code;
  final String? messageId;
  @override
  final String? message;

  /// Create a copy of ExceptionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OnPageExceptionCopyWith<OnPageException> get copyWith =>
      _$OnPageExceptionCopyWithImpl<OnPageException>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnPageException &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, messageId, message);

  @override
  String toString() {
    return 'ExceptionState.onPage(code: $code, messageId: $messageId, message: $message)';
  }
}

/// @nodoc
abstract mixin class $OnPageExceptionCopyWith<$Res>
    implements $ExceptionStateCopyWith<$Res> {
  factory $OnPageExceptionCopyWith(
          OnPageException value, $Res Function(OnPageException) _then) =
      _$OnPageExceptionCopyWithImpl;
  @override
  @useResult
  $Res call({int code, String? messageId, String? message});
}

/// @nodoc
class _$OnPageExceptionCopyWithImpl<$Res>
    implements $OnPageExceptionCopyWith<$Res> {
  _$OnPageExceptionCopyWithImpl(this._self, this._then);

  final OnPageException _self;
  final $Res Function(OnPageException) _then;

  /// Create a copy of ExceptionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
    Object? messageId = freezed,
    Object? message = freezed,
  }) {
    return _then(OnPageException(
      null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      messageId: freezed == messageId
          ? _self.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class InlineException implements ExceptionState {
  const InlineException(this.code, final List<Tag> tags, {this.message})
      : _tags = tags;

  @override
  final int code;
  final List<Tag> _tags;
  List<Tag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final String? message;

  /// Create a copy of ExceptionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InlineExceptionCopyWith<InlineException> get copyWith =>
      _$InlineExceptionCopyWithImpl<InlineException>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InlineException &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, code, const DeepCollectionEquality().hash(_tags), message);

  @override
  String toString() {
    return 'ExceptionState.inline(code: $code, tags: $tags, message: $message)';
  }
}

/// @nodoc
abstract mixin class $InlineExceptionCopyWith<$Res>
    implements $ExceptionStateCopyWith<$Res> {
  factory $InlineExceptionCopyWith(
          InlineException value, $Res Function(InlineException) _then) =
      _$InlineExceptionCopyWithImpl;
  @override
  @useResult
  $Res call({int code, List<Tag> tags, String? message});
}

/// @nodoc
class _$InlineExceptionCopyWithImpl<$Res>
    implements $InlineExceptionCopyWith<$Res> {
  _$InlineExceptionCopyWithImpl(this._self, this._then);

  final InlineException _self;
  final $Res Function(InlineException) _then;

  /// Create a copy of ExceptionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
    Object? tags = null,
    Object? message = freezed,
  }) {
    return _then(InlineException(
      null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      null == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class AlertException implements ExceptionState {
  const AlertException(this.code, {this.titleId, this.messageId, this.message});

  @override
  final int code;
  final String? titleId;
  final String? messageId;
  @override
  final String? message;

  /// Create a copy of ExceptionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AlertExceptionCopyWith<AlertException> get copyWith =>
      _$AlertExceptionCopyWithImpl<AlertException>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AlertException &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.titleId, titleId) || other.titleId == titleId) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, code, titleId, messageId, message);

  @override
  String toString() {
    return 'ExceptionState.alert(code: $code, titleId: $titleId, messageId: $messageId, message: $message)';
  }
}

/// @nodoc
abstract mixin class $AlertExceptionCopyWith<$Res>
    implements $ExceptionStateCopyWith<$Res> {
  factory $AlertExceptionCopyWith(
          AlertException value, $Res Function(AlertException) _then) =
      _$AlertExceptionCopyWithImpl;
  @override
  @useResult
  $Res call({int code, String? titleId, String? messageId, String? message});
}

/// @nodoc
class _$AlertExceptionCopyWithImpl<$Res>
    implements $AlertExceptionCopyWith<$Res> {
  _$AlertExceptionCopyWithImpl(this._self, this._then);

  final AlertException _self;
  final $Res Function(AlertException) _then;

  /// Create a copy of ExceptionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
    Object? titleId = freezed,
    Object? messageId = freezed,
    Object? message = freezed,
  }) {
    return _then(AlertException(
      null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      titleId: freezed == titleId
          ? _self.titleId
          : titleId // ignore: cast_nullable_to_non_nullable
              as String?,
      messageId: freezed == messageId
          ? _self.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class RedirectException implements ExceptionState {
  const RedirectException(this.code, this.redirect, this.data, {this.message});

  @override
  final int code;
  final Redirect redirect;
  final dynamic data;
  @override
  final String? message;

  /// Create a copy of ExceptionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RedirectExceptionCopyWith<RedirectException> get copyWith =>
      _$RedirectExceptionCopyWithImpl<RedirectException>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RedirectException &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.redirect, redirect) ||
                other.redirect == redirect) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, redirect,
      const DeepCollectionEquality().hash(data), message);

  @override
  String toString() {
    return 'ExceptionState.redirect(code: $code, redirect: $redirect, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class $RedirectExceptionCopyWith<$Res>
    implements $ExceptionStateCopyWith<$Res> {
  factory $RedirectExceptionCopyWith(
          RedirectException value, $Res Function(RedirectException) _then) =
      _$RedirectExceptionCopyWithImpl;
  @override
  @useResult
  $Res call({int code, Redirect redirect, dynamic data, String? message});
}

/// @nodoc
class _$RedirectExceptionCopyWithImpl<$Res>
    implements $RedirectExceptionCopyWith<$Res> {
  _$RedirectExceptionCopyWithImpl(this._self, this._then);

  final RedirectException _self;
  final $Res Function(RedirectException) _then;

  /// Create a copy of ExceptionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
    Object? redirect = null,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(RedirectException(
      null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      null == redirect
          ? _self.redirect
          : redirect // ignore: cast_nullable_to_non_nullable
              as Redirect,
      freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class DialogException implements ExceptionState {
  const DialogException(this.code, this.dialogs, {this.message});

  @override
  final int code;
  final Dialogs dialogs;
  @override
  final String? message;

  /// Create a copy of ExceptionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DialogExceptionCopyWith<DialogException> get copyWith =>
      _$DialogExceptionCopyWithImpl<DialogException>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DialogException &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.dialogs, dialogs) || other.dialogs == dialogs) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, dialogs, message);

  @override
  String toString() {
    return 'ExceptionState.dialog(code: $code, dialogs: $dialogs, message: $message)';
  }
}

/// @nodoc
abstract mixin class $DialogExceptionCopyWith<$Res>
    implements $ExceptionStateCopyWith<$Res> {
  factory $DialogExceptionCopyWith(
          DialogException value, $Res Function(DialogException) _then) =
      _$DialogExceptionCopyWithImpl;
  @override
  @useResult
  $Res call({int code, Dialogs dialogs, String? message});
}

/// @nodoc
class _$DialogExceptionCopyWithImpl<$Res>
    implements $DialogExceptionCopyWith<$Res> {
  _$DialogExceptionCopyWithImpl(this._self, this._then);

  final DialogException _self;
  final $Res Function(DialogException) _then;

  /// Create a copy of ExceptionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
    Object? dialogs = null,
    Object? message = freezed,
  }) {
    return _then(DialogException(
      null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      null == dialogs
          ? _self.dialogs
          : dialogs // ignore: cast_nullable_to_non_nullable
              as Dialogs,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
