import 'package:core_model/models.dart';

/// Data layer interface for Movie
abstract class MovieRepository {
  /// Get all movies with a type as a stream
  Future<List<Movie>> fetchMovies(String? type);

  /// Get movie information from movie id
  Future<MovieInfo> getMovieInfo(int movieId);

  /// get movie images detail from movie id
  Future<MovieImage> getMovieImages(int movieId);
}
