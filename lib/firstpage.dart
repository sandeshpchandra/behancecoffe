import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int selectedIndex = 0;
  static List<Widget> screens = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50.0),
              bottomRight: Radius.circular(50.0),
            ),
            child: Stack(
              children: [
                Container(
                  height: 150,
                  width: 420,
                  child: Image.network(
                    "https://marketplace.canva.com/EAE-M0LQ64o/2/0/1131w/canva-brown-aesthetic-coffee-shop-%28flyer%29-MlRwfKVkRt4.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 120,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 45,
                        ),
                        Container(
                          height: 50,
                          width: 340,
                          decoration: BoxDecoration(
                              color: Color(0xFFD7E7F3),
                              borderRadius: BorderRadius.circular(30)),
                          child: // Here, default theme colors are used for activeBgColor, activeFgColor, inactiveBgColor and inactiveFgColor
                              ToggleSwitch(
                            minWidth: 169.0,
                            cornerRadius: 30.0,
                            activeBgColors: [
                              [Color(0xFFE65738)!],
                              [Color(0xFFE65738)!]
                            ],
                            activeFgColor: Colors.white,
                            inactiveBgColor: Colors.grey,
                            inactiveFgColor: Colors.white,
                            initialLabelIndex: 1,
                            totalSwitches: 2,
                            labels: ['Sign In', 'Register'],
                            fontSize: 20,
                            radiusStyle: true,
                            selectedIndex: selectedIndex,
                            onToggle: (index) {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          LoginScreen(),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an account?",
              style: TextStyle(
                  color: Color(0xFF657886),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Register Now",
                  style: TextStyle(
                      color: Color(0xFFE65738),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none),
                hintText: "Email",
                filled: true,
                fillColor: Color(0xFFEBEFF2)),
          ),
        ),
        Container(
          height: 60,
          width: 360,
          child: TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none),
                hintText: "Password",
                filled: true,
                fillColor: Color(0xFFEBEFF2),
                suffixIcon: Icon(Icons.remove_red_eye_outlined)),
          ),
        ),
        Row(
          children: [
            Spacer(
              flex: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: Color(0xFFE65738)),
                  )),
            )
          ],
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 50,
            width: 350,
            decoration: BoxDecoration(
                color: Color(0xFF293441),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Expanded(
              child: Divider(
                thickness: 1,
                color: Color(0xFFE65738),
                indent: 20,
                endIndent: 20,
              ),
            ),
            Text(
              "or login with",
              style: TextStyle(
                  color: Color(0xFF657886),
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            Expanded(
              child: Divider(
                thickness: 1,
                color: Color(0xFFE65738),
                indent: 20,
                endIndent: 20,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            LogoBox(
              image: "assets/facebook.png",
            ),
            SizedBox(
              width: 10,
            ),
            LogoBox(
              image: "assets/google.png",
            ),
            SizedBox(
              width: 10,
            ),
            LogoBox(
              image: "assets/apple.png",
            )
          ],
        ),
        Spacer(),
      ],
    );
  }
}

class LogoBox extends StatelessWidget {
  final String image;
  const LogoBox({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 115,
      decoration: BoxDecoration(
          color: Color(0xFFFDF0E8), borderRadius: BorderRadius.circular(20)),
      child: Image.asset(
        image,
        fit: BoxFit.fill,
      ),
    );
  }
}
