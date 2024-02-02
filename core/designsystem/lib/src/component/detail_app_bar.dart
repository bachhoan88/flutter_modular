import 'package:core_designsystem/gen/assets.gen.dart';
import 'package:core_designsystem/src/component/favorite_icon_widget.dart';
import 'package:flutter/material.dart';

class DetailAppBar extends StatelessWidget {
  final Function actionBack;
  const DetailAppBar({super.key, required this.actionBack});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0.0,
      left: 0.0,
      right: 0.0,
      child: AppBar(
        elevation: 0.0,
        titleSpacing: 4.0,
        backgroundColor: Colors.transparent,
        title: Assets.images.icNetflix.image(
          height: 56.0,
          fit: BoxFit.fitHeight,
        ),
        centerTitle: true,
        leading: Container(
          padding: const EdgeInsets.only(left: 16.0),
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              actionBack.call();
            },
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 16.0),
            child: FavoriteIconWidget(isFavorite: false, onFavoriteChanged: (checked) {}),
          ),
        ],
      ),
    );
  }

}