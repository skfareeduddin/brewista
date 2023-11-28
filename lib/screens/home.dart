import 'package:brewista/models/coffee.dart';
import 'package:flutter/material.dart';
import '../components/gradient_button.dart';
import '../components/item_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const id = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int myIndex = 0;

  // List coffeeMenu = [
  //   Coffee(
  //       name: 'Black Coffee',
  //       originalPrice: '2.08',
  //       discountPrice: '1.79',
  //       imagePath: 'assets/black-coffee.png'),
  //   Coffee(
  //       name: 'Espresso',
  //       originalPrice: '2.08',
  //       discountPrice: '1.79',
  //       imagePath: 'assets/espresso.png')
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF4F4F4),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Good Morning',
                    style: TextStyle(
                      color: Color(0xFF2F1B00),
                      fontSize: 26,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                SearchAnchor(builder:
                    (BuildContext context, SearchController controller) {
                  return SearchBar(
                    elevation: MaterialStateProperty.all(0.0),
                    shape: MaterialStateProperty.all(
                      const ContinuousRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(40.0),
                        ),
                      ),
                    ),
                    hintText: 'Search',
                    hintStyle: MaterialStateProperty.all(
                      TextStyle(
                        color: Colors.black.withOpacity(0.3700000047683716),
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    leading: Icon(
                      Icons.search,
                      color: Colors.black.withOpacity(0.3700000047683716),
                      size: 25.0,
                    ),
                    trailing: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          color: Colors.black.withOpacity(0.3700000047683716),
                          size: 30.0,
                        ),
                      ),
                    ],
                    controller: controller,
                    padding: const MaterialStatePropertyAll<EdgeInsets>(
                        EdgeInsets.symmetric(horizontal: 16.0)),
                    onTap: () {
                      controller.openView();
                    },
                    onChanged: (_) {
                      controller.openView();
                    },
                  );
                }, suggestionsBuilder:
                    (BuildContext context, SearchController controller) {
                  return List<ListTile>.generate(5, (int index) {
                    final String item = 'item $index';
                    return ListTile(
                      title: Text(item),
                      onTap: () {
                        setState(() {
                          controller.closeView(item);
                        });
                      },
                    );
                  });
                }),
                const SizedBox(height: 40.0),
                Container(
                  width: 343.0,
                  height: 187,
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFFFE4BE),
                        Color(0x96D98F27),
                      ],
                      end: Alignment(0.93, -0.37),
                      begin: Alignment(-0.93, 0.37),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/coffee-offer.png',
                        width: 147.0,
                        height: 147.0,
                      ),
                      const SizedBox(width: 20.0),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 124,
                            child: Text(
                              'Invite your friends and get up to',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black
                                    .withOpacity(0.6000000238418579),
                                fontSize: 12.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const SizedBox(height: 25.0),
                          const Text(
                            '20% off!',
                            style: TextStyle(
                              color: Color(0xFF2F1B00),
                              fontSize: 24.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0.06,
                            ),
                          ),
                          const SizedBox(
                            height: 25.0,
                          ),
                          GradientButton(
                            width: 124.0,
                            height: 48.0,
                            borderRadius: BorderRadius.circular(30.0),
                            onPressed: () {},
                            startingColor: const Color(0xFF8F5101),
                            endingColor: const Color(0xFFDA9235),
                            child: const Text(
                              'Invite Now',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40.0),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Today's Special",
                    style: TextStyle(
                      color: Color(0xFF2F1B00),
                      fontSize: 20.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ItemCard(
                            coffee: Coffee(
                                name: 'Black Coffee',
                                originalPrice: '2.08',
                                discountPrice: '1.79',
                                imagePath: 'assets/black-coffee.png',
                                cupSize: '',
                                cupType: '',
                                sugar: 0,
                                bread: 0,
                                cream: 0,
                                quantity: 0),
                          ),
                          ItemCard(
                            coffee: Coffee(
                                name: 'Espresso',
                                originalPrice: '2.08',
                                discountPrice: '1.79',
                                imagePath: 'assets/espresso.png',
                                cupSize: '',
                                cupType: '',
                                sugar: 0,
                                bread: 0,
                                cream: 0,
                                quantity: 0),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ItemCard(
                            coffee: Coffee(
                                name: 'Black Coffee',
                                originalPrice: '2.08',
                                discountPrice: '1.79',
                                imagePath: 'assets/black-coffee.png',
                                cupSize: '',
                                cupType: '',
                                sugar: 0,
                                bread: 0,
                                cream: 0,
                                quantity: 0),
                          ),
                          ItemCard(
                            coffee: Coffee(
                                name: 'Espresso',
                                originalPrice: '2.08',
                                discountPrice: '1.79',
                                imagePath: 'assets/espresso.png',
                                cupSize: '',
                                cupType: '',
                                sugar: 0,
                                bread: 0,
                                cream: 0,
                                quantity: 0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(bottom: 20.0, left: 10.0, right: 10.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(32.0)),
          child: BottomNavigationBar(
            elevation: 50.0,
            onTap: (index) => {
              setState(() {
                myIndex = index;
              }),
            },
            currentIndex: myIndex,
            items: const [
              BottomNavigationBarItem(
                // icon: SvgPicture.asset('assets/home_icon.svg'),
                icon: Icon(Icons.home_filled),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                // icon: SvgPicture.asset('assets/cart_icon.svg'),
                icon: Icon(Icons.shopping_cart_outlined),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                // icon: SvgPicture.asset('assets/profile_icon.svg'),
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
          ),
        ),
      ),
    );
  }
}
