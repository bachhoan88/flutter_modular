# Flutter Modular

A modularized Flutter sample app (architecture inspired by
[Now in Android](https://github.com/android/nowinandroid)) using Riverpod,
Dio + Retrofit, go_router and Material 3.

# Environment

## Framework
- Flutter: 3.44.4
- Dart: 3.12.2

## iOS
- Minimum deployment target: iOS 13

## Android
- minSdk: 21 (Android 5.0)
- targetSdk / compileSdk: 35
- Build toolchain: Gradle 8.9, Android Gradle Plugin 8.7.3, Kotlin 2.1.0, Java 17

## State management & code generation
- State: `riverpod` / `hooks_riverpod` 2.6.x — view models are `@riverpod`
  `AsyncNotifier`s; UI consumes `AsyncValue` and reacts to errors via
  `ref.listen` (`core_ui` `showExceptionBehavior` / `ref.listenException`).
- Models & unions: `freezed` (pinned `>=3.1.0 <3.2.0`) + `json_serializable`.
- API: `retrofit` + `dio`.
- Assets: FlutterGen via the standalone CLI (see [Code generation](#code-generation)).

# Architecture

The **Flutter Modular app** follows the
[official architecture guidance](https://developer.android.com/topic/architecture)
and is described in detail in the
[architecture learning journey](docs%2FArchitectureLearningJourney.md).
Exceptions are handled as described in the
[exception flow learning journey](docs%2FExceptionFlowLearningJourney.md).

# Modularization

The app is fully modularized; see the
[modularization learning journey](docs%2FModularizationLearningJourney.md).

Modules live under `core/` (shared libraries) and `feature/` (user-facing
features) and are wired together as **path dependencies**. Each module is a
Flutter package named `core_<name>` / `feature_<name>` and exposes a single
barrel file `lib/<name>.dart` (e.g. `core_network` → `lib/networks.dart`,
`feature_home` → `lib/homes.dart`).

All packages form a single **Dart pub workspace** (`resolution: workspace`;
members listed under `workspace:` in the root `pubspec.yaml`). They resolve
together against one shared `pubspec.lock`, so a dependency can never diverge
in version across modules. `flutter pub get` at the repo root resolves
everything.

```
app (lib/, main.dart, main_router.dart)
        │
        ▼
feature_home · feature_detail
        │
        ▼
core_ui · core_designsystem · core_data
        │
        ▼
core_network · core_model
        │
        ▼
core_common
```

Rules: a `feature` module never depends on another `feature` module; `core`
modules may depend on other `core` modules but never on `feature`/`app`.

# Build & Run

The app has `dev`, `stag` and `prod` flavors.

Install dependencies for every module:

```bash
make pub_get_all
```

Run a flavor (pass the matching `FLAVOR` dart-define):

```bash
flutter run -d DEVICE_ID --flavor dev  --dart-define=FLAVOR=dev
flutter run -d DEVICE_ID --flavor stag --dart-define=FLAVOR=stag
flutter run -d DEVICE_ID --flavor prod --dart-define=FLAVOR=prod
```

API configuration is read from `--dart-define` (defaults keep the public TMDB
demo working); override for real environments:

```bash
flutter build apk --flavor prod --dart-define=FLAVOR=prod \
  --dart-define=API_ENDPOINT=https://your.api \
  --dart-define=API_KEY=your_key
```

# Code generation

Generated files (`*.g.dart`, `*.freezed.dart`, `*.gen.dart`) are committed.
Regenerate them after editing annotated code:

```bash
# freezed / json_serializable / retrofit / riverpod, across all modules
make generate_sources_all

# FlutterGen asset/font code (standalone CLI, decoupled from build_runner).
# Run only when assets or fonts change.
make gen_assets
```

Other helpers: `make analyze_all`, `make test_all`, `make clean_all`.

# Creating a new module

Modules are created with the Flutter **module** template and then wired in by
hand. Naming convention: package `core_<name>` lives in `core/<name>`,
`feature_<name>` lives in `feature/<name>`.

### 1. Generate the module

```bash
# A shared core module → package core_foo at core/foo
flutter create --template=module \
  --org com.flutterexample.core --project-name core_foo \
  core/foo

# A feature module → package feature_bar at feature/bar
flutter create --template=module \
  --org com.flutterexample.feature --project-name feature_bar \
  feature/bar
```

> Tip: the quickest way to match conventions exactly is to copy the minimal
> `core/domain` module and rename it (`pubspec.yaml` `name:`, the barrel file,
> and the `androidPackage` / `iosBundleIdentifier`).

### 2. Align `pubspec.yaml`

Set the SDK constraint and the standard dev tooling. Add the codegen
dependencies only if the module uses freezed/json/retrofit/riverpod:

```yaml
name: core_foo            # or feature_bar
publish_to: none
version: 1.0.0+1

resolution: workspace     # join the pub workspace (shared lock / versions)

environment:
  sdk: '>=3.6.0 <4.0.0'

dependencies:
  flutter:
    sdk: flutter
  # path deps on the core modules this one needs, e.g.
  # core_common:
  #   path: ../common
  freezed_annotation: ^3.0.0       # if using freezed
  json_annotation: ^4.8.1          # if using json_serializable
  riverpod_annotation: ^2.6.1      # if it has @riverpod view models

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^5.0.0
  build_runner: ^2.4.8             # if generating code
  freezed: '>=3.1.0 <3.2.0'        # keep this pin (retrofit_generator needs source_gen <3)
  json_serializable: ^6.7.1
  riverpod_generator: ^2.6.1       # if it has @riverpod view models
```

Do **not** add `flutter_gen_runner` — asset code is generated via the
standalone CLI (`make gen_assets`). If the module ships assets, add a
`flutter_gen:` block instead.

### 3. Create the barrel file

Export the module's public API from a single file `lib/<name>.dart`:

```dart
// core/foo/lib/foos.dart
export 'src/...';
```

### 4. Register the module (workspace + path dependency)

Add the module path to the `workspace:` list in the **root** `pubspec.yaml`:

```yaml
workspace:
  - core/foo            # or feature/bar
```

Then add it as a path dependency to every consumer's `pubspec.yaml` (and to
the root `pubspec.yaml` for a feature module):

```yaml
dependencies:
  core_foo:
    path: ../foo          # relative path from the consumer module
```

### 5. (Feature only) add a route

Wire the feature's entry page into `lib/src/route/main_router.dart`:

```dart
import 'package:feature_bar/bars.dart';

GoRoute(
  path: '/bar',
  builder: (context, state) => const BarPage(),
),
```

### 6. Resolve & generate

```bash
make pub_get_all
make generate_sources_all   # only if the module uses code generation
```

# UI

Designed with [Material 3](https://m3.material.io), including dynamic color and
dark mode support.
