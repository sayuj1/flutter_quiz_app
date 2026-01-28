import 'package:flutter/material.dart';
import 'package:first_project/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key}); //accept and forward key argument

  @override
  State<Quiz> createState() => _QuizState();
}

// _QuizState is private class
class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.cyan, Colors.indigo],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    );
  }
}
