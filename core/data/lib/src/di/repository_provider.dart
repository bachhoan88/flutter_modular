import 'package:core_data/src/di/network_provider.dart';
import 'package:core_data/src/repository/impl/movie_repository_impl.dart';
import 'package:core_data/src/repository/movie_repository.dart';
import 'package:riverpod/riverpod.dart';

final movieRepositoryProvider = Provider<MovieRepository>(
  (ref) => MovieRepositoryImpl(ref.watch(movieApiProvider)),
);
