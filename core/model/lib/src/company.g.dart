// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Company _$CompanyFromJson(Map<String, dynamic> json) => _Company(
      id: (json['id'] as num?)?.toInt(),
      logoPath: json['logo_path'] as String?,
      name: json['name'] as String?,
      originalCountry: json['original_country'] as String?,
    );

Map<String, dynamic> _$CompanyToJson(_Company instance) => <String, dynamic>{
      'id': instance.id,
      'logo_path': instance.logoPath,
      'name': instance.name,
      'original_country': instance.originalCountry,
    };
