import 'package:calendar_appbar/calendar_appbar.dart';
import 'package:flutter/material.dart';
import 'package:homeworkout/days.dart';

class Yogawrkout extends StatelessWidget {
  const Yogawrkout({super.key});

  @override
  Widget build(BuildContext context) {
    final title = ['BEGINNER', 'INTERMEDIATE', 'ADVANCED'];
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(103, 102, 104, 1),
        appBar: CalendarAppBar(
          lastDate: DateTime.now(),
          onDateChanged: (value) => print(value),
          firstDate: DateTime.now().subtract(
            const Duration(days: 140),
          ),
          fullCalendar: true,
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    title[index],
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: ((context) {
                        return Daychart(
                            workoutname: 'DAYS', heading: title[index]);
                      })));
                    },
                    child: Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('assets/images/0.$index.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                )
              ],
            );
          },
          itemCount: 3,
        ),
      ),
    );
  }
}
