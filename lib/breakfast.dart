import 'package:flutter/material.dart';

class Breakfast extends StatelessWidget {
  const Breakfast({super.key});

  @override
  Widget build(BuildContext context) {
    final breakfast = [
      'Oats,Banana,Pancakes\nwith Protein Shake',
      'Oatmeal with Greek Yogurt &\nSeasonal fruits Mango Juice',
      'Poached Eggs,Whole Grain Toast,\nProtein Shake',
      'Oatmeal with Honey\nApple Juice',
      'Scrambled Egg,Whole Grain Toast,\nSmoothie',
      'Oatmeal,Whole Grain Toast,\nOrange Juice',
      'Oatmeal with Nuts\nSmoothie'
    ];

    return Scaffold(
      floatingActionButton: CircleAvatar(
        radius: 30,
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 3, 12, 44),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 8, left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'DAY ${index + 1}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 105,
                      width: 115,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('assets/images/b$index.png'),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      breakfast[index],
                      style: const TextStyle(
                          height: 1.6,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          );
        },
        itemCount: 7,
      ),
    );
  }
}
