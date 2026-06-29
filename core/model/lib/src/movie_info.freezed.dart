// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieInfo {
  bool? get adult;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @JsonKey(name: 'belongs_to_collection')
  Collection? get collection;
  int? get budget;
  List<Genre>? get genres;
  String? get homepage;
  int? get id;
  @JsonKey(name: 'imdb_id')
  String? get imdbId;
  @JsonKey(name: 'original_language')
  String? get originalLanguage;
  @JsonKey(name: 'original_title')
  String? get originalTitle;
  String? get overview;
  double? get popularity;
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @JsonKey(name: 'release_date')
  String? get releaseDate;
  int? get revenue;
  int? get runtime;
  String? get status;
  String? get tagline;
  String? get title;
  bool? get video;
  @JsonKey(name: 'vote_average')
  double? get voteAverage;
  @JsonKey(name: 'vote_count')
  int? get voteCount;
  @JsonKey(name: 'production_companies')
  List<Company>? get companies;
  @JsonKey(name: 'production_countries')
  List<Country>? get countries;
  @JsonKey(name: 'spoken_languages')
  List<Language>? get languages;

  /// Create a copy of MovieInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MovieInfoCopyWith<MovieInfo> get copyWith =>
      _$MovieInfoCopyWithImpl<MovieInfo>(this as MovieInfo, _$identity);

  /// Serializes this MovieInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MovieInfo &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.collection, collection) ||
                other.collection == collection) &&
            (identical(other.budget, budget) || other.budget == budget) &&
            const DeepCollectionEquality().equals(other.genres, genres) &&
            (identical(other.homepage, homepage) ||
                other.homepage == homepage) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imdbId, imdbId) || other.imdbId == imdbId) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.revenue, revenue) || other.revenue == revenue) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.tagline, tagline) || other.tagline == tagline) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            const DeepCollectionEquality().equals(other.companies, companies) &&
            const DeepCollectionEquality().equals(other.countries, countries) &&
            const DeepCollectionEquality().equals(other.languages, languages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        adult,
        backdropPath,
        collection,
        budget,
        const DeepCollectionEquality().hash(genres),
        homepage,
        id,
        imdbId,
        originalLanguage,
        originalTitle,
        overview,
        popularity,
        posterPath,
        releaseDate,
        revenue,
        runtime,
        status,
        tagline,
        title,
        video,
        voteAverage,
        voteCount,
        const DeepCollectionEquality().hash(companies),
        const DeepCollectionEquality().hash(countries),
        const DeepCollectionEquality().hash(languages)
      ]);

  @override
  String toString() {
    return 'MovieInfo(adult: $adult, backdropPath: $backdropPath, collection: $collection, budget: $budget, genres: $genres, homepage: $homepage, id: $id, imdbId: $imdbId, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, revenue: $revenue, runtime: $runtime, status: $status, tagline: $tagline, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount, companies: $companies, countries: $countries, languages: $languages)';
  }
}

/// @nodoc
abstract mixin class $MovieInfoCopyWith<$Res> {
  factory $MovieInfoCopyWith(MovieInfo value, $Res Function(MovieInfo) _then) =
      _$MovieInfoCopyWithImpl;
  @useResult
  $Res call(
      {bool? adult,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'belongs_to_collection') Collection? collection,
      int? budget,
      List<Genre>? genres,
      String? homepage,
      int? id,
      @JsonKey(name: 'imdb_id') String? imdbId,
      @JsonKey(name: 'original_language') String? originalLanguage,
      @JsonKey(name: 'original_title') String? originalTitle,
      String? overview,
      double? popularity,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'release_date') String? releaseDate,
      int? revenue,
      int? runtime,
      String? status,
      String? tagline,
      String? title,
      bool? video,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'vote_count') int? voteCount,
      @JsonKey(name: 'production_companies') List<Company>? companies,
      @JsonKey(name: 'production_countries') List<Country>? countries,
      @JsonKey(name: 'spoken_languages') List<Language>? languages});

  $CollectionCopyWith<$Res>? get collection;
}

/// @nodoc
class _$MovieInfoCopyWithImpl<$Res> implements $MovieInfoCopyWith<$Res> {
  _$MovieInfoCopyWithImpl(this._self, this._then);

  final MovieInfo _self;
  final $Res Function(MovieInfo) _then;

  /// Create a copy of MovieInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? collection = freezed,
    Object? budget = freezed,
    Object? genres = freezed,
    Object? homepage = freezed,
    Object? id = freezed,
    Object? imdbId = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? revenue = freezed,
    Object? runtime = freezed,
    Object? status = freezed,
    Object? tagline = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
    Object? companies = freezed,
    Object? countries = freezed,
    Object? languages = freezed,
  }) {
    return _then(_self.copyWith(
      adult: freezed == adult
          ? _self.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdropPath: freezed == backdropPath
          ? _self.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      collection: freezed == collection
          ? _self.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as Collection?,
      budget: freezed == budget
          ? _self.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int?,
      genres: freezed == genres
          ? _self.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>?,
      homepage: freezed == homepage
          ? _self.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imdbId: freezed == imdbId
          ? _self.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: freezed == originalLanguage
          ? _self.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _self.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _self.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _self.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: freezed == posterPath
          ? _self.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _self.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      revenue: freezed == revenue
          ? _self.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as int?,
      runtime: freezed == runtime
          ? _self.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      tagline: freezed == tagline
          ? _self.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _self.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      voteAverage: freezed == voteAverage
          ? _self.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _self.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      companies: freezed == companies
          ? _self.companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<Company>?,
      countries: freezed == countries
          ? _self.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>?,
      languages: freezed == languages
          ? _self.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Language>?,
    ));
  }

  /// Create a copy of MovieInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CollectionCopyWith<$Res>? get collection {
    if (_self.collection == null) {
      return null;
    }

    return $CollectionCopyWith<$Res>(_self.collection!, (value) {
      return _then(_self.copyWith(collection: value));
    });
  }
}

/// Adds pattern-matching-related methods to [MovieInfo].
extension MovieInfoPatterns on MovieInfo {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MovieInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MovieInfo() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MovieInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MovieInfo():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MovieInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MovieInfo() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            bool? adult,
            @JsonKey(name: 'backdrop_path') String? backdropPath,
            @JsonKey(name: 'belongs_to_collection') Collection? collection,
            int? budget,
            List<Genre>? genres,
            String? homepage,
            int? id,
            @JsonKey(name: 'imdb_id') String? imdbId,
            @JsonKey(name: 'original_language') String? originalLanguage,
            @JsonKey(name: 'original_title') String? originalTitle,
            String? overview,
            double? popularity,
            @JsonKey(name: 'poster_path') String? posterPath,
            @JsonKey(name: 'release_date') String? releaseDate,
            int? revenue,
            int? runtime,
            String? status,
            String? tagline,
            String? title,
            bool? video,
            @JsonKey(name: 'vote_average') double? voteAverage,
            @JsonKey(name: 'vote_count') int? voteCount,
            @JsonKey(name: 'production_companies') List<Company>? companies,
            @JsonKey(name: 'production_countries') List<Country>? countries,
            @JsonKey(name: 'spoken_languages') List<Language>? languages)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MovieInfo() when $default != null:
        return $default(
            _that.adult,
            _that.backdropPath,
            _that.collection,
            _that.budget,
            _that.genres,
            _that.homepage,
            _that.id,
            _that.imdbId,
            _that.originalLanguage,
            _that.originalTitle,
            _that.overview,
            _that.popularity,
            _that.posterPath,
            _that.releaseDate,
            _that.revenue,
            _that.runtime,
            _that.status,
            _that.tagline,
            _that.title,
            _that.video,
            _that.voteAverage,
            _that.voteCount,
            _that.companies,
            _that.countries,
            _that.languages);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            bool? adult,
            @JsonKey(name: 'backdrop_path') String? backdropPath,
            @JsonKey(name: 'belongs_to_collection') Collection? collection,
            int? budget,
            List<Genre>? genres,
            String? homepage,
            int? id,
            @JsonKey(name: 'imdb_id') String? imdbId,
            @JsonKey(name: 'original_language') String? originalLanguage,
            @JsonKey(name: 'original_title') String? originalTitle,
            String? overview,
            double? popularity,
            @JsonKey(name: 'poster_path') String? posterPath,
            @JsonKey(name: 'release_date') String? releaseDate,
            int? revenue,
            int? runtime,
            String? status,
            String? tagline,
            String? title,
            bool? video,
            @JsonKey(name: 'vote_average') double? voteAverage,
            @JsonKey(name: 'vote_count') int? voteCount,
            @JsonKey(name: 'production_companies') List<Company>? companies,
            @JsonKey(name: 'production_countries') List<Country>? countries,
            @JsonKey(name: 'spoken_languages') List<Language>? languages)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MovieInfo():
        return $default(
            _that.adult,
            _that.backdropPath,
            _that.collection,
            _that.budget,
            _that.genres,
            _that.homepage,
            _that.id,
            _that.imdbId,
            _that.originalLanguage,
            _that.originalTitle,
            _that.overview,
            _that.popularity,
            _that.posterPath,
            _that.releaseDate,
            _that.revenue,
            _that.runtime,
            _that.status,
            _that.tagline,
            _that.title,
            _that.video,
            _that.voteAverage,
            _that.voteCount,
            _that.companies,
            _that.countries,
            _that.languages);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            bool? adult,
            @JsonKey(name: 'backdrop_path') String? backdropPath,
            @JsonKey(name: 'belongs_to_collection') Collection? collection,
            int? budget,
            List<Genre>? genres,
            String? homepage,
            int? id,
            @JsonKey(name: 'imdb_id') String? imdbId,
            @JsonKey(name: 'original_language') String? originalLanguage,
            @JsonKey(name: 'original_title') String? originalTitle,
            String? overview,
            double? popularity,
            @JsonKey(name: 'poster_path') String? posterPath,
            @JsonKey(name: 'release_date') String? releaseDate,
            int? revenue,
            int? runtime,
            String? status,
            String? tagline,
            String? title,
            bool? video,
            @JsonKey(name: 'vote_average') double? voteAverage,
            @JsonKey(name: 'vote_count') int? voteCount,
            @JsonKey(name: 'production_companies') List<Company>? companies,
            @JsonKey(name: 'production_countries') List<Country>? countries,
            @JsonKey(name: 'spoken_languages') List<Language>? languages)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MovieInfo() when $default != null:
        return $default(
            _that.adult,
            _that.backdropPath,
            _that.collection,
            _that.budget,
            _that.genres,
            _that.homepage,
            _that.id,
            _that.imdbId,
            _that.originalLanguage,
            _that.originalTitle,
            _that.overview,
            _that.popularity,
            _that.posterPath,
            _that.releaseDate,
            _that.revenue,
            _that.runtime,
            _that.status,
            _that.tagline,
            _that.title,
            _that.video,
            _that.voteAverage,
            _that.voteCount,
            _that.companies,
            _that.countries,
            _that.languages);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MovieInfo extends MovieInfo {
  const _MovieInfo(
      {this.adult,
      @JsonKey(name: 'backdrop_path') this.backdropPath,
      @JsonKey(name: 'belongs_to_collection') this.collection,
      this.budget,
      final List<Genre>? genres,
      this.homepage,
      this.id,
      @JsonKey(name: 'imdb_id') this.imdbId,
      @JsonKey(name: 'original_language') this.originalLanguage,
      @JsonKey(name: 'original_title') this.originalTitle,
      this.overview,
      this.popularity,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'release_date') this.releaseDate,
      this.revenue,
      this.runtime,
      this.status,
      this.tagline,
      this.title,
      this.video,
      @JsonKey(name: 'vote_average') this.voteAverage,
      @JsonKey(name: 'vote_count') this.voteCount,
      @JsonKey(name: 'production_companies') final List<Company>? companies,
      @JsonKey(name: 'production_countries') final List<Country>? countries,
      @JsonKey(name: 'spoken_languages') final List<Language>? languages})
      : _genres = genres,
        _companies = companies,
        _countries = countries,
        _languages = languages,
        super._();
  factory _MovieInfo.fromJson(Map<String, dynamic> json) =>
      _$MovieInfoFromJson(json);

  @override
  final bool? adult;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  @JsonKey(name: 'belongs_to_collection')
  final Collection? collection;
  @override
  final int? budget;
  final List<Genre>? _genres;
  @override
  List<Genre>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? homepage;
  @override
  final int? id;
  @override
  @JsonKey(name: 'imdb_id')
  final String? imdbId;
  @override
  @JsonKey(name: 'original_language')
  final String? originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  final String? originalTitle;
  @override
  final String? overview;
  @override
  final double? popularity;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  @override
  final int? revenue;
  @override
  final int? runtime;
  @override
  final String? status;
  @override
  final String? tagline;
  @override
  final String? title;
  @override
  final bool? video;
  @override
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  final int? voteCount;
  final List<Company>? _companies;
  @override
  @JsonKey(name: 'production_companies')
  List<Company>? get companies {
    final value = _companies;
    if (value == null) return null;
    if (_companies is EqualUnmodifiableListView) return _companies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Country>? _countries;
  @override
  @JsonKey(name: 'production_countries')
  List<Country>? get countries {
    final value = _countries;
    if (value == null) return null;
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Language>? _languages;
  @override
  @JsonKey(name: 'spoken_languages')
  List<Language>? get languages {
    final value = _languages;
    if (value == null) return null;
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of MovieInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MovieInfoCopyWith<_MovieInfo> get copyWith =>
      __$MovieInfoCopyWithImpl<_MovieInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MovieInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieInfo &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.collection, collection) ||
                other.collection == collection) &&
            (identical(other.budget, budget) || other.budget == budget) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.homepage, homepage) ||
                other.homepage == homepage) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imdbId, imdbId) || other.imdbId == imdbId) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.revenue, revenue) || other.revenue == revenue) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.tagline, tagline) || other.tagline == tagline) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            const DeepCollectionEquality()
                .equals(other._companies, _companies) &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        adult,
        backdropPath,
        collection,
        budget,
        const DeepCollectionEquality().hash(_genres),
        homepage,
        id,
        imdbId,
        originalLanguage,
        originalTitle,
        overview,
        popularity,
        posterPath,
        releaseDate,
        revenue,
        runtime,
        status,
        tagline,
        title,
        video,
        voteAverage,
        voteCount,
        const DeepCollectionEquality().hash(_companies),
        const DeepCollectionEquality().hash(_countries),
        const DeepCollectionEquality().hash(_languages)
      ]);

  @override
  String toString() {
    return 'MovieInfo(adult: $adult, backdropPath: $backdropPath, collection: $collection, budget: $budget, genres: $genres, homepage: $homepage, id: $id, imdbId: $imdbId, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, revenue: $revenue, runtime: $runtime, status: $status, tagline: $tagline, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount, companies: $companies, countries: $countries, languages: $languages)';
  }
}

/// @nodoc
abstract mixin class _$MovieInfoCopyWith<$Res>
    implements $MovieInfoCopyWith<$Res> {
  factory _$MovieInfoCopyWith(
          _MovieInfo value, $Res Function(_MovieInfo) _then) =
      __$MovieInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool? adult,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'belongs_to_collection') Collection? collection,
      int? budget,
      List<Genre>? genres,
      String? homepage,
      int? id,
      @JsonKey(name: 'imdb_id') String? imdbId,
      @JsonKey(name: 'original_language') String? originalLanguage,
      @JsonKey(name: 'original_title') String? originalTitle,
      String? overview,
      double? popularity,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'release_date') String? releaseDate,
      int? revenue,
      int? runtime,
      String? status,
      String? tagline,
      String? title,
      bool? video,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'vote_count') int? voteCount,
      @JsonKey(name: 'production_companies') List<Company>? companies,
      @JsonKey(name: 'production_countries') List<Country>? countries,
      @JsonKey(name: 'spoken_languages') List<Language>? languages});

  @override
  $CollectionCopyWith<$Res>? get collection;
}

/// @nodoc
class __$MovieInfoCopyWithImpl<$Res> implements _$MovieInfoCopyWith<$Res> {
  __$MovieInfoCopyWithImpl(this._self, this._then);

  final _MovieInfo _self;
  final $Res Function(_MovieInfo) _then;

  /// Create a copy of MovieInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? collection = freezed,
    Object? budget = freezed,
    Object? genres = freezed,
    Object? homepage = freezed,
    Object? id = freezed,
    Object? imdbId = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? revenue = freezed,
    Object? runtime = freezed,
    Object? status = freezed,
    Object? tagline = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
    Object? companies = freezed,
    Object? countries = freezed,
    Object? languages = freezed,
  }) {
    return _then(_MovieInfo(
      adult: freezed == adult
          ? _self.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdropPath: freezed == backdropPath
          ? _self.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      collection: freezed == collection
          ? _self.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as Collection?,
      budget: freezed == budget
          ? _self.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int?,
      genres: freezed == genres
          ? _self._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>?,
      homepage: freezed == homepage
          ? _self.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imdbId: freezed == imdbId
          ? _self.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: freezed == originalLanguage
          ? _self.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _self.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _self.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _self.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: freezed == posterPath
          ? _self.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _self.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      revenue: freezed == revenue
          ? _self.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as int?,
      runtime: freezed == runtime
          ? _self.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      tagline: freezed == tagline
          ? _self.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _self.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      voteAverage: freezed == voteAverage
          ? _self.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _self.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      companies: freezed == companies
          ? _self._companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<Company>?,
      countries: freezed == countries
          ? _self._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>?,
      languages: freezed == languages
          ? _self._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Language>?,
    ));
  }

  /// Create a copy of MovieInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CollectionCopyWith<$Res>? get collection {
    if (_self.collection == null) {
      return null;
    }

    return $CollectionCopyWith<$Res>(_self.collection!, (value) {
      return _then(_self.copyWith(collection: value));
    });
  }
}

// dart format on
