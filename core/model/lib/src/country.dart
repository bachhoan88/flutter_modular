import 'package:core_model/src/base_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.g.dart';

part 'country.freezed.dart';

@freezed
abstract class Country with _$Country, BaseModel {
  const Country._();

  const factory Country({
    String? name,
    @JsonKey(name: 'iso_3166_1')
    String? code,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);
}
