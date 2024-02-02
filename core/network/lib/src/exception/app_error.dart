import 'dart:io';

import 'package:core_model/models.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

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

class AppError implements Equatable {
  final String message;
  final AppErrorType type;

  final int? headerCode;
  final List<DataError>? errors;

  AppError(this.type, this.message, {int? code, List<DataError>? err})
      : headerCode = code,
        errors = err;

  factory AppError.from(Exception error) {
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

    return AppError(type, message, code: headerCode, err: errors);
  }

  @override
  List<Object?> get props => [type, message, headerCode, errors];

  @override
  bool? get stringify => true;
}
