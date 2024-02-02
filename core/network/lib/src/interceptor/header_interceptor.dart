
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:package_info_plus/package_info_plus.dart';

class HeaderInterceptor extends InterceptorsWrapper {
  final String userAgentKey = 'User-Agent';
  final String authHeaderKey = 'Authorization';
  final String bearer = 'Bearer';

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final userAgentValue = await userAgentClientHintsHeader();

    /// If need to add token on header, please add get and add here
    /// If the first time, token is empty or not valid, please call to request token before add header

    options.headers[userAgentKey] = userAgentValue;

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
