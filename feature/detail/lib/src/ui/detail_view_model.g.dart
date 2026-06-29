// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$detailViewModelHash() => r'0d562029f3f535fd470093b8a1747cfc81f6705d';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$DetailViewModel
    extends BuildlessAutoDisposeAsyncNotifier<DetailData> {
  late final int movieId;

  FutureOr<DetailData> build(
    int movieId,
  );
}

/// Detail screen view model as a family [AsyncNotifier] (Riverpod codegen),
/// parameterised by [movieId]. Auto-disposes when no longer watched.
///
/// Mirrors feature/home: data flows back from [build] and is represented by
/// [AsyncValue]; the page reacts to errors via `ref.listen`.
///
/// Copied from [DetailViewModel].
@ProviderFor(DetailViewModel)
const detailViewModelProvider = DetailViewModelFamily();

/// Detail screen view model as a family [AsyncNotifier] (Riverpod codegen),
/// parameterised by [movieId]. Auto-disposes when no longer watched.
///
/// Mirrors feature/home: data flows back from [build] and is represented by
/// [AsyncValue]; the page reacts to errors via `ref.listen`.
///
/// Copied from [DetailViewModel].
class DetailViewModelFamily extends Family<AsyncValue<DetailData>> {
  /// Detail screen view model as a family [AsyncNotifier] (Riverpod codegen),
  /// parameterised by [movieId]. Auto-disposes when no longer watched.
  ///
  /// Mirrors feature/home: data flows back from [build] and is represented by
  /// [AsyncValue]; the page reacts to errors via `ref.listen`.
  ///
  /// Copied from [DetailViewModel].
  const DetailViewModelFamily();

  /// Detail screen view model as a family [AsyncNotifier] (Riverpod codegen),
  /// parameterised by [movieId]. Auto-disposes when no longer watched.
  ///
  /// Mirrors feature/home: data flows back from [build] and is represented by
  /// [AsyncValue]; the page reacts to errors via `ref.listen`.
  ///
  /// Copied from [DetailViewModel].
  DetailViewModelProvider call(
    int movieId,
  ) {
    return DetailViewModelProvider(
      movieId,
    );
  }

  @override
  DetailViewModelProvider getProviderOverride(
    covariant DetailViewModelProvider provider,
  ) {
    return call(
      provider.movieId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'detailViewModelProvider';
}

/// Detail screen view model as a family [AsyncNotifier] (Riverpod codegen),
/// parameterised by [movieId]. Auto-disposes when no longer watched.
///
/// Mirrors feature/home: data flows back from [build] and is represented by
/// [AsyncValue]; the page reacts to errors via `ref.listen`.
///
/// Copied from [DetailViewModel].
class DetailViewModelProvider
    extends AutoDisposeAsyncNotifierProviderImpl<DetailViewModel, DetailData> {
  /// Detail screen view model as a family [AsyncNotifier] (Riverpod codegen),
  /// parameterised by [movieId]. Auto-disposes when no longer watched.
  ///
  /// Mirrors feature/home: data flows back from [build] and is represented by
  /// [AsyncValue]; the page reacts to errors via `ref.listen`.
  ///
  /// Copied from [DetailViewModel].
  DetailViewModelProvider(
    int movieId,
  ) : this._internal(
          () => DetailViewModel()..movieId = movieId,
          from: detailViewModelProvider,
          name: r'detailViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$detailViewModelHash,
          dependencies: DetailViewModelFamily._dependencies,
          allTransitiveDependencies:
              DetailViewModelFamily._allTransitiveDependencies,
          movieId: movieId,
        );

  DetailViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.movieId,
  }) : super.internal();

  final int movieId;

  @override
  FutureOr<DetailData> runNotifierBuild(
    covariant DetailViewModel notifier,
  ) {
    return notifier.build(
      movieId,
    );
  }

  @override
  Override overrideWith(DetailViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: DetailViewModelProvider._internal(
        () => create()..movieId = movieId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        movieId: movieId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<DetailViewModel, DetailData>
      createElement() {
    return _DetailViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DetailViewModelProvider && other.movieId == movieId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, movieId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DetailViewModelRef on AutoDisposeAsyncNotifierProviderRef<DetailData> {
  /// The parameter `movieId` of this provider.
  int get movieId;
}

class _DetailViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<DetailViewModel, DetailData>
    with DetailViewModelRef {
  _DetailViewModelProviderElement(super.provider);

  @override
  int get movieId => (origin as DetailViewModelProvider).movieId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
