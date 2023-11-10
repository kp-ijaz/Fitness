import 'package:flutter/material.dart';
import 'package:homeworkout/btmnavigation.dart';
// import 'package:homeworkout/btmnavigation.dart';
// import 'package:homeworkout/home.dart';

class Headpage extends StatelessWidget {
  const Headpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 95, 95, 95),
      body: Center(
        child: Container(
          height: 500,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 0, 0, 0),
            image: const DecorationImage(
              opacity: 150.0,
              fit: BoxFit.cover,
              image:
                  AssetImage('assets/images/Screenshot 2023-10-20 162513.png'),
            ),
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 160, right: 20, left: 20),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color(0xFFFFFFFF), style: BorderStyle.solid),
                    ),
                    labelText: 'Enter your name',
                    labelStyle: TextStyle(
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (ctx) => const Fluidbottom()));
                    },
                    child: const Text("Let's start")),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 95, 95, 95),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color.fromARGB(160, 0, 0, 0))),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (ctx) => const Fluidbottom()));
                },
                child: const Text('Skip')),
          ),
        ],
      ),
    );
  }
}