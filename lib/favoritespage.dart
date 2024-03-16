import 'package:flutter/material.dart';
import 'package:flutter_application_3/homescreen.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDEE3E9),
      body: Column(
        children: [
          Container(
            height: 150,
            width: 420,
            decoration: BoxDecoration(
                color: Color(0xFF29333F),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text(
                        "Favorites",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          VerticalCard(
              label: "Caramel Macchiato",
              label1: "Large, Oat milk",
              label2: "6.70"),
          VerticalCard(
              label: "Caffe Mocha",
              label1: "Large, Almond milk",
              label2: "7.00"),
          VerticalCard(
              label: "Traditional Cappuccino",
              label1: "Small, Skim milk",
              label2: "3.00"),
          VerticalCard(
              label: "Vanilla Latte",
              label1: "Large, Almond milk",
              label2: "3.50"),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(.0),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Edit",
                      style: TextStyle(
                          color: Color(0xFFE65738),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ],
          )
        ],
      ),
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
      width: 380,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Row(
        children: [
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50)),
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
                    width: 175,
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
