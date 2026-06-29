// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeData {
  List<Movie>? get nowPlayingMovies;
  List<Movie>? get topMovies;
  List<Movie>? get upComingMovies;
  List<Movie>? get popularMovies;

  /// Create a copy of HomeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeDataCopyWith<HomeData> get copyWith =>
      _$HomeDataCopyWithImpl<HomeData>(this as HomeData, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeData &&
            const DeepCollectionEquality()
                .equals(other.nowPlayingMovies, nowPlayingMovies) &&
            const DeepCollectionEquality().equals(other.topMovies, topMovies) &&
            const DeepCollectionEquality()
                .equals(other.upComingMovies, upComingMovies) &&
            const DeepCollectionEquality()
                .equals(other.popularMovies, popularMovies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nowPlayingMovies),
      const DeepCollectionEquality().hash(topMovies),
      const DeepCollectionEquality().hash(upComingMovies),
      const DeepCollectionEquality().hash(popularMovies));

  @override
  String toString() {
    return 'HomeData(nowPlayingMovies: $nowPlayingMovies, topMovies: $topMovies, upComingMovies: $upComingMovies, popularMovies: $popularMovies)';
  }
}

/// @nodoc
abstract mixin class $HomeDataCopyWith<$Res> {
  factory $HomeDataCopyWith(HomeData value, $Res Function(HomeData) _then) =
      _$HomeDataCopyWithImpl;
  @useResult
  $Res call(
      {List<Movie>? nowPlayingMovies,
      List<Movie>? topMovies,
      List<Movie>? upComingMovies,
      List<Movie>? popularMovies});
}

/// @nodoc
class _$HomeDataCopyWithImpl<$Res> implements $HomeDataCopyWith<$Res> {
  _$HomeDataCopyWithImpl(this._self, this._then);

  final HomeData _self;
  final $Res Function(HomeData) _then;

  /// Create a copy of HomeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nowPlayingMovies = freezed,
    Object? topMovies = freezed,
    Object? upComingMovies = freezed,
    Object? popularMovies = freezed,
  }) {
    return _then(_self.copyWith(
      nowPlayingMovies: freezed == nowPlayingMovies
          ? _self.nowPlayingMovies
          : nowPlayingMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>?,
      topMovies: freezed == topMovies
          ? _self.topMovies
          : topMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>?,
      upComingMovies: freezed == upComingMovies
          ? _self.upComingMovies
          : upComingMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>?,
      popularMovies: freezed == popularMovies
          ? _self.popularMovies
          : popularMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [HomeData].
extension HomeDataPatterns on HomeData {
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
    TResult Function(_HomeData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HomeData() when $default != null:
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
    TResult Function(_HomeData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeData():
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
    TResult? Function(_HomeData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeData() when $default != null:
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
    TResult Function(List<Movie>? nowPlayingMovies, List<Movie>? topMovies,
            List<Movie>? upComingMovies, List<Movie>? popularMovies)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HomeData() when $default != null:
        return $default(_that.nowPlayingMovies, _that.topMovies,
            _that.upComingMovies, _that.popularMovies);
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
    TResult Function(List<Movie>? nowPlayingMovies, List<Movie>? topMovies,
            List<Movie>? upComingMovies, List<Movie>? popularMovies)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeData():
        return $default(_that.nowPlayingMovies, _that.topMovies,
            _that.upComingMovies, _that.popularMovies);
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
    TResult? Function(List<Movie>? nowPlayingMovies, List<Movie>? topMovies,
            List<Movie>? upComingMovies, List<Movie>? popularMovies)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeData() when $default != null:
        return $default(_that.nowPlayingMovies, _that.topMovies,
            _that.upComingMovies, _that.popularMovies);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _HomeData implements HomeData {
  const _HomeData(
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

  /// Create a copy of HomeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomeDataCopyWith<_HomeData> get copyWith =>
      __$HomeDataCopyWithImpl<_HomeData>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeData &&
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

  @override
  String toString() {
    return 'HomeData(nowPlayingMovies: $nowPlayingMovies, topMovies: $topMovies, upComingMovies: $upComingMovies, popularMovies: $popularMovies)';
  }
}

/// @nodoc
abstract mixin class _$HomeDataCopyWith<$Res>
    implements $HomeDataCopyWith<$Res> {
  factory _$HomeDataCopyWith(_HomeData value, $Res Function(_HomeData) _then) =
      __$HomeDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<Movie>? nowPlayingMovies,
      List<Movie>? topMovies,
      List<Movie>? upComingMovies,
      List<Movie>? popularMovies});
}

/// @nodoc
class __$HomeDataCopyWithImpl<$Res> implements _$HomeDataCopyWith<$Res> {
  __$HomeDataCopyWithImpl(this._self, this._then);

  final _HomeData _self;
  final $Res Function(_HomeData) _then;

  /// Create a copy of HomeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? nowPlayingMovies = freezed,
    Object? topMovies = freezed,
    Object? upComingMovies = freezed,
    Object? popularMovies = freezed,
  }) {
    return _then(_HomeData(
      nowPlayingMovies: freezed == nowPlayingMovies
          ? _self._nowPlayingMovies
          : nowPlayingMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>?,
      topMovies: freezed == topMovies
          ? _self._topMovies
          : topMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>?,
      upComingMovies: freezed == upComingMovies
          ? _self._upComingMovies
          : upComingMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>?,
      popularMovies: freezed == popularMovies
          ? _self._popularMovies
          : popularMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>?,
    ));
  }
}

// dart format on
