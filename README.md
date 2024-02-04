# Environment

## Framework
- Flutter: 3.16.5
- Dart: 3.2.3

## iOS
- iOS 12+

## Android
- Min Android: 5.0
- Target SDK 34 (Android 14)

# Architecture

The **Flutter Modular app** follows the
[official architecture guidance](https://developer.android.com/topic/architecture)
and is described in detail in the
[architecture learning journey](docs%2FArchitectureLearningJourney.md).


# Modularization


The **Flutter Modular app** has been fully modularized and you can find the detailed guidance and
description of the modularization strategy used in
[modularization learning journey](docs%2FModularizationLearningJourney.md).


# Build & Run

The app contains the usual `dev` `stag` and `prod` build flavor.

Get dependencies

```
make pub_get_all
```

Run dev flavor application

```
flutter run -d DEVICE_ID --flavor dev --dart-define=FLAVOR=dev  
```

# UI

The app was designed using [Material 3 guidelines](https://m3.material.io). Learn more about the design process

The app has only themes:
- Dynamic color - uses colors based on the user's [current color theme](https://material.io/blog/announcing-material-you)

Each theme also supports dark mode.