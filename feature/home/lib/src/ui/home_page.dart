import 'package:core_designsystem/design_system.dart';
import 'package:core_model/models.dart';
import 'package:core_ui/uis.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:feature_home/homes.dart';
import 'package:feature_home/src/ui/component/category_view.dart';
import 'package:feature_home/src/ui/component/my_list_view.dart';
import 'package:feature_home/src/ui/component/popular_view.dart';
import 'package:feature_home/src/ui/component/slider_view.dart';
import 'package:feature_home/src/ui/home_ui_state.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(actionDrawer: () {
        final currentLocale = context.locale;
        if (currentLocale == const Locale('en', 'US')) {
          context.setLocale(const Locale('vi', 'VN'));
        } else {
          context.setLocale(const Locale('en', 'US'));
        }
      }),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ExceptionStatelessWidget<UiState<HomeData>>(
        viewModelProvider: homeViewModelProvider,
        child: LayoutBuilder(
          builder: (context, viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: viewportConstraints.maxHeight),
                child: Column(
                  children: [
                    Consumer(builder: (context, ref, _) {
                      final movies = ref.watch(homeViewModelProvider.select((value) => value.data?.nowPlayingMovies));
                      if (movies != null) {
                        return SliderView(
                          movies: movies,
                          actionOpenMovie: (movie) {
                            actionMovieDetail(context, movie);
                          },
                        );
                      } else {
                        return const SizedBox();
                      }
                    }),
                    const Divider(height: 4.0, color: Colors.transparent),
                    Consumer(builder: (context, ref, _) {
                      final movies = ref.watch(homeViewModelProvider.select((value) => value.data?.upComingMovies));
                      if (movies != null) {
                        return CategoryView(
                          movies: movies,
                          actionOpenCategory: (movie) {
                            actionMovieDetail(context, movie);
                          },
                        );
                      } else {
                        return const SizedBox();
                      }
                    }),
                    const Divider(height: 8.0, color: Colors.transparent),
                    Consumer(builder: (context, ref, _) {
                      final movies = ref.watch(homeViewModelProvider.select((value) => value.data?.topMovies));
                      if (movies != null) {
                        return MyListView(
                          movies: movies,
                          actionOpenMovie: (movie) {
                            actionMovieDetail(context, movie);
                          },
                          actionLoadAll: () {},
                        );
                      } else {
                        return const SizedBox();
                      }
                    }),
                    const Divider(height: 8.0, color: Colors.transparent),
                    Consumer(builder: (context, ref, _) {
                      final movies = ref.watch(homeViewModelProvider.select((value) => value.data?.popularMovies));
                      if (movies != null) {
                        return PopularView(
                          movies: movies,
                          actionOpenMovie: (movie) {
                            actionMovieDetail(context, movie);
                          },
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
        ),
      ),
    );
  }

  void actionMovieDetail(BuildContext context, Movie movie) {
    context.push('/details', extra: movie);
  }
}
