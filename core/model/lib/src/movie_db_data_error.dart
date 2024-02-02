import 'package:core_model/src/data_error.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_db_data_error.g.dart';

@JsonSerializable(createToJson: false, checked: true)
class MovieDbDataError implements Equatable {
  @JsonKey(name: 'status_code')
  final int? statusCode;
  @JsonKey(name: 'status_message')
  final String? statusMessage;

  MovieDbDataError({this.statusCode, this.statusMessage});

  factory MovieDbDataError.fromJson(Map<String, dynamic> json) => _$MovieDbDataErrorFromJson(json);

  @override
  List<Object?> get props => [statusCode, statusMessage];

  @override
  bool? get stringify => true;
}

extension MovieDbDataErrorExt on MovieDbDataError {
  DataError toErrorDataModel() => DataError(
    errorCode: statusCode,
    message: statusMessage,
  );
}