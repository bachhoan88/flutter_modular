import 'package:core_common/commons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class BaseViewModel<T> extends StateNotifier<T> {
  BaseViewModel(super.state);

  void handleExceptionState(Exception exception) {
    if (exception is InlineException) {
      showErrorInline(exception.code, exception.message, exception.tags);
    } else if (exception is RedirectException) {
      redirectPage(exception.code, exception.message, exception.redirect, exception.data);
    }
  }

  void showErrorInline(int code, String? message, List<Tag> tags) {}

  void redirectPage(int code, String? message, Redirect redirect, dynamic data) {}
}