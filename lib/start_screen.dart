import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: Colors.white.withValues(alpha: 0.5),
          ),
          const SizedBox(height: 80),
          const Text(
            'Learn flutter the fun way!',
            style: TextStyle(
              color: Color.fromARGB(255, 213, 234, 240),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_forward_ios),
            label: const Text('Start Quiz'),
            style: ElevatedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 13, 167, 202),
            ),
          ),
        ],
      ),
    );
  }
}
