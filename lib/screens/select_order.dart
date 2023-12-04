import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import '../components/gradient_button.dart';
import '../models/coffee.dart';
import '../models/shop.dart';

List<Widget> cupSize = const [
  Text('200ml'),
  Text('300ml'),
  Text('400ml'),
  Text('500ml')
];

List<Widget> cupType = [
  SvgPicture.asset('assets/cup_1.svg'),
  SvgPicture.asset('assets/cup_2.svg'),
  SvgPicture.asset('assets/cup_3.svg'),
  SvgPicture.asset('assets/cup_4.svg')
];

List<Widget> sugar = const [
  Text('1'),
  Text('2'),
  Text('3'),
  Text('4'),
  Text('5')
];

List<Widget> bread = const [
  Text('1'),
  Text('2'),
  Text('3'),
  Text('4'),
  Text('5')
];

List<Widget> cream = const [
  Text('1'),
  Text('2'),
  Text('3'),
  Text('4'),
  Text('5')
];

class SelectOrderScreen extends StatefulWidget {
  final index;
  final Coffee coffee;

  const SelectOrderScreen({super.key, this.index, required this.coffee});

  @override
  State<SelectOrderScreen> createState() => _SelectOrderScreenState();
}

class _SelectOrderScreenState extends State<SelectOrderScreen> {
  final List<bool> _selectedCupSize = [true, false, false, false];
  final List<bool> _selectedCupType = [true, false, false, false];
  final List<bool> _selectedSugar = [true, false, false, false, false];
  final List<bool> _selectedBread = [true, false, false, false, false];
  final List<bool> _selectedCream = [true, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    int quantity = 1;

    void addToCart() {
      final shop = context.read<Shop>();
      shop.addToCart(widget.coffee, quantity);
      Navigator.pop(context);
    }

    return SingleChildScrollView(
      child: Container(
        height: 780,
        color: const Color(0xff757575),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 136.0,
                      height: 108.0,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                        color: Color(0xFFE5E5E5),
                      ),
                      child: Image.asset(widget.coffee.imagePath),
                    ),
                    const SizedBox(width: 16.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 16.0),
                        Text(
                          widget.coffee.name,
                          style: const TextStyle(
                            color: Color(0xFF2F1B00),
                            fontSize: 28.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: ' \$${widget.coffee.originalPrice}',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 26.0,
                                  color: Colors.black
                                      .withOpacity(0.3700000047683716),
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                              TextSpan(
                                text: ' \$${widget.coffee.discountPrice}',
                                style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF2F1B00),
                                  fontSize: 26.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 32.0),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Cup Size',
                    style: TextStyle(
                      color: Color(0xFF2F1B00),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 8.0),
                ToggleButtons(
                  direction: Axis.horizontal,
                  onPressed: (int index) {
                    setState(() {
                      for (int i = 0; i < _selectedCupSize.length; i++) {
                        _selectedCupSize[i] = i == index;
                      }
                      widget.coffee.cupSize = '${(index + 2) * 100}';
                      print(widget.coffee.cupSize);
                    });
                  },
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                  selectedBorderColor: Colors.grey,
                  constraints: const BoxConstraints(
                    minHeight: 54.0,
                    minWidth: 81.0,
                  ),
                  isSelected: _selectedCupSize,
                  children: cupSize,
                ),
                const SizedBox(height: 24),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Cup Type',
                    style: TextStyle(
                      color: Color(0xFF2F1B00),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 8.0),
                ToggleButtons(
                  direction: Axis.horizontal,
                  onPressed: (int index) {
                    setState(() {
                      for (int i = 0; i < _selectedCupType.length; i++) {
                        _selectedCupType[i] = i == index;
                      }
                      widget.coffee.cupType = index + 1;
                      print(widget.coffee.cupType);
                    });
                  },
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                  selectedBorderColor: Colors.grey,
                  constraints: const BoxConstraints(
                    minHeight: 54.0,
                    minWidth: 81.0,
                  ),
                  isSelected: _selectedCupType,
                  children: cupType,
                ),
                const SizedBox(height: 24.0),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Add-ons',
                    style: TextStyle(
                      color: Color(0xFF2F1B00),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/sugar-spoon.png'),
                        const Text(
                          'Sugar',
                          style: TextStyle(
                            color: Color(0xFF2F1B00),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        const Text(
                          '(tsp)',
                          style: TextStyle(
                            color: Color(0xFF686060),
                            fontSize: 12,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 8.0),
                    ToggleButtons(
                      direction: Axis.horizontal,
                      onPressed: (int index) {
                        setState(() {
                          for (int i = 0; i < _selectedSugar.length; i++) {
                            _selectedSugar[i] = i == index;
                          }
                          widget.coffee.sugar = index + 1;
                          print(widget.coffee.sugar);
                        });
                      },
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                      selectedBorderColor: Colors.grey,
                      constraints: const BoxConstraints(
                        minHeight: 48.0,
                        minWidth: 52.0,
                      ),
                      isSelected: _selectedSugar,
                      children: sugar,
                    ),
                  ],
                ),
                const SizedBox(height: 12.0),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/bread.png'),
                        const Text(
                          'Bread',
                          style: TextStyle(
                            color: Color(0xFF2F1B00),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        const Text(
                          '(pc)',
                          style: TextStyle(
                            color: Color(0xFF686060),
                            fontSize: 12,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 8.0),
                    ToggleButtons(
                      direction: Axis.horizontal,
                      onPressed: (int index) {
                        setState(() {
                          for (int i = 0; i < _selectedBread.length; i++) {
                            _selectedBread[i] = i == index;
                          }
                          widget.coffee.bread = index + 1;
                          print(widget.coffee.bread);
                        });
                      },
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                      selectedBorderColor: Colors.grey,
                      constraints: const BoxConstraints(
                        minHeight: 48.0,
                        minWidth: 52.0,
                      ),
                      isSelected: _selectedBread,
                      children: bread,
                    ),
                  ],
                ),
                const SizedBox(height: 12.0),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/cream-spoon.png'),
                        const Text(
                          'Cream',
                          style: TextStyle(
                            color: Color(0xFF2F1B00),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        const Text(
                          '(tsp)',
                          style: TextStyle(
                            color: Color(0xFF686060),
                            fontSize: 12,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 8.0),
                    ToggleButtons(
                      direction: Axis.horizontal,
                      onPressed: (int index) {
                        setState(() {
                          for (int i = 0; i < _selectedCream.length; i++) {
                            _selectedCream[i] = i == index;
                          }
                          widget.coffee.cream = index + 1;
                          print(widget.coffee.cream);
                        });
                      },
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                      selectedBorderColor: Colors.grey,
                      constraints: const BoxConstraints(
                        minHeight: 48.0,
                        minWidth: 52.0,
                      ),
                      isSelected: _selectedCream,
                      children: cream,
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                GradientButton(
                  onPressed: () {
                    addToCart();
                  },
                  startingColor: const Color(0xFF8F5101),
                  endingColor: const Color(0xFFDA9235),
                  width: 334,
                  height: 59,
                  borderRadius: BorderRadius.circular(8.0),
                  child: const Text(
                    'Add',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
