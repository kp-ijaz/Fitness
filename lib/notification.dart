import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 12, 44),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 12, 44),
        title: Text('NOTIFICATIONS'),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
