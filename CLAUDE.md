# CLAUDE.md — project guide for AI assistants

Modular Flutter monorepo (architecture inspired by Now in Android). This file is
auto-loaded every session so all contributors get consistent, high-quality
output. Keep it short; detailed conventions live in the skill references.

## Building a feature
Use the **`develop-feature`** skill (`.claude/skills/develop-feature/`). It owns
the end-to-end, review-gated workflow (discovery → spec → plan → skeleton →
implement → routing → tests) and references the canonical conventions. Invoke it
for any "add a feature / build a screen / turn this spec or screenshot into code"
request.

## Hard invariants (do not violate — full list in the skill's architecture.md)
1. **Dependency direction:** `app → feature_* → core_ui/designsystem/data →
   core_network/model → core_common`. No feature→feature deps. Routing lives only
   in the `app` package (`lib/src/route/main_router.dart`, `goRouterProvider`).
2. **State:** view models are `@riverpod` AsyncNotifiers; UI consumes
   `AsyncValue`; side effects (toast/dialog/redirect) via `ref.listen`
   (`ref.listenException`). The legacy `StateNotifier`/`UiState`/`SingleObserver`/
   `ExceptionStatelessWidget` were removed — do not reintroduce them.
3. **Errors:** converge to `BaseException`/`ExceptionState` via `ExceptionMapper`;
   no raw `DioException` in the UI.
4. **Codegen:** `freezed` pinned `>=3.1.0 <3.2.0` (retrofit_generator needs
   `source_gen <3`). `make generate_sources_all` for freezed/json/retrofit/
   riverpod. Generated files are committed.
5. **Workspace:** Dart pub workspace — every package has `resolution: workspace`
   and is listed in the root `workspace:`; one shared `pubspec.lock`. New module ⇒
   register it + add one barrel `lib/<name>.dart` + a `.gitignore`.
6. **Assets:** FlutterGen via the standalone CLI (`make gen_assets`); never add
   `flutter_gen_runner`. Assets bundle once from their owning module
   (`package_parameter_enabled`).
7. **Config/secrets:** via `--dart-define` (`FLAVOR`, `API_ENDPOINT`, `API_KEY`).

## Commands
- Resolve deps: `make pub_get_all`  ·  Codegen: `make generate_sources_all`  ·
  Assets: `make gen_assets`
- Quality gate: `make analyze_all` then `make test_all`
- Run: `flutter run --flavor dev --dart-define=FLAVOR=dev`

## Environment
Flutter 3.44.4 / Dart 3.12.2 · iOS 13+ · Android minSdk 21 / target 35 (Gradle
8.9 / AGP 8.7.3 / Kotlin 2.1 / Java 17).
