import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../components/cart_item_card.dart';
import '../../models/coffee.dart';
import '../../models/shop.dart';

class CartItemCardMobileView extends StatefulWidget {
  const CartItemCardMobileView({
    super.key,
    required this.widget,
    required this.quantity,
    required this.coffee,
  });

  final Coffee coffee;
  final CartItemCard widget;
  final int quantity;

  @override
  State<CartItemCardMobileView> createState() => _CartItemCardMobileView();
}

class _CartItemCardMobileView extends State<CartItemCardMobileView> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    void increaseQuantity() {
      setState(() {
        quantity++;
        widget.coffee.quantity = quantity.toDouble();
        print(widget.coffee.quantity);
      });
    }

    void decreaseQuantity() {
      setState(() {
        quantity--;
        widget.coffee.quantity = quantity.toDouble();
        print(widget.coffee.quantity);
      });
    }

    void removeFromCart(Coffee coffee, BuildContext context) {
      final shop = context.read<Shop>();
      shop.removeFromCart(coffee);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: double.infinity,
          height: 18.0.h,
          padding: const EdgeInsets.only(top: 8, bottom: 8),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                widget.widget.coffee.imagePath,
                width: 28.w,
              ),
              SizedBox(width: 3.0.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 42.w,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.widget.coffee.name,
                          style: TextStyle(
                            color: const Color(0xFF2F1B00),
                            fontSize: 13.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '\$${widget.widget.coffee.discountPrice}',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: const Color(0xFF2F1B00),
                            fontSize: 14.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 1.0.h),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        widget.widget.coffee.cupType.toInt() > 0
                            ? 'assets/cup_${widget.widget.coffee.cupType.toInt()}.svg'
                            : 'assets/cup_1.svg',
                        color: Colors.grey,
                        width: 4.6.w,
                      ),
                      Text(
                        widget.widget.coffee.cupSize.isNotEmpty
                            ? '  ${widget.widget.coffee.cupSize}ml'
                            : '  200ml',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 9.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.0.h),
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
                        padding: EdgeInsets.all(1.0.w),
                        width: 28.w,
                        height: 5.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (widget.quantity > 1) {
                                  decreaseQuantity();
                                }
                              },
                              child: Icon(
                                Icons.remove,
                                size: 6.w,
                              ),
                            ),
                            Text(
                              //'${widget.quantity.toInt()}',
                              '${widget.quantity}',
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
                              child: Icon(
                                Icons.add,
                                size: 6.w,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          removeFromCart(widget.widget.coffee, context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFD56262),
                          shape: const CircleBorder(),
                        ),
                        child: Icon(
                          Icons.delete_outline,
                          color: Colors.white,
                          size: 6.0.w,
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
          width: 70.w,
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
                width: 7.0.w,
              ),
              Text(
                widget.widget.coffee.cream > 0
                    ? '${widget.widget.coffee.cream.toInt()} Cream'
                    : '1 Cream',
                style: TextStyle(
                  color: const Color(0xFF664B04),
                  fontSize: 8.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Image.asset(
                'assets/sugar-spoon-wbg.png',
                width: 7.0.w,
              ),
              Text(
                widget.widget.coffee.sugar > 0
                    ? '${widget.widget.coffee.sugar.toInt()} Sugar'
                    : '1 Sugar',
                style: TextStyle(
                  color: const Color(0xFF664B04),
                  fontSize: 8.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: 4.0,
              ),
              Image.asset(
                'assets/bread-wbg.png',
                width: 7.0.w,
              ),
              Text(
                widget.widget.coffee.bread > 0
                    ? '${widget.widget.coffee.bread.toInt()} Bread'
                    : '1 Bread',
                style: TextStyle(
                  color: const Color(0xFF664B04),
                  fontSize: 8.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}
