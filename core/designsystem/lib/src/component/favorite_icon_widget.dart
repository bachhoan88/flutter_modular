import 'package:flutter/material.dart';

class FavoriteIconWidget extends StatefulWidget {
  final void Function(bool isFavorite)? onFavoriteChanged;
  final bool? isFavorite;

  const FavoriteIconWidget({
    super.key,
    this.isFavorite,
    this.onFavoriteChanged,
  });

  @override
  State<StatefulWidget> createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIconWidget> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
      ),
      onPressed: toggleFavorite,
    );
  }

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
      if (widget.onFavoriteChanged != null) {
        widget.onFavoriteChanged!(isFavorite);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    isFavorite = widget.isFavorite ?? false;
  }
}
