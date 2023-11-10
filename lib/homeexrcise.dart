import 'package:flutter/material.dart';
// import 'package:homeworkout/days.dart';

class Homeexecise extends StatelessWidget {
  final String heading;
  Homeexecise({super.key, required this.heading});

  @override
  Widget build(BuildContext context) {
    final exrcise = [
      'JUMPING JACKS',
      'INCLINE PUSH-UPS',
      'KNEE PUSH-UPS',
      'PUSH-UPS',
      'DECLINE PUSH-UPS'
    ];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 12, 44),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 12, 44),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_rounded)),
        title: Text(heading),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      // child: Image.asset('assets/images/jumping-jacks.gif'),
                      height: 100,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              image: AssetImage(
                                ('assets/images/${index + 1}.gif'),
                              ),
                              fit: BoxFit.cover)),
                    ),
                    Text(
                      exrcise[index],
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                    index == 0
                        ? IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.play_circle),
                            color: Colors.amber,
                            iconSize: 45.0,
                          )
                        : const SizedBox(
                            width: 60,
                          )
                  ],
                ),
              ),
            );
          },
          itemCount: 5),
    );
  }
}
