// import 'dart:async';

import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
// import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

class AddExercise extends StatefulWidget {
  const AddExercise({super.key});

  @override
  State<AddExercise> createState() => _AddExerciseState();
}

class _AddExerciseState extends State<AddExercise> {
  int _currentHorizontalIntValue = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 12, 44),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 12, 44),
        elevation: 0,
        title: const Text('Add Exercise'),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_rounded)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(color: Colors.amber),
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.grey)),
              onPressed: () {},
              child: const Text('Add Image'),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, right: 40, left: 40),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(204, 255, 255, 255))),
                  label: Text(
                    'Enter the name of exercise',
                    style: TextStyle(color: Colors.white),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.white)),
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(height: 30),
                const Text(
                  'Select a time for the exercise:',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: NumberPicker(
                    value: _currentHorizontalIntValue,
                    minValue: 0,
                    maxValue: 60,
                    step: 10,
                    itemHeight: 80,
                    itemCount: 3,
                    textStyle: const TextStyle(color: Colors.amber),
                    axis: Axis.horizontal,
                    onChanged: (value) =>
                        setState(() => _currentHorizontalIntValue = value),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                          color: const Color.fromARGB(185, 255, 255, 255)),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.brown)),
                  onPressed: () {},
                  child: const Text('ADD TO EXERCISE')),
            )
          ],
        ),
      ),
    );
  }
}
