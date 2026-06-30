# Code templates (per layer)

> This file owns the canonical code shape for each layer. Replace `Foo`/`foo`.
> These match the live patterns in `feature_home`, `feature_detail`,
> `feature_tutorial`, `core_data`, `core_network`. Keep in sync with the code.

## 0. New module pubspec (`feature/foo/pubspec.yaml`)
```yaml
name: feature_foo
description: "Foo feature"
version: 1.0.0+1
publish_to: none
resolution: workspace            # REQUIRED: joins the pub workspace

environment:
  sdk: '>=3.6.0 <4.0.0'

dependencies:
  flutter: { sdk: flutter }
  hooks_riverpod: ^2.6.1
  riverpod_annotation: ^2.6.1
  go_router: ^14.1.4
  core_model: { path: ../../core/model }
  core_common: { path: ../../core/common }
  core_ui: { path: ../../core/ui }
  core_data: { path: ../../core/data }
  core_designsystem: { path: ../../core/designsystem }

dev_dependencies:
  flutter_test: { sdk: flutter }
  flutter_lints: ^5.0.0
  build_runner: ^2.4.8
  riverpod_generator: ^2.6.1
  freezed: '>=3.1.0 <3.2.0'        # only if the module declares freezed classes
  freezed_annotation: ^3.0.0       # (move to dependencies if used)
  json_serializable: ^6.7.1
  mockito: ^5.4.4                  # if writing repository mocks
```
Then: add `feature/foo` to root `workspace:` AND as a `feature_foo: { path:
feature/foo }` dependency where consumed; create barrel `lib/foos.dart`; copy a
sibling module's `.gitignore`.

## 1. Model (`core_model/lib/src/foo.dart`)
```dart
import 'package:core_model/src/base_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'foo.freezed.dart';
part 'foo.g.dart';

@freezed
abstract class Foo with _$Foo, BaseModel {
  const Foo._();
  const factory Foo({ int? id, @JsonKey(name: 'display_name') String? name }) = _Foo;
  factory Foo.fromJson(Map<String, dynamic> json) => _$FooFromJson(json);
}
```
Export from `core_model/lib/models.dart`. Generic class → `with _$Foo<T>, ...`.

## 2. API (`core_network/lib/src/remote/api/foo_api.dart`)
```dart
import 'package:core_model/models.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';   // full barrel (ParseErrorLogger)
part 'foo_api.g.dart';

@RestApi()
abstract class FooApi {
  factory FooApi(Dio dio) = _FooApi;
  @GET('/foo/{id}')
  Future<Foo> getFoo(@Path('id') int id, @Query('api_key') String key);
}
```
Provider in `core_network/lib/src/di/network_provider.dart`:
`final fooApiProvider = Provider<FooApi>((ref) => FooApi(ref.watch(dioBuilderProvider)));`

## 3. Repository (`core_data/lib/src/repository/...`)
```dart
abstract class FooRepository { Future<Foo> getFoo(int id); }

class FooRepositoryImpl implements FooRepository {
  final FooApi _api; final String _apiKey; final ExceptionMapper _mapper;
  FooRepositoryImpl(this._api, {String? apiKey, ExceptionMapper? exceptionMapper})
      : _mapper = exceptionMapper ?? ExceptionMapper(),
        _apiKey = apiKey ?? Environment.shared().apiKey;

  @override
  Future<Foo> getFoo(int id) => _api.getFoo(id, _apiKey)
      .catchError((e) async => throw await _mapper.mapperTo(NetworkAppError.from(e)));
}
final fooRepositoryProvider = Provider<FooRepository>(
    (ref) => FooRepositoryImpl(ref.watch(fooApiProvider)));
```

## 4. UI state (`feature_foo/lib/src/ui/foo_ui_state.dart`)
```dart
@freezed
abstract class FooData with _$FooData {
  const factory FooData({ required Foo foo, @Default(false) bool expanded }) = _FooData;
}
```

## 5. View model — AsyncNotifier (`.../foo_view_model.dart`)
SKELETON (Phase 4, fake data):
```dart
@riverpod
class FooViewModel extends _$FooViewModel {
  @override
  Future<FooData> build(int id) async {
    // TODO(real): final repo = ref.watch(fooRepositoryProvider); ...
    await Future<void>.delayed(const Duration(milliseconds: 300)); // simulate
    return const FooData(foo: Foo(id: 0, name: 'Sample'));
  }
}
```
REAL (Phase 5):
```dart
@riverpod
class FooViewModel extends _$FooViewModel {
  @override
  Future<FooData> build(int id) async {
    final repo = ref.watch(fooRepositoryProvider);
    final foo = await repo.getFoo(id);
    return FooData(foo: foo);
  }
  void toggle() {
    final cur = state.valueOrNull;
    if (cur != null) state = AsyncData(cur.copyWith(expanded: !cur.expanded));
  }
}
```
`part 'foo_view_model.g.dart';` + `import 'package:riverpod_annotation/...';`.
Use `@Riverpod(keepAlive: true)` for long-lived screens.

## 6. Page — ConsumerWidget (`.../foo_page.dart`)
```dart
class FooPage extends ConsumerWidget {
  const FooPage({super.key, required this.id});
  final int id;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listenException(context, fooViewModelProvider(id));     // toast/dialog
    return Scaffold(
      body: Stack(children: [
        Consumer(builder: (context, ref, _) {
          final showError = ref.watch(fooViewModelProvider(id)
              .select((s) => s.error is OnPageException && !s.hasValue));
          if (showError) {
            final e = ref.read(fooViewModelProvider(id)).error as OnPageException;
            return ErrorPage(message: e.messageId?.tr() ?? e.message ?? '',
                retry: () => ref.invalidate(fooViewModelProvider(id)));
          }
          return _content(context, id);
        }),
        Consumer(builder: (context, ref, _) {
          final loading = ref.watch(fooViewModelProvider(id).select((s) => s.isLoading));
          return loading ? const LoadingIndicator() : const SizedBox();
        }),
      ]),
    );
  }
  Widget _content(BuildContext context, int id) => Consumer(builder: (context, ref, _) {
    final name = ref.watch(fooViewModelProvider(id).select((s) => s.valueOrNull?.foo.name));
    return Center(child: Text(name ?? ''));
  });
}
```
Barrel `lib/foos.dart`: `export 'src/ui/foo_page.dart'; export 'src/ui/foo_view_model.dart';`

## 7. Preview route (Phase 4 — temporary, REMOVE in Phase 6)
Run straight to the new screen without touching real navigation:
```dart
// lib/main.dart — guarded by a dart-define so it never ships
const _preview = String.fromEnvironment('PREVIEW');   // e.g. PREVIEW=foo
// in app router initialLocation: _preview == 'foo' ? '/foo-preview' : '/'
// + a GoRoute('/foo-preview', builder: (_, __) => const FooPage(id: 1))
```
Launch: `flutter run --flavor dev --dart-define=FLAVOR=dev --dart-define=PREVIEW=foo`.

## 8. Unit test (`feature_foo/test/src/ui/foo_view_model_test.dart`)
```dart
@GenerateMocks([FooRepository])
void main() {
  late MockFooRepository repo; late ProviderContainer container;
  setUp(() => repo = MockFooRepository());
  ProviderContainer make() {
    final c = ProviderContainer(overrides: [fooRepositoryProvider.overrideWithValue(repo)]);
    addTearDown(c.dispose); return c;
  }
  test('build returns data on success', () async {
    when(repo.getFoo(1)).thenAnswer((_) async => const Foo(id: 1, name: 'x'));
    container = make();
    final data = await container.read(fooViewModelProvider(1).future);
    expect(data.foo.name, 'x');
  });
  test('surfaces AsyncError when repository throws', () async {
    final ex = Exception('boom');
    when(repo.getFoo(1)).thenThrow(ex);
    container = make();
    await expectLater(container.read(fooViewModelProvider(1).future), throwsA(ex));
    expect(container.read(fooViewModelProvider(1)), isA<AsyncError<FooData>>());
  });
}
```
For SharedPreferences-backed controllers, use `SharedPreferences.setMockInitialValues({...})`.
