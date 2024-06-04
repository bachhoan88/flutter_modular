import 'package:cached_network_image/cached_network_image.dart';
import 'package:core_model/models.dart';
import 'package:core_ui/uis.dart';
import 'package:flutter/material.dart';

class SlideViewHolder extends BaseViewHolder<Movie> {
  const SlideViewHolder({
    Key? key,
    required Movie movie,
    Function(Movie)? actionOnItemClicked,
  }) : super(movie, actionOnItemClicked, key: key);

  @override
  Widget createContent(BuildContext context, Movie data) {
    final width = context.displaySize.width;

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
                  padding: const EdgeInsets.only(left: 16.0, bottom: 20.0),
                  alignment: Alignment.bottomLeft,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      stops: [0.1, 0.5, 0.7, 0.9],
                      colors: [
                        Color(0x00000000),
                        Color(0x00000000),
                        Color(0x22000000),
                        Color(0x66000000),
                      ],
                    ),
                  ),
                  child: Text(
                    data.title?.toUpperCase() ?? '',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme
                        .headlineMedium
                        ?.copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
