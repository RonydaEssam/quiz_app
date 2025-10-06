import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Question... ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 20),
          AnswerButton(
            onTap: () {},
            answerText: 'Answer 1',
          ),
          const SizedBox(height: 8),
          AnswerButton(
            onTap: () {},
            answerText: 'Answer 2',
          ),
          const SizedBox(height: 8),
          AnswerButton(
            onTap: () {},
            answerText: 'Answer 3',
          ),
          const SizedBox(height: 8),
          AnswerButton(
            onTap: () {},
            answerText: 'Answer 4',
          ),
        ],
      ),
    );
  }
}
