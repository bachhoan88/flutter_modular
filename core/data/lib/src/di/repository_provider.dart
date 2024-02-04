import 'package:core_data/src/repository/impl/movie_repository_impl.dart';
import 'package:core_data/src/repository/movie_repository.dart';
import 'package:core_network/networks.dart';
import 'package:riverpod/riverpod.dart';

final movieRepositoryProvider = Provider<MovieRepository>(
  (ref) => MovieRepositoryImpl(ref.watch(movieApiProvider)),
);
