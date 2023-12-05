import 'package:flutter/material.dart';

import '../models/coffee.dart';

//TODO: create the info screen

class CoffeeInfoScreen extends StatelessWidget {
  static const id = "coffee-info-screen";

  final Coffee coffee;

  const CoffeeInfoScreen({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      color: const Color(0xff757575),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.white,
        ),
        child: const Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [],
          ),
        ),
      ),
    );
  }
}
