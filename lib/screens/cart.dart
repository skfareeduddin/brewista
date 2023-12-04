import 'package:brewista/components/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../components/cart_item_card.dart';
import '../models/coffee.dart';
import '../models/shop.dart';

class CartScreen extends StatefulWidget {
  static const id = 'cart';

  const CartScreen({
    super.key,
  });

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: const Color(0xFFF4F4F4),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 24.0, top: 8.0, right: 24.0),
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
                          '${value.cart.length} items',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.699999988079071),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(height: 40.0),
                      Expanded(
                        child: LayoutBuilder(builder: (context, constraints) {
                          if (SizerUtil.deviceType == DeviceType.mobile) {
                            return ListView.builder(
                              itemCount: value.cart.length,
                              itemBuilder: (context, index) {
                                final Coffee coffee = value.cart[index];

                                return CartItemCard(
                                  coffee: coffee,
                                );
                              },
                            );
                          } else {
                            return ListView.builder(
                              // gridDelegate:
                              //     const SliverGridDelegateWithFixedCrossAxisCount(
                              //   crossAxisCount: 2,
                              //   crossAxisSpacing: 16.0,
                              //   mainAxisSpacing: 16.0,
                              // ),
                              scrollDirection: Axis.horizontal,
                              itemCount: value.cart.length,
                              itemBuilder: (context, index) {
                                final Coffee coffee = value.cart[index];
                                return CartItemCard(
                                  coffee: coffee,
                                );
                              },
                            );
                          }
                        }),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.all(24.0),
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    ),
                  ),
                  child: Align(
                    alignment: FractionalOffset.topCenter,
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      width: 400,
                      height: 78,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF4F4F4),
                        borderRadius: BorderRadius.all(
                          Radius.circular(16.0),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Total',
                                style: TextStyle(
                                  color: Colors.black
                                      .withOpacity(0.6000000238418579),
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                '\$${value.cart.length * value.coffeeMenu[1].discountPrice}',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          GradientButton(
                              onPressed: () {},
                              startingColor: const Color(0xFF965706),
                              endingColor: const Color(0xFFCB852B),
                              width: 135,
                              height: 46,
                              borderRadius: BorderRadius.circular(50.0),
                              child: const Text(
                                'Make Payment',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
