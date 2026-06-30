// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$onboardingControllerHash() =>
    r'2378823f8c9dca2c9e2ba266b454a59181902500';

/// Persists whether the user has finished the one-time tutorial.
///
/// Modelled as an `AsyncNotifier<bool>` — the modern successor to the legacy
/// `StateNotifier`: [build] loads the persisted flag, [complete] flips and
/// saves it. The app router watches this provider to choose tutorial-vs-home.
///
/// Copied from [OnboardingController].
@ProviderFor(OnboardingController)
final onboardingControllerProvider =
    AsyncNotifierProvider<OnboardingController, bool>.internal(
  OnboardingController.new,
  name: r'onboardingControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$onboardingControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$OnboardingController = AsyncNotifier<bool>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
