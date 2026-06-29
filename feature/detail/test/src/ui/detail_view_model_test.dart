import 'package:core_data/datas.dart';
import 'package:core_model/models.dart';
import 'package:feature_detail/details.dart';
import 'package:feature_detail/src/ui/detail_ui_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../movie_detail_factory.dart';
import 'detail_view_model_test.mocks.dart';

@GenerateMocks([MovieRepository])
void main() {
  group('DetailViewModel (AsyncNotifier)', () {
    late MockMovieRepository movieRepository;
    late ProviderContainer container;
    const movieId = 1;
    final movieInfo = createMovieInfo;
    const movieImage = MovieImage(backdrops: [], posters: []);

    setUp(() {
      movieRepository = MockMovieRepository();
      when(movieRepository.getMovieImages(movieId)).thenAnswer((_) async => movieImage);
      when(movieRepository.getMovieInfo(movieId)).thenAnswer((_) async => movieInfo);
    });

    ProviderContainer createContainer() {
      final c = ProviderContainer(
        overrides: [movieRepositoryProvider.overrideWithValue(movieRepository)],
      );
      addTearDown(c.dispose);
      return c;
    }

    test('build loads movie info and images into DetailData', () async {
      container = createContainer();

      final data = await container.read(detailViewModelProvider(movieId).future);

      expect(data, DetailData(images: movieImage.backdrops ?? [], movieInfo: movieInfo));
    });

    test('toggleExpand flips isDesExpanded on the loaded data', () async {
      container = createContainer();
      await container.read(detailViewModelProvider(movieId).future);
      final notifier = container.read(detailViewModelProvider(movieId).notifier);

      notifier.toggleExpand();
      expect(container.read(detailViewModelProvider(movieId)).valueOrNull?.isDesExpanded, true);

      notifier.toggleExpand();
      expect(container.read(detailViewModelProvider(movieId)).valueOrNull?.isDesExpanded, false);
    });

    test('build surfaces the error as AsyncError when loading fails', () async {
      final exception = Exception();
      when(movieRepository.getMovieImages(movieId)).thenThrow(exception);
      container = createContainer();

      await expectLater(container.read(detailViewModelProvider(movieId).future), throwsA(exception));

      final state = container.read(detailViewModelProvider(movieId));
      expect(state, isA<AsyncError<DetailData>>());
      expect(state.error, exception);
    });
  });
}
