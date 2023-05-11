import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:verifica_moduli_1_2/data/questions.dart';
import 'package:verifica_moduli_1_2/questions_summary/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.chosenAnswers, required this.onRestart});

  final List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
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
    final summaryData = getSummaryData();
    final result = summaryData
        .where((e) => e['user_answers'] == e['correct_question'])
        .length;
    final totalQuestions = questions.length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'You answered $result out of $totalQuestions questions correctly',
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(183, 222, 125, 236),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: onRestart,
              icon: const Icon(
                Icons.replay_rounded,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              label: Text(
                'Restart Quiz!',
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(183, 255, 255, 255),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
