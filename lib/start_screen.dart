import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset('assets/images/quiz-logo.png', width: 300),
        Container(
            margin: const EdgeInsets.only(top: 30),
            child: const Text(
              'Learn flutter the fun way!!',
              style: TextStyle(color: Colors.white, fontSize: 20, shadows: [
                Shadow(
                    color: Colors.white,
                    offset: Offset.infinite,
                    blurRadius: 10)
              ]),
            )),
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black
              ),
              onPressed: () {},
              icon: const Icon(Icons.quiz),
              label: const Text(
                'Start the quiz!!',
                style: TextStyle(
                  fontSize: 16
                ),
              ),
          ),
        ),
      ]),
    );
  }
}
