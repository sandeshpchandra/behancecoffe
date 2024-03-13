import 'package:flutter/material.dart';

import 'homescreen.dart';

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
        GridView.count(
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
                          Text(discovery[index]["title"]),
                          Text(discovery[index]["subtitle"]),
                        ],
                      ),
                    )))
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
    "title": "Bars & Hotels",
    "subtitle": "42 Place",
    "image": "assets/coffee.jpg"
  },
  {
    "title": "Fine Dining",
    "subtitle": "15 Place",
    "image": "assets/coffee.jpg"
  },
  {"title": "Cafes", "subtitle": "28 Place", "image": "assets/coffee.jpg"},
  {"title": "Nearby", "subtitle": "34 Place", "image": "assets/coffee.jpg"},
  {"title": "Fast Foods", "subtitle": "29 Place", "image": "assets/coffee.jpg"},
  {
    "title": "Featured Foods",
    "subtitle": "21 Place",
    "image": "assets/coffee.jpg"
  }
];
