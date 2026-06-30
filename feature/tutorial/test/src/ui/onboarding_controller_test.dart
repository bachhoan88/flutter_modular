import 'package:feature_tutorial/tutorials.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  ProviderContainer createContainer() {
    final container = ProviderContainer();
    addTearDown(container.dispose);
    return container;
  }

  group('OnboardingController', () {
    test('first run: defaults to false when nothing is persisted', () async {
      SharedPreferences.setMockInitialValues({});
      final container = createContainer();

      final hasSeen = await container.read(onboardingControllerProvider.future);

      expect(hasSeen, isFalse);
    });

    test('returning user: reads true when previously completed', () async {
      SharedPreferences.setMockInitialValues({'has_seen_tutorial': true});
      final container = createContainer();

      final hasSeen = await container.read(onboardingControllerProvider.future);

      expect(hasSeen, isTrue);
    });

    test('complete() flips state to true and persists it', () async {
      SharedPreferences.setMockInitialValues({});
      final container = createContainer();
      await container.read(onboardingControllerProvider.future);

      await container.read(onboardingControllerProvider.notifier).complete();

      expect(container.read(onboardingControllerProvider).valueOrNull, isTrue);
      final prefs = await SharedPreferences.getInstance();
      expect(prefs.getBool('has_seen_tutorial'), isTrue);
    });
  });
}
