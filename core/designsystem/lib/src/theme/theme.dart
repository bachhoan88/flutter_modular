import 'package:core_designsystem/src/theme/color.dart';
import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: tealColor),
  brightness: Brightness.light,
  fontFamily: 'Muli',
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  fontFamily: 'Muli',
);
