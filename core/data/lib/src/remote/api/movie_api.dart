import 'package:core_data/src/remote/response/movie_response.dart';
import 'package:core_model/models.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'movie_api.g.dart';

@RestApi()
abstract class MovieApi {
  factory MovieApi(Dio dioBuilder) = _MovieApi;

  @GET('/{type}')
  Future<MovieResponse> fetchMovies(@Path('type') String type, @Query('api_key') String key);

  @GET('/{id}/images')
  Future<MovieImage> getMovieImages(@Path('id') int movieId, @Query('api_key') String key);

  @GET('/{id}')
  Future<MovieInfo> getMovieInfo(@Path('id') int movieId, @Query('api_key') String key);
}