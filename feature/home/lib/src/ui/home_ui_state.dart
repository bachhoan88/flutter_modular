import 'package:core_model/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_ui_state.freezed.dart';

@freezed
class HomeData with _$HomeData {
  const factory HomeData({
    List<Movie>? nowPlayingMovies,
    List<Movie>? topMovies,
    List<Movie>? upComingMovies,
    List<Movie>? popularMovies,
  }) = _HomeData;
}
