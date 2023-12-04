import 'package:flutter/material.dart';

import 'coffee.dart';

class Shop extends ChangeNotifier {
  final List<Coffee> _coffeeMenu = [
    Coffee(
        name: 'Black Coffee',
        originalPrice: 2.08,
        discountPrice: 1.79,
        imagePath: 'assets/black-coffee.png',
        cupSize: '',
        cupType: 0,
        sugar: 0,
        bread: 0,
        cream: 0,
        quantity: 0),
    Coffee(
        name: 'Espresso',
        originalPrice: 2.08,
        discountPrice: 1.79,
        imagePath: 'assets/espresso.png',
        cupSize: '',
        cupType: 0,
        sugar: 0,
        bread: 0,
        cream: 0,
        quantity: 0)
  ];

  List<Coffee> _cart = [];

  List<Coffee> get coffeeMenu => _coffeeMenu;
  List<Coffee> get cart => _cart;

  void addToCart(Coffee coffeeItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(coffeeItem);
      notifyListeners();
    }
  }

  void removeFromCart(Coffee coffeeItem) {
    _cart.remove(coffeeItem);
    notifyListeners();
  }
}
