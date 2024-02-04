import 'package:core_common/commons.dart';
import 'package:core_data/src/mapper/exception_mapper.dart';
import 'package:core_data/src/repository/movie_repository.dart';
import 'package:core_model/models.dart';
import 'package:core_network/networks.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieApi _movieApi;
  final String _apiKey;
  final ExceptionMapper _exceptionMapper;

  MovieRepositoryImpl(
    this._movieApi, {
    String? apiKey,
    ExceptionMapper? exceptionMapper,
  })  : _exceptionMapper = exceptionMapper ?? ExceptionMapper(),
        _apiKey = apiKey ?? Environment.shared().apiKey;

  @override
  Future<List<Movie>> fetchMovies(String? type) async {
    final response = await _movieApi
        .fetchMovies(type ?? '', _apiKey)
        .catchError((e) async => throw await _exceptionMapper.mapperTo(NetworkAppError.from(e)));
    return response.movies ?? [];
  }

  @override
  Future<MovieImage> getMovieImages(int movieId) {
    return _movieApi
        .getMovieImages(movieId, _apiKey)
        .catchError((e) async => throw await _exceptionMapper.mapperTo(NetworkAppError.from(e)));
  }

  @override
  Future<MovieInfo> getMovieInfo(int movieId) {
    return _movieApi
        .getMovieInfo(movieId, _apiKey)
        .catchError((e) async => throw await _exceptionMapper.mapperTo(NetworkAppError.from(e)));
  }
}
