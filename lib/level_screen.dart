import 'package:flutter/material.dart';

class LevelScreen extends StatefulWidget {
  const LevelScreen({super.key});

  @override
  State<LevelScreen> createState() {
    return _LevelScreenState();
  }
}

class _LevelScreenState extends State<LevelScreen> {
  @override
  Widget build(context) {
    return const Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
            child: Center(
                child: Text(
          "Choose number of sides",
          style: TextStyle(
            color: Color.fromARGB(255, 34, 40, 49),
            fontSize: 24,
          ),
        ))),
        SizedBox(height: 500),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Ayananshu Mohanty",
                style: TextStyle(
                  color: Color.fromARGB(255, 251, 249, 241),
                  fontSize: 12,
                ),
              )),
        ),
      ],
    ));
  }
}
