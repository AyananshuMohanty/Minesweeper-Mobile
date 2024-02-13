import 'package:flutter/material.dart';
import 'start_screen.dart';
import 'level_screen.dart';

class Minesweeper extends StatefulWidget {
  const Minesweeper({super.key});

  @override
  State<Minesweeper> createState() {
    return _MinesweeperState();
  }
}

class _MinesweeperState extends State<Minesweeper> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const LevelScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 251, 249, 241),
              Color.fromARGB(255, 251, 249, 241),
              Color.fromARGB(255, 170, 215, 217),
              Color.fromARGB(255, 146, 199, 207),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: activeScreen),
      ),
    );
  }
}
