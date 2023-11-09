import 'package:flutter/material.dart';
import 'package:brewista/models/gradient_button.dart';
import 'package:brewista/models/rounded_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUp extends StatefulWidget {
  static const String id = 'sign_up';
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 24.0,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: const Text(
                    'Sign Up',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 26,
                      color: Color(0xFF222222),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40.0),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: 'Enter phone number or email',
                  labelStyle: const TextStyle(
                    color: Color(0xFFAAAAAA),
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16.0),
              GradientButton(
                width: 360.0,
                height: 56.0,
                text: const Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 14.0,
                  ),
                ),
                onPressed: () {},
                startingColor: const Color(0xFF8F5101),
                endingColor: const Color(0xFFDA9235),
              ),
              const SizedBox(height: 20.0),
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'already a customer?  ',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.italic,
                        color: Color(0xFF999999),
                      ),
                    ),
                    TextSpan(
                      text: 'Login',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 320.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 80.0,
                    child: Divider(
                      color: Color(0xFFDFDFDF),
                      thickness: 1.5,
                    ),
                  ),
                  Text(
                    'Other sign up options',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.italic,
                      color: Color(0xFF999999),
                    ),
                  ),
                  SizedBox(
                    width: 80.0,
                    child: Divider(
                      color: Color(0xFFDFDFDF),
                      thickness: 1.5,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18.0),
              RoundedButton(
                childWidget: const Text(
                  'Continue as guest',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                  ),
                ),
                onPressed: () {},
              ),
              const SizedBox(height: 18.0),
              RoundedButton(
                childWidget: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/google.svg'),
                    const SizedBox(width: 10.0),
                    const Text(
                      'Login with Google',
                      style: TextStyle(
                        color: Color(0xFF222222),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
