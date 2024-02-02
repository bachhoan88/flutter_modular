import 'package:core_common/commons.dart';
import 'package:core_data/datas.dart';
import 'package:core_ui/uis.dart';
import 'package:feature_detail/src/ui/detail_ui_state.dart';

class DetailViewModel extends BaseViewModel<UiState<DetailData>> {
  final MovieRepository _movieRepository;

  DetailViewModel(MovieRepository movieRepository)
      : _movieRepository = movieRepository,
        super(const UiStateLoading(true));

  void toggleExpand() {
    final DetailData? data = state.data;
    if (data != null && state is UiStateSuccess) {
      final UiStateSuccess<DetailData> currentState = state as UiStateSuccess<DetailData>;
      state = currentState.copyWith(data: currentState.data.copyWith(isDesExpanded: !data.isDesExpanded));
    }
  }

  void getMovieInfo(int movieId) async {
    try {
      final movieImage = await _movieRepository.getMovieImages(movieId);
      final movieInfo = await _movieRepository.getMovieInfo(movieId);

      state = UiStateSuccess(DetailData(
        images: movieImage.backdrops ?? [],
        movieInfo: movieInfo,
        isDesExpanded: false,
      ));
    } on Exception catch (e) {
      handleExceptionState(e);
      state = UiStateException(e);
    }
  }
}
