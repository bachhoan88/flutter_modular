// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ImageData _$ImageDataFromJson(Map<String, dynamic> json) => _ImageData(
      imagePath: json['file_path'] as String?,
      height: (json['height'] as num?)?.toInt(),
      width: (json['width'] as num?)?.toInt(),
      countryCode: json['iso_639_1'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      voteCount: (json['vote_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ImageDataToJson(_ImageData instance) =>
    <String, dynamic>{
      'file_path': instance.imagePath,
      'height': instance.height,
      'width': instance.width,
      'iso_639_1': instance.countryCode,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
