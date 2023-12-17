import 'package:flutter/material.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({super.key});

  static const id = 'my_orders';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Color(0xFF2F1B00),
                          size: 32.0,
                        ),
                      ),
                      const SizedBox(width: 18.0),
                      const Text(
                        'My Orders',
                        style: TextStyle(
                          color: Color(0xFF2F1B00),
                          fontSize: 26,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.menu,
                    color: Color(0xFF2F1B00),
                    size: 32.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
