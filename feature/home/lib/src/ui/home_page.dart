import 'package:core_common/commons.dart';
import 'package:core_designsystem/design_system.dart';
import 'package:core_model/models.dart';
import 'package:core_ui/uis.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:feature_home/homes.dart';
import 'package:feature_home/src/ui/component/category_view.dart';
import 'package:feature_home/src/ui/component/my_list_view.dart';
import 'package:feature_home/src/ui/component/popular_view.dart';
import 'package:feature_home/src/ui/component/slider_view.dart';
import 'package:feature_home/src/ui/home_exception_handler.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Side-effect channel: transient errors (toast/snackbar/alert/dialog) are
    // dispatched here via ref.listen — never from build, and without a
    // SingleObserver to de-duplicate.
    ref.listen(homeViewModelProvider, (previous, next) {
      next.whenOrNull(error: (error, _) => showExceptionBehavior(context, error));
    });

    return Scaffold(
      appBar: TopAppBar(actionDrawer: () {
        final currentLocale = context.locale;
        if (currentLocale == const Locale('en', 'US')) {
          context.setLocale(const Locale('vi', 'VN'));
        } else {
          context.setLocale(const Locale('en', 'US'));
        }
      }),
      backgroundColor: context.colorScheme.surface,
      body: Stack(
        children: [
          Consumer(builder: (context, ref, _) {
            // Full-screen error only when there is nothing to show yet.
            final showErrorPage = ref.watch(
              homeViewModelProvider.select((state) => state.error is OnPageException && !state.hasValue),
            );
            if (showErrorPage) {
              final error = ref.read(homeViewModelProvider).error as OnPageException;
              return ErrorPage(
                message: error.messageId?.tr() ?? error.message ?? '',
                retry: () => ref.read(homeViewModelProvider.notifier).refresh(),
              );
            }
            return _content(context);
          }),
          Consumer(builder: (context, ref, _) {
            final isLoading = ref.watch(homeViewModelProvider.select((state) => state.isLoading));
            return isLoading ? const LoadingIndicator() : const SizedBox();
          }),
        ],
      ),
    );
  }

  Widget _content(BuildContext context) {
    return LayoutBuilder(
      builder: (context, viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: viewportConstraints.maxHeight),
            child: Column(
              children: [
                Consumer(builder: (context, ref, _) {
                  final movies = ref.watch(homeViewModelProvider.select((value) => value.valueOrNull?.nowPlayingMovies));
                  if (movies != null) {
                    return SliderView(
                      movies: movies,
                      actionOpenMovie: (movie) => actionMovieDetail(context, movie),
                    );
                  } else {
                    return const SizedBox();
                  }
                }),
                const Divider(height: 4.0, color: Colors.transparent),
                Consumer(builder: (context, ref, _) {
                  final movies = ref.watch(homeViewModelProvider.select((value) => value.valueOrNull?.upComingMovies));
                  if (movies != null) {
                    return CategoryView(
                      movies: movies,
                      actionOpenCategory: (movie) => actionMovieDetail(context, movie),
                    );
                  } else {
                    return const SizedBox();
                  }
                }),
                const Divider(height: 8.0, color: Colors.transparent),
                Consumer(builder: (context, ref, _) {
                  final movies = ref.watch(homeViewModelProvider.select((value) => value.valueOrNull?.topMovies));
                  if (movies != null) {
                    return MyListView(
                      movies: movies,
                      actionOpenMovie: (movie) => actionMovieDetail(context, movie),
                      actionLoadAll: () {},
                    );
                  } else {
                    return const SizedBox();
                  }
                }),
                const Divider(height: 8.0, color: Colors.transparent),
                Consumer(builder: (context, ref, _) {
                  final movies = ref.watch(homeViewModelProvider.select((value) => value.valueOrNull?.popularMovies));
                  if (movies != null) {
                    return PopularView(
                      movies: movies,
                      actionOpenMovie: (movie) => actionMovieDetail(context, movie),
                      actionLoadAll: () {},
                    );
                  } else {
                    return const SizedBox();
                  }
                }),
              ],
            ),
          ),
        );
      },
    );
  }

  void actionMovieDetail(BuildContext context, Movie movie) {
    context.push('/details', extra: movie);
  }
}
