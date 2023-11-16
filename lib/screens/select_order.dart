import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:brewista/models/order_selector.dart';
import 'package:brewista/models/selector_divider.dart';

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
          color: Color(0xFFF4F4F4),
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
                    width: 136.0,
                    height: 108.0,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(6.0),
                      ),
                      color: Color(0xFFE5E5E5),
                    ),
                    child: Image.asset('assets/black-coffee.png'),
                  ),
                  const SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16.0),
                      const Text(
                        'Black Coffee',
                        style: TextStyle(
                          color: Color(0xFF2F1B00),
                          fontSize: 28.0,
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
                                fontSize: 26.0,
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
                                fontSize: 26.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 32.0),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Cup Size',
                  style: TextStyle(
                    color: Color(0xFF2F1B00),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              const Row(
                children: [
                  OrderSelector(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      bottomLeft: Radius.circular(15.0),
                    ),
                    child: Text(
                      '200ml',
                      style: TextStyle(
                        color: Color(0xE52F1B00),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SelectorDivider(),
                  OrderSelector(
                    borderRadius: BorderRadius.zero,
                    child: Text(
                      '300ml',
                      style: TextStyle(
                        color: Color(0xE52F1B00),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SelectorDivider(),
                  OrderSelector(
                    borderRadius: BorderRadius.zero,
                    child: Text(
                      '400ml',
                      style: TextStyle(
                        color: Color(0xE52F1B00),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SelectorDivider(),
                  OrderSelector(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                    ),
                    child: Text(
                      '500ml',
                      style: TextStyle(
                        color: Color(0xE52F1B00),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Cup Type',
                  style: TextStyle(
                    color: Color(0xFF2F1B00),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  OrderSelector(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      bottomLeft: Radius.circular(15.0),
                    ),
                    child: SvgPicture.asset('assets/cup_1.svg'),
                  ),
                  const SelectorDivider(),
                  OrderSelector(
                    borderRadius: BorderRadius.zero,
                    child: SvgPicture.asset('assets/cup_2.svg'),
                  ),
                  const SelectorDivider(),
                  OrderSelector(
                    borderRadius: BorderRadius.zero,
                    child: SvgPicture.asset('assets/cup_3.svg'),
                  ),
                  const SelectorDivider(),
                  OrderSelector(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                    ),
                    child: SvgPicture.asset('assets/cup_4.svg'),
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
