import 'package:flutter/material.dart';

import 'firstpage.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  bool _isObscure = true;

  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          width: 420,
          child: Image.network(
            "https://marketplace.canva.com/EAE-M0LQ64o/2/0/1131w/canva-brown-aesthetic-coffee-shop-%28flyer%29-MlRwfKVkRt4.jpg",
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          height: 60,
          width: 360,
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
              hintText: "Full Name",
              filled: true,
              fillColor: Color(0xFFEBEFF2),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 60,
          width: 360,
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
              hintText: "Email Address",
              filled: true,
              fillColor: Color(0xFFEBEFF2),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 60,
          width: 360,
          child: TextFormField(
            obscureText: _isObscure,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
              hintText: "Password",
              filled: true,
              fillColor: Color(0xFFEBEFF2),
              suffixIcon: IconButton(
                icon: Icon(
                  _isObscure ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 60,
          width: 360,
          child: TextFormField(
            obscureText: _isObscure,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
              hintText: "Confirm Password",
              filled: true,
              fillColor: Color(0xFFEBEFF2),
              suffixIcon: IconButton(
                icon: Icon(
                  _isObscure ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
              ),
            ),
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
                ),
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 50,
            width: 350,
            decoration: BoxDecoration(
              color: Color(0xFF293441),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 20),
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
                fontSize: 15,
              ),
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
          height: 20,
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
            ),
          ],
        ),
      ],
    );
  }
}
