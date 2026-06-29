// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieResponse {
  int? get page;
  @JsonKey(name: 'results')
  List<Movie>? get movies;
  @JsonKey(name: 'total_pages')
  int? get totalPages;
  @JsonKey(name: 'total_results')
  int? get totalResult;

  /// Create a copy of MovieResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MovieResponseCopyWith<MovieResponse> get copyWith =>
      _$MovieResponseCopyWithImpl<MovieResponse>(
          this as MovieResponse, _$identity);

  /// Serializes this MovieResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MovieResponse &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other.movies, movies) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResult, totalResult) ||
                other.totalResult == totalResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page,
      const DeepCollectionEquality().hash(movies), totalPages, totalResult);

  @override
  String toString() {
    return 'MovieResponse(page: $page, movies: $movies, totalPages: $totalPages, totalResult: $totalResult)';
  }
}

/// @nodoc
abstract mixin class $MovieResponseCopyWith<$Res> {
  factory $MovieResponseCopyWith(
          MovieResponse value, $Res Function(MovieResponse) _then) =
      _$MovieResponseCopyWithImpl;
  @useResult
  $Res call(
      {int? page,
      @JsonKey(name: 'results') List<Movie>? movies,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_results') int? totalResult});
}

/// @nodoc
class _$MovieResponseCopyWithImpl<$Res>
    implements $MovieResponseCopyWith<$Res> {
  _$MovieResponseCopyWithImpl(this._self, this._then);

  final MovieResponse _self;
  final $Res Function(MovieResponse) _then;

  /// Create a copy of MovieResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? movies = freezed,
    Object? totalPages = freezed,
    Object? totalResult = freezed,
  }) {
    return _then(_self.copyWith(
      page: freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      movies: freezed == movies
          ? _self.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>?,
      totalPages: freezed == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResult: freezed == totalResult
          ? _self.totalResult
          : totalResult // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [MovieResponse].
extension MovieResponsePatterns on MovieResponse {
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
    TResult Function(_MovieResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MovieResponse() when $default != null:
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
    TResult Function(_MovieResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MovieResponse():
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
    TResult? Function(_MovieResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MovieResponse() when $default != null:
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
            int? page,
            @JsonKey(name: 'results') List<Movie>? movies,
            @JsonKey(name: 'total_pages') int? totalPages,
            @JsonKey(name: 'total_results') int? totalResult)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MovieResponse() when $default != null:
        return $default(
            _that.page, _that.movies, _that.totalPages, _that.totalResult);
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
            int? page,
            @JsonKey(name: 'results') List<Movie>? movies,
            @JsonKey(name: 'total_pages') int? totalPages,
            @JsonKey(name: 'total_results') int? totalResult)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MovieResponse():
        return $default(
            _that.page, _that.movies, _that.totalPages, _that.totalResult);
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
            int? page,
            @JsonKey(name: 'results') List<Movie>? movies,
            @JsonKey(name: 'total_pages') int? totalPages,
            @JsonKey(name: 'total_results') int? totalResult)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MovieResponse() when $default != null:
        return $default(
            _that.page, _that.movies, _that.totalPages, _that.totalResult);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MovieResponse implements MovieResponse {
  const _MovieResponse(
      {this.page,
      @JsonKey(name: 'results') final List<Movie>? movies,
      @JsonKey(name: 'total_pages') this.totalPages,
      @JsonKey(name: 'total_results') this.totalResult})
      : _movies = movies;
  factory _MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseFromJson(json);

  @override
  final int? page;
  final List<Movie>? _movies;
  @override
  @JsonKey(name: 'results')
  List<Movie>? get movies {
    final value = _movies;
    if (value == null) return null;
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @override
  @JsonKey(name: 'total_results')
  final int? totalResult;

  /// Create a copy of MovieResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MovieResponseCopyWith<_MovieResponse> get copyWith =>
      __$MovieResponseCopyWithImpl<_MovieResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MovieResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieResponse &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResult, totalResult) ||
                other.totalResult == totalResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page,
      const DeepCollectionEquality().hash(_movies), totalPages, totalResult);

  @override
  String toString() {
    return 'MovieResponse(page: $page, movies: $movies, totalPages: $totalPages, totalResult: $totalResult)';
  }
}

/// @nodoc
abstract mixin class _$MovieResponseCopyWith<$Res>
    implements $MovieResponseCopyWith<$Res> {
  factory _$MovieResponseCopyWith(
          _MovieResponse value, $Res Function(_MovieResponse) _then) =
      __$MovieResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? page,
      @JsonKey(name: 'results') List<Movie>? movies,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_results') int? totalResult});
}

/// @nodoc
class __$MovieResponseCopyWithImpl<$Res>
    implements _$MovieResponseCopyWith<$Res> {
  __$MovieResponseCopyWithImpl(this._self, this._then);

  final _MovieResponse _self;
  final $Res Function(_MovieResponse) _then;

  /// Create a copy of MovieResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? page = freezed,
    Object? movies = freezed,
    Object? totalPages = freezed,
    Object? totalResult = freezed,
  }) {
    return _then(_MovieResponse(
      page: freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      movies: freezed == movies
          ? _self._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>?,
      totalPages: freezed == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResult: freezed == totalResult
          ? _self.totalResult
          : totalResult // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
