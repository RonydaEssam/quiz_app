import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() {
    return _StartScreenState();
  }
}

class _StartScreenState extends State<StartScreen> {
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
          const Text(
            'Ready for a challenge?',
            style: TextStyle(
              fontSize: 26,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: () {},
            label: Text(
              'Start Quiz',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            icon: Icon(
              Icons.arrow_forward_sharp,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
