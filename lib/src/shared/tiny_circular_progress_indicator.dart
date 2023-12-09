import 'package:flutter/material.dart';

class TinyCircularProgressIndicator extends StatelessWidget {
  const TinyCircularProgressIndicator({super.key, this.color});

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 16.0,
      width: 16.0,
      child: CircularProgressIndicator(
        color: color,
        backgroundColor: Colors.transparent,
        strokeWidth: 2.0,
      ),
    );
  }
}
