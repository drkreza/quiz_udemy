import 'package:flutter/material.dart';
import 'package:quiz_udemy/question_screen.dart';
import 'package:quiz_udemy/welcome_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = WelcomeScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 156, 88, 170),
              Color.fromARGB(255, 114, 0, 134)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            child: activeScreen),
      ),
    );
  }
}
