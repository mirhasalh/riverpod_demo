// This serves as an example of a reusable class-based widget.
import 'package:flutter/material.dart';

import '../constants.dart';

class ColorCard extends StatelessWidget {
  const ColorCard({
    super.key,
    required this.color,
    required this.title,
    required this.index,
  });

  final Color color;
  final String title;
  final int index;

  @override
  Widget build(BuildContext context) {
    // Start by declaring [textTheme] to streamline the code whenever we want
    // to utilize it.
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      height: kToolbarHeight,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: kMediumPadding),
        color: color,
        child: Center(
          child: Text(
            '${title[0].toUpperCase()}${title.substring(1)}',
            style: textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
