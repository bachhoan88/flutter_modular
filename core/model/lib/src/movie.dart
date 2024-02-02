import 'package:core_model/src/base_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie, BaseModel {
  const factory Movie({
    int? id,
    @JsonKey(name: 'vote_count') int? voteCount,
    bool? video,
    @JsonKey(name: 'vote_average') double? voteAverage,
    String? title,
    double? popularity,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'original_language') String? originalLanguage,
    @JsonKey(name: 'original_title') String? originalTitle,
    @JsonKey(name: 'genre_ids') List<int>? genreIds,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    bool? adult,
    String? overview,
    @JsonKey(name: 'release_date') String? releaseDate,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}
