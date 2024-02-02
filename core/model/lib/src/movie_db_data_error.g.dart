// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_db_data_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDbDataError _$MovieDbDataErrorFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'MovieDbDataError',
      json,
      ($checkedConvert) {
        final val = MovieDbDataError(
          statusCode: $checkedConvert('status_code', (v) => v as int?),
          statusMessage: $checkedConvert('status_message', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'statusCode': 'status_code',
        'statusMessage': 'status_message'
      },
    );
