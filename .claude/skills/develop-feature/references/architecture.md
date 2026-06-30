# Architecture conventions (source of truth)

> This file owns: module layout, layer responsibilities, dependency rules, the
> mandatory state/exception/asset patterns, and the hard invariants. Keep it in
> sync with the code in the same PR that changes a convention.

See also the long-form docs: `docs/ArchitectureLearningJourney.md`,
`docs/ExceptionFlowLearningJourney.md`, `docs/ModularizationLearningJourney.md`,
and the root `README.md` (module-creation guide).

## Module layout & dependency rules

Packages live under `core/` (shared libraries) and `feature/` (user journeys),
plus the root `app` package (`lib/`). Each is a Flutter package named
`core_<name>` / `feature_<name>`, exposing ONE barrel `lib/<name>.dart`
(e.g. `core_network` → `lib/networks.dart`, `feature_home` → `lib/homes.dart`).

Dependency direction (never violate):
```
app (lib/)  ──►  feature_*  ──►  core_ui · core_designsystem · core_data
                                        └─► core_network · core_model ─► core_common
```
- A `feature` module MUST NOT depend on another `feature` module.
- `core` modules may depend on other `core` modules, never on `feature`/`app`.
- Cross-feature navigation/composition happens only in the `app` package (it is
  the only package that depends on every feature → it owns the Route Tree).

### Layer responsibilities
- `core_common` — `BaseException`/`ExceptionState`, `Environment`, `logger`,
  small shared types (`Tag`, `Redirect`, `Dialogs`, `GlobalAction`).
- `core_model` — freezed data models (`with _$X, BaseModel`).
- `core_network` — Dio + Retrofit API clients, interceptors, `TokenStorage`,
  `NetworkAppError` + `NetworkExceptionMapper`.
- `core_data` — repository interfaces + impls, `ExceptionMapper`, DI providers.
- `core_domain` — optional `UseCase`s (kept as an empty convention; add only
  when business logic warrants — see checklists §Decisions).
- `core_designsystem` — theme, colors, reusable Material 3 components, FlutterGen
  assets.
- `core_ui` — UI base helpers: `LoadingIndicator`, `ErrorPage`, `CustomDialog`,
  `showExceptionBehavior` / `WidgetRef.listenException`, `ContextExtension`.
- `feature_*` — a screen + its view model(s) + feature-local widgets.

## State management — MANDATORY pattern

Riverpod 2.6.x with code generation. **View models are `@riverpod`
AsyncNotifiers**; the UI consumes `AsyncValue`.

- `build()` returns the data (or throws); loading/data/error are represented by
  `AsyncValue`, NOT a custom state class.
- Fetch concurrently (`Future.wait`, or start futures then await) — never
  sequential awaits for independent calls.
- Long-lived screens: `@Riverpod(keepAlive: true)`. Parameterised screens:
  `build(SomeId id)` → family provider; default (auto-dispose) for detail-style.
- The generated provider replaces hand-written providers. Do NOT write
  `StateNotifierProvider` / manual `*Provider` for view models.

**Do NOT reintroduce the retired legacy pattern:** `StateNotifier`,
`BaseViewModel`, `UiState`/`BaseUiState`, `ExceptionStatelessWidget`,
`SingleObserver` were removed. Use AsyncNotifier + AsyncValue + `ref.listen`.

## Exception / error flow — MANDATORY

Errors converge to `BaseException` (sealed `ExceptionState`, subdivided by user
behaviour: `Toast`, `SnackBar`, `Alert`, `Dialog`, `Inline`, `Redirect`,
`OnPage`). Pipeline:
```
Dio/Retrofit error → NetworkAppError.from(e) → ExceptionMapper.mapperTo(...)
  → throws an ExceptionState → AsyncNotifier surfaces it as AsyncError
  → page: ref.listenException(context, provider) dispatches the side effect
          (toast/snackbar/alert/dialog); OnPageException → inline ErrorPage.
```
- Repository methods convert errors at the `.catchError` boundary via
  `ExceptionMapper`. Never let a raw `DioException` reach the view model.
- Side effects (toast/dialog/redirect) go through `ref.listen` — NEVER inside
  `build()`.
- `NetworkExceptionMapper.mapperTo` logs every API error via `logger` (debug
  only).

## Navigation

One Route Tree in the app package: `goRouterProvider` (`lib/src/route/
main_router.dart`), a `Provider<GoRouter>`. State-driven redirects use
`redirect` + `refreshListenable` fed by a Riverpod provider (see
`feature_tutorial` / `onboardingControllerProvider` for the reference pattern).
`Application` is a `ConsumerWidget` that watches `goRouterProvider`.

## Models & serialization

`freezed` (pinned `>=3.1.0 <3.2.0`) + `json_serializable`. Data classes:
`@freezed abstract class X with _$X, BaseModel { const X._(); const factory
X(...) = _X; factory X.fromJson(...) }`. Unions: `sealed class`. Generic freezed
classes MUST mix in `_$X<T>` (with the type arg).

## Build, codegen, assets

- Dart **pub workspace**: every package has `resolution: workspace` and is
  listed under `workspace:` in the root `pubspec.yaml`; one shared
  `pubspec.lock`. `flutter pub get` at root (or `make pub_get_all`) resolves all.
- Codegen: `make generate_sources_all` (freezed/json/retrofit/riverpod).
- Assets: FlutterGen via the standalone CLI (`make gen_assets`) — do NOT add
  `flutter_gen_runner` to build_runner. Assets live in their owning module with
  `package_parameter_enabled` so they bundle once and are referenced via
  `packages/<module>/...`.
- Secrets/config via `--dart-define` (`API_ENDPOINT`, `API_KEY`); never hardcode.

## Hard invariants (violating any = stop and surface)

1. Dependency direction above; no feature→feature deps; routing only in `app`.
2. AsyncNotifier + AsyncValue + `ref.listen`; no StateNotifier/UiState/
   SingleObserver/ExceptionStatelessWidget.
3. Errors as `ExceptionState` via the mapper; no raw exceptions in UI.
4. `freezed` stays pinned `<3.2.0` (retrofit_generator needs `source_gen <3`).
5. New module ⇒ `resolution: workspace` + add to root `workspace:` + barrel.
6. No `flutter_gen_runner`; assets via `make gen_assets`.
7. One public barrel per module; keep `src/` private.
8. Generated files (`*.g.dart`/`*.freezed.dart`/`*.gen.dart`) are committed.
