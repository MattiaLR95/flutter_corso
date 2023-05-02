import 'package:flutter/material.dart';
import 'package:verifica_moduli_1_2/homepage.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
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
          child: const Homepage(),
        ),
      ),
    ),
  );
}
