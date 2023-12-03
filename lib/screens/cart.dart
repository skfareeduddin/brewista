import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/cart_item_card.dart';
import '../models/shop.dart';

class CartScreen extends StatefulWidget {
  static const id = 'cart';

  final String cupSize;
  final double cupType;
  final double sugar;
  final double cream;
  final double bread;
  final int index;

  const CartScreen({
    super.key,
    required this.index,
    required this.cupSize,
    required this.cupType,
    required this.sugar,
    required this.cream,
    required this.bread,
  });

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    final coffeeMenu = shop.coffeeMenu;

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
              CartItemCard(
                cupSize: widget.cupSize,
                cupType: widget.cupType,
                sugar: widget.sugar,
                cream: widget.cream,
                bread: widget.bread,
                index: widget.index,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
