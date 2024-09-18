import 'dart:io';

import 'package:core_network/networks.dart';
import 'package:dio/dio.dart';

class UnauthorizedInterceptor extends QueuedInterceptor {
  final String auth = 'Authorization';
  final String bearer = 'Bearer';

  UnauthorizedInterceptor();

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

        final response = await DioBuilder.getInstance().fetch(request);
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
