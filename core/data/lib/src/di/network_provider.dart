import 'package:core_data/src/remote/api/movie_api.dart';
import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';
import 'package:core_network/networks.dart';

final dioBuilderProvider = Provider<Dio>(
  (ref) => DioBuilder.getInstance(),
);

final movieApiProvider = Provider<MovieApi>(
  (ref) => MovieApi(ref.watch(dioBuilderProvider)),
);