import 'package:core_ui/src/context_extension.dart';
import 'package:flutter/material.dart';

typedef RatingChangeCallback = void Function(double rating);

class StarRating extends StatelessWidget {
  final int starCount;
  final double rating;
  final RatingChangeCallback? onRatingChanged;
  final Color? color;
  final Color? borderColor;
  final double? size;

  const StarRating({
    super.key,
    this.starCount = 5,
    this.rating = .0,
    this.onRatingChanged,
    this.color,
    this.borderColor,
    this.size,
  });

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    var ratingStarSizeRelativeToScreen = context.displaySize.width / starCount;

    if (index >= rating) {
      icon = Icon(
        Icons.star_border,
        color: borderColor ?? Colors.grey,
        size: size ?? ratingStarSizeRelativeToScreen,
      );
    } else if (index > rating - 1 && index < rating) {
      icon = Icon(
        Icons.star_half,
        color: color ?? context.themeData.primaryColor,
        size: size ?? ratingStarSizeRelativeToScreen,
      );
    } else {
      icon = Icon(
        Icons.star,
        color: color ?? context.themeData.primaryColor,
        size: size ?? ratingStarSizeRelativeToScreen,
      );
    }
    return InkResponse(
      highlightColor: Colors.transparent,
      radius: (size ?? ratingStarSizeRelativeToScreen) / 2,
      onTap: onRatingChanged == null ? null : () => onRatingChanged!(index + 1.0),
      child: Container(
        padding: const EdgeInsets.all(0.0),
        height: (size ?? ratingStarSizeRelativeToScreen) * 1.5,
        child: icon,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            starCount,
            (index) => buildStar(context, index),
          ),
        ),
      ),
    );
  }
}
