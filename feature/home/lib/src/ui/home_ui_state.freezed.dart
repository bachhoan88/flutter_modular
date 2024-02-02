// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeData {
  List<Movie>? get nowPlayingMovies => throw _privateConstructorUsedError;
  List<Movie>? get topMovies => throw _privateConstructorUsedError;
  List<Movie>? get upComingMovies => throw _privateConstructorUsedError;
  List<Movie>? get popularMovies => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeDataCopyWith<HomeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDataCopyWith<$Res> {
  factory $HomeDataCopyWith(HomeData value, $Res Function(HomeData) then) =
      _$HomeDataCopyWithImpl<$Res, HomeData>;
  @useResult
  $Res call(
      {List<Movie>? nowPlayingMovies,
      List<Movie>? topMovies,
      List<Movie>? upComingMovies,
      List<Movie>? popularMovies});
}

/// @nodoc
class _$HomeDataCopyWithImpl<$Res, $Val extends HomeData>
    implements $HomeDataCopyWith<$Res> {
  _$HomeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nowPlayingMovies = freezed,
    Object? topMovies = freezed,
    Object? upComingMovies = freezed,
    Object? popularMovies = freezed,
  }) {
    return _then(_value.copyWith(
      nowPlayingMovies: freezed == nowPlayingMovies
          ? _value.nowPlayingMovies
          : nowPlayingMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>?,
      topMovies: freezed == topMovies
          ? _value.topMovies
          : topMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>?,
      upComingMovies: freezed == upComingMovies
          ? _value.upComingMovies
          : upComingMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>?,
      popularMovies: freezed == popularMovies
          ? _value.popularMovies
          : popularMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeDataImplCopyWith<$Res>
    implements $HomeDataCopyWith<$Res> {
  factory _$$HomeDataImplCopyWith(
          _$HomeDataImpl value, $Res Function(_$HomeDataImpl) then) =
      __$$HomeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Movie>? nowPlayingMovies,
      List<Movie>? topMovies,
      List<Movie>? upComingMovies,
      List<Movie>? popularMovies});
}

/// @nodoc
class __$$HomeDataImplCopyWithImpl<$Res>
    extends _$HomeDataCopyWithImpl<$Res, _$HomeDataImpl>
    implements _$$HomeDataImplCopyWith<$Res> {
  __$$HomeDataImplCopyWithImpl(
      _$HomeDataImpl _value, $Res Function(_$HomeDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nowPlayingMovies = freezed,
    Object? topMovies = freezed,
    Object? upComingMovies = freezed,
    Object? popularMovies = freezed,
  }) {
    return _then(_$HomeDataImpl(
      nowPlayingMovies: freezed == nowPlayingMovies
          ? _value._nowPlayingMovies
          : nowPlayingMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>?,
      topMovies: freezed == topMovies
          ? _value._topMovies
          : topMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>?,
      upComingMovies: freezed == upComingMovies
          ? _value._upComingMovies
          : upComingMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>?,
      popularMovies: freezed == popularMovies
          ? _value._popularMovies
          : popularMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>?,
    ));
  }
}

/// @nodoc

class _$HomeDataImpl implements _HomeData {
  const _$HomeDataImpl(
      {final List<Movie>? nowPlayingMovies,
      final List<Movie>? topMovies,
      final List<Movie>? upComingMovies,
      final List<Movie>? popularMovies})
      : _nowPlayingMovies = nowPlayingMovies,
        _topMovies = topMovies,
        _upComingMovies = upComingMovies,
        _popularMovies = popularMovies;

  final List<Movie>? _nowPlayingMovies;
  @override
  List<Movie>? get nowPlayingMovies {
    final value = _nowPlayingMovies;
    if (value == null) return null;
    if (_nowPlayingMovies is EqualUnmodifiableListView)
      return _nowPlayingMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Movie>? _topMovies;
  @override
  List<Movie>? get topMovies {
    final value = _topMovies;
    if (value == null) return null;
    if (_topMovies is EqualUnmodifiableListView) return _topMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Movie>? _upComingMovies;
  @override
  List<Movie>? get upComingMovies {
    final value = _upComingMovies;
    if (value == null) return null;
    if (_upComingMovies is EqualUnmodifiableListView) return _upComingMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Movie>? _popularMovies;
  @override
  List<Movie>? get popularMovies {
    final value = _popularMovies;
    if (value == null) return null;
    if (_popularMovies is EqualUnmodifiableListView) return _popularMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeData(nowPlayingMovies: $nowPlayingMovies, topMovies: $topMovies, upComingMovies: $upComingMovies, popularMovies: $popularMovies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeDataImpl &&
            const DeepCollectionEquality()
                .equals(other._nowPlayingMovies, _nowPlayingMovies) &&
            const DeepCollectionEquality()
                .equals(other._topMovies, _topMovies) &&
            const DeepCollectionEquality()
                .equals(other._upComingMovies, _upComingMovies) &&
            const DeepCollectionEquality()
                .equals(other._popularMovies, _popularMovies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_nowPlayingMovies),
      const DeepCollectionEquality().hash(_topMovies),
      const DeepCollectionEquality().hash(_upComingMovies),
      const DeepCollectionEquality().hash(_popularMovies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeDataImplCopyWith<_$HomeDataImpl> get copyWith =>
      __$$HomeDataImplCopyWithImpl<_$HomeDataImpl>(this, _$identity);
}

abstract class _HomeData implements HomeData {
  const factory _HomeData(
      {final List<Movie>? nowPlayingMovies,
      final List<Movie>? topMovies,
      final List<Movie>? upComingMovies,
      final List<Movie>? popularMovies}) = _$HomeDataImpl;

  @override
  List<Movie>? get nowPlayingMovies;
  @override
  List<Movie>? get topMovies;
  @override
  List<Movie>? get upComingMovies;
  @override
  List<Movie>? get popularMovies;
  @override
  @JsonKey(ignore: true)
  _$$HomeDataImplCopyWith<_$HomeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
