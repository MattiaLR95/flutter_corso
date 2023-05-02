import 'package:flutter/material.dart';

class StartingQuiz extends StatefulWidget {
  const StartingQuiz({super.key});

  @override
  State<StartingQuiz> createState() {
    return _StartingQuiz();
  }
}

class _StartingQuiz extends State<StartingQuiz> {
  onClick() {}

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onClick,
      style: OutlinedButton.styleFrom(
          foregroundColor: const Color.fromRGBO(255, 255, 255, 1)),
      child: const Text(
        'Start Quiz',
        style: TextStyle(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
      ),
    );
  }
}
