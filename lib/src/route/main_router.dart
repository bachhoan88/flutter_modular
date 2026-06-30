import 'package:feature_detail/details.dart';
import 'package:feature_home/homes.dart';
import 'package:feature_tutorial/tutorials.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// The app's single Route Tree. It lives in the `app` package because that is
/// the only place that depends on every feature module.
///
/// The router reacts to [onboardingControllerProvider] (a Riverpod
/// AsyncNotifier — the successor to StateNotifier): first-time users are
/// redirected to `/tutorial`, returning users go straight to `/`.
///
/// `refreshListenable` re-runs `redirect` whenever the onboarding flag changes
/// (e.g. after the user taps "Get started"), without rebuilding the router and
/// losing navigation state.
final goRouterProvider = Provider<GoRouter>((ref) {
  final refreshSignal = ValueNotifier<int>(0);
  ref.onDispose(refreshSignal.dispose);
  ref.listen(onboardingControllerProvider, (_, __) => refreshSignal.value++);

  return GoRouter(
    initialLocation: '/',
    refreshListenable: refreshSignal,
    redirect: (context, state) {
      final hasSeenTutorial = ref.read(onboardingControllerProvider).valueOrNull;
      // Still loading the persisted flag — don't redirect yet.
      if (hasSeenTutorial == null) return null;

      final goingToTutorial = state.matchedLocation == '/tutorial';
      if (!hasSeenTutorial && !goingToTutorial) return '/tutorial';
      if (hasSeenTutorial && goingToTutorial) return '/';
      return null;
    },
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
        routes: <RouteBase>[
          GoRoute(
            path: 'details',
            builder: (context, state) => const DetailPage(),
          ),
        ],
      ),
      GoRoute(
        path: '/tutorial',
        builder: (context, state) => const TutorialPage(),
      ),
    ],
  );
});
