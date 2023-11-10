import 'package:flutter/material.dart';

class Dinner extends StatelessWidget {
  const Dinner({super.key});

  @override
  Widget build(BuildContext context) {
    final dinner = [
      'Brown rice, peas paneer curry,\nsprouts vegetable salad',
      'Broken wheat khichidi along with\ncarrot raita, egg white, and\nvegetable salad',
      'Lean Beef and vegetable curry,\nbrown rice,cucumber raitaBaby\nPotatoes,Chocolate Milk',
      'Methi Chicken,Brown Rice,Broccoli\nProtein Shake',
      'Chicken Stir Fry,Spring\nOnion, Peppers & Broccoli\nChocolate Milk',
      'Keema bhurji and multigrain\nrotiLean Beef Mince,Sweet\nPotato,Protein Shake',
      'Fish curry, boiled green peas salad,\nBrown RiceGarden PeasMilk'
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
                              image: AssetImage('assets/images/D$index.png'),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      dinner[index],
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
