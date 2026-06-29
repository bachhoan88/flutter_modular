import 'dart:io';

import 'package:flutter/foundation.dart';

/// Global [HttpOverrides] for the app.
///
/// SECURITY: TLS certificate validation must NEVER be bypassed in release
/// builds. The only reason to accept invalid certificates is to support local
/// development against self-signed certs or a debugging proxy (e.g. Charles).
/// We therefore gate the bypass behind [kDebugMode]; release/profile builds use
/// the platform's default (strict) certificate validation.
///
/// For high-security apps, replace this with real certificate pinning
/// (validate the server's public-key/fingerprint) instead of accepting any
/// certificate even in debug.
class AppHttpOverride extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    final client = super.createHttpClient(context);
    if (kDebugMode) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
    }
    return client;
  }
}
