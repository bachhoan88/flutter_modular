import 'package:core_common/commons.dart';
import 'package:core_ui/src/base_ui_state.dart';
import 'package:core_ui/src/custom_dialog.dart';
import 'package:core_ui/src/error_page.dart';
import 'package:core_ui/src/loading_indicator.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ExceptionStatelessWidget<V extends BaseUiState> extends StatelessWidget {
  final ProviderBase<V> viewModelProvider;
  final Widget child;
  final bool _useRootNavigator;
  final Function(GlobalAction? action, dynamic data)? _positiveAction;
  final Function(GlobalAction? action, dynamic data)? _negativeAction;
  final Function(BuildContext context, WidgetRef ref)? _pageErrorRetry;

  const ExceptionStatelessWidget({
    super.key,
    required this.viewModelProvider,
    required this.child,
    bool useRootNavigator = true,
    Function(GlobalAction? action, dynamic data)? positiveAction,
    Function(GlobalAction? action, dynamic data)? negativeAction,
    Function(BuildContext context, WidgetRef ref)? pageErrorRetry,
  })  : _useRootNavigator = useRootNavigator,
        _positiveAction = positiveAction,
        _negativeAction = negativeAction,
        _pageErrorRetry = pageErrorRetry,
        super();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        _loadingView(context),
        _exceptionView(context),
      ],
    );
  }

  Widget _loadingView(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final isLoading = ref.watch(viewModelProvider.select((value) => value.isLoading));
      if (isLoading) {
        return const LoadingIndicator();
      } else {
        return const SizedBox();
      }
    });
  }

  Widget _exceptionView(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final exception = ref.watch(viewModelProvider.select((value) => value.exception));
      if (exception != null && exception is ExceptionState) {
        final ExceptionState exceptionState = exception;
        return switch (exceptionState) {
          ToastException(:final String? message, :final String? messageId) => () {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                Fluttertoast.showToast(msg: messageId?.tr() ?? message ?? '');
              });
              return const SizedBox();
            }(),
          SnackBarException(:final String? message, :final String? messageId) => () {
              final snackBar = SnackBar(content: Text(messageId?.tr() ?? message ?? ''));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              return const SizedBox();
            }(),
          OnPageException(:final String? message, :final String? messageId) => ErrorPage(
              message: messageId?.tr() ?? message ?? '',
              retry: () {
                _pageErrorRetry?.call(context, ref);
              },
            ),
          AlertException(:final String? titleId, :final String? message, :final String? messageId) => () {
              _showAlert(context, titleId, messageId, message);
              return const SizedBox();
            }(),
          DialogException(:final Dialogs dialogs) => () {
              _showDialog(context, dialogs);
              return const SizedBox();
            }(),
          InlineException() => const SizedBox(),
          RedirectException() => const SizedBox(),
        };
      } else {
        return const SizedBox();
      }
    });
  }

  void _showAlert(BuildContext context, String? titleId, String? messageId, String? message) async {
    await CustomDialog(
      context: context,
      title: titleId?.tr(),
      message: messageId?.tr() ?? message ?? '',
      positive: 'ok'.tr(),
      positiveCallback: () {
        Navigator.of(context, rootNavigator: _useRootNavigator).pop();
      },
    ).show(rootNavigator: _useRootNavigator);
  }

  void _showDialog(BuildContext context, Dialogs dialogs) async {
    await CustomDialog(
      context: context,
      title: dialogs.titleId?.tr(),
      message: dialogs.messageId?.tr() ?? dialogs.message ?? '',
      positive: dialogs.positiveId?.tr() ?? '',
      negative: dialogs.negativeId?.tr() ?? '',
      positiveCallback: () {
        _positiveAction?.call(dialogs.positiveAction, dialogs.positiveObject);
        Navigator.of(context, rootNavigator: _useRootNavigator).pop();
      },
      negativeCallback: () {
        _negativeAction?.call(dialogs.negativeAction, dialogs.negativeObject);
        Navigator.of(context, rootNavigator: _useRootNavigator).pop();
      },
    ).show(rootNavigator: _useRootNavigator);
  }
}
