// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieImage {
  List<ImageData>? get backdrops;
  List<ImageData>? get posters;

  /// Create a copy of MovieImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MovieImageCopyWith<MovieImage> get copyWith =>
      _$MovieImageCopyWithImpl<MovieImage>(this as MovieImage, _$identity);

  /// Serializes this MovieImage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MovieImage &&
            const DeepCollectionEquality().equals(other.backdrops, backdrops) &&
            const DeepCollectionEquality().equals(other.posters, posters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(backdrops),
      const DeepCollectionEquality().hash(posters));

  @override
  String toString() {
    return 'MovieImage(backdrops: $backdrops, posters: $posters)';
  }
}

/// @nodoc
abstract mixin class $MovieImageCopyWith<$Res> {
  factory $MovieImageCopyWith(
          MovieImage value, $Res Function(MovieImage) _then) =
      _$MovieImageCopyWithImpl;
  @useResult
  $Res call({List<ImageData>? backdrops, List<ImageData>? posters});
}

/// @nodoc
class _$MovieImageCopyWithImpl<$Res> implements $MovieImageCopyWith<$Res> {
  _$MovieImageCopyWithImpl(this._self, this._then);

  final MovieImage _self;
  final $Res Function(MovieImage) _then;

  /// Create a copy of MovieImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdrops = freezed,
    Object? posters = freezed,
  }) {
    return _then(_self.copyWith(
      backdrops: freezed == backdrops
          ? _self.backdrops
          : backdrops // ignore: cast_nullable_to_non_nullable
              as List<ImageData>?,
      posters: freezed == posters
          ? _self.posters
          : posters // ignore: cast_nullable_to_non_nullable
              as List<ImageData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MovieImage extends MovieImage {
  const _MovieImage(
      {final List<ImageData>? backdrops, final List<ImageData>? posters})
      : _backdrops = backdrops,
        _posters = posters,
        super._();
  factory _MovieImage.fromJson(Map<String, dynamic> json) =>
      _$MovieImageFromJson(json);

  final List<ImageData>? _backdrops;
  @override
  List<ImageData>? get backdrops {
    final value = _backdrops;
    if (value == null) return null;
    if (_backdrops is EqualUnmodifiableListView) return _backdrops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ImageData>? _posters;
  @override
  List<ImageData>? get posters {
    final value = _posters;
    if (value == null) return null;
    if (_posters is EqualUnmodifiableListView) return _posters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of MovieImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MovieImageCopyWith<_MovieImage> get copyWith =>
      __$MovieImageCopyWithImpl<_MovieImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MovieImageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieImage &&
            const DeepCollectionEquality()
                .equals(other._backdrops, _backdrops) &&
            const DeepCollectionEquality().equals(other._posters, _posters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_backdrops),
      const DeepCollectionEquality().hash(_posters));

  @override
  String toString() {
    return 'MovieImage(backdrops: $backdrops, posters: $posters)';
  }
}

/// @nodoc
abstract mixin class _$MovieImageCopyWith<$Res>
    implements $MovieImageCopyWith<$Res> {
  factory _$MovieImageCopyWith(
          _MovieImage value, $Res Function(_MovieImage) _then) =
      __$MovieImageCopyWithImpl;
  @override
  @useResult
  $Res call({List<ImageData>? backdrops, List<ImageData>? posters});
}

/// @nodoc
class __$MovieImageCopyWithImpl<$Res> implements _$MovieImageCopyWith<$Res> {
  __$MovieImageCopyWithImpl(this._self, this._then);

  final _MovieImage _self;
  final $Res Function(_MovieImage) _then;

  /// Create a copy of MovieImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? backdrops = freezed,
    Object? posters = freezed,
  }) {
    return _then(_MovieImage(
      backdrops: freezed == backdrops
          ? _self._backdrops
          : backdrops // ignore: cast_nullable_to_non_nullable
              as List<ImageData>?,
      posters: freezed == posters
          ? _self._posters
          : posters // ignore: cast_nullable_to_non_nullable
              as List<ImageData>?,
    ));
  }
}

// dart format on
