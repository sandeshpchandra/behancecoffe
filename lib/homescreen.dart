import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'menuscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  static List<Widget> screens = [
    HomeCoffe(),
    MenuScreen(),
    Container(
      height: 100,
      width: 100,
      color: Colors.red,
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.green,
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.blue,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: GNav(
              backgroundColor: Colors.white,
              activeColor: Color(0xFFE65738),
              padding: EdgeInsets.all(10),
              gap: 5,
              iconSize: 30,
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: "home",
                  iconColor: Colors.grey,
                ),
                GButton(
                  icon: Icons.menu_book_outlined,
                  text: "Menu",
                  iconColor: Colors.grey,
                ),
                GButton(
                  icon: Icons.favorite_border_outlined,
                  text: "Favorites",
                  iconColor: Colors.grey,
                ),
                GButton(
                  icon: Icons.person,
                  text: "Profile ",
                  iconColor: Colors.grey,
                ),
                GButton(
                  icon: Icons.trolley,
                  text: "Cart",
                  iconColor: Colors.grey,
                ),
              ],
              selectedIndex: selectedIndex,
              onTabChange: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
          ),
        ),
        backgroundColor: Color(0xFFDEE3E9),
        body: screens[selectedIndex]);
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
              "New in",
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
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          color: Color(0xFFDEE3E9),
          height: 220,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(width: 20),
              HorizontelCard(
                label: "Caramel",
                label1: "Macchiato",
                label2: "4.00",
              ),
              HorizontelCard(
                label: "vanilla",
                label1: "Latte",
                label2: "3.00",
              ),
              HorizontelCard(
                label: "White Caramel",
                label1: "Mocha",
                label2: "4.00",
              ),
              HorizontelCard(
                label: "Caramel",
                label1: "Macchiato",
                label2: "4.00",
              ),
              HorizontelCard(
                label: "Caramel",
                label1: "Macchiato",
                label2: "4.00",
              ),
            ],
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
              "Frequentely ordered",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ],
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.all(20),
            scrollDirection: Axis.vertical,
            children: [
              VerticalCard(
                label: "Caramel Macchiato",
                label1: "Large, Oat milk",
                label2: "6.70",
              ),
              VerticalCard(
                label: "Vanilla Latte",
                label1: "Large, Almond milk",
                label2: "7.00",
              ),
              VerticalCard(
                label: "Caramel Macchiato",
                label1: "Large, Oat milk",
                label2: "6.70",
              ),
              VerticalCard(
                label: "Caramel Macchiato",
                label1: "Large, Oat milk",
                label2: "6.70",
              ),
              VerticalCard(
                label: "Caramel Macchiato",
                label1: "Large, Oat milk",
                label2: "6.70",
              ),
            ],
          ),
        )
      ],
    );
  }
}

class VerticalCard extends StatelessWidget {
  final String label;
  final String label1;
  final String label2;

  const VerticalCard({
    super.key,
    required this.label,
    required this.label1,
    required this.label2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Row(
        children: [
          Row(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20))),
                child: Image.asset(
                  "assets/coffee.jpg",
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                label1,
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.currency_rupee,
                    size: 20,
                    color: Color(0xFFE65738),
                  ),
                  Text(
                    label2,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  SizedBox(
                    width: 176,
                  ),
                  Container(
                    height: 25,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Color(0xFFE65738),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(10))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class HorizontelCard extends StatelessWidget {
  final String label;
  final String label1;
  final String label2;

  const HorizontelCard({
    super.key,
    required this.label,
    required this.label1,
    required this.label2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 180,
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
          borderRadius: BorderRadius.circular(20)),
      child: Column(children: [
        Row(
          children: [
            SizedBox(
              width: 25,
            ),
            Image.asset(
              "assets/coffee.jpg",
              height: 120,
              width: 120,
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Text(
              label,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Text(
              label1,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Icon(
              Icons.currency_rupee,
              size: 20,
              color: Color(0xFFE65738),
            ),
            Text(
              label2,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 40,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(20)),
                  color: Color(0xFFE65738),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                      )
                    ]),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
