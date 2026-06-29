import 'package:core_data/datas.dart';
import 'package:feature_home/src/ui/home_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_view_model.g.dart';

/// Home screen view model, modelled as an [AsyncNotifier] (Riverpod codegen).
///
/// Compared to the legacy [StateNotifier] + custom `UiState` approach (see
/// feature/detail), this returns plain data from [build] and lets Riverpod's
/// [AsyncValue] represent loading / data / error. Errors raised here surface as
/// `AsyncError`, which the page observes via `ref.listen` for one-shot UI
/// behaviour (toast/dialog/...) — no `SingleObserver` needed.
@Riverpod(keepAlive: true)
class HomeViewModel extends _$HomeViewModel {
  @override
  Future<HomeData> build() async {
    final movieRepository = ref.watch(movieRepositoryProvider);

    // Fetch all categories in parallel instead of sequentially.
    final results = await Future.wait([
      movieRepository.fetchMovies('now_playing'),
      movieRepository.fetchMovies('popular'),
      movieRepository.fetchMovies('top_rated'),
      movieRepository.fetchMovies('upcoming'),
    ]);

    return HomeData(
      nowPlayingMovies: results[0],
      popularMovies: results[1],
      topMovies: results[2],
      upComingMovies: results[3],
    );
  }

  /// Re-runs [build]; used by the error page's retry action.
  Future<void> refresh() async {
    state = const AsyncLoading<HomeData>();
    state = await AsyncValue.guard(build);
  }
}
