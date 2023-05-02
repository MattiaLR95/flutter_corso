import 'package:flutter/material.dart';
import 'package:verifica_moduli_1_2/starting_quiz.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Color.fromARGB(255, 237, 223, 252),
              fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const StartingQuiz(),
        ],
      ),
    );
  }
}
