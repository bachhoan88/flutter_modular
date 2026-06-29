// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Country _$CountryFromJson(Map<String, dynamic> json) => _Country(
      name: json['name'] as String?,
      code: json['iso_3166_1'] as String?,
    );

Map<String, dynamic> _$CountryToJson(_Country instance) => <String, dynamic>{
      'name': instance.name,
      'iso_3166_1': instance.code,
    };
