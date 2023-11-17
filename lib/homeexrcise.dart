import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:homeworkout/add_exercise.dart';
import 'package:homeworkout/countdown.dart';

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
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (ctx) => const AddExercise()));
        },
        child: const CircleAvatar(
          radius: 30,
          child: Icon(
            Icons.add,
            size: 30,
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 3, 12, 44),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 3, 12, 44),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_rounded)),
        title: Text(heading),
        centerTitle: true,
      ),
      body: SlidableAutoCloseBehavior(
        child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Slidable(
                  key: const ValueKey(0),
                  startActionPane: ActionPane(
                    extentRatio: 0.2,
                    motion: const ScrollMotion(),
                    // dismissible: DismissiblePane(onDismissed: () {}),
                    children: [
                      SlidableAction(
                        onPressed: (_) {},
                        backgroundColor: const Color(0xFFFE4A49),
                        foregroundColor: Colors.white,
                        icon: Icons.delete,
                        label: 'Delete',
                      ),
                    ],
                  ),
                  endActionPane: ActionPane(
                      extentRatio: 0.2,
                      motion: const ScrollMotion(),
                      children: [
                        SlidableAction(
                          onPressed: (_) {},
                          backgroundColor: const Color(0xFF7BC043),
                          foregroundColor: Colors.white,
                          icon: Icons.edit,
                          label: 'Edit',
                        ),
                      ]),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
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
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => CountdownPage()));
                                },
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
                ),
              );
            },
            itemCount: 5),
      ),
    );
  }
}
