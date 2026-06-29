import 'package:enum_to_string/enum_to_string.dart';

enum Flavor { dev, stag, prod }

/// App configuration resolved once from compile-time `--dart-define`s and
/// cached.
///
/// Secrets and per-environment values are NOT hardcoded: pass them at build
/// time, e.g.
///   flutter run --dart-define=FLAVOR=prod \
///               --dart-define=API_ENDPOINT=https://... \
///               --dart-define=API_KEY=xxxxxxxx
///
/// The defaults below keep the public TMDB demo working out of the box.
class Environment {
  const Environment({
    required this.flavor,
    required this.endpoint,
    required this.apiKey,
  });

  final Flavor flavor;
  final String endpoint;
  final String apiKey;

  static Environment? _instance;

  factory Environment.shared() => _instance ??= _resolve();

  static Environment _resolve() {
    final flavor = EnumToString.fromString(
          Flavor.values,
          const String.fromEnvironment('FLAVOR'),
        ) ??
        Flavor.dev;
    const endpoint = String.fromEnvironment(
      'API_ENDPOINT',
      defaultValue: 'https://api.themoviedb.org/3/movie',
    );
    const apiKey = String.fromEnvironment(
      'API_KEY',
      defaultValue: 'd61431a2fb64b6e56c6f086952e63ab6',
    );
    return Environment(flavor: flavor, endpoint: endpoint, apiKey: apiKey);
  }
}
