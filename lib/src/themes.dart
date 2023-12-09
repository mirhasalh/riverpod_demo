import 'package:flutter/material.dart';

// Using the seedColor as a starting point, a set of tonal palettes are
// constructed. These tonal palettes are based on the Material 3 Color system
// and provide all the needed colors for a [ColorScheme]. These colors are
// designed to work well together and meet contrast requirements for
// accessibility.

const seedColor = Color(0xff3789c4);

final theme = ThemeData.light().copyWith(
  colorScheme: ColorScheme.fromSeed(
    seedColor: seedColor,
    brightness: Brightness.light,
  ),
);

final darkTheme = ThemeData.dark().copyWith(
  colorScheme: ColorScheme.fromSeed(
    seedColor: seedColor,
    brightness: Brightness.dark,
  ),
);
