import 'dart:io';

import 'package:core_network/src/storage/token_storage.dart';
import 'package:dio/dio.dart';
import 'package:package_info_plus/package_info_plus.dart';

class HeaderInterceptor extends InterceptorsWrapper {
  final String userAgentKey = 'User-Agent';
  final String authHeaderKey = 'Authorization';
  final String bearer = 'Bearer';

  final TokenStorage _tokenStorage;

  HeaderInterceptor({TokenStorage tokenStorage = const TokenStorage()})
      : _tokenStorage = tokenStorage;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final userAgentValue = await userAgentClientHintsHeader();

    options.headers[userAgentKey] = userAgentValue;

    // Attach the stored access token when present. Unauthenticated/demo
    // requests (no stored token) are sent without an Authorization header.
    final accessToken = await _tokenStorage.getAccessToken();
    if (accessToken != null && accessToken.isNotEmpty) {
      options.headers[authHeaderKey] = '$bearer $accessToken';
    }

    handler.next(options);
  }

  Future<String> userAgentClientHintsHeader() async {
    try {
      final packageInfo = await PackageInfo.fromPlatform();
      return '${Platform.operatingSystem} - ${packageInfo.buildNumber}';
    } on Exception catch (_) {
      return 'The Platform not support get info';
    }
  }
}
