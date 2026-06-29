// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Movie {
  int? get id;
  @JsonKey(name: 'vote_count')
  int? get voteCount;
  bool? get video;
  @JsonKey(name: 'vote_average')
  double? get voteAverage;
  String? get title;
  double? get popularity;
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @JsonKey(name: 'original_language')
  String? get originalLanguage;
  @JsonKey(name: 'original_title')
  String? get originalTitle;
  @JsonKey(name: 'genre_ids')
  List<int>? get genreIds;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  bool? get adult;
  String? get overview;
  @JsonKey(name: 'release_date')
  String? get releaseDate;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MovieCopyWith<Movie> get copyWith =>
      _$MovieCopyWithImpl<Movie>(this as Movie, _$identity);

  /// Serializes this Movie to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Movie &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            const DeepCollectionEquality().equals(other.genreIds, genreIds) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      voteCount,
      video,
      voteAverage,
      title,
      popularity,
      posterPath,
      originalLanguage,
      originalTitle,
      const DeepCollectionEquality().hash(genreIds),
      backdropPath,
      adult,
      overview,
      releaseDate);

  @override
  String toString() {
    return 'Movie(id: $id, voteCount: $voteCount, video: $video, voteAverage: $voteAverage, title: $title, popularity: $popularity, posterPath: $posterPath, originalLanguage: $originalLanguage, originalTitle: $originalTitle, genreIds: $genreIds, backdropPath: $backdropPath, adult: $adult, overview: $overview, releaseDate: $releaseDate)';
  }
}

/// @nodoc
abstract mixin class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) _then) =
      _$MovieCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
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
      @JsonKey(name: 'release_date') String? releaseDate});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res> implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._self, this._then);

  final Movie _self;
  final $Res Function(Movie) _then;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? voteCount = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
    Object? title = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? genreIds = freezed,
    Object? backdropPath = freezed,
    Object? adult = freezed,
    Object? overview = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      voteCount: freezed == voteCount
          ? _self.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      video: freezed == video
          ? _self.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      voteAverage: freezed == voteAverage
          ? _self.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _self.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: freezed == posterPath
          ? _self.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: freezed == originalLanguage
          ? _self.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _self.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: freezed == genreIds
          ? _self.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      backdropPath: freezed == backdropPath
          ? _self.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      adult: freezed == adult
          ? _self.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      overview: freezed == overview
          ? _self.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _self.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Movie extends Movie {
  const _Movie(
      {this.id,
      @JsonKey(name: 'vote_count') this.voteCount,
      this.video,
      @JsonKey(name: 'vote_average') this.voteAverage,
      this.title,
      this.popularity,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'original_language') this.originalLanguage,
      @JsonKey(name: 'original_title') this.originalTitle,
      @JsonKey(name: 'genre_ids') final List<int>? genreIds,
      @JsonKey(name: 'backdrop_path') this.backdropPath,
      this.adult,
      this.overview,
      @JsonKey(name: 'release_date') this.releaseDate})
      : _genreIds = genreIds,
        super._();
  factory _Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'vote_count')
  final int? voteCount;
  @override
  final bool? video;
  @override
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @override
  final String? title;
  @override
  final double? popularity;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'original_language')
  final String? originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  final String? originalTitle;
  final List<int>? _genreIds;
  @override
  @JsonKey(name: 'genre_ids')
  List<int>? get genreIds {
    final value = _genreIds;
    if (value == null) return null;
    if (_genreIds is EqualUnmodifiableListView) return _genreIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  final bool? adult;
  @override
  final String? overview;
  @override
  @JsonKey(name: 'release_date')
  final String? releaseDate;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MovieCopyWith<_Movie> get copyWith =>
      __$MovieCopyWithImpl<_Movie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MovieToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Movie &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            const DeepCollectionEquality().equals(other._genreIds, _genreIds) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      voteCount,
      video,
      voteAverage,
      title,
      popularity,
      posterPath,
      originalLanguage,
      originalTitle,
      const DeepCollectionEquality().hash(_genreIds),
      backdropPath,
      adult,
      overview,
      releaseDate);

  @override
  String toString() {
    return 'Movie(id: $id, voteCount: $voteCount, video: $video, voteAverage: $voteAverage, title: $title, popularity: $popularity, posterPath: $posterPath, originalLanguage: $originalLanguage, originalTitle: $originalTitle, genreIds: $genreIds, backdropPath: $backdropPath, adult: $adult, overview: $overview, releaseDate: $releaseDate)';
  }
}

/// @nodoc
abstract mixin class _$MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$MovieCopyWith(_Movie value, $Res Function(_Movie) _then) =
      __$MovieCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? id,
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
      @JsonKey(name: 'release_date') String? releaseDate});
}

/// @nodoc
class __$MovieCopyWithImpl<$Res> implements _$MovieCopyWith<$Res> {
  __$MovieCopyWithImpl(this._self, this._then);

  final _Movie _self;
  final $Res Function(_Movie) _then;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? voteCount = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
    Object? title = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? genreIds = freezed,
    Object? backdropPath = freezed,
    Object? adult = freezed,
    Object? overview = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_Movie(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      voteCount: freezed == voteCount
          ? _self.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      video: freezed == video
          ? _self.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      voteAverage: freezed == voteAverage
          ? _self.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _self.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: freezed == posterPath
          ? _self.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: freezed == originalLanguage
          ? _self.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _self.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: freezed == genreIds
          ? _self._genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      backdropPath: freezed == backdropPath
          ? _self.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      adult: freezed == adult
          ? _self.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      overview: freezed == overview
          ? _self.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _self.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
