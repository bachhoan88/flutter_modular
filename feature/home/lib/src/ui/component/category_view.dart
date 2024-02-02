import 'package:core_model/models.dart';
import 'package:feature_home/src/ui/component/category_view_holder.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  final Function(Movie)? actionOpenCategory;
  final List<Movie> movies;

  const CategoryView({
    super.key,
    required this.movies,
    this.actionOpenCategory,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0.0),
      width: double.infinity,
      height: 96.0,
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return CategoryViewHolder(movie: movies[index], actionOnItemClicked: actionOpenCategory);
        },
        itemCount: movies.length,
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const VerticalDivider(
          color: Colors.transparent,
          width: 6.0,
        ),
      ),
    );
  }
}
