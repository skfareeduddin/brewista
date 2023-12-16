import 'package:flutter/material.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({super.key});

  static const id = 'my_orders';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Color(0xFF2F1B00),
                    size: 32.0,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
