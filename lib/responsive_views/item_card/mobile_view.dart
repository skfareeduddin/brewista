import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../models/coffee.dart';
import '../../screens/coffee_info.dart';
import '../../screens/select_order.dart';

class ItemCardMobileView extends StatelessWidget {
  const ItemCardMobileView({
    super.key,
    required this.coffee,
  });

  final Coffee coffee;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 39.0.w,
          height: 13.0.h,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(6.0),
            ),
            color: Color(0xFFE5E5E5),
          ),
          child: Image.asset(coffee.imagePath),
        ),
        const SizedBox(height: 8.0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              coffee.name,
              style: TextStyle(
                color: const Color(0xFF2F1B00),
                fontSize: 16.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            SizedBox(
              width: 1.0.w,
            ),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) => CoffeeInfoScreen(
                    coffee: coffee,
                  ),
                );
              },
              child: Icon(
                Icons.info_outline,
                color: Colors.grey,
                size: 5.w,
              ),
            ),
          ],
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
        SizedBox(height: 2.5.h),
        Container(
          width: 39.0.w,
          height: 6.0.h,
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
