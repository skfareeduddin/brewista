import 'package:brewista/models/coffee.dart';
import 'package:flutter/material.dart';

import '../responsive_views/item_card/desktop_view.dart';
import '../responsive_views/item_card/mobile_view.dart';

class ItemCard extends StatelessWidget {
  final Coffee coffee;

  const ItemCard({
    super.key,
    required this.coffee,
  });

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    return currentWidth < 500
        ? ItemCardMobileView(coffee: coffee)
        : ItemCardDesktopView(coffee: coffee);
  }
}
