import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSumary extends StatelessWidget {
  const QuestionsSumary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((data) {
        return Row(
          children: [
            Container(
              width: 40,
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: data['user_answer'] == data['correct_answer']
                    ? Colors.green.withValues(alpha: 0.7)
                    : Colors.red.withValues(alpha: 0.7),
                shape: BoxShape.circle,
                //borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                ((data['question_index'] as int) + 1).toString(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data['question'] as String,
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Your Answer:  ${data['user_answer']}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: data['user_answer'] == data['correct_answer']
                            ? Colors.green.shade700
                            : Colors.red,
                      ),
                    ),
                    Text(
                      'Correct Answer:  ${data['correct_answer']}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
