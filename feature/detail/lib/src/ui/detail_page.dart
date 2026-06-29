import 'package:cached_network_image/cached_network_image.dart';
import 'package:core_common/commons.dart';
import 'package:core_designsystem/design_system.dart';
import 'package:core_model/models.dart';
import 'package:core_ui/uis.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:feature_detail/src/ui/component/custom_shape_clip_oval.dart';
import 'package:feature_detail/src/ui/detail_view_model.dart';
import 'package:feature_detail/src/ui/component/movie_info_view.dart';
import 'package:feature_detail/src/ui/component/screen_shot_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// coverage:ignore-file
class DetailPage extends ConsumerWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movie = GoRouterState.of(context).extra as Movie;
    final movieId = movie.id ?? 0;

    // Transient errors dispatched through the side-effect channel.
    ref.listenException(context, detailViewModelProvider(movieId));

    return PopScope(
      child: Scaffold(
        body: Stack(
          children: [
            Consumer(builder: (context, ref, _) {
              final showErrorPage = ref.watch(
                detailViewModelProvider(movieId).select((state) => state.error is OnPageException && !state.hasValue),
              );
              if (showErrorPage) {
                final error = ref.read(detailViewModelProvider(movieId)).error as OnPageException;
                return ErrorPage(
                  message: error.messageId?.tr() ?? error.message ?? '',
                  retry: () => ref.invalidate(detailViewModelProvider(movieId)),
                );
              }
              return _content(context, movieId);
            }),
            Consumer(builder: (context, ref, _) {
              final isLoading = ref.watch(detailViewModelProvider(movieId).select((state) => state.isLoading));
              return isLoading ? const LoadingIndicator() : const SizedBox();
            }),
            DetailAppBar(actionBack: () {
              GoRouter.of(context).pop();
            }),
          ],
        ),
      ),
    );
  }

  Widget _content(BuildContext context, int movieId) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: viewportConstraints.maxHeight),
            child: Column(
              children: [
                _createDetailHeader(context),
                Consumer(builder: (context, ref, _) {
                  final movieInfo = ref.watch(
                    detailViewModelProvider(movieId).select((value) => value.valueOrNull?.movieInfo),
                  );
                  if (movieInfo != null) {
                    return MovieInfoView(movieInfo: movieInfo);
                  } else {
                    return const SizedBox();
                  }
                }),
                const Divider(height: 8.0, color: Colors.transparent),
                Consumer(builder: (context, ref, _) {
                  final images = ref.watch(
                    detailViewModelProvider(movieId).select((value) => value.valueOrNull?.images),
                  );
                  if (images != null) {
                    return ScreenshotView(
                      images: images,
                      actionOpenImage: (img) {},
                      actionLoadAll: () {
                        final currentLocale = context.locale;
                        if (currentLocale == const Locale('en', 'US')) {
                          context.setLocale(const Locale('vi', 'VN'));
                        } else {
                          context.setLocale(const Locale('en', 'US'));
                        }
                      },
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

  Widget _createDetailHeader(BuildContext context) {
    final width = context.displaySize.width;

    return Container(
      padding: const EdgeInsets.all(0.0),
      width: double.infinity,
      height: width + 56.0,
      child: Stack(
        children: [
          ClipPath(
            clipper: const CustomShapeOval(),
            child: Container(
              padding: const EdgeInsets.all(0.0),
              width: double.infinity,
              height: width,
              child: _createHeaderImage(context),
            ),
          ),
          _createHeaderAction(context),
        ],
      ),
    );
  }

  Widget _createHeaderImage(BuildContext context) {
    final Movie movie = GoRouterState.of(context).extra as Movie;
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(0.0),
          child: CachedNetworkImage(
            placeholder: (context, url) => const Center(
              child: CircularProgressIndicator(),
            ),
            imageUrl: movie.backdropPath?.imageW500 ?? '',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: List.of([0.0, 0.5, 0.7, 0.9]),
              colors: [
                Colors.white.withValues(alpha: 0.2),
                Colors.white.withValues(alpha: 0.1),
                Colors.white.withValues(alpha: 0.05),
                Colors.transparent,
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _createHeaderAction(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 16.0,
          bottom: 8.0,
          child: Container(
            padding: const EdgeInsets.all(0.0),
            width: 64.0,
            height: 64.0,
            child: FittedBox(
              child: IconButton(
                icon: const Icon(Icons.add_rounded),
                onPressed: () {},
              ),
            ),
          ),
        ),
        Positioned(
          right: 16.0,
          bottom: 8.0,
          child: Container(
            padding: const EdgeInsets.all(0.0),
            width: 64.0,
            height: 64.0,
            child: FittedBox(
              child: IconButton(
                icon: const Icon(Icons.share_outlined),
                onPressed: () {},
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 0.0,
          right: 0.0,
          child: FractionalTranslation(
            translation: const Offset(0.0, -0.2),
            child: Container(
              padding: const EdgeInsets.all(0.0),
              width: 72.0,
              height: 72.0,
              child: FittedBox(
                child: FloatingActionButton(
                  elevation: 10.0,
                  onPressed: () {},
                  backgroundColor: Colors.white,
                  child: const Icon(
                    Icons.play_arrow,
                    color: Colors.red,
                    size: 40,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
