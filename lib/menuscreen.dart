import 'package:flutter/material.dart';

import 'homescreen.dart';
import 'singlecoffe.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDEE3E9),
      body: HomeCoffe(),
    );
  }
}

class HomeCoffe extends StatelessWidget {
  const HomeCoffe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      HomePage(),
      Column(
        children: [
          SizedBox(
            height: 120,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 350,
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30)),
                      hintText: "Search",
                      filled: true,
                      fillColor: Colors.white,
                      suffixIcon: Material(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xFFE65738),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      )),
                ),
              )
            ],
          ),
        ],
      )
    ]);
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          ),
          child: Container(
            height: 150,
            width: 420,
            child: Image.network(
              "https://marketplace.canva.com/EAE-M0LQ64o/2/0/1131w/canva-brown-aesthetic-coffee-shop-%28flyer%29-MlRwfKVkRt4.jpg",
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Text(
              "Categories",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ],
        ),
        // SizedBox(
        //   height: 20,
        // ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  width: 130,
                  decoration: BoxDecoration(
                      color: Color(0xFFE65738),
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 3,
                      ),
                      Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: Icon(Icons.local_drink_outlined)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Hot drinks",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                CategoriesCard(
                  label: "Hot drinks",
                  icon: Icons.local_drink_outlined,
                ),
                CategoriesCard(
                  label: "Sandwich",
                  icon: Icons.breakfast_dining_outlined,
                ),
                CategoriesCard(
                  label: "Burger",
                  icon: Icons.breakfast_dining_sharp,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Text(
              "Categories",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              padding: EdgeInsets.all(20),
              children: List.generate(
                  discovery.length,
                  (index) => Material(
                        elevation: 2,
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              discovery[index]["image"],
                              fit: BoxFit.cover,
                              height: 100,
                              width: 100,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  discovery[index]["title"],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  discovery[index]["subtitle"],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            Spacer(),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.currency_rupee,
                                  color: Color(0xFFE65738),
                                  size: 20,
                                ),
                                Text(
                                  discovery[index]["price"],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SingleCoffe()),
                                    );
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFE65738),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20))),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 30,
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ))),
        )
      ],
    );
  }
}

class CategoriesCard extends StatelessWidget {
  final String label;
  final IconData icon;
  const CategoriesCard({
    super.key,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 130,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: [
          SizedBox(
            width: 3,
          ),
          Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.grey),
              child: Icon(icon)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              label,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}

List<Map<String, dynamic>> discovery = [
  {
    "title": "Caramel",
    "subtitle": "Macchiato",
    "image": "assets/coffee.jpg",
    "price": "4.0",
  },
  {
    "title": " Vanilla",
    "subtitle": "Latte",
    "image": "assets/coffee.jpg",
    "price": "3.0",
  },
  {
    "title": "White Caramel",
    "subtitle": "Mocha",
    "image": "assets/coffee.jpg",
    "price": "4.0",
  },
  {
    "title": "Traditional",
    "subtitle": "Cappuccino",
    "image": "assets/coffee.jpg",
    "price": "4.0",
  },
  {
    "title": " White Chocolate",
    "subtitle": "Mocha",
    "image": "assets/coffee.jpg",
    "price": "4.0"
  },
  {
    "title": "Traditional ",
    "subtitle": "Chai",
    "image": "assets/coffee.jpg",
    "price": "4.0"
  },
  {
    "title": "Caramel",
    "subtitle": "Macchiato",
    "image": "assets/coffee.jpg",
    "price": "4.0",
  },
  {
    "title": "Caramel",
    "subtitle": "Macchiato",
    "image": "assets/coffee.jpg",
    "price": "4.0",
  },
];
