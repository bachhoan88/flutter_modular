import 'package:core_model/src/base_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'genre.g.dart';
part 'genre.freezed.dart';

@freezed
abstract class Genre with _$Genre, BaseModel {
  const Genre._();

  const factory Genre({int? id, String? name}) = _Genre;

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
}