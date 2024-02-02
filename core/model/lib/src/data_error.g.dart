// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataError _$DataErrorFromJson(Map<String, dynamic> json) => $checkedCreate(
      'DataError',
      json,
      ($checkedConvert) {
        final val = DataError(
          errorCode: $checkedConvert('errorCode', (v) => v as int?),
          message: $checkedConvert('message', (v) => v as String?),
        );
        return val;
      },
    );
