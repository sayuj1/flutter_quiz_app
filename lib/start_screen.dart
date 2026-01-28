import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

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
            'Learn flutter fun way!',
            style: TextStyle(
              color: Color.fromARGB(255, 213, 234, 240),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.arrow_forward_ios),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
