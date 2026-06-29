import 'package:core_common/commons.dart';
import 'package:core_ui/src/custom_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

typedef GlobalActionCallback = void Function(GlobalAction? action, dynamic data);

/// Dispatches the one-shot UI side effect for [error] when it is an
/// [ExceptionState] (toast / snackbar / alert / dialog).
///
/// This is the `AsyncValue` replacement for the behaviour previously baked
/// into `ExceptionStatelessWidget`. It must be called from a side-effect
/// channel (`ref.listen`), never from `build`, which removes the need for
/// `SingleObserver` to de-duplicate.
///
/// `OnPage`, `Inline` and `Redirect` are page-level states handled by the
/// screen itself, so they are intentionally ignored here.
void showExceptionBehavior(
  BuildContext context,
  Object? error, {
  bool useRootNavigator = true,
  GlobalActionCallback? positiveAction,
  GlobalActionCallback? negativeAction,
}) {
  if (error is! ExceptionState) return;
  switch (error) {
    case ToastException(:final String? message, :final String? messageId):
      Fluttertoast.showToast(msg: messageId?.tr() ?? message ?? '');
    case SnackBarException(:final String? message, :final String? messageId):
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(messageId?.tr() ?? message ?? '')),
      );
    case AlertException(:final String? titleId, :final String? message, :final String? messageId):
      _showAlert(context, titleId, messageId, message, useRootNavigator);
    case DialogException(:final Dialogs dialogs):
      _showDialog(context, dialogs, useRootNavigator, positiveAction, negativeAction);
    case OnPageException():
    case InlineException():
    case RedirectException():
      break;
  }
}

extension AsyncValueListenX on WidgetRef {
  /// Listens to [provider] and dispatches transient-exception UI behaviour
  /// whenever its value becomes an error. Returns the loading/data handling
  /// to the caller's `build`.
  void listenException<T>(
    BuildContext context,
    ProviderListenable<AsyncValue<T>> provider, {
    bool useRootNavigator = true,
    GlobalActionCallback? positiveAction,
    GlobalActionCallback? negativeAction,
  }) {
    listen(provider, (previous, next) {
      next.whenOrNull(
        error: (error, _) => showExceptionBehavior(
          context,
          error,
          useRootNavigator: useRootNavigator,
          positiveAction: positiveAction,
          negativeAction: negativeAction,
        ),
      );
    });
  }
}

void _showAlert(BuildContext context, String? titleId, String? messageId, String? message, bool useRootNavigator) {
  CustomDialog(
    context: context,
    title: titleId?.tr(),
    message: messageId?.tr() ?? message ?? '',
    positive: 'ok'.tr(),
    positiveCallback: () => Navigator.of(context, rootNavigator: useRootNavigator).pop(),
  ).show(rootNavigator: useRootNavigator);
}

void _showDialog(
  BuildContext context,
  Dialogs dialogs,
  bool useRootNavigator,
  GlobalActionCallback? positiveAction,
  GlobalActionCallback? negativeAction,
) {
  CustomDialog(
    context: context,
    title: dialogs.titleId?.tr(),
    message: dialogs.messageId?.tr() ?? dialogs.message ?? '',
    positive: dialogs.positiveId?.tr() ?? '',
    negative: dialogs.negativeId?.tr() ?? '',
    positiveCallback: () {
      positiveAction?.call(dialogs.positiveAction, dialogs.positiveObject);
      Navigator.of(context, rootNavigator: useRootNavigator).pop();
    },
    negativeCallback: () {
      negativeAction?.call(dialogs.negativeAction, dialogs.negativeObject);
      Navigator.of(context, rootNavigator: useRootNavigator).pop();
    },
  ).show(rootNavigator: useRootNavigator);
}
