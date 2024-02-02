import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_error.g.dart';

@JsonSerializable(createToJson: false, checked: true)
class DataError implements Equatable {
  final int? errorCode;
  final String? message;

  DataError({this.errorCode, this.message});

  factory DataError.fromJson(Map<String, dynamic> json) => _$DataErrorFromJson(json);

  @override
  List<Object?> get props => [errorCode, message];

  @override
  bool? get stringify => true;
}