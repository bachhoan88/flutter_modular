import 'package:core_common/commons.dart';
import 'package:core_ui/uis.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

/// Dispatches the one-shot UI side effect for a [BaseException] surfaced as an
/// `AsyncError`. Intended to be called from `ref.listen` (a side-effect
/// channel) rather than from `build`, which is the key difference from the
/// legacy `SingleObserver` + `ExceptionStatelessWidget` approach.
///
/// `OnPage`, `Inline` and `Redirect` are page-level states and are handled by
/// the screen itself, so they are intentionally ignored here.
///
/// NOTE (rollout): promote this to `core_ui` (e.g. an `AsyncValue` listen
/// extension) once the pattern is adopted beyond this POC.
void showExceptionBehavior(BuildContext context, Object? error) {
  if (error is! ExceptionState) return;
  switch (error) {
    case ToastException(:final String? message, :final String? messageId) ||
          SnackBarException(:final String? message, :final String? messageId):
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(messageId?.tr() ?? message ?? '')),
      );
    case AlertException(:final String? titleId, :final String? message, :final String? messageId):
      _showAlert(context, titleId, messageId, message);
    case DialogException(:final Dialogs dialogs):
      _showDialog(context, dialogs);
    case OnPageException():
    case InlineException():
    case RedirectException():
      break;
  }
}

void _showAlert(BuildContext context, String? titleId, String? messageId, String? message) {
  CustomDialog(
    context: context,
    title: titleId?.tr(),
    message: messageId?.tr() ?? message ?? '',
    positive: 'ok'.tr(),
    positiveCallback: () => Navigator.of(context, rootNavigator: true).pop(),
  ).show(rootNavigator: true);
}

void _showDialog(BuildContext context, Dialogs dialogs) {
  CustomDialog(
    context: context,
    title: dialogs.titleId?.tr(),
    message: dialogs.messageId?.tr() ?? dialogs.message ?? '',
    positive: dialogs.positiveId?.tr() ?? '',
    negative: dialogs.negativeId?.tr() ?? '',
    positiveCallback: () => Navigator.of(context, rootNavigator: true).pop(),
    negativeCallback: () => Navigator.of(context, rootNavigator: true).pop(),
  ).show(rootNavigator: true);
}
