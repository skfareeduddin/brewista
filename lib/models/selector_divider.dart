import 'package:flutter/material.dart';

class SelectorDivider extends StatelessWidget {
  final double height;

  const SelectorDivider({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.0,
      height: height,
      color: Colors.black.withOpacity(0.20000000149011700),
    );
  }
}
