import 'package:cached_network_image/cached_network_image.dart';
import 'package:core_model/models.dart';
import 'package:core_ui/uis.dart';
import 'package:flutter/material.dart';

class CategoryViewHolder extends BaseViewHolder<Movie> {
  const CategoryViewHolder({
    Key? key,
    required Movie movie,
    Function(Movie)? actionOnItemClicked,
  }) : super(movie, actionOnItemClicked, key: key);

  @override
  Widget createContent(BuildContext context, Movie data) {
    final width = context.displaySize.width / 2.5;
    return Container(
      width: width,
      height: double.infinity,
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Card(
        elevation: 8.0,
        borderOnForeground: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Container(
          padding: const EdgeInsets.all(0.0),
          width: width,
          height: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Stack(
              children: [
                CachedNetworkImage(
                  placeholder: (context, url) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  imageUrl: data.backdropPath?.imageW500 ?? '',
                  width: width,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: width,
                  height: double.infinity,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      stops: [0.1, 0.5, 0.7, 0.9],
                      colors: [
                        Color(0x99ff0000),
                        Color(0x66ff0000),
                        Color(0x66ff0000),
                        Color(0x99ff0000),
                      ],
                    ),
                  ),
                  child: Text(
                    data.releaseDate ?? '',
                    maxLines: 1,
                    style: context.textTheme.headlineSmall?.copyWith(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
