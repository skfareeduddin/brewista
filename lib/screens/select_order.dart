import 'package:flutter/material.dart';

class SelectOrderScreen extends StatelessWidget {
  const SelectOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 160.0,
                    height: 108.0,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(6.0),
                      ),
                      color: Color(0xFFE5E5E5),
                    ),
                    child: Image.asset('assets/black-coffee.png'),
                  ),
                  const SizedBox(width: 8.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16.0),
                      const Text(
                        'Black Coffee',
                        style: TextStyle(
                          color: Color(0xFF2F1B00),
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '\$2.08',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18.0,
                                color: Colors.black
                                    .withOpacity(0.3700000047683716),
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                            const TextSpan(
                              text: ' \$1.79',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF2F1B00),
                                fontSize: 18.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
