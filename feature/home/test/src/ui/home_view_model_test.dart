import 'package:core_data/datas.dart';
import 'package:feature_home/homes.dart';
import 'package:feature_home/src/ui/home_ui_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../movie_factory.dart';
import 'home_view_model_test.mocks.dart';

@GenerateMocks([MovieRepository])
void main() {
  group('HomeViewModel (AsyncNotifier)', () {
    late MockMovieRepository movieRepository;
    late ProviderContainer container;

    setUp(() {
      movieRepository = MockMovieRepository();
    });

    ProviderContainer createContainer() {
      final c = ProviderContainer(
        overrides: [movieRepositoryProvider.overrideWithValue(movieRepository)],
      );
      addTearDown(c.dispose);
      return c;
    }

    test('build fetches all categories and exposes AsyncData<HomeData>', () async {
      final movies = [createMovie];
      when(movieRepository.fetchMovies(any)).thenAnswer((_) async => movies);
      container = createContainer();

      final data = await container.read(homeViewModelProvider.future);

      expect(data.nowPlayingMovies, movies);
      expect(data.popularMovies, movies);
      expect(data.topMovies, movies);
      expect(data.upComingMovies, movies);
      expect(container.read(homeViewModelProvider), isA<AsyncData<HomeData>>());
    });

    test('build surfaces the error as AsyncError when the repository throws', () async {
      final exception = Exception('Failed to fetch movies');
      when(movieRepository.fetchMovies(any)).thenThrow(exception);
      container = createContainer();

      await expectLater(container.read(homeViewModelProvider.future), throwsA(exception));

      final state = container.read(homeViewModelProvider);
      expect(state, isA<AsyncError<HomeData>>());
      expect(state.error, exception);
    });
  });
}
