import 'package:core_model/src/base_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection.freezed.dart';
part 'collection.g.dart';

@freezed
class Collection with _$Collection, BaseModel {
  const factory Collection({
    int? id,
    String? name,
    @JsonKey(name: 'poster_path')
    String? posterPath,
    @JsonKey(name: 'backdrop_path')
    String? backdropPath,
  }) = _Collection;

  factory Collection.fromJson(Map<String, dynamic> json) => _$CollectionFromJson(json);
}
