// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DetailData {
  bool get isDesExpanded;
  List<ImageData> get images;
  MovieInfo get movieInfo;

  /// Create a copy of DetailData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DetailDataCopyWith<DetailData> get copyWith =>
      _$DetailDataCopyWithImpl<DetailData>(this as DetailData, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DetailData &&
            (identical(other.isDesExpanded, isDesExpanded) ||
                other.isDesExpanded == isDesExpanded) &&
            const DeepCollectionEquality().equals(other.images, images) &&
            (identical(other.movieInfo, movieInfo) ||
                other.movieInfo == movieInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDesExpanded,
      const DeepCollectionEquality().hash(images), movieInfo);

  @override
  String toString() {
    return 'DetailData(isDesExpanded: $isDesExpanded, images: $images, movieInfo: $movieInfo)';
  }
}

/// @nodoc
abstract mixin class $DetailDataCopyWith<$Res> {
  factory $DetailDataCopyWith(
          DetailData value, $Res Function(DetailData) _then) =
      _$DetailDataCopyWithImpl;
  @useResult
  $Res call({bool isDesExpanded, List<ImageData> images, MovieInfo movieInfo});

  $MovieInfoCopyWith<$Res> get movieInfo;
}

/// @nodoc
class _$DetailDataCopyWithImpl<$Res> implements $DetailDataCopyWith<$Res> {
  _$DetailDataCopyWithImpl(this._self, this._then);

  final DetailData _self;
  final $Res Function(DetailData) _then;

  /// Create a copy of DetailData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDesExpanded = null,
    Object? images = null,
    Object? movieInfo = null,
  }) {
    return _then(_self.copyWith(
      isDesExpanded: null == isDesExpanded
          ? _self.isDesExpanded
          : isDesExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      images: null == images
          ? _self.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageData>,
      movieInfo: null == movieInfo
          ? _self.movieInfo
          : movieInfo // ignore: cast_nullable_to_non_nullable
              as MovieInfo,
    ));
  }

  /// Create a copy of DetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MovieInfoCopyWith<$Res> get movieInfo {
    return $MovieInfoCopyWith<$Res>(_self.movieInfo, (value) {
      return _then(_self.copyWith(movieInfo: value));
    });
  }
}

/// Adds pattern-matching-related methods to [DetailData].
extension DetailDataPatterns on DetailData {
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
    TResult Function(_DetailData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DetailData() when $default != null:
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
    TResult Function(_DetailData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DetailData():
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
    TResult? Function(_DetailData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DetailData() when $default != null:
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
            bool isDesExpanded, List<ImageData> images, MovieInfo movieInfo)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DetailData() when $default != null:
        return $default(_that.isDesExpanded, _that.images, _that.movieInfo);
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
            bool isDesExpanded, List<ImageData> images, MovieInfo movieInfo)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DetailData():
        return $default(_that.isDesExpanded, _that.images, _that.movieInfo);
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
            bool isDesExpanded, List<ImageData> images, MovieInfo movieInfo)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DetailData() when $default != null:
        return $default(_that.isDesExpanded, _that.images, _that.movieInfo);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DetailData implements DetailData {
  const _DetailData(
      {this.isDesExpanded = false,
      required final List<ImageData> images,
      required this.movieInfo})
      : _images = images;

  @override
  @JsonKey()
  final bool isDesExpanded;
  final List<ImageData> _images;
  @override
  List<ImageData> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final MovieInfo movieInfo;

  /// Create a copy of DetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DetailDataCopyWith<_DetailData> get copyWith =>
      __$DetailDataCopyWithImpl<_DetailData>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DetailData &&
            (identical(other.isDesExpanded, isDesExpanded) ||
                other.isDesExpanded == isDesExpanded) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.movieInfo, movieInfo) ||
                other.movieInfo == movieInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDesExpanded,
      const DeepCollectionEquality().hash(_images), movieInfo);

  @override
  String toString() {
    return 'DetailData(isDesExpanded: $isDesExpanded, images: $images, movieInfo: $movieInfo)';
  }
}

/// @nodoc
abstract mixin class _$DetailDataCopyWith<$Res>
    implements $DetailDataCopyWith<$Res> {
  factory _$DetailDataCopyWith(
          _DetailData value, $Res Function(_DetailData) _then) =
      __$DetailDataCopyWithImpl;
  @override
  @useResult
  $Res call({bool isDesExpanded, List<ImageData> images, MovieInfo movieInfo});

  @override
  $MovieInfoCopyWith<$Res> get movieInfo;
}

/// @nodoc
class __$DetailDataCopyWithImpl<$Res> implements _$DetailDataCopyWith<$Res> {
  __$DetailDataCopyWithImpl(this._self, this._then);

  final _DetailData _self;
  final $Res Function(_DetailData) _then;

  /// Create a copy of DetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isDesExpanded = null,
    Object? images = null,
    Object? movieInfo = null,
  }) {
    return _then(_DetailData(
      isDesExpanded: null == isDesExpanded
          ? _self.isDesExpanded
          : isDesExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      images: null == images
          ? _self._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageData>,
      movieInfo: null == movieInfo
          ? _self.movieInfo
          : movieInfo // ignore: cast_nullable_to_non_nullable
              as MovieInfo,
    ));
  }

  /// Create a copy of DetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MovieInfoCopyWith<$Res> get movieInfo {
    return $MovieInfoCopyWith<$Res>(_self.movieInfo, (value) {
      return _then(_self.copyWith(movieInfo: value));
    });
  }
}

// dart format on
