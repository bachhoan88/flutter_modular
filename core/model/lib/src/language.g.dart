// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LanguageImpl _$$LanguageImplFromJson(Map<String, dynamic> json) =>
    _$LanguageImpl(
      name: json['name'] as String?,
      engName: json['english_name'] as String?,
      countryCode: json['iso_639_1'] as String?,
    );

Map<String, dynamic> _$$LanguageImplToJson(_$LanguageImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'english_name': instance.engName,
      'iso_639_1': instance.countryCode,
    };
