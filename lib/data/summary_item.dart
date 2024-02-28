import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({
    super.key,
    required this.itemData,
  });

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];
    return Row(
      children: [
        QuestionIndetifier(
            itemData: itemData,
            isCorrectAnswer: isCorrectAnswer,
            questionIndex: itemData['question_index'] as int),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // pertanyaan
                Text(
                  itemData['question'] as String,
                  style: GoogleFonts.ubuntu(
                      textStyle:
                          const TextStyle(color: Colors.white, fontSize: 13)),
                ),
                // SizedBox(height: 5),
                // jawaban user
                Text(
                  itemData['user_answer'] as String,
                  style:
                      const TextStyle(color: Colors.yellowAccent, fontSize: 12),
                ),
                // jawaban benar
                Text(
                  itemData['correct_answer'] as String,
                  style: const TextStyle(color: Colors.blue, fontSize: 12),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
