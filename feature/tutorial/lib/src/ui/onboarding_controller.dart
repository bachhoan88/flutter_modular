import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'onboarding_controller.g.dart';

/// Persists whether the user has finished the one-time tutorial.
///
/// Modelled as an `AsyncNotifier<bool>` — the modern successor to the legacy
/// `StateNotifier`: [build] loads the persisted flag, [complete] flips and
/// saves it. The app router watches this provider to choose tutorial-vs-home.
@Riverpod(keepAlive: true)
class OnboardingController extends _$OnboardingController {
  static const String _hasSeenTutorialKey = 'has_seen_tutorial';

  @override
  Future<bool> build() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_hasSeenTutorialKey) ?? false;
  }

  /// Marks the tutorial as completed and persists it.
  Future<void> complete() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_hasSeenTutorialKey, true);
    state = const AsyncData(true);
  }
}
