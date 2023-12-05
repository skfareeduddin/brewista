import 'package:flutter/material.dart';

//TODO: create the info screen

class CoffeeInfoScreen extends StatelessWidget {
  static const id = "coffee-info-screen";
  const CoffeeInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Text('Order Screen'),
      ),
    );
  }
}
