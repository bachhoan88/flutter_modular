import 'package:core_common/commons.dart';
import 'package:core_data/datas.dart';
import 'package:core_ui/uis.dart';
import 'package:feature_home/src/ui/home_ui_state.dart';

class HomeViewModel extends BaseViewModel<UiState<HomeData>> {
  final MovieRepository _movieRepository;

  HomeViewModel(MovieRepository movieRepository)
      : _movieRepository = movieRepository,
        super(const UiStateLoading(true)) {
    getMovies();
  }

  void getMovies() async {
    try {
      final nowPlaying = await _movieRepository.fetchMovies('now_playing');
      final popular = await _movieRepository.fetchMovies('popular');
      final topRate = await _movieRepository.fetchMovies('top_rated');
      final upComing = await _movieRepository.fetchMovies('upcoming');

      state = UiStateSuccess(HomeData(
        nowPlayingMovies: nowPlaying,
        popularMovies: popular,
        topMovies: topRate,
        upComingMovies: upComing,
      ));

    } on Exception catch (e) {
      handleExceptionState(e);
      state = UiStateException(SingleObserver(data: e));
    }
  }
}
