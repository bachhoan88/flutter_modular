import 'package:cached_network_image/cached_network_image.dart';
import 'package:core_model/models.dart';
import 'package:core_ui/uis.dart';
import 'package:flutter/material.dart';

class MovieViewHolder extends BaseViewHolder<Movie> {
  const MovieViewHolder({
    Key? key,
    required Movie movie,
    Function(Movie)? actionOnItemClicked,
  }) : super(movie, actionOnItemClicked, key: key);

  @override
  Widget createContent(BuildContext context, Movie data) {
    final width = context.displaySize.width / 2.6;

    return Container(
      width: width,
      height: double.infinity,
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Card(
        elevation: 10.0,
        borderOnForeground: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Container(
          padding: const EdgeInsets.all(0.0),
          width: width,
          height: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: CachedNetworkImage(
              placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
              imageUrl: data.posterPath?.imageW500 ?? '',
              width: width,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
