import 'package:dio/dio.dart';
import 'package:core_network/networks.dart';
import 'package:riverpod/riverpod.dart';

final dioBuilderProvider = Provider<Dio>(
  (ref) => DioBuilder.getInstance(),
);

final movieApiProvider = Provider<MovieApi>(
  (ref) => MovieApi(ref.watch(dioBuilderProvider)),
);