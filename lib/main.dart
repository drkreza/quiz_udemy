import 'package:flutter/material.dart';
import 'package:quiz_udemy/welcome_screen.dart';

void main() {
  runApp( MaterialApp(
    home: Scaffold(
      body : Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [ Color.fromARGB(255, 156, 88, 170), Color.fromARGB(255, 114, 0, 134)],begin: Alignment.topLeft,end: Alignment.bottomRight)
        ),
        child: const WelcomeScreen()),
    ),
  ));
}
