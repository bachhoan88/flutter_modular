// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Language _$LanguageFromJson(Map<String, dynamic> json) => _Language(
      name: json['name'] as String?,
      engName: json['english_name'] as String?,
      countryCode: json['iso_639_1'] as String?,
    );

Map<String, dynamic> _$LanguageToJson(_Language instance) => <String, dynamic>{
      'name': instance.name,
      'english_name': instance.engName,
      'iso_639_1': instance.countryCode,
    };
