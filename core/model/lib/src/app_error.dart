abstract class AppError implements Exception {
  final int? code;
  final String? message;

  AppError({this.code, this.message});
}
