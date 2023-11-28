import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final Text child;
  final VoidCallback onPressed;
  final Color startingColor;
  final Color endingColor;
  final double width;
  final double height;
  final BorderRadius borderRadius;

  const GradientButton({
    super.key,
    required this.child,
    required this.onPressed,
    required this.startingColor,
    required this.endingColor,
    required this.width,
    required this.height,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        gradient: LinearGradient(
          colors: [
            startingColor,
            endingColor,
          ],
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
