import 'package:flutter/material.dart';

class QuestionIndetifier extends StatelessWidget {
  const QuestionIndetifier({
    super.key,
    required this.itemData,
    required this.isCorrectAnswer,
    required this.questionIndex,
  });

  final Map<String, Object> itemData;
  final bool isCorrectAnswer;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      alignment: Alignment.center,
      width: 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 0, 254, 17)
            : const Color.fromARGB(255, 249, 133, 241),
        // color: isCorrectAnswer ? Colors.amber : Colors.red,
      ),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(fontSize: 15),
      ),
    );
  }
}
