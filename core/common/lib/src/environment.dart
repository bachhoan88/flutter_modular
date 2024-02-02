import 'package:enum_to_string/enum_to_string.dart';
enum Flavor { dev, stag, prod }

class Environment {
  const Environment({required this.endpoint, required this.apiKey});

  factory Environment.shared() {
    if (_instance != null) {
      return _instance!;
    }

    final flavor = EnumToString.fromString(Flavor.values, const String.fromEnvironment('FLAVOR'));
    switch(flavor) {
      case Flavor.prod:
        return Environment._prod();

      case Flavor.stag:
        return Environment._stag();

      case Flavor.dev:
      default:
        return Environment._dev();
    }
  }

  factory Environment._dev() {
    return const Environment(
      endpoint: 'https://api.themoviedb.org/3/movie',
      apiKey: 'd61431a2fb64b6e56c6f086952e63ab6',
    );
  }

  factory Environment._prod() {
    return const Environment(
      endpoint: 'https://api.themoviedb.org/3/movie',
      apiKey: 'd61431a2fb64b6e56c6f086952e63ab6',
    );
  }

  factory Environment._stag() {
    return const Environment(
      endpoint: 'https://api.themoviedb.org/3/movie',
      apiKey: 'd61431a2fb64b6e56c6f086952e63ab6',
    );
  }

  final String endpoint;
  final String apiKey;

  static Environment? _instance;
}
