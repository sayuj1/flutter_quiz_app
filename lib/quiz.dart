import 'package:flutter/material.dart';
import 'package:first_project/start_screen.dart';
import 'package:first_project/questions_screen.dart';
import 'package:first_project/data/questions.dart';
import 'package:first_project/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key}); //accept and forward key argument

  @override
  State<Quiz> createState() => _QuizState();
}

// _QuizState is private class
class _QuizState extends State<Quiz> {
  Widget? _currentScreen;
  final List<String> chosenAnswers =
      []; // not reassigning the list, but adding elements to it

  @override
  void initState() {
    super.initState();
    _currentScreen = StartScreen(switchScreen);
  }

  void switchScreen() {
    setState(() {
      _currentScreen = QuestionsScreen(onSelectAnswer: chooseAnswer);
    });
  }

  void chooseAnswer(String answer) {
    chosenAnswers.add(answer);
    if (chosenAnswers.length == questions.length) {
      setState(() {
        _currentScreen = ResultsScreen(
          chosenAnswers: chosenAnswers,
          restartQuiz: restartQuiz,
        );
      });
    }
  }

  void restartQuiz() {
    setState(() {
      chosenAnswers.clear();
      _currentScreen = StartScreen(switchScreen);
    });
  }

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
          child: _currentScreen,
        ),
      ),
    );
  }
}
