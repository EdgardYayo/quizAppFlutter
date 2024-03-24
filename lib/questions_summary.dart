import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                CircleAvatar(
                  backgroundColor: data['user_answer'] == data['correct_answer'] ? Colors.green : Colors.red,
                  child: Center( 
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: GoogleFonts.nunito(
                        fontSize: 18,
                        color: Colors.black
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        data['question'] as String,
                        style: GoogleFonts.nunito(
                          fontSize: 17,
                          color: Colors.black
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        data['user_answer'] as String,
                        style: GoogleFonts.nunito(
                          fontSize: 15,
                          color: data['user_answer'] == data['correct_answer'] ? Colors.blue : Colors.red,
                        ),
                      ),
                      Text(
                        data['correct_answer'] as String,
                        style: GoogleFonts.nunito(
                          fontSize: 15,
                          color: Colors.lightGreen
                        ),
                      )
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
