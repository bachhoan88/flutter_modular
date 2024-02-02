import 'package:core_model/src/base_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'language.g.dart';
part 'language.freezed.dart';

@freezed
class Language with _$Language, BaseModel {
  const factory Language({
    String? name,
    @JsonKey(name: 'english_name')
    String? engName,
    @JsonKey(name: 'iso_639_1')
    String? countryCode,
  }) = _Language;

  factory Language.fromJson(Map<String, dynamic> json) => _$LanguageFromJson(json);
}
