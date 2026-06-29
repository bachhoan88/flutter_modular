import 'dart:io';

import 'package:core_network/networks.dart';
import 'package:dio/dio.dart';

class UnauthorizedInterceptor extends QueuedInterceptor {
  final String auth = 'Authorization';
  final String bearer = 'Bearer';

  /// Marks a request that has already been replayed once after a token
  /// refresh, so a repeated 401 does not trigger another retry (avoids loops).
  static const String _retriedKey = 'x-unauthorized-retried';

  final TokenStorage _tokenStorage;

  UnauthorizedInterceptor({TokenStorage tokenStorage = const TokenStorage()})
      : _tokenStorage = tokenStorage;

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

      final tokenFromRequest = _extractToken(err.requestOptions);
      final tokenFromStorage = await _tokenStorage.getAccessToken() ?? '';
      String token = tokenFromStorage;

      // If the stored token already differs from the one that failed, another
      // request has refreshed it meanwhile — just retry with the stored token.
      // Otherwise the stored token is the stale one, so refresh it.
      if (tokenFromRequest == tokenFromStorage) {
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

  /// Reads the bearer token currently attached to [options], without the
  /// `Bearer ` prefix. Returns '' when there is no Authorization header.
  String _extractToken(RequestOptions options) {
    final raw = options.headers[auth]?.toString() ?? '';
    return raw.replaceFirst('$bearer ', '').trim();
  }

  /// Refreshes the access token and persists it via [TokenStorage].
  ///
  /// TEMPLATE: call your refresh endpoint here using a token-less Dio
  /// (`DioBuilder.getInstance(ignoredToken: true)`) with the refresh token
  /// from `_tokenStorage.getRefreshToken()`, then
  /// `await _tokenStorage.saveAccessToken(newToken)` and return it.
  /// The demo backend (TMDB) uses an api_key, so this returns the existing
  /// token unchanged.
  Future<String> requestToken() async {
    return await _tokenStorage.getAccessToken() ?? '';
  }
}
