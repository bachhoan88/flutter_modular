
enum ExceptionType { snack, toast, inline, alert, dialog, redirect, onPage }

abstract class BaseException implements Exception {
  final int code;
  final String? message;

  const BaseException({required this.code, this.message});
}
