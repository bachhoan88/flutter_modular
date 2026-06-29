// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieImage _$MovieImageFromJson(Map<String, dynamic> json) => _MovieImage(
      backdrops: (json['backdrops'] as List<dynamic>?)
          ?.map((e) => ImageData.fromJson(e as Map<String, dynamic>))
          .toList(),
      posters: (json['posters'] as List<dynamic>?)
          ?.map((e) => ImageData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MovieImageToJson(_MovieImage instance) =>
    <String, dynamic>{
      'backdrops': instance.backdrops,
      'posters': instance.posters,
    };
