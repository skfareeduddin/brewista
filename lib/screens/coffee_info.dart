import 'package:brewista/screens/select_order.dart';
import 'package:flutter/material.dart';

import '../components/gradient_button.dart';
import '../models/coffee.dart';

class CoffeeInfoScreen extends StatelessWidget {
  static const id = "coffee-info-screen";

  final Coffee coffee;

  const CoffeeInfoScreen({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        height: 600,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 30.0, left: 50.0, right: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 180,
                    padding: const EdgeInsets.all(8.0),
                    decoration: ShapeDecoration(
                      color: const Color(0xFFE5E5E5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    child: SizedBox(
                      width: 200,
                      height: 150,
                      child: Image.asset(
                        coffee.imagePath,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    coffee.name,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '\$${coffee.originalPrice}',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18.0,
                            color: Colors.black.withOpacity(0.3700000047683716),
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        TextSpan(
                          text: ' \$${coffee.discountPrice}',
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF2F1B00),
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const SizedBox(
                    width: 288.92,
                    height: 137.83,
                    child: Text(
                      'Black coffee is simply coffee that is normally brewed without the addition of additives such as sugar, milk, cream, or added flavors.',
                      style: TextStyle(
                        color: Color(0xFF555555),
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  GradientButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              SelectOrderScreen(coffee: coffee),
                        ),
                      );
                    },
                    startingColor: const Color(0xFF8F5101),
                    endingColor: const Color(0xFFDA9235),
                    width: double.infinity,
                    height: 59,
                    borderRadius: BorderRadius.circular(8.0),
                    child: const Text(
                      'Add',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
