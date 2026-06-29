import 'dart:io';

import 'package:core_network/networks.dart';
import 'package:dio/dio.dart';

class UnauthorizedInterceptor extends QueuedInterceptor {
  final String auth = 'Authorization';
  final String bearer = 'Bearer';

  /// Marks a request that has already been replayed once after a token
  /// refresh, so a repeated 401 does not trigger another retry (avoids loops).
  static const String _retriedKey = 'x-unauthorized-retried';

  UnauthorizedInterceptor();

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response != null && err.response?.statusCode == HttpStatus.unauthorized) {
      // If we already retried this request once and still get 401, the token
      // is genuinely invalid: stop here and let the error propagate.
      if (err.requestOptions.extra[_retriedKey] == true) {
        return super.onError(err, handler);
      }

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

        // Replay on a token-less Dio (ignoredToken: true) so THIS interceptor
        // is not attached to the retry — otherwise a repeated 401 would
        // re-enter onError and recurse indefinitely.
        request.extra[_retriedKey] = true;
        final response = await DioBuilder.getInstance(ignoredToken: true).fetch(request);
        handler.resolve(response);
      } on DioException catch (e) {
        handler.next(e);
      }
    } else {
      return super.onError(err, handler);
    }
  }

  Future<String> requestToken() async {
    // Please use new instance of Dio to refresh token
    return 'token';
  }
}
