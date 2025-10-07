import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';
import 'package:quiz_app/start_screen.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
  });

  final List<String> chosenAnswers;
  final void Function() onRestart;

  /*
  List<Map<String, Object>> getSummaryData {
    final List<Map<String, Object>> summary = [];



    return summary;
  }
*/
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answered x out of y questions corectly!'),
            const SizedBox(height: 30),
            Text('List of questions and answers... $chosenAnswers'),
            const SizedBox(height: 30),
            TextButton(
              onPressed: onRestart,
              child: const Text('Restart Quiz!'),
            ),
          ],
        ),
      ),
    );
  }
}
