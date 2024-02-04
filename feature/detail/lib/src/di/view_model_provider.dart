import 'package:core_data/datas.dart';
import 'package:core_ui/uis.dart';
import 'package:feature_detail/details.dart';
import 'package:feature_detail/src/ui/detail_ui_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final detailViewModelProvider = StateNotifierProvider.autoDispose.family<DetailViewModel, UiState<DetailData>, int>(
  (ref, movieId) => DetailViewModel(movieId, ref.read(movieRepositoryProvider)),
);
