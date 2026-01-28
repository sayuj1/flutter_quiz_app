import 'package:flutter/material.dart';
import 'answer_button.dart';
import 'package:first_project/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int currentQuestionIndex = 0;
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              currentQuestion.question,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                height: 1.2,
                letterSpacing: 1.2,
              ),
            ),
          ),
          SizedBox(height: 20),
          ...currentQuestion.options.map((option) {
            return AnswerButton(answer: option, onSelected: () {});
          }),
        ],
      ),
    );
  }
}
