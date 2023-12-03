import 'package:brewista/components/bottom_navigation_bar.dart';
import 'package:brewista/screens/cart.dart';
import 'package:brewista/screens/home.dart';
import 'package:brewista/screens/profile.dart';
import 'package:brewista/screens/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/shop.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: Brewista(),
    ),
  );
}

class Brewista extends StatelessWidget {
  const Brewista({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: BottomNavigationBarScreen.id,
      routes: {
        SignUpScreen.id: (context) => const SignUpScreen(),
        BottomNavigationBarScreen.id: (context) =>
            const BottomNavigationBarScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        ProfileScreen.id: (context) => const ProfileScreen(),
        CartScreen.id: (context) => const CartScreen(),
      },
    );
  }
}
