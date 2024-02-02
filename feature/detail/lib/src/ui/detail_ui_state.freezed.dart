// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailData {
  bool get isDesExpanded => throw _privateConstructorUsedError;
  List<ImageData> get images => throw _privateConstructorUsedError;
  MovieInfo get movieInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailDataCopyWith<DetailData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailDataCopyWith<$Res> {
  factory $DetailDataCopyWith(
          DetailData value, $Res Function(DetailData) then) =
      _$DetailDataCopyWithImpl<$Res, DetailData>;
  @useResult
  $Res call({bool isDesExpanded, List<ImageData> images, MovieInfo movieInfo});

  $MovieInfoCopyWith<$Res> get movieInfo;
}

/// @nodoc
class _$DetailDataCopyWithImpl<$Res, $Val extends DetailData>
    implements $DetailDataCopyWith<$Res> {
  _$DetailDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDesExpanded = null,
    Object? images = null,
    Object? movieInfo = null,
  }) {
    return _then(_value.copyWith(
      isDesExpanded: null == isDesExpanded
          ? _value.isDesExpanded
          : isDesExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageData>,
      movieInfo: null == movieInfo
          ? _value.movieInfo
          : movieInfo // ignore: cast_nullable_to_non_nullable
              as MovieInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieInfoCopyWith<$Res> get movieInfo {
    return $MovieInfoCopyWith<$Res>(_value.movieInfo, (value) {
      return _then(_value.copyWith(movieInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailDataImplCopyWith<$Res>
    implements $DetailDataCopyWith<$Res> {
  factory _$$DetailDataImplCopyWith(
          _$DetailDataImpl value, $Res Function(_$DetailDataImpl) then) =
      __$$DetailDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isDesExpanded, List<ImageData> images, MovieInfo movieInfo});

  @override
  $MovieInfoCopyWith<$Res> get movieInfo;
}

/// @nodoc
class __$$DetailDataImplCopyWithImpl<$Res>
    extends _$DetailDataCopyWithImpl<$Res, _$DetailDataImpl>
    implements _$$DetailDataImplCopyWith<$Res> {
  __$$DetailDataImplCopyWithImpl(
      _$DetailDataImpl _value, $Res Function(_$DetailDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDesExpanded = null,
    Object? images = null,
    Object? movieInfo = null,
  }) {
    return _then(_$DetailDataImpl(
      isDesExpanded: null == isDesExpanded
          ? _value.isDesExpanded
          : isDesExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageData>,
      movieInfo: null == movieInfo
          ? _value.movieInfo
          : movieInfo // ignore: cast_nullable_to_non_nullable
              as MovieInfo,
    ));
  }
}

/// @nodoc

class _$DetailDataImpl implements _DetailData {
  const _$DetailDataImpl(
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

  @override
  String toString() {
    return 'DetailData(isDesExpanded: $isDesExpanded, images: $images, movieInfo: $movieInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailDataImpl &&
            (identical(other.isDesExpanded, isDesExpanded) ||
                other.isDesExpanded == isDesExpanded) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.movieInfo, movieInfo) ||
                other.movieInfo == movieInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDesExpanded,
      const DeepCollectionEquality().hash(_images), movieInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailDataImplCopyWith<_$DetailDataImpl> get copyWith =>
      __$$DetailDataImplCopyWithImpl<_$DetailDataImpl>(this, _$identity);
}

abstract class _DetailData implements DetailData {
  const factory _DetailData(
      {final bool isDesExpanded,
      required final List<ImageData> images,
      required final MovieInfo movieInfo}) = _$DetailDataImpl;

  @override
  bool get isDesExpanded;
  @override
  List<ImageData> get images;
  @override
  MovieInfo get movieInfo;
  @override
  @JsonKey(ignore: true)
  _$$DetailDataImplCopyWith<_$DetailDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
