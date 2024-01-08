import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainView());
}

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient:
                  RadialGradient(
                    colors: [Colors.black, Colors.deepPurple],
                    radius: 0.3
              ),
            ),
            child: const StartScreen()
        ),
      ),
    );
  }
}
