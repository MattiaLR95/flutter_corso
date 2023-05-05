import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:verifica_moduli_1_2/answer_button.dart';
import 'package:verifica_moduli_1_2/data/questions.dart';
import 'package:verifica_moduli_1_2/quiz.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  var currentQuestionsIndex = 0;
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = const QuestionScreen();
    super.initState();
  }

  void answerQuestion() {
    setState(() {
      if (currentQuestionsIndex < questions.length - 1) {
        currentQuestionsIndex++;
      }
      null;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionsIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              questions[currentQuestionsIndex].text,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 219, 76, 241),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(answerText: answer, onTap: answerQuestion);
            }),
          ],
        ),
      ),
    );
  }
}
