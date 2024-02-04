import 'dart:io';

import 'package:core_model/models.dart';
import 'package:dio/dio.dart';

enum AppErrorType {
  network,
  badRequest,
  unauthorized,
  notFound,
  cancel,
  timeout,
  server,
  unknown,
}

class NetworkAppError extends AppError {
  final AppErrorType errorType;
  final List<DataError>? errors;

  NetworkAppError({super.code, super.message, required this.errorType, this.errors});

  factory NetworkAppError.from(Exception error) {
    var type = AppErrorType.unknown;
    var message = '';
    int? headerCode;
    List<DataError>? errors;

    if (error is DioException) {
      message = error.message ?? '';
      headerCode = error.response?.statusCode ?? -1;

      switch (error.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
          type = AppErrorType.timeout;
          break;
        case DioExceptionType.sendTimeout:
          type = AppErrorType.network;
          break;
        case DioExceptionType.badResponse:
          switch (error.response?.statusCode) {
            case HttpStatus.unauthorized: // 401
              type = AppErrorType.unauthorized;
              break;
            case HttpStatus.badRequest: // 400
            case HttpStatus.notFound: // 404
            case HttpStatus.methodNotAllowed: // 405
            case HttpStatus.unprocessableEntity: // 422
            case HttpStatus.internalServerError: // 500
            case HttpStatus.badGateway: // 502
            case HttpStatus.serviceUnavailable: // 503
            case HttpStatus.gatewayTimeout: // 504
              type = AppErrorType.server;
              try {
                final movieDbError = MovieDbDataError.fromJson(error.response?.data);
                errors = [movieDbError.toErrorDataModel()];
              } on Exception catch (e) {
                errors = [DataError(errorCode: -1, message: e.toString())];
              }
              break;
            case HttpStatus.forbidden:
              type = AppErrorType.server;
              message = error.response?.statusMessage ?? '';
              break;
            default:
              type = AppErrorType.unknown;
              break;
          }
          break;
        case DioExceptionType.cancel:
          type = AppErrorType.cancel;
          break;

        case DioExceptionType.unknown:
        default:
          if (error.error is SocketException) {
            // SocketException: Failed host lookup: '***'
            // (OS Error: No address associated with hostname, errno = 7)
            type = AppErrorType.network;
          } else {
            type = AppErrorType.unknown;
          }
          break;
      }
    } else {
      type = AppErrorType.unknown;
      message = 'AppError: $error';
    }

    return NetworkAppError(errorType: type, message: message, code: headerCode, errors: errors);
  }
}
