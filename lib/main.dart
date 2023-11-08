import 'package:brewista/screens/sign_up.dart';
import 'package:flutter/material.dart';
import '';

void main() {
  runApp(const Brewista());
}

class Brewista extends StatelessWidget {
  const Brewista({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SignUp.id,
      routes: {
        SignUp.id: (context) => const SignUp(),
      },
    );
  }
}
