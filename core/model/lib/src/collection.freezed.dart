// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Collection {
  int? get id;
  String? get name;
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;

  /// Create a copy of Collection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CollectionCopyWith<Collection> get copyWith =>
      _$CollectionCopyWithImpl<Collection>(this as Collection, _$identity);

  /// Serializes this Collection to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Collection &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, posterPath, backdropPath);

  @override
  String toString() {
    return 'Collection(id: $id, name: $name, posterPath: $posterPath, backdropPath: $backdropPath)';
  }
}

/// @nodoc
abstract mixin class $CollectionCopyWith<$Res> {
  factory $CollectionCopyWith(
          Collection value, $Res Function(Collection) _then) =
      _$CollectionCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'backdrop_path') String? backdropPath});
}

/// @nodoc
class _$CollectionCopyWithImpl<$Res> implements $CollectionCopyWith<$Res> {
  _$CollectionCopyWithImpl(this._self, this._then);

  final Collection _self;
  final $Res Function(Collection) _then;

  /// Create a copy of Collection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _self.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropPath: freezed == backdropPath
          ? _self.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Collection extends Collection {
  const _Collection(
      {this.id,
      this.name,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'backdrop_path') this.backdropPath})
      : super._();
  factory _Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;

  /// Create a copy of Collection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CollectionCopyWith<_Collection> get copyWith =>
      __$CollectionCopyWithImpl<_Collection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CollectionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Collection &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, posterPath, backdropPath);

  @override
  String toString() {
    return 'Collection(id: $id, name: $name, posterPath: $posterPath, backdropPath: $backdropPath)';
  }
}

/// @nodoc
abstract mixin class _$CollectionCopyWith<$Res>
    implements $CollectionCopyWith<$Res> {
  factory _$CollectionCopyWith(
          _Collection value, $Res Function(_Collection) _then) =
      __$CollectionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'backdrop_path') String? backdropPath});
}

/// @nodoc
class __$CollectionCopyWithImpl<$Res> implements _$CollectionCopyWith<$Res> {
  __$CollectionCopyWithImpl(this._self, this._then);

  final _Collection _self;
  final $Res Function(_Collection) _then;

  /// Create a copy of Collection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
  }) {
    return _then(_Collection(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _self.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropPath: freezed == backdropPath
          ? _self.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
