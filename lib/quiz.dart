import 'package:flutter/material.dart';
import 'package:verifica_moduli_1_2/homepage.dart';
import 'package:verifica_moduli_1_2/question_screen.dart';

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

  final List<String> selectedAnswers = [];
  var activeScreen = 'homepage';

  // void switchScreen(){
  //   setState(() {
  //     activeScreen = const QuestionScreen();
  //   });
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
  }

  @override
  Widget build(BuildContext context) {
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
          child: activeScreen == 'homepage'
              ? Homepage(switchScreen)
              : QuestionScreen(onSelectAnswer: chooseAnswer,),
        ),
      ),
    );
  }
}
