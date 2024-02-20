import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.levelSelector, {super.key});

  final void Function() levelSelector;
  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Image.asset('assets/images/minesweeper.png', width: 300),
        ),
        const Text(
          "Minesweeper",
          style: TextStyle(
            color: Color.fromARGB(255, 34, 40, 49),
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 10),
        OutlinedButton.icon(
          onPressed: levelSelector,
          style: OutlinedButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 34, 40, 49),
          ),
          icon: const Icon(Icons.play_arrow_rounded),
          label: const Text(
            "Start",
            style: TextStyle(
              color: Color.fromARGB(255, 34, 40, 49),
              fontSize: 24,
            ),
          ),
        ),
        SizedBox(height: 400),
        const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Ayananshu Mohanty",
                style: TextStyle(
                  color: Color.fromARGB(255, 251, 249, 241),
                  fontSize: 12,
                ),
              ),
            )),
      ],
    ));
  }
}
