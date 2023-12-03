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
      child: const Brewista(),
    ),
  );
}

class Brewista extends StatelessWidget {
  const Brewista({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.id,
      routes: {
        SignUpScreen.id: (context) => const SignUpScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        ProfileScreen.id: (context) => const ProfileScreen(),
        CartScreen.id: (context) => const CartScreen(
              quantity: 0,
              index: 0,
              cupSize: '',
              cupType: 0,
              sugar: 0,
              cream: 0,
              bread: 0,
            ),
      },
    );
  }
}
