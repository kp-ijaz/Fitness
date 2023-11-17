import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentHorizontalIntValue = 10;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.only(left: 50),
        child: Column(
          children: [
            SizedBox(height: 100),
            Text('Select a time for the exercise'),
            NumberPicker(
              value: _currentHorizontalIntValue,
              minValue: 0,
              maxValue: 60,
              step: 10,
              itemHeight: 80,
              itemCount: 3,
              axis: Axis.horizontal,
              onChanged: (value) =>
                  setState(() => _currentHorizontalIntValue = value),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.black26),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
