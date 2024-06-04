import 'package:cached_network_image/cached_network_image.dart';
import 'package:core_model/models.dart';
import 'package:core_ui/uis.dart';
import 'package:flutter/material.dart';

class ScreenshotViewHolder extends StatelessWidget {
  final ImageData imageData;
  final Function(ImageData)? imagePreview;

  const ScreenshotViewHolder({super.key, required this.imageData, this.imagePreview});

  @override
  Widget build(BuildContext context) {
    final width = context.displaySize.width / 2.4;
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
              imageUrl: imageData.imagePath?.imageW500 ?? '',
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
