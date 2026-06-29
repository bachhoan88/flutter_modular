abstract class BaseException implements Exception {
  final int code;
  final String? message;

  const BaseException({required this.code, this.message});
}
