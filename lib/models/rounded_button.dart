import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Widget childWidget;
  final VoidCallback onPressed;

  const RoundedButton({
    super.key,
    required this.childWidget,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          child: Center(
            child: childWidget,
          ),
        ),
      ),
    );
  }
}
