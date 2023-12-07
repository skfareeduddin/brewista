import 'package:flutter/material.dart';

import '../responsive_views/cart/desktop_view.dart';
import '../responsive_views/cart/mobile_view.dart';

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
    final currentWidth = MediaQuery.of(context).size.width;

    return currentWidth < 500
        ? const CartMobileView()
        : const CartDesktopView();
  }
}
