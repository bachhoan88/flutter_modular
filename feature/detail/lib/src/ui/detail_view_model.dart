import 'package:core_data/datas.dart';
import 'package:feature_detail/src/ui/detail_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'detail_view_model.g.dart';

/// Detail screen view model as a family [AsyncNotifier] (Riverpod codegen),
/// parameterised by [movieId]. Auto-disposes when no longer watched.
///
/// Mirrors feature/home: data flows back from [build] and is represented by
/// [AsyncValue]; the page reacts to errors via `ref.listen`.
@riverpod
class DetailViewModel extends _$DetailViewModel {
  @override
  Future<DetailData> build(int movieId) async {
    final movieRepository = ref.watch(movieRepositoryProvider);

    // Start both requests before awaiting so they run concurrently while
    // keeping their concrete types (unlike Future.wait, which would widen).
    final imagesFuture = movieRepository.getMovieImages(movieId);
    final infoFuture = movieRepository.getMovieInfo(movieId);
    final movieImage = await imagesFuture;
    final movieInfo = await infoFuture;

    return DetailData(
      images: movieImage.backdrops ?? [],
      movieInfo: movieInfo,
      isDesExpanded: false,
    );
  }

  /// Toggles the overview expand flag on the loaded data.
  void toggleExpand() {
    final current = state.valueOrNull;
    if (current != null) {
      state = AsyncData(current.copyWith(isDesExpanded: !current.isDesExpanded));
    }
  }
}
