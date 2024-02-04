import 'package:core_model/models.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:feature_detail/src/ui/component/screenshot_view_holder.dart';
import 'package:flutter/material.dart';

class ScreenshotView extends StatelessWidget {
  final List<ImageData> images;
  final Function(ImageData) actionOpenImage;
  final Function() actionLoadAll;

  const ScreenshotView({
    Key? key,
    required this.images,
    required this.actionOpenImage,
    required this.actionLoadAll,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final contentHeight = 2.0 * (MediaQuery.of(context).size.width / 2.2) / 3.0;
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
                  'screenshot'.tr(),
                  style: Theme.of(context).textTheme.headlineSmall,
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
              return ScreenshotViewHolder(imageData: images[index], imagePreview: actionOpenImage);
            },
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const VerticalDivider(
              color: Colors.transparent,
              width: 6.0,
            ),
            itemCount: images.length,
          ),
        ),
      ],
    );
  }
}
