import 'package:core_common/commons.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exception_state.freezed.dart';

@freezed
sealed class ExceptionState with _$ExceptionState implements BaseException {
  const factory ExceptionState.snackBar(int code, {String? messageId, String? message}) = SnackBarException;

  const factory ExceptionState.toast(int code, {String? messageId, String? message}) = ToastException;

  const factory ExceptionState.onPage(int code, {String? messageId, String? message}) = OnPageException;

  const factory ExceptionState.inline(int code, List<Tag> tags, {String? message}) = InlineException;

  const factory ExceptionState.alert(int code, {String? titleId, String? messageId, String? message}) = AlertException;

  const factory ExceptionState.redirect(int code, Redirect redirect, dynamic data, {String? message}) =
      RedirectException;

  const factory ExceptionState.dialog(int code, Dialogs dialogs, {String? message}) = DialogException;
}
