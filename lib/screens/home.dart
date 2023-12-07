import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/shop.dart';
import '../responsive_views/home/desktop_view.dart';
import '../responsive_views/home/mobile_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const id = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    final coffeeMenu = shop.coffeeMenu;
    final currentWidth = MediaQuery.of(context).size.width;

    return currentWidth < 500
        ? MobileView(coffeeMenu: coffeeMenu)
        : DesktopView(coffeeMenu: coffeeMenu);
  }
}
