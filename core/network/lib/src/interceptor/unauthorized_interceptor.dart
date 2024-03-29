import 'dart:io';

import 'package:dio/dio.dart';

class UnauthorizedInterceptor extends QueuedInterceptor {
  final Dio currentDio;
  final String auth = 'Authorization';
  final String bearer = 'Bearer';

  UnauthorizedInterceptor({required this.currentDio});

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response != null && err.response?.statusCode == HttpStatus.unauthorized) {
      /// Error 401 Unauthorized
      ///
      /// Refresh token on here, it depends your business
      /// If when token expired, logged out immediately, do not need handled
      /// Else check below step
      ///
      /// Step 1: Get current token from request
      /// Step 2: Compare with token from storage
      /// Step 3.1: If different, recall request with token from storage
      /// Step 3.2: If same, refresh token

      const tokenFromRequest = '';
      const tokenFromStorage = '';
      String token = tokenFromStorage;

      if (tokenFromRequest != tokenFromStorage) {
        token = await requestToken();
      }

      // Re-call request
      final request = err.requestOptions;
      try {
        // Check header has Authentication
        if (request.headers.containsKey(auth)) {
          // Update the last value
          request.headers
              .update(auth, (value) => (value.toString().contains(bearer) == true) ? '$bearer $token' : token);
        }

        final response = await currentDio.request(
          request.path,
          data: request.data,
          queryParameters: request.queryParameters,
          cancelToken: request.cancelToken,
          options: Options(
              method: request.method,
              sendTimeout: request.sendTimeout,
              extra: request.extra,
              headers: request.headers,
              responseType: request.responseType,
              contentType: request.contentType,
              receiveDataWhenStatusError: request.receiveDataWhenStatusError,
              followRedirects: request.followRedirects,
              maxRedirects: request.maxRedirects,
              requestEncoder: request.requestEncoder,
              responseDecoder: request.responseDecoder,
              listFormat: request.listFormat),
          onReceiveProgress: request.onReceiveProgress,
        );

        handler.resolve(response);
      } on DioException catch (e) {
        handler.next(e);
      }
    } else {
      return super.onError(err, handler);
    }
  }

  Future<String> requestToken() async {
    return 'token';
  }
}
