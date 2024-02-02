// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieImageImpl _$$MovieImageImplFromJson(Map<String, dynamic> json) =>
    _$MovieImageImpl(
      backdrops: (json['backdrops'] as List<dynamic>?)
          ?.map((e) => ImageData.fromJson(e as Map<String, dynamic>))
          .toList(),
      posters: (json['posters'] as List<dynamic>?)
          ?.map((e) => ImageData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MovieImageImplToJson(_$MovieImageImpl instance) =>
    <String, dynamic>{
      'backdrops': instance.backdrops,
      'posters': instance.posters,
    };
