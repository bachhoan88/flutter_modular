import 'package:core_network/networks.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dio/dio.dart';
import 'dart:io';

void main() {
  final options = RequestOptions(path: '/');
  final responseError = <String, dynamic>{
    "status_code": 34,
    "status_message": "The resource you requested could not be found.",
    "success": false
  };

  test('[NetworkAppError] test', () async {
    expect(
        NetworkAppError.from(
          DioException(type: DioExceptionType.connectionTimeout, requestOptions: options),
        ).errorType,
        equals(AppErrorType.timeout));

    expect(
      NetworkAppError.from(
        DioException(type: DioExceptionType.receiveTimeout, requestOptions: options),
      ).errorType,
      equals(AppErrorType.timeout),
    );

    expect(
      NetworkAppError.from(
        DioException(type: DioExceptionType.sendTimeout, requestOptions: options),
      ).errorType,
      equals(AppErrorType.network),
    );

    expect(
      NetworkAppError.from(
        DioException(
            type: DioExceptionType.badResponse,
            response: Response(data: responseError, statusCode: 400, requestOptions: options),
            requestOptions: RequestOptions(path: '/')),
      ).errorType,
      equals(AppErrorType.server),
    );

    expect(
      NetworkAppError.from(
        DioException(
            type: DioExceptionType.badResponse,
            response: Response(data: responseError, statusCode: 401, requestOptions: options),
            requestOptions: RequestOptions(path: '/')),
      ).errorType,
      equals(AppErrorType.unauthorized),
    );

    expect(
      NetworkAppError.from(
        DioException(
            type: DioExceptionType.badResponse,
            response: Response(data: responseError, statusCode: 500, requestOptions: options),
            requestOptions: RequestOptions(path: '/')),
      ).errorType,
      equals(AppErrorType.server),
    );

    expect(
      NetworkAppError.from(
        DioException(
            type: DioExceptionType.cancel,
            response: Response(statusCode: 500, requestOptions: options),
            requestOptions: RequestOptions(path: '/')),
      ).errorType,
      equals(AppErrorType.cancel),
    );

    expect(
      NetworkAppError.from(
        DioException(
            type: DioExceptionType.unknown,
            response: Response(statusCode: 500, requestOptions: options),
            error: const SocketException('Failed host lookup: wasabeef.jp'),
            requestOptions: RequestOptions(path: '/')),
      ).errorType,
      equals(AppErrorType.network),
    );

    expect(
      NetworkAppError.from(
        DioException(type: DioExceptionType.unknown, requestOptions: RequestOptions(path: '/')),
      ).errorType,
      equals(AppErrorType.unknown),
    );

    expect(
      NetworkAppError.from(const FileSystemException()).errorType,
      equals(AppErrorType.unknown),
    );
  });
}
