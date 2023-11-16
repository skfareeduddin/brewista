import 'package:flutter/material.dart';

class OrderSelector extends StatelessWidget {
  final Widget child;
  final BorderRadius borderRadius;

  const OrderSelector({
    super.key,
    required this.child,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 81.0,
      height: 56.0,
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
