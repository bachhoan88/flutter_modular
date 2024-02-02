// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieImage _$MovieImageFromJson(Map<String, dynamic> json) {
  return _MovieImage.fromJson(json);
}

/// @nodoc
mixin _$MovieImage {
  List<ImageData>? get backdrops => throw _privateConstructorUsedError;
  List<ImageData>? get posters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieImageCopyWith<MovieImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieImageCopyWith<$Res> {
  factory $MovieImageCopyWith(
          MovieImage value, $Res Function(MovieImage) then) =
      _$MovieImageCopyWithImpl<$Res, MovieImage>;
  @useResult
  $Res call({List<ImageData>? backdrops, List<ImageData>? posters});
}

/// @nodoc
class _$MovieImageCopyWithImpl<$Res, $Val extends MovieImage>
    implements $MovieImageCopyWith<$Res> {
  _$MovieImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdrops = freezed,
    Object? posters = freezed,
  }) {
    return _then(_value.copyWith(
      backdrops: freezed == backdrops
          ? _value.backdrops
          : backdrops // ignore: cast_nullable_to_non_nullable
              as List<ImageData>?,
      posters: freezed == posters
          ? _value.posters
          : posters // ignore: cast_nullable_to_non_nullable
              as List<ImageData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieImageImplCopyWith<$Res>
    implements $MovieImageCopyWith<$Res> {
  factory _$$MovieImageImplCopyWith(
          _$MovieImageImpl value, $Res Function(_$MovieImageImpl) then) =
      __$$MovieImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ImageData>? backdrops, List<ImageData>? posters});
}

/// @nodoc
class __$$MovieImageImplCopyWithImpl<$Res>
    extends _$MovieImageCopyWithImpl<$Res, _$MovieImageImpl>
    implements _$$MovieImageImplCopyWith<$Res> {
  __$$MovieImageImplCopyWithImpl(
      _$MovieImageImpl _value, $Res Function(_$MovieImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdrops = freezed,
    Object? posters = freezed,
  }) {
    return _then(_$MovieImageImpl(
      backdrops: freezed == backdrops
          ? _value._backdrops
          : backdrops // ignore: cast_nullable_to_non_nullable
              as List<ImageData>?,
      posters: freezed == posters
          ? _value._posters
          : posters // ignore: cast_nullable_to_non_nullable
              as List<ImageData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieImageImpl implements _MovieImage {
  const _$MovieImageImpl(
      {final List<ImageData>? backdrops, final List<ImageData>? posters})
      : _backdrops = backdrops,
        _posters = posters;

  factory _$MovieImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieImageImplFromJson(json);

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

  @override
  String toString() {
    return 'MovieImage(backdrops: $backdrops, posters: $posters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieImageImpl &&
            const DeepCollectionEquality()
                .equals(other._backdrops, _backdrops) &&
            const DeepCollectionEquality().equals(other._posters, _posters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_backdrops),
      const DeepCollectionEquality().hash(_posters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieImageImplCopyWith<_$MovieImageImpl> get copyWith =>
      __$$MovieImageImplCopyWithImpl<_$MovieImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieImageImplToJson(
      this,
    );
  }
}

abstract class _MovieImage implements MovieImage {
  const factory _MovieImage(
      {final List<ImageData>? backdrops,
      final List<ImageData>? posters}) = _$MovieImageImpl;

  factory _MovieImage.fromJson(Map<String, dynamic> json) =
      _$MovieImageImpl.fromJson;

  @override
  List<ImageData>? get backdrops;
  @override
  List<ImageData>? get posters;
  @override
  @JsonKey(ignore: true)
  _$$MovieImageImplCopyWith<_$MovieImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
