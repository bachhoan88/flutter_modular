import 'package:core_model/src/base_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_data.g.dart';
part 'image_data.freezed.dart';

@freezed
class ImageData with _$ImageData, BaseModel {
  const factory ImageData({
    @JsonKey(name: 'file_path')
    String? imagePath,
    int? height,
    int? width,
    @JsonKey(name: 'iso_639_1')
    String? countryCode,
    @JsonKey(name: 'vote_average')
    double? voteAverage,
    @JsonKey(name: 'vote_count')
    int? voteCount,
  }) = _ImageData;

  factory ImageData.fromJson(Map<String, dynamic> json) => _$ImageDataFromJson(json);
}
