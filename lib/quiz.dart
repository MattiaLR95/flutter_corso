import 'package:flutter/material.dart';
import 'package:verifica_moduli_1_2/data/questions.dart';
import 'package:verifica_moduli_1_2/homepage.dart';
import 'package:verifica_moduli_1_2/question_screen.dart';
import 'package:verifica_moduli_1_2/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = Homepage(switchScreen);
  //   super.initState();
  // }

  List<String> selectedAnswers = [];
  var activeScreen = 'homepage';
  Widget? screenWidget;

  // void switchScreen(){
  //   setState(() {
  //     activeScreen = const QuestionScreen();
  //   });
  // }

  void switchScreen() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(onSelectAnswer: (answer) {
        chooseAnswer(answer);
      });
    }

    if (activeScreen == 'homepage') {
      screenWidget = Homepage(switchScreen);
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultScreen(
        chosenAnswers: selectedAnswers,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 103, 58, 183),
                Color.fromARGB(255, 103, 58, 183),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          // child: activeScreen,
          child: screenWidget,
        ),
      ),
    );
  }
}
