import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/gradient_button.dart';
import '../components/item_card.dart';
import '../models/shop.dart';
import 'package:sizer/sizer.dart';

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
                SearchAnchor(
                  builder: (BuildContext context, SearchController controller) {
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
                      onTap: () {
                        controller.openView();
                      },
                      onChanged: (_) {
                        controller.openView();
                      },
                    );
                  },
                  suggestionsBuilder:
                      (BuildContext context, SearchController controller) {
                    return List<ListTile>.generate(
                      5,
                      (int index) {
                        final String item = 'item $index';
                        return ListTile(
                          title: Text(item),
                          onTap: () {
                            setState(
                              () {
                                controller.closeView(item);
                              },
                            );
                          },
                        );
                      },
                    );
                  },
                ),
                const SizedBox(height: 40.0),
                Container(
                  width: double.infinity,
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
                LayoutBuilder(
                  builder: (context, constraints) {
                    if (SizerUtil.deviceType == DeviceType.mobile) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ItemCard(coffee: coffeeMenu[0]),
                          ItemCard(coffee: coffeeMenu[1]),
                        ],
                      );
                    } else {
                      // Otherwise, show a single column
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ItemCard(coffee: coffeeMenu[0]),
                          const SizedBox(width: 20),
                          ItemCard(coffee: coffeeMenu[1]),
                        ],
                      );
                    }
                  },
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     ItemCard(
                //       coffee: coffeeMenu[0],
                //     ),
                //     ItemCard(
                //       coffee: coffeeMenu[1],
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
