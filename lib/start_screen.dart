import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuestions, {super.key});

  final void Function() startQuestions;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/question-mark.png',
            width: 400,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Ready for a challenge?',
            style: GoogleFonts.lato(
              fontSize: 26,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: startQuestions,
            label: const Text(
              'Start Quiz',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            icon: const Icon(
              Icons.arrow_forward_sharp,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
