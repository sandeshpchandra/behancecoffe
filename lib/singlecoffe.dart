import 'package:flutter/material.dart';

class SingleCoffe extends StatefulWidget {
  const SingleCoffe({super.key});

  @override
  State<SingleCoffe> createState() => _SingleCoffeState();
}

class _SingleCoffeState extends State<SingleCoffe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDEE3E9),
      body: HomeCoffe(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
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
            height: 200,
            width: 420,
            color: Color(0xFF425A71),
          ),
        ),
        SizedBox(
          height: 90,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Text(
              "Caramel Macchiato",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Text(
              "Our Caramel Macchiato is the perfect ",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF425A71),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 2,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Text(
              "combination of a rich-tasting espresso, creamy",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF425A71),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 2,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Text(
              "milk and the sweet, buttery aroma of caramel.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF425A71),
              ),
            ),
          ],
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
              "Size",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "250ml",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.grey),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.white,
              elevation: 5,
              height: 40,
              minWidth: 120,
              textColor: Colors.white,
              hoverColor: Color(0xFFE65738),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "small",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.white,
              elevation: 5,
              height: 40,
              minWidth: 120,
              textColor: Colors.white,
              hoverColor: Color(0xFFE65738),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Medium",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.white,
              elevation: 5,
              height: 40,
              minWidth: 120,
              textColor: Colors.white,
              hoverColor: Color(0xFFE65738),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Large",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
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
              "Customize your coffee",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            CustomizeCoffe(
              icon: Icons.coffee,
              label1: "Oat",
              label: "Milk",
            ),
            SizedBox(
              width: 20,
            ),
            CustomizeCoffe(
              icon: Icons.coffee_maker_outlined,
              label1: "No",
              label: "Cream",
            ),
            SizedBox(
              width: 20,
            ),
            CustomizeCoffe(
              icon: Icons.coffee_rounded,
              label1: "Yes",
              label: "Caffeine",
            ),
            Spacer(),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 65,
                    width: 65,
                    child: Material(
                        borderRadius: BorderRadius.circular(40),
                        color: Color(0xFFE65738),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.change_circle_outlined,
                              color: Colors.white,
                              size: 35,
                            ))),
                  ),
                ),
                Text(
                  "Change",
                  style: TextStyle(color: Colors.black, fontSize: 17),
                )
              ],
            )
          ],
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text(
                    "Total price",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.currency_rupee,
                        color: Color(0xFFE65738),
                      ),
                      Text(
                        "4.70",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
              Spacer(),
              MaterialButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext) {
                        return SizedBox(
                          height: 200,
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Milk",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "PIck 1",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(Icons.close_outlined),
                                    color: Colors.black,
                                  )
                                ],
                              ),
                              Radio(
                                value: 0,
                                groupValue: selectedIndex,
                                onChanged: (value) {
                                  setState(() {
                                    selectedIndex = value!;
                                  });
                                },
                              ),
                              Radio(
                                value: 1,
                                groupValue: selectedIndex,
                                onChanged: (value) {
                                  setState(() {
                                    selectedIndex = value!;
                                  });
                                },
                              ),
                            ],
                          ),
                        );
                      });
                },
                height: 60,
                minWidth: 250,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Color(0xFF29333F),
                child: Center(
                  child: Text(
                    "Add to cart",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class CustomizeCoffe extends StatelessWidget {
  final String label;
  final String label1;
  final IconData icon;

  const CustomizeCoffe({
    super.key,
    required this.label,
    required this.label1,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          border: Border.all(color: Color(0xFFD96346), width: 1),
          color: Color(0xFFFBF2ED)),
      child: Column(children: [
        SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Color(0xFFE65738),
              size: 40,
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: TextStyle(fontSize: 18, color: Color(0xFFD46749)),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label1,
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFFD46749),
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ]),
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
      Row(
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.white,
                size: 20,
              )),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              width: 50,
              child: Material(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xFFE65738),
                child: Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ),
          )
        ],
      ),
      Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 40,
                  decoration: BoxDecoration(
                      color: Color(0xFFE65738),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          )),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "1",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.minimize_outlined,
                            color: Colors.white,
                            size: 20,
                          )),
                    ],
                  ),
                ),
                Image.asset(
                  "assets/coffee1.png",
                  height: 250,
                  width: 250,
                )
              ],
            ),
          ),
        ],
      )
    ]);
  }
}
