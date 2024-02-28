import 'package:flutter/material.dart';

import '../colors/costum_gradient.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerData,
    required this.onTap,
  });

  final String answerData;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        foregroundColor: const MaterialStatePropertyAll(Colors.white),
        minimumSize: const MaterialStatePropertyAll(Size(250, 40)),
        backgroundColor: MaterialStatePropertyAll(
          CostumColor.navy(),
        ),
      ),
      child: Text(
        answerData,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 12),
      ),
    );
  }
}
