// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieResponse _$MovieResponseFromJson(Map<String, dynamic> json) {
  return _MovieResponse.fromJson(json);
}

/// @nodoc
mixin _$MovieResponse {
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<Movie>? get movies => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int? get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int? get totalResult => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieResponseCopyWith<MovieResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieResponseCopyWith<$Res> {
  factory $MovieResponseCopyWith(
          MovieResponse value, $Res Function(MovieResponse) then) =
      _$MovieResponseCopyWithImpl<$Res, MovieResponse>;
  @useResult
  $Res call(
      {int? page,
      @JsonKey(name: 'results') List<Movie>? movies,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_results') int? totalResult});
}

/// @nodoc
class _$MovieResponseCopyWithImpl<$Res, $Val extends MovieResponse>
    implements $MovieResponseCopyWith<$Res> {
  _$MovieResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? movies = freezed,
    Object? totalPages = freezed,
    Object? totalResult = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      movies: freezed == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResult: freezed == totalResult
          ? _value.totalResult
          : totalResult // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieResponseImplCopyWith<$Res>
    implements $MovieResponseCopyWith<$Res> {
  factory _$$MovieResponseImplCopyWith(
          _$MovieResponseImpl value, $Res Function(_$MovieResponseImpl) then) =
      __$$MovieResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page,
      @JsonKey(name: 'results') List<Movie>? movies,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_results') int? totalResult});
}

/// @nodoc
class __$$MovieResponseImplCopyWithImpl<$Res>
    extends _$MovieResponseCopyWithImpl<$Res, _$MovieResponseImpl>
    implements _$$MovieResponseImplCopyWith<$Res> {
  __$$MovieResponseImplCopyWithImpl(
      _$MovieResponseImpl _value, $Res Function(_$MovieResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? movies = freezed,
    Object? totalPages = freezed,
    Object? totalResult = freezed,
  }) {
    return _then(_$MovieResponseImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      movies: freezed == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResult: freezed == totalResult
          ? _value.totalResult
          : totalResult // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieResponseImpl implements _MovieResponse {
  const _$MovieResponseImpl(
      {this.page,
      @JsonKey(name: 'results') final List<Movie>? movies,
      @JsonKey(name: 'total_pages') this.totalPages,
      @JsonKey(name: 'total_results') this.totalResult})
      : _movies = movies;

  factory _$MovieResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieResponseImplFromJson(json);

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

  @override
  String toString() {
    return 'MovieResponse(page: $page, movies: $movies, totalPages: $totalPages, totalResult: $totalResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieResponseImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResult, totalResult) ||
                other.totalResult == totalResult));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page,
      const DeepCollectionEquality().hash(_movies), totalPages, totalResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieResponseImplCopyWith<_$MovieResponseImpl> get copyWith =>
      __$$MovieResponseImplCopyWithImpl<_$MovieResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieResponseImplToJson(
      this,
    );
  }
}

abstract class _MovieResponse implements MovieResponse {
  const factory _MovieResponse(
          {final int? page,
          @JsonKey(name: 'results') final List<Movie>? movies,
          @JsonKey(name: 'total_pages') final int? totalPages,
          @JsonKey(name: 'total_results') final int? totalResult}) =
      _$MovieResponseImpl;

  factory _MovieResponse.fromJson(Map<String, dynamic> json) =
      _$MovieResponseImpl.fromJson;

  @override
  int? get page;
  @override
  @JsonKey(name: 'results')
  List<Movie>? get movies;
  @override
  @JsonKey(name: 'total_pages')
  int? get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int? get totalResult;
  @override
  @JsonKey(ignore: true)
  _$$MovieResponseImplCopyWith<_$MovieResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
