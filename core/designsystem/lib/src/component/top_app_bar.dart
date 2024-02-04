import 'package:core_designsystem/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class TopAppBar extends AppBar {
  TopAppBar({super.key, Function? actionDrawer, Function? actionSearch})
        : super(
          titleSpacing: 4.0,
          title: Assets.images.icNetflix.image(
            height: 56.0,
            fit: BoxFit.fitHeight,
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.menu_rounded),
            onPressed: () {
              actionDrawer?.call();
            },
          ),
          actions: [
            IconButton(
              iconSize: 32,
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ],
          elevation: 0.0,
        );
}
