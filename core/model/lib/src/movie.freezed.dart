// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return _Movie.fromJson(json);
}

/// @nodoc
mixin _$Movie {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  int? get voteCount => throw _privateConstructorUsedError;
  bool? get video => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double? get voteAverage => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  double? get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String? get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String? get originalTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_ids')
  List<int>? get genreIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  bool? get adult => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res, Movie>;
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
class _$MovieCopyWithImpl<$Res, $Val extends Movie>
    implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: freezed == genreIds
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieImplCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$$MovieImplCopyWith(
          _$MovieImpl value, $Res Function(_$MovieImpl) then) =
      __$$MovieImplCopyWithImpl<$Res>;
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
class __$$MovieImplCopyWithImpl<$Res>
    extends _$MovieCopyWithImpl<$Res, _$MovieImpl>
    implements _$$MovieImplCopyWith<$Res> {
  __$$MovieImplCopyWithImpl(
      _$MovieImpl _value, $Res Function(_$MovieImpl) _then)
      : super(_value, _then);

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
    return _then(_$MovieImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: freezed == genreIds
          ? _value._genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieImpl implements _Movie {
  const _$MovieImpl(
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
      : _genreIds = genreIds;

  factory _$MovieImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieImplFromJson(json);

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

  @override
  String toString() {
    return 'Movie(id: $id, voteCount: $voteCount, video: $video, voteAverage: $voteAverage, title: $title, popularity: $popularity, posterPath: $posterPath, originalLanguage: $originalLanguage, originalTitle: $originalTitle, genreIds: $genreIds, backdropPath: $backdropPath, adult: $adult, overview: $overview, releaseDate: $releaseDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieImplCopyWith<_$MovieImpl> get copyWith =>
      __$$MovieImplCopyWithImpl<_$MovieImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieImplToJson(
      this,
    );
  }
}

abstract class _Movie implements Movie {
  const factory _Movie(
      {final int? id,
      @JsonKey(name: 'vote_count') final int? voteCount,
      final bool? video,
      @JsonKey(name: 'vote_average') final double? voteAverage,
      final String? title,
      final double? popularity,
      @JsonKey(name: 'poster_path') final String? posterPath,
      @JsonKey(name: 'original_language') final String? originalLanguage,
      @JsonKey(name: 'original_title') final String? originalTitle,
      @JsonKey(name: 'genre_ids') final List<int>? genreIds,
      @JsonKey(name: 'backdrop_path') final String? backdropPath,
      final bool? adult,
      final String? overview,
      @JsonKey(name: 'release_date') final String? releaseDate}) = _$MovieImpl;

  factory _Movie.fromJson(Map<String, dynamic> json) = _$MovieImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'vote_count')
  int? get voteCount;
  @override
  bool? get video;
  @override
  @JsonKey(name: 'vote_average')
  double? get voteAverage;
  @override
  String? get title;
  @override
  double? get popularity;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(name: 'original_language')
  String? get originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  String? get originalTitle;
  @override
  @JsonKey(name: 'genre_ids')
  List<int>? get genreIds;
  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  bool? get adult;
  @override
  String? get overview;
  @override
  @JsonKey(name: 'release_date')
  String? get releaseDate;
  @override
  @JsonKey(ignore: true)
  _$$MovieImplCopyWith<_$MovieImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
