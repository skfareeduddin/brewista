import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import '../models/shop.dart';

class CartItemCard extends StatefulWidget {
  CartItemCard({
    super.key,
    required this.index,
    required this.cupSize,
    required this.cupType,
    required this.sugar,
    required this.cream,
    required this.bread,
  });

  final String cupSize;
  final double cupType;
  final double sugar;
  final double cream;
  final double bread;
  final int index;

  @override
  State<CartItemCard> createState() => _CartItemCardState();
}

class _CartItemCardState extends State<CartItemCard> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    final coffeeMenu = shop.coffeeMenu;
    coffeeMenu[widget.index].quantity = quantity.toDouble();

    void increaseQuantity() {
      setState(() {
        quantity++;
        coffeeMenu[widget.index].quantity = quantity.toDouble();
        print(coffeeMenu[widget.index].quantity);
      });
    }

    void decreaseQuantity() {
      setState(() {
        quantity--;
        coffeeMenu[widget.index].quantity = quantity.toDouble();
        print(coffeeMenu[widget.index].quantity);
      });
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: 345.0,
          height: 134.0,
          padding: const EdgeInsets.only(top: 8, left: 6, right: 5, bottom: 8),
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
              Image.asset(coffeeMenu[widget.index].imagePath),
              const SizedBox(width: 12.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 181,
                    height: 30,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 119,
                          height: 22,
                          child: Text(
                            coffeeMenu[widget.index].name,
                            style: const TextStyle(
                              color: Color(0xFF2F1B00),
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: SizedBox(
                            height: double.infinity,
                            child: Text(
                              '\$${coffeeMenu[widget.index].discountPrice}',
                              textAlign: TextAlign.right,
                              style: const TextStyle(
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
                        widget.cupType.toInt() > 0
                            ? 'assets/cup_${widget.cupType.toInt()}.svg'
                            : 'assets/cup_1.svg',
                        //TODO: Implement conditional statement here
                        color: Colors.grey,
                        width: 20.0,
                      ),
                      Text(
                        widget.cupSize.isNotEmpty
                            ? '  ${widget.cupSize}ml'
                            : '  200ml',
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (quantity > 1) {
                                  decreaseQuantity();
                                }
                              },
                              child: const Icon(Icons.remove),
                            ),
                            Text(
                              //'${widget.quantity.toInt()}',
                              '$quantity',
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                increaseQuantity();
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
        Container(
          width: 280,
          height: 38,
          padding: const EdgeInsets.all(8.0),
          decoration: const ShapeDecoration(
            color: Color(0xCCF9E9D1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16.0),
                  bottomRight: Radius.circular(16.0)),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/cream-spoon-wbg.png',
                width: 32.0,
              ),
              Text(
                '${widget.cream.toInt()} Cream',
                style: const TextStyle(
                  color: Color(0xFF664B04),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: 4.0,
              ),
              Image.asset(
                'assets/sugar-spoon-wbg.png',
                width: 32.0,
              ),
              Text(
                '${widget.sugar.toInt()} Sugar',
                style: const TextStyle(
                  color: Color(0xFF664B04),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: 4.0,
              ),
              Image.asset(
                'assets/bread-wbg.png',
                width: 33.0,
              ),
              Text(
                '${widget.bread.toInt()} Bread',
                style: const TextStyle(
                  color: Color(0xFF664B04),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
