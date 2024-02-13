import 'package:flutter/material.dart';
import 'package:minesweeper/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 200, 255, 255),
              Color.fromARGB(255, 0, 255, 255),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: const StartScreen()),
      ),
    ),
  );
}
