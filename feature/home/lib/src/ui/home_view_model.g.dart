// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homeViewModelHash() => r'8d03d1ff70ff6e274f7e885a90a8bfa19cd324aa';

/// Home screen view model, modelled as an [AsyncNotifier] (Riverpod codegen).
///
/// Compared to the legacy [StateNotifier] + custom `UiState` approach (see
/// feature/detail), this returns plain data from [build] and lets Riverpod's
/// [AsyncValue] represent loading / data / error. Errors raised here surface as
/// `AsyncError`, which the page observes via `ref.listen` for one-shot UI
/// behaviour (toast/dialog/...) — no `SingleObserver` needed.
///
/// Copied from [HomeViewModel].
@ProviderFor(HomeViewModel)
final homeViewModelProvider =
    AsyncNotifierProvider<HomeViewModel, HomeData>.internal(
  HomeViewModel.new,
  name: r'homeViewModelProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$homeViewModelHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$HomeViewModel = AsyncNotifier<HomeData>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
