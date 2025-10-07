import 'package:flutter/material.dart';
import 'package:quiz_app/models/quiz_questions.dart';
import 'package:quiz_app/questions_sumary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
  });

  final List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'user_answer': chosenAnswers[i],
        'correct_answer': questions[i].answers[0],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectAnswers = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return Center(
      child: SizedBox(
        height: 550,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(30),
            child: Column(
              children: [
                Text(
                  'You answered $numCorrectAnswers out of $numTotalQuestions questions corectly!',
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                QuestionsSumary(summaryData),
                const SizedBox(height: 30),
                TextButton.icon(
                  onPressed: onRestart,
                  label: const Text(
                    'Restart Quiz!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  icon: const Icon(
                    Icons.keyboard_double_arrow_right,
                    color: Colors.black,
                    size: 28,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
