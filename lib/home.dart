// import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
// import 'dart:ffi';

import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:flutter/material.dart';
// import 'package:homeworkout/btmnavigation.dart';
// import 'package:homeworkout/diet.dart';
import 'package:homeworkout/dietplan.dart';
import 'package:homeworkout/homewrkout.dart';
import 'package:homeworkout/tips.dart';
import 'package:homeworkout/yagawrkout.dart';
// import 'package:chatbar/chatbar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 3, 12, 44),
        appBar: AppBar(
          toolbarHeight: 75,
          titleSpacing: 8,
          leadingWidth: 70,
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 3, 12, 44),
          leading: Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 5, left: 8),
            child: InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/fitnes9.png'),
                backgroundColor: Colors.transparent,
                radius: 5.0,
              ),
            ),
          ),
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text('Hii '),
                  Text(
                    'User',
                    style: TextStyle(color: Colors.amber),
                  ),
                ],
              ),
              Text(
                "Let's start your day",
                style: TextStyle(fontSize: 17),
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 30, right: 10, left: 10),
          child: ListView(children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your workouts',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 17),
                ),
                Text(
                  '6am - 8am',
                  style: TextStyle(color: Colors.amber, fontSize: 17),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: SizedBox(
                width: double.infinity,
                height: 170,
                child: GridView(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 1 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Homewrkout()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/images/fitnes2.jpg')),
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 134, 109, 18),
                        ),
                        alignment: Alignment.bottomLeft,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 10, bottom: 5),
                          child: Text(
                            'Without\nequipments',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => const Homewrkout())));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/images/fitnes3.1.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 175, 172, 161),
                        ),
                        alignment: Alignment.bottomLeft,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 10, bottom: 5),
                          child: Text(
                            'Gym\nWorkouts',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => const Yogawrkout())));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/images/fitnes3.4.png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 221, 209, 163),
                        ),
                        alignment: Alignment.bottomLeft,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 10, bottom: 5),
                          child: Text(
                            'Yoga',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => Tipspage(),
                      ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/fitnes7.jpg')),
                          borderRadius: BorderRadius.circular(10)),
                      height: 110,
                      width: 110,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (ctx) => Tipspage()));
                      },
                      child: const Text(
                        'TIPS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                            color: Colors.white),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: () async {
                      await LaunchApp.openApp(
                        androidPackageName: 'com.strava',
                        openStore: true,
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/images/fitnes5.jpg')),
                          borderRadius: BorderRadius.circular(10)),
                      height: 110,
                      width: 110,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    onPressed: () async {
                      await LaunchApp.openApp(
                        androidPackageName: 'com.strava',
                        openStore: true,
                      );
                    },
                    child: const Text(
                      'STRAVA',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => const Dietplan()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/fitnes6.png')),
                            borderRadius: BorderRadius.circular(10)),
                        height: 110,
                        width: 110,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => const Dietplan()));
                    },
                    child: const Text(
                      'DIET PLAN',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
