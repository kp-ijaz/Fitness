// import 'dart:ffi';

// import 'dart:ffi';

// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:homeworkout/homeexrcise.dart';
// import 'package:homeworkout/homewrkout.dart';

class Daychart extends StatelessWidget {
  final workoutname;
  final heading;
  Daychart({super.key, required this.workoutname, required this.heading});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 3, 12, 44),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 3, 12, 44),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_rounded)),
          title: Text(workoutname),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 172, 167, 155),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'DAY ${index + 1}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStatePropertyAll(
                                    ContinuousRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(80))),
                                backgroundColor: const MaterialStatePropertyAll(
                                    Color.fromARGB(255, 207, 204, 13))),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: ((context) => Homeexecise(
                                        heading: heading,
                                      ))));
                            },
                            child: const Text('START')),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: 30,
        ),
      ),
    );
  }
}
