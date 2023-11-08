import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final Text text;
  final VoidCallback onPressed;
  final Color startingColor;
  final Color endingColor;
  final double width;
  final double height;

  const GradientButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.startingColor,
    required this.endingColor,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
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
            child: text,
          ),
        ),
      ),
    );
  }
}
