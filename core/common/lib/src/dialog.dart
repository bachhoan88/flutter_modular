import 'package:core_common/src/action.dart';

class Dialogs {
  final String? titleId;
  final String? message;
  final String? messageId;
  final String? positiveId;
  final GlobalAction positiveAction;
  final dynamic positiveObject;
  final String? negativeId;
  final GlobalAction negativeAction;
  final dynamic negativeObject;

  Dialogs({
    this.titleId,
    this.message,
    this.messageId,
    required this.positiveId,
    required this.positiveAction,
    this.positiveObject,
    required this.negativeId,
    required this.negativeAction,
    this.negativeObject,
  });
}
