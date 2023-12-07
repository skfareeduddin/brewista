import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../components/gradient_button.dart';
import '../../components/item_card.dart';
import '../../models/coffee.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({
    super.key,
    required this.coffeeMenu,
  });

  final List<Coffee> coffeeMenu;

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF4F4F4),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                top: 8.0, left: 5.0.w, right: 5.0.w, bottom: 100.0),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Good Evening',
                    style: TextStyle(
                      color: Color(0xFF2F1B00),
                      fontSize: 26,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                SizedBox(
                  width: double.infinity,
                  child: SearchAnchor(
                    builder:
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
                              color:
                                  Colors.black.withOpacity(0.3700000047683716),
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
                ),
                SizedBox(height: 3.0.h),
                Container(
                  width: double.infinity,
                  height: 300.0,
                  padding: EdgeInsets.all(2.0.h),
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/coffee-offer.png',
                        width: 30.0.w,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 40.0.w,
                            child: Text(
                              'Invite your friends and get up to',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black
                                    .withOpacity(0.6000000238418579),
                                fontSize: 5.0.sp,
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
                            width: 34.0.w,
                            height: 6.0.h,
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
                SizedBox(height: 5.0.h),
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
                SizedBox(height: 2.0.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ItemCard(coffee: widget.coffeeMenu[0]),
                    ItemCard(coffee: widget.coffeeMenu[1]),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
