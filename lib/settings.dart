import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 12, 44),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 12, 44),
        title: const Text('SETTINGS'),
        centerTitle: true,
        elevation: 0,
      ),
      body: const Padding(
        padding: EdgeInsets.only(top: 70, left: 20),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.share,
                  color: Colors.amber,
                  size: 40.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Share with friends',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 40.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Rate us',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.edit_rounded,
                    color: Colors.amber,
                    size: 40.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Feedback',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
