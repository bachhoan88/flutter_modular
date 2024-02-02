import 'package:carousel_slider/carousel_slider.dart';
import 'package:core_model/models.dart';
import 'package:feature_home/src/ui/component/slide_view_holder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderView extends StatelessWidget {
  final Function(Movie)? actionOpenMovie;
  final List<Movie> movies;

  const SliderView({
    super.key,
    required this.movies,
    this.actionOpenMovie,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: movies.length,
      itemBuilder: (BuildContext context, int index, realIndex) {
        return SlideViewHolder(movie: movies[index], actionOnItemClicked: actionOpenMovie);
      },
      options: CarouselOptions(
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        pauseAutoPlayOnTouch: true,
        viewportFraction: 0.8,
        enlargeCenterPage: true,
      ),
    );
  }
}
