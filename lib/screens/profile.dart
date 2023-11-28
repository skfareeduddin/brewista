import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/rounded_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const id = 'profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: const Text(
                  'Profile',
                  style: TextStyle(
                    color: Color(0xFF2F1B00),
                    fontSize: 26,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              child: const Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/profile-image.png'),
                    backgroundColor: Colors.transparent,
                    radius: 74.0,
                  ),
                  SizedBox(width: 48.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Peter Scott',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF2F1B00),
                          fontSize: 22,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '+91 934 534 3433',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF4A4A4A),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 32.0),
                      Text(
                        'Reward Points',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF4A4A4A),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '3002',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF2F1B00),
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 104),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  RoundedButton(
                    childWidget: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/edit_icon.svg'),
                        const SizedBox(width: 8.0),
                        const Text(
                          'Edit profile',
                          style: TextStyle(
                            color: Color(0xFF2F1B00),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(height: 24.0),
                  RoundedButton(
                    childWidget: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/my_orders_icon.svg'),
                        const SizedBox(width: 8.0),
                        const Text(
                          'My orders',
                          style: TextStyle(
                            color: Color(0xFF2F1B00),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(height: 24.0),
                  RoundedButton(
                    childWidget: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/refer_a_friend_icon.svg'),
                        const SizedBox(width: 8.0),
                        const Text(
                          'Refer a friend',
                          style: TextStyle(
                            color: Color(0xFF2F1B00),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(height: 24.0),
                  RoundedButton(
                    childWidget: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/log_out_icon.svg'),
                        const SizedBox(width: 8.0),
                        const Text(
                          'Log out',
                          style: TextStyle(
                            color: Color(0xFF2F1B00),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
