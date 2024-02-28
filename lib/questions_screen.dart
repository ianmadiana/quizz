import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/questions_data.dart';
import 'package:flutter_application_1/widgets/colors/costum_gradient.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/buttons/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswers) {
    widget.onSelectAnswer(selectedAnswers);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.cyan,
        body: Container(
          decoration: BoxDecoration(gradient: GradientStyles.aminGradient()),
          // center the item
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(76, 0, 0, 0),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    currentQuestion.text,
                    style: GoogleFonts.lato(
                        textStyle:
                            const TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                  const SizedBox(height: 30),

                  // List and Spread Map
                  ...currentQuestion.getShuffledAsnwer().map(
                    (answerItem) {
                      return AnswerButton(
                          answerData: answerItem,
                          onTap: () {
                            answerQuestion(answerItem);
                          });
                    },
                  ),
                  // AnswerButton(
                  //   answerData: currentQuestion.answer[0],
                  //   onTap: () {},
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
