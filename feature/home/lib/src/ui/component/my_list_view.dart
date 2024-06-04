import 'package:core_model/models.dart';
import 'package:core_ui/uis.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:feature_home/src/ui/component/movie_view_holder.dart';
import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  final List<Movie> movies;
  final Function(Movie)? actionOpenMovie;
  final Function()? actionLoadAll;

  const MyListView({
    super.key,
    required this.movies,
    this.actionOpenMovie,
    this.actionLoadAll,
  }) : super();

  @override
  Widget build(BuildContext context) {
    final contentHeight = 4.0 * (context.displaySize.width / 2.4) / 3;
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.only(left: 20.0, right: 16.0),
          height: 48.0,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  'my_list'.tr(),
                  style: context.textTheme.headlineSmall,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.arrow_forward),
                onPressed: actionLoadAll,
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(0.0),
          height: contentHeight,
          child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return MovieViewHolder(movie: movies[index], actionOnItemClicked: actionOpenMovie);
            },
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const VerticalDivider(
              color: Colors.transparent,
              width: 6.0,
            ),
            itemCount: movies.length,
          ),
        ),
      ],
    );
  }
}
