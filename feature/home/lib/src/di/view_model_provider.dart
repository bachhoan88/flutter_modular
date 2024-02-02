import 'package:core_data/datas.dart';
import 'package:core_ui/uis.dart';
import 'package:feature_home/homes.dart';
import 'package:feature_home/src/ui/home_ui_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeViewModelProvider = StateNotifierProvider<HomeViewModel, UiState<HomeData>>(
      (ref) => HomeViewModel(ref.read(movieRepositoryProvider)),
);