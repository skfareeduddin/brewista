import 'package:flutter/material.dart';

class OrderSelector extends StatelessWidget {
  final Widget child;
  final BorderRadius borderRadius;
  final double width;
  final double height;

  const OrderSelector({
    super.key,
    required this.child,
    required this.borderRadius,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: Colors.black.withOpacity(0.10000000149011612),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
