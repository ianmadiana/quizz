import 'package:flutter/material.dart';

import 'package:flutter_application_1/data/questions_data.dart';
import 'package:flutter_application_1/data/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.choosenAnswers,
    required this.onRestart,
  });

  final List<String> choosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < choosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answer[0],
        'user_answer': choosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return Center(
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: const Color.fromARGB(76, 0, 0, 0),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            QuestionsSummary(summaryData: summaryData),
            const SizedBox(height: 10),
            // const Text(
            //   'List of answers and questions',
            //   style: TextStyle(color: Colors.white),
            // ),
            const SizedBox(height: 10),
            TextButton.icon(
                onPressed: onRestart,
                icon: const Icon(
                  Icons.restart_alt,
                  color: Colors.white,
                ),
                label: const Text(
                  'Restart Quiz',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ))
          ],
        ),
      ),
    );
  }
}
