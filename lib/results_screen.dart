import 'package:flutter/material.dart';
import 'package:verifica_moduli_1_2/data/questions.dart';
import 'package:verifica_moduli_1_2/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, required this.chosenAnswers});

  var result = 0;
  var length = questions.length;
  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {

    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_question': questions[i].answers[0],
        'user_answers': chosenAnswers[i],
      },
    );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
                'You answered X out of Y questions correctly'),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(getSummaryData()),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Restart Quiz!'),
            )
          ],
        ),
      ),
    );
  }
}
