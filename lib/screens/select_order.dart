import 'package:brewista/models/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:brewista/models/order_selector.dart';
import 'package:brewista/models/selector_divider.dart';

class SelectOrderScreen extends StatelessWidget {
  const SelectOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 780,
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
            padding: const EdgeInsets.all(30.0),
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
                      width: 81.0,
                      height: 56.0,
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
                    SelectorDivider(height: 56.0),
                    OrderSelector(
                      width: 81.0,
                      height: 56.0,
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
                    SelectorDivider(height: 56.0),
                    OrderSelector(
                      width: 81.0,
                      height: 56.0,
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
                    SelectorDivider(height: 56.0),
                    OrderSelector(
                      width: 81.0,
                      height: 56.0,
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
                      width: 81.0,
                      height: 56.0,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        bottomLeft: Radius.circular(15.0),
                      ),
                      child: SvgPicture.asset('assets/cup_1.svg'),
                    ),
                    const SelectorDivider(height: 56.0),
                    OrderSelector(
                      width: 81.0,
                      height: 56.0,
                      borderRadius: BorderRadius.zero,
                      child: SvgPicture.asset('assets/cup_2.svg'),
                    ),
                    const SelectorDivider(height: 56.0),
                    OrderSelector(
                      width: 81.0,
                      height: 56.0,
                      borderRadius: BorderRadius.zero,
                      child: SvgPicture.asset('assets/cup_3.svg'),
                    ),
                    const SelectorDivider(height: 56.0),
                    OrderSelector(
                      width: 81.0,
                      height: 56.0,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0),
                      ),
                      child: SvgPicture.asset('assets/cup_4.svg'),
                    ),
                  ],
                ),
                const SizedBox(height: 24.0),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Add-ons',
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
                    Column(
                      children: [
                        Image.asset('assets/sugar-spoon.png'),
                        const Text(
                          'Sugar',
                          style: TextStyle(
                            color: Color(0xFF2F1B00),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        const Text(
                          '(tsp)',
                          style: TextStyle(
                            color: Color(0xFF686060),
                            fontSize: 12,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 8.0),
                    const Row(
                      children: [
                        OrderSelector(
                          width: 52.0,
                          height: 48.0,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                          ),
                          child: Text(
                            '1',
                            style: TextStyle(
                              color: Color(0xE52F1B00),
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SelectorDivider(height: 48.0),
                        OrderSelector(
                          width: 52.0,
                          height: 48.0,
                          borderRadius: BorderRadius.zero,
                          child: Text(
                            '2',
                            style: TextStyle(
                              color: Color(0xE52F1B00),
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SelectorDivider(height: 48.0),
                        OrderSelector(
                          width: 52.0,
                          height: 48.0,
                          borderRadius: BorderRadius.zero,
                          child: Text(
                            '3',
                            style: TextStyle(
                              color: Color(0xE52F1B00),
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SelectorDivider(height: 48.0),
                        OrderSelector(
                          width: 52.0,
                          height: 48.0,
                          borderRadius: BorderRadius.zero,
                          child: Text(
                            '4',
                            style: TextStyle(
                              color: Color(0xE52F1B00),
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SelectorDivider(height: 48.0),
                        OrderSelector(
                          width: 52.0,
                          height: 48.0,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                          child: Text(
                            '5',
                            style: TextStyle(
                              color: Color(0xE52F1B00),
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 12.0),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/bread.png'),
                        const Text(
                          'Sugar',
                          style: TextStyle(
                            color: Color(0xFF2F1B00),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        const Text(
                          '(tsp)',
                          style: TextStyle(
                            color: Color(0xFF686060),
                            fontSize: 12,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 8.0),
                    const Row(
                      children: [
                        OrderSelector(
                          width: 52.0,
                          height: 48.0,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                          ),
                          child: Text(
                            '1',
                            style: TextStyle(
                              color: Color(0xE52F1B00),
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SelectorDivider(height: 48.0),
                        OrderSelector(
                          width: 52.0,
                          height: 48.0,
                          borderRadius: BorderRadius.zero,
                          child: Text(
                            '2',
                            style: TextStyle(
                              color: Color(0xE52F1B00),
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SelectorDivider(height: 48.0),
                        OrderSelector(
                          width: 52.0,
                          height: 48.0,
                          borderRadius: BorderRadius.zero,
                          child: Text(
                            '3',
                            style: TextStyle(
                              color: Color(0xE52F1B00),
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SelectorDivider(height: 48.0),
                        OrderSelector(
                          width: 52.0,
                          height: 48.0,
                          borderRadius: BorderRadius.zero,
                          child: Text(
                            '4',
                            style: TextStyle(
                              color: Color(0xE52F1B00),
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SelectorDivider(height: 48.0),
                        OrderSelector(
                          width: 52.0,
                          height: 48.0,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                          child: Text(
                            '5',
                            style: TextStyle(
                              color: Color(0xE52F1B00),
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 12.0),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/cream-spoon.png'),
                        const Text(
                          'Sugar',
                          style: TextStyle(
                            color: Color(0xFF2F1B00),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        const Text(
                          '(tsp)',
                          style: TextStyle(
                            color: Color(0xFF686060),
                            fontSize: 12,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 8.0),
                    const Row(
                      children: [
                        OrderSelector(
                          width: 52.0,
                          height: 48.0,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                          ),
                          child: Text(
                            '1',
                            style: TextStyle(
                              color: Color(0xE52F1B00),
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SelectorDivider(height: 48.0),
                        OrderSelector(
                          width: 52.0,
                          height: 48.0,
                          borderRadius: BorderRadius.zero,
                          child: Text(
                            '2',
                            style: TextStyle(
                              color: Color(0xE52F1B00),
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SelectorDivider(height: 48.0),
                        OrderSelector(
                          width: 52.0,
                          height: 48.0,
                          borderRadius: BorderRadius.zero,
                          child: Text(
                            '3',
                            style: TextStyle(
                              color: Color(0xE52F1B00),
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SelectorDivider(height: 48.0),
                        OrderSelector(
                          width: 52.0,
                          height: 48.0,
                          borderRadius: BorderRadius.zero,
                          child: Text(
                            '4',
                            style: TextStyle(
                              color: Color(0xE52F1B00),
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SelectorDivider(height: 48.0),
                        OrderSelector(
                          width: 52.0,
                          height: 48.0,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                          child: Text(
                            '5',
                            style: TextStyle(
                              color: Color(0xE52F1B00),
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                GradientButton(
                  onPressed: () {},
                  startingColor: const Color(0xFF8F5101),
                  endingColor: const Color(0xFFDA9235),
                  width: 334,
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
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
