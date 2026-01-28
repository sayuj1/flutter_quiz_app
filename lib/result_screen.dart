import 'package:first_project/questions_summary.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:first_project/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.restartQuiz,
  });

  final List<String> chosenAnswers;
  final void Function() restartQuiz;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].options[0],
        'user_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = getSummaryData().where((data) {
      return data['correct_answer'] == data['user_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                height: 1.2,
                letterSpacing: 1.2,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            // Text(
            //   'List of answers and questions...',
            //   style: GoogleFonts.lato(
            //     color: Colors.white,
            //     fontSize: 24,
            //     fontWeight: FontWeight.bold,
            //     height: 1.2,
            //     letterSpacing: 1.2,
            //   ),
            //   textAlign: TextAlign.center,
            // ),
            QuestionsSummary(summaryData: getSummaryData()),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: restartQuiz,
              icon: const Icon(Icons.arrow_forward_ios),
              label: const Text('Restart Quiz'),
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 13, 167, 202),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
