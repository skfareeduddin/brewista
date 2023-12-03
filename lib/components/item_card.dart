import 'package:brewista/models/coffee.dart';
import 'package:flutter/material.dart';
import '../screens/select_order.dart';

class ItemCard extends StatelessWidget {
  final Coffee coffee;

  const ItemCard({
    super.key,
    required this.coffee,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
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
          child: Image.asset(coffee.imagePath),
        ),
        const SizedBox(height: 8.0),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            coffee.name,
            style: const TextStyle(
              color: Color(0xFF2F1B00),
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
        ),
        const SizedBox(height: 8.0),
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
        const SizedBox(height: 24.0),
        Container(
          width: 159.0,
          height: 48.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            color: Colors.white,
          ),
          child: Material(
            color: const Color(0xFFFDE1B9),
            borderRadius: BorderRadius.circular(6.0),
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) => SelectOrderScreen(
                    coffee: coffee,
                  ),
                );
              },
              child: const Center(
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Color(0xFF634A04),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
