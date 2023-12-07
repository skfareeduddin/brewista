import 'package:flutter/material.dart';

import '../models/coffee.dart';
import '../responsive_views/cart_item_card/desktop_view.dart';
import '../responsive_views/cart_item_card/mobile_view.dart';

class CartItemCard extends StatefulWidget {
  CartItemCard({
    super.key,
    required this.coffee,
  });

  final Coffee coffee;

  @override
  State<CartItemCard> createState() => _CartItemCardState();
}

class _CartItemCardState extends State<CartItemCard> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    widget.coffee.quantity = quantity.toDouble();

    final currentWidth = MediaQuery.of(context).size.width;

    return currentWidth < 500
        ? CartItemCardMobileView(
            widget: widget,
            quantity: quantity,
            coffee: widget.coffee,
          )
        : CartItemCardDesktopView(
            widget: widget, quantity: quantity, coffee: widget.coffee);
  }
}
