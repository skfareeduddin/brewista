import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const id = "home";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
            ),
            Text('Good Morning'),
          ],
        ),
      ),
    );
  }
}
