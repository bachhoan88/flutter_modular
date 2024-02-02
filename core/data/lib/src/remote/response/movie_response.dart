import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:core_model/models.dart';

part 'movie_response.freezed.dart';
part 'movie_response.g.dart';

@freezed
class MovieResponse with _$MovieResponse {
  const factory MovieResponse({
    int? page,
    @JsonKey(name: 'results') List<Movie>? movies,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'total_results') int? totalResult
  }) =_MovieResponse;

  factory MovieResponse.fromJson(Map<String, dynamic> json) => _$MovieResponseFromJson(json);
}
