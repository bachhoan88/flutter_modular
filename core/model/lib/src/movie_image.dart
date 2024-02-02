import 'package:core_model/src/base_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'image_data.dart';

part 'movie_image.freezed.dart';
part 'movie_image.g.dart';

@freezed
class MovieImage with _$MovieImage, BaseModel {
  const factory MovieImage({List<ImageData>? backdrops, List<ImageData>? posters}) = _MovieImage;

  factory MovieImage.fromJson(Map<String, dynamic> json) => _$MovieImageFromJson(json);
}
