import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen(this.switchScreen,{super.key});

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return
        /*    appBar: AppBar(
        title: const Text(
          'welcome to quiz app',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
        elevation: 1.0,
      ), */
        Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 50,
          ),
          /*        Opacity(
              opacity: 0.6,
              child: Image.asset(
                'assets/images/quiz-logo.png',
                width: 200,
                height: 200,
              ),
            ), */
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            height: 200,
            color: const Color.fromARGB(134, 255, 255, 255),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text('Learn Flutter the fun way!'),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: () {
              switchScreen();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.amber,
              side: const BorderSide(
                width: 2.0,
                color: Colors.purple,
              ),
            ),
            label: const Text(
              'Start Quiz',
              style: TextStyle(color: Colors.white),
            ),
            icon: const Icon(Icons.play_circle_fill_outlined),
          ),
        ],
      ),
    );
  }
}
