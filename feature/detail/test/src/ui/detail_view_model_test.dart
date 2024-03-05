import 'package:core_data/datas.dart';
import 'package:core_model/models.dart';
import 'package:core_ui/uis.dart';
import 'package:feature_detail/details.dart';
import 'package:feature_detail/src/ui/detail_ui_state.dart';
import 'package:mockito/annotations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../movie_detail_factory.dart';
import 'detail_view_model_test.mocks.dart';

@GenerateMocks([MovieRepository])
void main() {
  group('DetailViewModel', () {
    late MovieRepository movieRepository;
    late DetailViewModel detailViewModel;
    const movieId = 1;
    final movieInfo = createMovieInfo;
    const movieImage = MovieImage(backdrops: [], posters: []);

    setUp(() {
      movieRepository = MockMovieRepository();

      when(movieRepository.getMovieImages(movieId)).thenAnswer((_) async => movieImage);
      when(movieRepository.getMovieInfo(movieId)).thenAnswer((_) async => movieInfo);

      detailViewModel = DetailViewModel(movieId, movieRepository);
    });

    testWidgets('Should load movie info successful', (tester) async {
      await tester.pump(const Duration(seconds: 1));
      expect(detailViewModel.state.data, DetailData(images: movieImage.backdrops ?? [], movieInfo: movieInfo));
    });

    testWidgets('should toggle expand state when toggleExpand is called', (tester) async {
      /// Given data for [MovieRepository.getMovieImages] and [MovieRepository.getMovieInfo]
      when(movieRepository.getMovieImages(movieId)).thenAnswer((_) async => movieImage);
      when(movieRepository.getMovieInfo(movieId)).thenAnswer((_) async => movieInfo);

      await tester.pump(const Duration(seconds: 1));

      /// When, call the [toggleExpand] function of [DetailViewModel]
      detailViewModel.toggleExpand();

      /// Check the state of [DetailViewModel]
      expect(detailViewModel.state.data?.isDesExpanded, true);

      /// Double test, call the [toggleExpand] function of [DetailViewModel] again
      detailViewModel.toggleExpand();
      expect(detailViewModel.state.data?.isDesExpanded, false);
    });

    testWidgets('should handle exception when loading movie info fails', (tester) async {
      /// Given an exception when calling [MovieRepository.getMovieImages] and [MovieRepository.getMovieInfo]
      final exception = Exception();
      when(movieRepository.getMovieImages(movieId)).thenThrow(exception);

      /// When call the [DetailViewModel] with new mock data
      detailViewModel = DetailViewModel(movieId, movieRepository);
      await tester.pump(const Duration(seconds: 1));

      /// Check the state of [DetailViewModel]
      expect(detailViewModel.state, isA<UiStateException>());
      expect((detailViewModel.state as UiStateException).exception, exception);
    });

  });
}