import 'package:flutter/material.dart';

class LevelScreen extends StatefulWidget {
  const LevelScreen({super.key});

  @override
  State<LevelScreen> createState() {
    return _LevelScreenState();
  }
}

class _LevelScreenState extends State<LevelScreen> {
  final TextEditingController numberOfSidesController = TextEditingController();
  int? selectedNumberOfSides;
  @override
  Widget build(context) {
    return Center(
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
            ),
          ),
        ),
        DropdownMenu<int>(
          initialSelection: 3,
          controller: numberOfSidesController,
          requestFocusOnTap: false,
          label: const Text('Number of Sides'),
          onSelected: (int? numberOfSides) {
            setState(() {
              selectedNumberOfSides = numberOfSides;
            });
          },
          dropdownMenuEntries: [3, 4, 5, 6, 7, 8]
              .map<DropdownMenuEntry<int>>((int numberOfSides) {
            return DropdownMenuEntry<int>(
              value: numberOfSides,
              label: numberOfSides.toString(),
              enabled: true,
              style: MenuItemButton.styleFrom(
                foregroundColor: Color.fromARGB(255, 34, 40, 49),
              ),
            );
          }).toList(),
          width: 300.0,
        ),
        SizedBox(height: 400),
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
