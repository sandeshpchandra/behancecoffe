import 'package:flutter/material.dart';

class HomeScrren extends StatefulWidget {
  const HomeScrren({super.key});

  @override
  State<HomeScrren> createState() => _HomeScrrenState();
}

class _HomeScrrenState extends State<HomeScrren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFC),
      body: Column(children: [
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
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 160,
                    color: Colors.red,
                  ),
                  Container(
                    height: 100,
                    width: 160,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 160,
                    height: 100,
                    color: Colors.green,
                  ),
                  Container(
                    width: 160,
                    height: 100,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 160,
                    height: 100,
                    color: Colors.orange,
                  ),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
