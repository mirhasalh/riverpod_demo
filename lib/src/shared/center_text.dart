import 'package:flutter/material.dart';

class CenterText extends StatelessWidget {
  const CenterText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Center(child: Text(text, style: textTheme.bodySmall));
  }
}
