import 'package:core_data/src/mapper/exception_mapper.dart';
import 'package:core_data/src/repository/impl/movie_repository_impl.dart';
import 'package:core_model/models.dart';
import 'package:core_network/networks.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../movie_factory.dart';
import 'movie_repository_impl_test.mocks.dart';

@GenerateMocks([MovieApi])
void main() {
  late MovieRepositoryImpl movieRepositoryImpl;
  late MovieApi movieApi;
  final exceptionMapper = ExceptionMapper();
  const apiKey = 'api_key';

  setUp(() {
    movieApi = MockMovieApi();
    movieRepositoryImpl = MovieRepositoryImpl(movieApi, apiKey: apiKey, exceptionMapper: exceptionMapper);
  });

  test('fetchMovies returns expected [List<Movie>] on success', () async {
    final movies = [createMovie];
    const type = 'popular';
    final movieResponse = MovieResponse(page: 1, movies: movies, totalPages: 1000, totalResult: 20000);

    when(movieApi.fetchMovies(type, apiKey)).thenAnswer((_) async => movieResponse);

    await movieRepositoryImpl.fetchMovies(type).then((value) {
      expect(value, movieResponse.movies);
    });
  });

  test('fetchMovies with type [popular] throws Exception on failure', () async {
    final throwable = Exception('fetch movies failure');
    const type = 'popular';
    when(movieApi.fetchMovies(type, apiKey)).thenThrow(throwable);
    expect(() => movieRepositoryImpl.fetchMovies(type), throwsA(isInstanceOf<Exception>()));
  });

  test('getMovieImages returns expected MovieImage on success', () async {
    const movieId = 1;
    const movieImage = MovieImage(backdrops: [], posters: []);
    when(movieApi.getMovieImages(movieId, apiKey)).thenAnswer((_) async => movieImage);

    final result = await movieRepositoryImpl.getMovieImages(movieId);

    expect(result, movieImage);
  });

  test('getMovieImages throws Exception on failure', () async {
    const movieId = 1;
    final throwable = Exception('getMovieImages failure');
    when(movieApi.getMovieImages(movieId, apiKey)).thenThrow(throwable);

    expect(() => movieRepositoryImpl.getMovieImages(movieId), throwsA(isInstanceOf<Exception>()));
  });

  test('getMovieInfo returns expected MovieInfo on success', () async {
    const movieId = 1;
    final movieInfo = MovieInfo(id: movieId, title: 'Test Movie', overview: 'Test Overview');
    when(movieApi.getMovieInfo(movieId, apiKey)).thenAnswer((_) async => movieInfo);

    final result = await movieRepositoryImpl.getMovieInfo(movieId);

    expect(result, movieInfo);
  });

  test('getMovieInfo throws Exception on failure', () async {
    const movieId = 1;
    final throwable = Exception('getMovieInfo failure');
    when(movieApi.getMovieInfo(movieId, apiKey)).thenThrow(throwable);

    expect(() => movieRepositoryImpl.getMovieInfo(movieId), throwsA(isInstanceOf<Exception>()));
  });
}