import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartScreen extends StatefulWidget {
  static const id = 'cart';

  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int _currentCount = 1;

  void increaseCount() {
    _currentCount++;
  }

  void decreaseCount() {
    _currentCount--;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Cart',
                  style: TextStyle(
                    color: Color(0xFF2F1B00),
                    fontSize: 26,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '2 items',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.699999988079071),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 40.0),
              Container(
                width: 343.0,
                height: 134.0,
                padding:
                    const EdgeInsets.only(top: 8, left: 6, right: 5, bottom: 8),
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset('assets/espresso.png'),
                    const SizedBox(width: 12.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 181,
                          height: 30,
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 119,
                                height: 22,
                                child: Text(
                                  'Latte',
                                  style: TextStyle(
                                    color: Color(0xFF2F1B00),
                                    fontSize: 18,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                              SizedBox(width: 4),
                              Expanded(
                                child: SizedBox(
                                  height: double.infinity,
                                  child: Text(
                                    '\$2.79',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF2F1B00),
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/cup_1.svg',
                              color: Colors.grey,
                              width: 20.0,
                            ),
                            Text(
                              '  350ml',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8.0),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1.0,
                                  style: BorderStyle.solid,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(2.0),
                                ),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              width: 112,
                              height: 44,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      _currentCount > 1
                                          ? setState(() {
                                              decreaseCount();
                                              _currentCount;
                                            })
                                          : null;
                                    },
                                    child: const Icon(Icons.remove),
                                  ),
                                  Text(
                                    '$_currentCount',
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        increaseCount();
                                        _currentCount;
                                      });
                                    },
                                    child: const Icon(Icons.add),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 8.0),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFD56262),
                                shape: const CircleBorder(),
                              ),
                              child: const Icon(
                                Icons.delete_outline,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              //TODO: Add items section from here
            ],
          ),
        ),
      ),
    );
  }
}
