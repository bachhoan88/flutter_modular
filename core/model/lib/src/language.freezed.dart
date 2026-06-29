// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Language {
  String? get name;
  @JsonKey(name: 'english_name')
  String? get engName;
  @JsonKey(name: 'iso_639_1')
  String? get countryCode;

  /// Create a copy of Language
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LanguageCopyWith<Language> get copyWith =>
      _$LanguageCopyWithImpl<Language>(this as Language, _$identity);

  /// Serializes this Language to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Language &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.engName, engName) || other.engName == engName) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, engName, countryCode);

  @override
  String toString() {
    return 'Language(name: $name, engName: $engName, countryCode: $countryCode)';
  }
}

/// @nodoc
abstract mixin class $LanguageCopyWith<$Res> {
  factory $LanguageCopyWith(Language value, $Res Function(Language) _then) =
      _$LanguageCopyWithImpl;
  @useResult
  $Res call(
      {String? name,
      @JsonKey(name: 'english_name') String? engName,
      @JsonKey(name: 'iso_639_1') String? countryCode});
}

/// @nodoc
class _$LanguageCopyWithImpl<$Res> implements $LanguageCopyWith<$Res> {
  _$LanguageCopyWithImpl(this._self, this._then);

  final Language _self;
  final $Res Function(Language) _then;

  /// Create a copy of Language
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? engName = freezed,
    Object? countryCode = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      engName: freezed == engName
          ? _self.engName
          : engName // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _self.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Language extends Language {
  const _Language(
      {this.name,
      @JsonKey(name: 'english_name') this.engName,
      @JsonKey(name: 'iso_639_1') this.countryCode})
      : super._();
  factory _Language.fromJson(Map<String, dynamic> json) =>
      _$LanguageFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey(name: 'english_name')
  final String? engName;
  @override
  @JsonKey(name: 'iso_639_1')
  final String? countryCode;

  /// Create a copy of Language
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LanguageCopyWith<_Language> get copyWith =>
      __$LanguageCopyWithImpl<_Language>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LanguageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Language &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.engName, engName) || other.engName == engName) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, engName, countryCode);

  @override
  String toString() {
    return 'Language(name: $name, engName: $engName, countryCode: $countryCode)';
  }
}

/// @nodoc
abstract mixin class _$LanguageCopyWith<$Res>
    implements $LanguageCopyWith<$Res> {
  factory _$LanguageCopyWith(_Language value, $Res Function(_Language) _then) =
      __$LanguageCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? name,
      @JsonKey(name: 'english_name') String? engName,
      @JsonKey(name: 'iso_639_1') String? countryCode});
}

/// @nodoc
class __$LanguageCopyWithImpl<$Res> implements _$LanguageCopyWith<$Res> {
  __$LanguageCopyWithImpl(this._self, this._then);

  final _Language _self;
  final $Res Function(_Language) _then;

  /// Create a copy of Language
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? engName = freezed,
    Object? countryCode = freezed,
  }) {
    return _then(_Language(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      engName: freezed == engName
          ? _self.engName
          : engName // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _self.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
