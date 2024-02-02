import 'package:core_model/models.dart';
import 'package:core_ui/uis.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:feature_detail/src/di/view_model_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MovieInfoView extends StatelessWidget {
  final MovieInfo movieInfo;

  const MovieInfoView({super.key, required this.movieInfo});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
          child: Text(
            movieInfo.title ?? '',
            maxLines: 2,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
          child: Text(
            movieInfo.genres?.categories ?? '',
            maxLines: 2,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: StarRating(
            size: 24.0,
            rating: (movieInfo.voteAverage ?? 0.0) / 2,
            color: Colors.red,
            borderColor: Colors.black54,
            starCount: 5,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(''),
              Column(
                children: [
                  Text(
                    'year'.tr(),
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    movieInfo.releaseDate?.year ?? '',
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    'country'.tr(),
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    movieInfo.countries?.countries ?? '',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: 18.0),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    'length'.tr(),
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    movieInfo.runtime.toString(),
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontSize: 18.0,
                        ),
                  )
                ],
              ),
              const Text(''),
            ],
          ),
        ),
        _createMovieOverview(context, movieInfo.overview ?? ''),
      ],
    );
  }

  Widget _createMovieOverview(BuildContext context, String overview) {
    return Consumer(builder: (context, ref, child) {
      final movieId = movieInfo.id ?? 0;
      final expanded = ref.watch(detailViewModelProvider(movieId).select((value) => value.data?.isDesExpanded)) ??
          false;

      return InkWell(
        onTap: ref.watch(detailViewModelProvider(movieId).notifier).toggleExpand,
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 24.0, right: 24.0, top: 8.0),
          child: Text(
            overview,
            textAlign: TextAlign.justify,
            maxLines: expanded ? 100 : 5,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      );
    });
  }
}
