import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
                        "My cart",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: VerticalCard(
              label: "Caramel Macchiato",
              label1: "small, Oat milk",
              label2: "8.40",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: VerticalCard(
              label: "Traditional Cappuccino",
              label1: "small,skim milk,No caffeine",
              label2: "8.40",
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Promo code",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  suffixIcon: TextButton(
                    style: TextButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: 22, horizontal: 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      backgroundColor: Color(0xFFE65738),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Apply",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  "Cart",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(
                  Icons.currency_rupee,
                  color: Color(0xFF29333F),
                ),
                Text(
                  "12.40",
                  style: TextStyle(
                      color: Color(0xFF29333F),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  "Discount",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(
                  Icons.currency_rupee,
                  color: Color(0xFF29333F),
                ),
                Text(
                  "1.20",
                  style: TextStyle(
                      color: Color(0xFF29333F),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(
                  Icons.currency_rupee,
                  color: Color(0xFF29333F),
                ),
                Text(
                  "11.20",
                  style: TextStyle(
                      color: Color(0xFF29333F),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: MaterialButton(
              onPressed: () {},
              height: 60,
              minWidth: 380,
              color: Color(0xFF29333F),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Check Out",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
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
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Row(
        children: [
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
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
                    width: 185,
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
