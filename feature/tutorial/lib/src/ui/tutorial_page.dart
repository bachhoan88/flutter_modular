import 'package:feature_tutorial/src/ui/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// One-time onboarding screen shown on first launch.
class TutorialPage extends ConsumerWidget {
  const TutorialPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              Icon(Icons.movie_creation_outlined, size: 96.0, color: theme.colorScheme.primary),
              const SizedBox(height: 24.0),
              Text('Welcome', textAlign: TextAlign.center, style: theme.textTheme.headlineMedium),
              const SizedBox(height: 12.0),
              Text(
                'Discover now playing, popular and top-rated movies — all in one place.',
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium,
              ),
              const Spacer(),
              FilledButton(
                onPressed: () async {
                  await ref.read(onboardingControllerProvider.notifier).complete();
                  if (context.mounted) context.go('/');
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Text('Get started'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
