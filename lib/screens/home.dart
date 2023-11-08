import 'package:brewista/models/gradient_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const id = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: const Text(
                    'Good Morning',
                    style: TextStyle(
                      color: Color(0xFF2F1B00),
                      fontSize: 26,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w800,
                    ),
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
                              color:
                                  Colors.black.withOpacity(0.6000000238418579),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                        const SizedBox(height: 25),
                        const Text(
                          '20% off!',
                          style: TextStyle(
                            color: Color(0xFF2F1B00),
                            fontSize: 24,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0.06,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        GradientButton(
                          width: 124.0,
                          height: 48.0,
                          text: const Text(
                            'Invite Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          onPressed: () {},
                          startingColor: const Color(0xFF8F5101),
                          endingColor: const Color(0xFFDA9235),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: const Text(
                    "Today's Special",
                    style: TextStyle(
                      color: Color(0xFF2F1B00),
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
