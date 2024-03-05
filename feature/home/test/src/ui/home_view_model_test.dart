import 'package:core_data/datas.dart';
import 'package:core_ui/uis.dart';
import 'package:feature_home/homes.dart';
import 'package:feature_home/src/ui/home_ui_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../movie_factory.dart';
import 'home_view_model_test.mocks.dart';

@GenerateMocks([MovieRepository])
void main() {
  group('Test get movies', () {
    late HomeViewModel homeViewModel;
    late MovieRepository movieRepository;

    setUp(() {
      movieRepository = MockMovieRepository();

      when(movieRepository.fetchMovies('now_playing')).thenAnswer((_) async => []);
      when(movieRepository.fetchMovies('popular')).thenAnswer((_) async => []);
      when(movieRepository.fetchMovies('top_rated')).thenAnswer((_) async => []);
      when(movieRepository.fetchMovies('upcoming')).thenAnswer((_) async => []);

      homeViewModel = HomeViewModel(movieRepository);
    });

    test('Test [HomeViewModel] default state and call [getMovies]', () async {
      expect(homeViewModel.state, const UiStateLoading<HomeData>(true));
      verify(homeViewModel.getMovies());
    });

    testWidgets('fetchMovies returns movies successfully', (tester) async {
      /// Given data for [MovieRepository.fetchMovies]
      final movies = [createMovie];
      when(movieRepository.fetchMovies(any)).thenAnswer((_) async => movies);

      /// When call the [getMovies] function of [HomeViewModel]
      homeViewModel.getMovies();
      await tester.pump(const Duration(seconds: 1));

      /// Then, check the state of [HomeViewModel]
      expect(homeViewModel.state, isA<UiStateSuccess<HomeData>>());
      final successState = homeViewModel.state as UiStateSuccess<HomeData>;
      expect(successState.data.nowPlayingMovies, movies);
      expect(successState.data.popularMovies, movies);
      expect(successState.data.topMovies, movies);
      expect(successState.data.upComingMovies, movies);
    });

    test('fetchMovies throws an exception', () async {
      /// Given an exception when calling [MovieRepository.fetchMovies]
      final exception = Exception('Failed to fetch movies');
      when(movieRepository.fetchMovies(any)).thenThrow(exception);

      /// When call the [getMovies] function of [HomeViewModel]
      homeViewModel.getMovies();

      /// Then, check the state of [HomeViewModel]
      expect(homeViewModel.state, isA<UiStateException>());
      final exceptionState = homeViewModel.state as UiStateException;
      expect(exceptionState.exception, exception);
    });
  });
}
