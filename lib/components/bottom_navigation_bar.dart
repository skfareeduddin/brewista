import 'package:flutter/material.dart';

import '../screens/cart.dart';
import '../screens/home.dart';
import '../screens/profile.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  static const id = 'bottom_navigation_bar';

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = [
    HomeScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(bottom: 20.0, left: 10.0, right: 10.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(32.0),
          ),
          child: BottomNavigationBar(
            elevation: 50.0,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_2_outlined,
                ),
                label: 'Profile',
              ),
            ],
            selectedIconTheme: const IconThemeData(
              color: Color(0xFFC97200),
            ),
            selectedLabelStyle: const TextStyle(
              color: Color(0xFFC97200),
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
            unselectedLabelStyle: const TextStyle(
              color: Color(0xFFC97200),
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
            selectedItemColor: const Color(0xFFC97200),
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
