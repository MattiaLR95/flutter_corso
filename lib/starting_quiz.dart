import 'package:flutter/material.dart';

class StartingQuiz extends StatefulWidget {
  const StartingQuiz({super.key});


  @override
  State<StartingQuiz> createState() {
    return _StartingQuiz();
  }

}

class _StartingQuiz extends State<StartingQuiz>{
  
  onClick() {}

   @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onClick,
      child: const Text(
        'Start Quiz',
        style: TextStyle(
          color: Colors.orangeAccent,
        ),
      ),
    );
  }
}
