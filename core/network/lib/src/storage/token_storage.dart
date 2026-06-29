import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Secure, OS-backed store for auth tokens (Keychain on iOS, EncryptedShared
/// Preferences/Keystore on Android).
///
/// This is the single place the app reads/writes tokens. The network
/// interceptors depend on it instead of holding tokens in memory or in plain
/// storage. Wire your real auth flow by calling [saveAccessToken] /
/// [saveRefreshToken] after login and after a successful refresh.
class TokenStorage {
  static const String _accessTokenKey = 'access_token';
  static const String _refreshTokenKey = 'refresh_token';

  final FlutterSecureStorage _storage;

  const TokenStorage({FlutterSecureStorage storage = const FlutterSecureStorage()})
      : _storage = storage;

  Future<String?> getAccessToken() => _storage.read(key: _accessTokenKey);

  Future<void> saveAccessToken(String token) =>
      _storage.write(key: _accessTokenKey, value: token);

  Future<String?> getRefreshToken() => _storage.read(key: _refreshTokenKey);

  Future<void> saveRefreshToken(String token) =>
      _storage.write(key: _refreshTokenKey, value: token);

  /// Clears all tokens, e.g. on logout or when a refresh ultimately fails.
  Future<void> clear() => _storage.deleteAll();
}
