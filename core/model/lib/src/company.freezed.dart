// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Company {
  int? get id;
  @JsonKey(name: 'logo_path')
  String? get logoPath;
  String? get name;
  @JsonKey(name: 'original_country')
  String? get originalCountry;

  /// Create a copy of Company
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CompanyCopyWith<Company> get copyWith =>
      _$CompanyCopyWithImpl<Company>(this as Company, _$identity);

  /// Serializes this Company to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Company &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.logoPath, logoPath) ||
                other.logoPath == logoPath) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.originalCountry, originalCountry) ||
                other.originalCountry == originalCountry));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, logoPath, name, originalCountry);

  @override
  String toString() {
    return 'Company(id: $id, logoPath: $logoPath, name: $name, originalCountry: $originalCountry)';
  }
}

/// @nodoc
abstract mixin class $CompanyCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) _then) =
      _$CompanyCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'logo_path') String? logoPath,
      String? name,
      @JsonKey(name: 'original_country') String? originalCountry});
}

/// @nodoc
class _$CompanyCopyWithImpl<$Res> implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._self, this._then);

  final Company _self;
  final $Res Function(Company) _then;

  /// Create a copy of Company
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? logoPath = freezed,
    Object? name = freezed,
    Object? originalCountry = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      logoPath: freezed == logoPath
          ? _self.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originalCountry: freezed == originalCountry
          ? _self.originalCountry
          : originalCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Company extends Company {
  const _Company(
      {this.id,
      @JsonKey(name: 'logo_path') this.logoPath,
      this.name,
      @JsonKey(name: 'original_country') this.originalCountry})
      : super._();
  factory _Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'logo_path')
  final String? logoPath;
  @override
  final String? name;
  @override
  @JsonKey(name: 'original_country')
  final String? originalCountry;

  /// Create a copy of Company
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CompanyCopyWith<_Company> get copyWith =>
      __$CompanyCopyWithImpl<_Company>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CompanyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Company &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.logoPath, logoPath) ||
                other.logoPath == logoPath) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.originalCountry, originalCountry) ||
                other.originalCountry == originalCountry));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, logoPath, name, originalCountry);

  @override
  String toString() {
    return 'Company(id: $id, logoPath: $logoPath, name: $name, originalCountry: $originalCountry)';
  }
}

/// @nodoc
abstract mixin class _$CompanyCopyWith<$Res> implements $CompanyCopyWith<$Res> {
  factory _$CompanyCopyWith(_Company value, $Res Function(_Company) _then) =
      __$CompanyCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'logo_path') String? logoPath,
      String? name,
      @JsonKey(name: 'original_country') String? originalCountry});
}

/// @nodoc
class __$CompanyCopyWithImpl<$Res> implements _$CompanyCopyWith<$Res> {
  __$CompanyCopyWithImpl(this._self, this._then);

  final _Company _self;
  final $Res Function(_Company) _then;

  /// Create a copy of Company
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? logoPath = freezed,
    Object? name = freezed,
    Object? originalCountry = freezed,
  }) {
    return _then(_Company(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      logoPath: freezed == logoPath
          ? _self.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originalCountry: freezed == originalCountry
          ? _self.originalCountry
          : originalCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
