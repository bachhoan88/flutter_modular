// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieResponse _$MovieResponseFromJson(Map<String, dynamic> json) =>
    _MovieResponse(
      page: (json['page'] as num?)?.toInt(),
      movies: (json['results'] as List<dynamic>?)
          ?.map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
      totalResult: (json['total_results'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MovieResponseToJson(_MovieResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.movies,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResult,
    };
