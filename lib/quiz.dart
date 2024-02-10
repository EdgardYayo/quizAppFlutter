import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {

 var activeScreen = 'start-screen';
//  Widget? activeScreen;

//  @override
//  void initState() {
//    activeScreen = StartScreen(switchScreen);
//    super.initState();
//  }

//  void switchScreen() {
//   setState(() {
//     activeScreen = const QuestionsScreen();
//   });
//  }

 void switchScreen() {
  setState(() {
    activeScreen = 'question-screen';
  });
 }
 
 @override
 Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen); 

    if (activeScreen == 'question-screen') {
      screenWidget = const QuestionsScreen();
    }
              
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient:
                  LinearGradient(
                    colors: [Colors.grey, Colors.deepPurple],
              ),
            ),
            // child: activeScreen == 'start-screen' 
            //   ? StartScreen(switchScreen) 
            //   : const QuestionsScreen(),
            child: screenWidget,
        ),
      ),
    );
 }
}