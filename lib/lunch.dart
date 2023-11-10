import 'package:flutter/material.dart';

class Lunch extends StatelessWidget {
  const Lunch({super.key});

  @override
  Widget build(BuildContext context) {
    final lunch = [
      'Multigrain roti along with palak\nchicken and Avocado bell\npepper salad',
      'Multigrain roti, fish curry,\nvegetable salad',
      'Quinoa upma, chicken and\nbroccoli salad',
      'Grilled Chicken,Salad,Whole\nGrain Bread',
      'Grilled chicken,vegetable roti\nrolls,Green Salad',
      'Whole Grain Chicken Wrap,\nBlack Beans,\nPeppers & Greek Yogurt',
      'Whole wheat pasta with chicken\nand Green Salad'
    ];
    return Scaffold(
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
                              image: AssetImage('assets/images/L$index.png'),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      lunch[index],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          height: 1.5),
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
