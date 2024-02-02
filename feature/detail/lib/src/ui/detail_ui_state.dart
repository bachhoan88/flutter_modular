import 'package:core_model/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_ui_state.freezed.dart';

@freezed
class DetailData with _$DetailData {
  const factory DetailData({
    @Default(false)
    bool isDesExpanded,
    required List<ImageData> images,
    required MovieInfo movieInfo,
  }) = _DetailData;
}
