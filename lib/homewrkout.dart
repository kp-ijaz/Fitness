import 'package:calendar_appbar/calendar_appbar.dart';
import 'package:flutter/material.dart';
import 'package:homeworkout/days.dart';

class Homewrkout extends StatelessWidget {
  const Homewrkout({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CalendarAppBar(
          lastDate: DateTime.now(),
          onDateChanged: (value) => print(value),
          firstDate: DateTime.now().subtract(
            const Duration(days: 140),
          ),
          fullCalendar: true,
        ),
        body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'BEGINNER',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Daychart(
                            workoutname: 'Full Body Workout',
                            heading: 'BEGINNER',
                          )));
                },
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 175, 174, 170),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20, top: 30),
                    child: Text(
                      'FULL BODY\n30 DAYS WORKOUT',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, height: 1.3),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return Daychart(
                      workoutname: 'Lower Body Workout',
                      heading: 'BEGINNER',
                    );
                  }));
                },
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 175, 174, 170),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20, top: 30),
                    child: Text('LOWER BODY\n30 DAYS WORKOUT',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, height: 1.3)),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 15),
              child: Text('INTERMEDIATE',
                  style: TextStyle(fontWeight: FontWeight.w500)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
              child: InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: ((context) {
                    return Daychart(
                      workoutname: 'Full Body Workouts',
                      heading: 'INTERMEDIATE',
                    );
                  })));
                },
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 175, 174, 170),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20, top: 30),
                    child: Text(
                      'FULL BODY\n30 DAYS WORKOUT',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, height: 1.3),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
              child: InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: ((context) {
                    return Daychart(
                      workoutname: 'Lower Body Workout',
                      heading: 'INTERMEDIATE',
                    );
                  })));
                },
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 175, 174, 170),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20, top: 30),
                    child: Text('LOWER BODY\n30 DAYS WORKOUT',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, height: 1.3)),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 15),
              child: Text('ADVANCED',
                  style: TextStyle(fontWeight: FontWeight.w500)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
              child: InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: ((context) {
                    return Daychart(
                      workoutname: 'Full Body Workout',
                      heading: 'ADVANCED',
                    );
                  })));
                },
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 175, 174, 170),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20, top: 30),
                    child: Text(
                      'FULL BODY\n30 DAYS WORKOUT',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, height: 1.3),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
              child: InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: ((context) {
                    return Daychart(
                      workoutname: 'Lower Body Workout',
                      heading: 'ADVANCED',
                    );
                  })));
                },
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 175, 174, 170),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20, top: 30),
                    child: Text('LOWER BODY\n30 DAYS WORKOUT',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, height: 1.3)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
